unit uReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxCore, dxButton, ExtCtrls, FacDbEdit, StdCtrls, DBCtrls,
  Mask, rpcompobase, rpvclreport, EExtenso, FMTBcd, SqlExpr, DBXPress,
  Buttons, DBClient, Provider, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit;

type
  TfReceber = class(TForm)
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3x: TDBEdit;
    DBComboBox2: TDBComboBox;
    FacDBEdit3: TFacDBEdit;
    FacDBEdit4: TFacDBEdit;
    FacDBEdit8: TFacDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    DataSource1: TDataSource;
    DBEdit4: TDBEdit;
    FacDBEdit1: TFacDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    DBEdit5: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    busca_cr: TSQLDataSet;
    busca_crID_RECEBIMENTOS: TIntegerField;
    busca_crID: TIntegerField;
    busca_crSTATUS: TStringField;
    busca_crORIGEM: TIntegerField;
    BitBtn1: TBitBtn;
    sds_parametro: TSQLDataSet;
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroPARAMETRO1: TStringField;
    sds_parametroPARAMETRO2: TStringField;
    sds_parametroPARAMETRO3: TStringField;
    sds_parametroPARAMETRO4: TStringField;
    sds_parametroPARAMETRO5: TStringField;
    sds_parametroPARAMETRO6: TStringField;
    sds_parametroPARAMETRO7: TStringField;
    sds_parametroPARAMETRO8: TStringField;
    sds_parametroPARAMETRO9: TStringField;
    cds_paramPARAMETRO: TStringField;
    cds_paramDESCRICAO: TStringField;
    cds_paramCONFIGURADO: TStringField;
    cds_paramPARAMETRO1: TStringField;
    cds_paramPARAMETRO2: TStringField;
    cds_paramPARAMETRO3: TStringField;
    cds_paramPARAMETRO4: TStringField;
    cds_paramPARAMETRO5: TStringField;
    cds_paramPARAMETRO6: TStringField;
    cds_paramPARAMETRO7: TStringField;
    cds_paramPARAMETRO8: TStringField;
    cds_paramPARAMETRO9: TStringField;
    DBEdit3: TJvDBDatePickerEdit;
    Edit4: TEdit;
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dxButton5Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure DBEdit3xExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Procedure CalculaJuros;
  end;

var
  fReceber: TfReceber;
  codigo_cr :integer;
  TD: TTransactionDesc;

  valorAReceber, ValorRecebido, desc, juros, perda,
  funrural,outros, valorr, resto: Double;
  
implementation

uses UDM, uFiltro_CR, uFiltro_CR1, uRecibo;

{$R *.dfm}

procedure TfReceber.DBEdit10Exit(Sender: TObject);
begin
  if dm.cds_cr.State in [dsInsert, dsEdit] then
  begin
    dm.cds_crVALOR_A_REC.Value := dm.cds_CRVALOR_RECEBER.Value;
    dm.cds_CRVALOR_A_REC.Value := dm.cds_CRVALOR_A_REC.Value -
    dm.cds_CRDESCONTO.Value + dm.cds_crJUROS.Value;
  end;
end;

procedure TfReceber.DBEdit11Exit(Sender: TObject);
begin
  if dm.cds_cr.State in [dsInsert, dsEdit] then
  begin
    dm.cds_CRVALOR_A_REC.Value := dm.cds_CRVALOR_RECEBER.Value;
    dm.cds_CRVALOR_A_REC.Value := dm.cds_CRVALOR_A_REC.Value +
    dm.cds_crJUROS.Value - dm.cds_crDESCONTO.Value;
  end;

end;

procedure TfReceber.DBEdit15Exit(Sender: TObject);
begin
  if dm.cds_cr.State in [dsInsert, dsEdit] then
  begin
    if (dm.cds_CRVALOR_RECEBER.Value + juros  < dm.cds_CRVALOR_PAGO.Value) then
      dm.cds_CRVALOR_DIF.Value := dm.cds_CRVALOR_RECEBER.Value - dm.cds_CRVALOR_PAGO.Value
    else
      dm.cds_CRVALOR_DIF.Value := 0
  end;
end;

procedure TfReceber.dxButton1Click(Sender: TObject);
var
  id_r, id, id_s, id_b, via, origem: integer;
  valor_t, valor_r: double;
  lt,gr,data_v, data_e, nf : String;
begin
 origem := 0;
 // testo se o t?tulo J? est? pago
 if dm.cds_crSTATUS.AsString = 'Pago' then
 begin
  MessageDlg('T?tulo j? est? pago', mtInformation, [mbOK], 0);
  exit;
 end;

 // se ? digitou o valor pago cancelo a opera??o
 if dm.cds_CRVALOR_PAGO.AsFloat = 0 then
 begin
   MessageDlg('Informe o Valor Pago...', mtWarning, [mbOK], 0);
   DBEdit15.SetFocus;
   exit;
 end;

 // se estiver inserindo ou alterando salvo a tabela
 if dm.cds_cr.State in [dsInsert, dsEdit] then
 begin
   dm.cds_crSTATUS.AsString := 'Pago';
   if (receber <> 'OBITO') then
     if Filtro_CR1.Edit4.Text <> '' then
       dm.cds_CRCOBRADOR.AsInteger := StrToInt(Filtro_CR1.Edit4.Text);

   dm.cds_cr.ApplyUpdates(0);
 end;
 // testa se pagou valor menor que o titulo
 if dm.cds_CRVALOR_PAGO.AsFloat < dm.cds_CRVALOR_RECEBER.AsFloat then
 begin
    // aqui pego os valores para criar nova via do t?tulo.
    lt := dm.cds_CRLOTE.AsString;
    gr := dm.cds_CRGRUPO.AsString;
    id_r := dm.cds_CRID_RECEBIMENTOS.AsInteger;
    origem := dm.cds_CRID_RECEBIMENTOS.AsInteger;
    nf := dm.cds_crTITULO.AsString;
    id := dm.cds_CRID.AsInteger;
    id_s := dm.cds_CRID_SOCIO.AsInteger;
    id_b := dm.cds_CRID_BANCO.AsInteger;
    via := dm.cds_CRPARCELA.AsInteger;
    data_v := DateToStr(dm.cds_CRVENCIMENTO.AsDateTime);
    data_e := DateToStr(dm.cds_CREMISSAO.AsDateTime);
    valor_t := dm.cds_CRVALOR_NF.AsFloat;
    valor_r := dm.cds_CRVALOR_RECEBER.AsFloat - dm.cds_CRVALOR_PAGO.AsFloat;
    //aqui adiciono nova via
    dm.cds_CR.Append;
    dm.cds_CRID.AsInteger := id;
    dm.cds_CRPARCELA.AsInteger := via;
    dm.cds_CRVENCIMENTO.AsDateTime := StrToDate(data_v);
    dm.cds_CREMISSAO.AsDateTime := StrToDate(data_e);
    dm.cds_CRVALOR_NF.AsFloat := valor_t;
    dm.cds_CRVALOR_RECEBER.AsFloat := valor_r;
    dm.cds_CRSTATUS.AsString := 'Pendente';
    dm.cds_CRORIGEM.AsInteger := origem;
    // gera codigo para tab. recebimentos
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    id := dm.cds_CRID.AsInteger;
    dm.c_6_genid.Close;
    // se o lan?amento vier de ?bitos
    if receber = 'OBITO' then
    begin
      dm.cds_CRTIPO_DOC.AsString := 'OB';
      dm.cds_CRTITULO.AsString := nf;
    end;
    // se o lan?amento vier de Grupos
    if receber = 'GRUPO' then
    begin
      dm.cds_CRTIPO_DOC.AsString := 'GM';
      dm.cds_CRID_SOCIO.AsInteger := id_s;
      dm.cds_CRID_BANCO.AsInteger := id_b;
      dm.cds_CRVALOR_PAGO.AsFloat := 0;
      dm.cds_CRVALOR_DIF.AsFloat := 0;
      dm.cds_CRJUROS.AsFloat := 0;
      dm.cds_CRDESCONTO.AsFloat := 0;
      dm.cds_CRMULTA.AsFloat := 0;
      dm.cds_CRVALOR_A_REC.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
      dm.cds_CRVALOR_1VIA.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
      dm.cds_CRSITUACAO.AsString := 'Ativo';
      dm.cds_CRLOTE.AsString := lt;
      dm.cds_CRGRUPO.AsString := gr;
      dm.cds_CRGEROU.AsString := 'S';
    end;
    //salvo fecho e abro novamente a tabela
    dm.cds_cr.ApplyUpdates(0);
    dm.cds_CR.Close;
    dm.cds_cr.Params[1].Clear;
   // dm.cds_cr.Params[2].Clear;
    dm.cds_cr.Params[0].AsInteger := id_r;
    dm.cds_cr.Open;
 end;

//  if receber = 'OBITO' then
//    Filtro_CR.BitBtn3.Click;

end;

procedure TfReceber.dxButton2Click(Sender: TObject);
var sql_texto : string;
begin
    // se estiver pendente ? tem porque cancelar
    if dm.cds_CRSTATUS.AsString = 'Pendente' then
    begin
      MessageDlg('T?tulo ainda n?o foi Baixado ', mtError, [mbOK], 0);
      exit;
    end;

    // se estiver Pago cancelo a baixa
    if dm.cds_CRSTATUS.AsString = 'Pago' then
    begin
      if dm.cds_CR.State in [dsBrowse] then
        dm.cds_CR.Edit;
      // se maior que zero titulo foi gerado p?r outro ent?o ? s? miudar o status
      if (dm.cds_CRORIGEM.AsInteger > 0) then
      begin
        dm.cds_CRSTATUS.AsString := 'Pendente';
        dm.cds_CRDATA_PAG.AsString := '';
        dm.cds_CRVALOR_PAGO.AsFloat := 0;
        dm.cds_CR.ApplyUpdates(0);
        DataSource1.DataSet.Edit;
      end
      else // se n?o ? o titulo principal - tenho que verificar se existe titulo
      begin // gerado pelo principal para deletar
        if (busca_cr.Active) then
          busca_cr.Close;
        busca_cr.Params[0].AsInteger := dm.cds_CRID_RECEBIMENTOS.AsInteger;
        busca_cr.Open;
        if (not busca_cr.IsEmpty) then // se vazio n?o tem outro titulo ent?o mudo o status
        begin
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.SQLObitos.StartTransaction(TD);

      sql_texto := 'UPDATE RECEBIMENTOS SET SITUACAO = ';
      sql_texto := sql_texto + QuotedStr('Cancelado');
      sql_texto := sql_texto + ' WHERE  = ';
      sql_texto :=  sql_texto + IntToStr(busca_crID_RECEBIMENTOS.AsInteger);
       dm.SQLObitos.ExecuteDirect(sql_texto);



          dm.SQLObitos.Commit(TD);
          dm.cds_CRSTATUS.AsString := 'Pendente';
          dm.cds_CRDATA_PAG.AsString := '';
          dm.cds_CRVALOR_PAGO.AsFloat := 0;
          dm.cds_CR.ApplyUpdates(0);
          DataSource1.DataSet.Edit;
          dm.SQLObitos.StartTransaction(TD);
        end
        else
        begin
          dm.cds_CRSTATUS.AsString := 'Pendente';
          dm.cds_CRDATA_PAG.AsString := '';
          dm.cds_CRVALOR_PAGO.AsFloat := 0;
          dm.cds_CR.ApplyUpdates(0);
          DataSource1.DataSet.Edit;
        end;
      end;
    end;

end;

procedure TfReceber.dxButton4Click(Sender: TObject);
begin
  close;
end;

procedure TfReceber.FormShow(Sender: TObject);
begin
  if dm.cds_CR.Active then
    dm.cds_CR.Close;
  dm.cds_cr.Params[0].Clear;
  dm.cds_cr.Params[1].Clear;

  //pego o parametro de acordo com o form de onde veio
  if receber = 'OBITO' then
    dm.cds_cr.Params[1].AsInteger := Filtro_CR.scdsCp_procID_RECEBIMENTOS.AsInteger;

  if receber = 'GRUPO' then
    dm.cds_cr.Params[1].AsInteger := Filtro_CR1.scdsCp_procID_RECEBIMENTOS.AsInteger;

  if receber = 'SOCIO_CADASTRO' then
    dm.cds_cr.Params[1].AsInteger := codigo_cr;


  dm.cds_cr.Open;

  // se o titulo ? estiver pago alimento os campos abaixo
  if dm.cds_CRSTATUS.AsString <> 'Pago' then
  begin
   dm.cds_cr.Edit;
   dm.cds_CRDATA_PAG.AsDateTime := now;
   dm.cds_CRVALOR_A_REC.Value := dm.cds_CRVALOR_NF.Value;
   dm.cds_CRDESCONTO.Value := 0;
   dm.cds_CRJUROS.Value := 0;
   dm.cds_CRVALOR_PAGO.Value := 0;
   dm.cds_CRVALOR_DIF.Value := 0;
   DBEdit3x.SetFocus;
  end;

end;

procedure TfReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
  if Key in ['.'] then Key := ',';
end;

procedure TfReceber.dxButton5Click(Sender: TObject);
begin

 fRecibo := TfRecibo.Create(Application);
 try
  if receber = 'OBITO' then
  begin
    fRecibo.rbSim.Enabled := false;
    fRecibo.rbNao.Checked := True;
    fRecibo.rbNao.Enabled := false;
  end;
   fRecibo.ShowModal;
 finally
   fRecibo.Free;
 end;


end;

procedure TfReceber.DataSource1StateChange(Sender: TObject);
begin

  dxButton1.Enabled:=DataSource1.State in [dsInsert,dsEdit];
  dxButton2.Enabled:=DataSource1.State in [dsBrowse];
  dxButton5.Enabled:=DataSource1.State in [dsBrowse];

end;

procedure TfReceber.dxButton3Click(Sender: TObject);
begin
   DataSource1.DataSet.Cancel;
end;

procedure TfReceber.DBEdit3xExit(Sender: TObject);
var cob :string;
begin
  // Calcula Juros
  cob := Copy(Edit4.Text,0,3) ;
  
  if(cob = 'BOL') then
  BitBtn1.Click;
end;

procedure TfReceber.BitBtn1Click(Sender: TObject);
begin
    CalculaJuros;
    juros := dm.cds_crJUROS.AsFloat;
    desc := dm.cds_crDESCONTO.AsFloat;
  ///  perda := dm.cds_crPERDA.AsFloat;
  ///  funrural := dm.cds_crFUNRURAL.AsFloat;
    resto := dm.cds_CRVALOR_RECEBER.AsFloat;
    ValorRecebido := ( resto + juros );
    dm.cds_CRVALOR_A_REC.AsFloat := ValorRecebido;
end;

procedure TfReceber.CalculaJuros;
var juros , carencia , multa: double ;
     mu : Integer;
begin

  if (DBEdit3.Date > dm.cds_CRVENCIMENTO.AsDateTime) then
  begin
    mu := 2;  // multa 2%
    if (cds_param.Active) then
      cds_param.Close;
    cds_param.Params[0].AsString := 'RECEBERJUROS';
    cds_param.Open;
    if (not cds_param.IsEmpty) then
    begin
      DecimalSeparator := '.';
      // Pego o Juros
      juros := StrToFloat(cds_paramPARAMETRO1.asString);
      if(cds_paramPARAMETRO1.asString <> '') then
      carencia := StrToFloat(cds_paramPARAMETRO2.asString);

      if ((dbEdit3.Date - dm.cds_CRVENCIMENTO.AsDateTime) < carencia) then
      begin
        if (dm.cds_cr.State in [dsBrowse]) then
        dm.cds_cr.Edit;
        dm.cds_crJUROS.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat * ((juros * (((dbEdit3.Date - dm.cds_CRVENCIMENTO.AsDateTime))/30))/100);
        dm.cds_crJUROS.AsFloat := dm.cds_crJUROS.AsFloat ;
      end;
      if ((dbEdit3.Date - dm.cds_CRVENCIMENTO.AsDateTime) >= carencia) then
      begin
        mu := 2; // multa 2%
        multa := (dm.cds_CRVALOR_NF.AsFloat *(mu/100)) ;
        if (dm.cds_cr.State in [dsBrowse]) then
        dm.cds_cr.Edit;
        dm.cds_crJUROS.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat * ((juros * (((dbEdit3.Date - dm.cds_crVENCIMENTO.AsDateTime))/30))/100);
        dm.cds_crJUROS.AsFloat := dm.cds_crJUROS.AsFloat + multa ;

      end;

    end;
    DecimalSeparator := ',';
  end;

end;

procedure TfReceber.DBEdit3Exit(Sender: TObject);
begin
  BitBtn1.Click;
end;

end.
