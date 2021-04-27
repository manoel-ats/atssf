unit uVenda_Finalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, DB, Menus, dxCore, dxButton, ExtCtrls, FMTBcd, XPMenu,
  SqlExpr, Provider, DBClient, Grids, DBGrids, StdCtrls, DBCtrls, Buttons,
  Mask;

type
  TfVenda_Finalizar = class(TfPai)
    cds_venda: TClientDataSet;
    dsp_venda: TDataSetProvider;
    sds_venda: TSQLDataSet;
    sds_cp: TSQLDataSet;
    dsp_cp: TDataSetProvider;
    cds_cp: TClientDataSet;
    DataSource1: TDataSource;
    XPMenu1: TXPMenu;
    sds_vendaID_VENDA: TIntegerField;
    sds_vendaID_MOVIMENTO: TIntegerField;
    sds_vendaID_CLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaFORMAPAGAMENTO: TStringField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_RECE: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    sds_vendaHISTORICO: TStringField;
    cds_vendaID_VENDA: TIntegerField;
    cds_vendaID_MOVIMENTO: TIntegerField;
    cds_vendaID_CLIENTE: TIntegerField;
    cds_vendaDATAVENDA: TDateField;
    cds_vendaDATAVENCIMENTO: TDateField;
    cds_vendaNUMEROBORDERO: TIntegerField;
    cds_vendaBANCO: TSmallintField;
    cds_vendaCODVENDEDOR: TSmallintField;
    cds_vendaSTATUS: TSmallintField;
    cds_vendaCODUSUARIO: TSmallintField;
    cds_vendaDATASISTEMA: TDateField;
    cds_vendaVALOR: TFloatField;
    cds_vendaNOTAFISCAL: TIntegerField;
    cds_vendaSERIE: TStringField;
    cds_vendaDESCONTO: TFloatField;
    cds_vendaCODCCUSTO: TSmallintField;
    cds_vendaN_PARCELA: TSmallintField;
    cds_vendaOPERACAO: TStringField;
    cds_vendaFORMAPAGAMENTO: TStringField;
    cds_vendaN_DOCUMENTO: TStringField;
    cds_vendaCAIXA: TSmallintField;
    cds_vendaMULTA_JUROS: TFloatField;
    cds_vendaAPAGAR: TFloatField;
    cds_vendaVALOR_PAGAR: TFloatField;
    cds_vendaENTRADA: TFloatField;
    cds_vendaN_BOLETO: TStringField;
    cds_vendaSTATUS1: TStringField;
    cds_vendaVALOR_ICMS: TFloatField;
    cds_vendaVALOR_FRETE: TFloatField;
    cds_vendaVALOR_SEGURO: TFloatField;
    cds_vendaOUTRAS_RECE: TFloatField;
    cds_vendaVALOR_IPI: TFloatField;
    cds_vendaHISTORICO: TStringField;
    cds_cpID_RECEBIMENTOS: TIntegerField;
    cds_cpID: TIntegerField;
    cds_cpVALOR_NF: TFloatField;
    cds_cpVALOR_RECEBER: TFloatField;
    cds_cpPARCELA: TIntegerField;
    cds_cpVENCIMENTO: TDateField;
    cds_cpDATA_PAG: TDateField;
    cds_cpSTATUS: TStringField;
    cds_cpVALOR_PAGO: TFloatField;
    cds_cpVALOR_DIF: TFloatField;
    cds_cpJUROS: TFloatField;
    cds_cpDESCONTO: TFloatField;
    cds_cpMULTA: TFloatField;
    cds_cpEMISSAO: TDateField;
    cds_cpN_DOCUMENTO: TStringField;
    cds_cpCAIXA: TStringField;
    cds_cpFORMARECEBIMENTO: TStringField;
    cds_cpVALOR_A_REC: TFloatField;
    cds_cpTITULO: TIntegerField;
    cds_cpVALOR_1VIA: TFloatField;
    cds_cpID_SOCIO: TIntegerField;
    cds_cpLOTE: TIntegerField;
    cds_cpGEROU: TStringField;
    cds_cpDATA_DOC: TDateField;
    cds_cpGRUPO: TStringField;
    cds_cpID_BANCO: TIntegerField;
    cds_cpSITUACAO: TStringField;
    cds_cpTIPO_DOC: TStringField;
    cds_cpSELECIONOU: TStringField;
    cds_cpSERIE: TStringField;
    cds_cpPERCENTUALJUROS: TFloatField;
    cds_cpPERCENTUALMULTA: TFloatField;
    cds_cpPERCENTUALDESCONTO: TFloatField;
    cds_cpVALOROUTROSACRESCIMOS: TFloatField;
    cds_cpCODIGO: TIntegerField;
    cds_cpOBS: TGraphicField;
    cds_cpENTRADA: TFloatField;
    cds_cpCODCCUSTO: TSmallintField;
    cds_cpID_DEPREC: TIntegerField;
    cds_cpNOTAFISCAL: TIntegerField;
    cds_cpID_VENDA: TIntegerField;
    sds_cpID_RECEBIMENTOS: TIntegerField;
    sds_cpID: TIntegerField;
    sds_cpVALOR_NF: TFloatField;
    sds_cpVALOR_RECEBER: TFloatField;
    sds_cpPARCELA: TIntegerField;
    sds_cpVENCIMENTO: TDateField;
    sds_cpDATA_PAG: TDateField;
    sds_cpSTATUS: TStringField;
    sds_cpVALOR_PAGO: TFloatField;
    sds_cpVALOR_DIF: TFloatField;
    sds_cpJUROS: TFloatField;
    sds_cpDESCONTO: TFloatField;
    sds_cpMULTA: TFloatField;
    sds_cpEMISSAO: TDateField;
    sds_cpN_DOCUMENTO: TStringField;
    sds_cpCAIXA: TStringField;
    sds_cpFORMARECEBIMENTO: TStringField;
    sds_cpVALOR_A_REC: TFloatField;
    sds_cpTITULO: TIntegerField;
    sds_cpVALOR_1VIA: TFloatField;
    sds_cpID_SOCIO: TIntegerField;
    sds_cpLOTE: TIntegerField;
    sds_cpGEROU: TStringField;
    sds_cpDATA_DOC: TDateField;
    sds_cpGRUPO: TStringField;
    sds_cpID_BANCO: TIntegerField;
    sds_cpSITUACAO: TStringField;
    sds_cpTIPO_DOC: TStringField;
    sds_cpSELECIONOU: TStringField;
    sds_cpSERIE: TStringField;
    sds_cpPERCENTUALJUROS: TFloatField;
    sds_cpPERCENTUALMULTA: TFloatField;
    sds_cpPERCENTUALDESCONTO: TFloatField;
    sds_cpVALOROUTROSACRESCIMOS: TFloatField;
    sds_cpCODIGO: TIntegerField;
    sds_cpOBS: TGraphicField;
    sds_cpENTRADA: TFloatField;
    sds_cpCODCCUSTO: TSmallintField;
    sds_cpID_DEPREC: TIntegerField;
    sds_cpNOTAFISCAL: TIntegerField;
    sds_cpID_VENDA: TIntegerField;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton12: TSpeedButton;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    dxButton1: TdxButton;
    dxButton5: TdxButton;
    sds_vendaNOME: TStringField;
    cds_vendaNOME: TStringField;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure cds_vendaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVenda_Finalizar: TfVenda_Finalizar;
  valor_nota : double;
  codmov, codcli : integer;

implementation

uses UDM, uVendas_Terminal, uProcurar, uCheques;

{$R *.dfm}

procedure TfVenda_Finalizar.FormShow(Sender: TObject);
begin
  inherited;
  if cds_venda.Active then
    cds_venda.Close;
  cds_venda.Params[0].AsInteger := fvendas_Terminal.cds_movID_MOVIMENTO.AsInteger;
  cds_venda.Open;
 if not cds_venda.IsEmpty then
 begin
  if cds_cp.Active then
    cds_cp.Close;
  cds_cp.Params[0].AsInteger := cds_vendaID_VENDA.AsInteger;
  cds_cp.Open;
 end
 else
 begin
  cds_venda.Append;
  cds_vendaVALOR.AsFloat := valor_nota;
  cds_vendaDATAVENDA.AsDateTime := Date;
  cds_vendaDATAVENCIMENTO.AsDateTime := Date;
  cds_vendaENTRADA.AsFloat := 0;
  if not cds_cp.Active then
    cds_cp.Open;
  BitBtn1.Click;
 end;

end;

procedure TfVenda_Finalizar.BitBtn3Click(Sender: TObject);
begin
  inherited;
  cds_CP.ApplyUpdates(0);
end;

procedure TfVenda_Finalizar.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DataSource1.DataSet.Delete;
     (DataSource1.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfVenda_Finalizar.btnIncluirClick(Sender: TObject);
begin
  inherited;
   cds_vendaDATAVENDA.AsDateTime := Date;
   cds_vendaDATAVENCIMENTO.AsDateTime := Date;
   cds_vendaENTRADA.AsFloat := 0;
   BitBtn1.Click;
end;

procedure TfVenda_Finalizar.btnGravarClick(Sender: TObject);
var
   ano, mes, dia: word;
   I, np1: integer;
   data,np2:string;
   Sobra, parcela, np: double;
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_VENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_vendaID_VENDA.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

//***************************************
// abre a tabela Recebimentos           *
//***************************************
  if (cds_cp.Active) then
     cds_CP.Close;
  cds_CP.Params[0].Clear;
  cds_CP.Params[0].AsInteger := cds_vendaID_VENDA.AsInteger;
  cds_CP.Open;
//***************************************
// se ñ estiver vazia cancelo a inserção*
//***************************************
  if (not cds_CP.IsEmpty) then
     exit;
//***************************************
// gera contas a receber
   data :=DateToStr(cds_vendaDATAVENCIMENTO.AsDateTime);
   if cds_vendaENTRADA.AsFloat > 0 then
   begin
     Sobra := cds_vendaVALOR.Value - cds_vendaENTRADA.Value;
     if cds_vendaN_PARCELA.AsFloat > 1 then
       np:=cds_vendaN_PARCELA.Value - 1;
     if Sobra <> 0 then
     parcela := Sobra / np;
   end
   else
    parcela := cds_vendaVALOR.Value / cds_vendaN_PARCELA.Value;
   np:=cds_vendaN_PARCELA.Value;
   np2 := floatToStr(np);
   np1 := StrToInt(np2);
   if not DataSource1.DataSet.Active then
      DataSource1.DataSet.Open;
   DataSource1.DataSet.Append;
   cds_CPVENCIMENTO.AsDateTime := cds_vendaDATAVENCIMENTO.AsDateTime;
   for I:=1 to np1 do
   begin
    if cds_CP.State <> dsinsert then
       cds_CP.Append;
    cds_cpID_VENDA.AsInteger := cds_vendaID_VENDA.AsInteger;
    cds_CPPARCELA.AsInteger:=I;
    cds_CPVALOR_NF.Value:=cds_vendaVALOR.Value;
    cds_CPTIPO_DOC.AsString := 'VD';
    if cds_vendaENTRADA.AsFloat > 0 then
    begin
      if I=1 then
      begin
        cds_CPVENCIMENTO.AsDateTime := cds_vendaDATAVENCIMENTO.AsDateTime;
        cds_CPDATA_PAG.AsDateTime :=now;
        cds_CPEMISSAO.AsDateTime :=now;
        cds_CPID_SOCIO.AsInteger := cds_vendaID_CLIENTE.AsInteger;
        cds_CPSTATUS.Value:='Pago';
        cds_CPTIPO_DOC.AsString := 'VD';
        cds_CPNOTAFISCAL.Value:=cds_vendaNOTAFISCAL.Value;
        cds_CPVALOR_NF.Value:=cds_vendaVALOR.Value;
        cds_CPVALOR_1VIA.Value:=cds_vendaENTRADA.Value;
        cds_CPVALOR_PAGO.Value:=cds_vendaENTRADA.Value;
     // gera codigo para tab. recebimentos
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_CPID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
     //********************************************************************
        cds_CP.Post;
        data := DateToStr(cds_CPVENCIMENTO.AsDateTime);
      end
      else
      begin
        decodedate(StrToDate(data), Ano, mes, dia);
         mes:=mes+1;
        if mes<=12 then
        begin
          cds_CPVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_CPVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_CPNOTAFISCAL.Value:=cds_vendaNOTAFISCAL.Value;
          cds_CPEMISSAO.AsDateTime :=now;
          cds_CPID_SOCIO.AsInteger := cds_vendaID_CLIENTE.AsInteger;
          cds_CPSTATUS.Value:='Pendente';
          cds_CPTIPO_DOC.AsString := 'VD';
          cds_CPVALOR_NF.Value:=cds_vendaVALOR.Value;
          cds_CPVALOR_1VIA.Value:=parcela;
          cds_CPVALOR_RECEBER.Value:=parcela;
          cds_CPVALOR_DIF.Value:=0;
          cds_CPVALOR_A_REC.Value:=0;
          cds_CPVALOR_PAGO.Value:=0;
          cds_CPDESCONTO.Value:=0;
          cds_CPJUROS.Value:=0;
       // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CPID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_CP.Post;
          data := DateToStr(cds_CPVENCIMENTO.AsDateTime);
      end;
    end
    else
    begin
        decodedate(StrToDate(data), Ano, mes, dia);
        if I > 1 then
        mes:=mes+1;
        if mes<=12 then
        begin
          cds_CPVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_CPVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_CPNOTAFISCAL.Value:=cds_vendaNOTAFISCAL.Value;
          cds_CPEMISSAO.AsDateTime :=now;
          cds_CPID_SOCIO.AsInteger := cds_vendaID_CLIENTE.AsInteger;
          cds_CPSTATUS.Value:='Pendente';
          cds_CPTIPO_DOC.AsString := 'VD';
          cds_CPVALOR_NF.Value:=cds_vendaVALOR.Value;
          cds_CPVALOR_1VIA.Value:=parcela;
          cds_CPVALOR_RECEBER.Value:=parcela;
          cds_CPVALOR_DIF.Value:=0;
          cds_CPVALOR_A_REC.Value:=0;
          cds_CPVALOR_PAGO.Value:=0;
          cds_CPDESCONTO.Value:=0;
          cds_CPJUROS.Value:=0;
          // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CPID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
          //********************************************************************
          cds_CP.Post;
          data := DateToStr(cds_CPVENCIMENTO.AsDateTime);
    end;
   end;
   cds_CP.ApplyUpdates(0);
    if cds_CP.Active then
      cds_CP.Close;
    cds_CP.Params[0].AsInteger := cds_vendaID_VENDA.AsInteger;
    cds_CP.Open;
end;

procedure TfVenda_Finalizar.btnExcluirClick(Sender: TObject);
begin
   if (cds_CP.Active) then
     cds_CP.Close;
   cds_CP.Params[0].Clear;
   cds_CP.Params[0].AsInteger := cds_vendaID_VENDA.AsInteger;
   cds_CP.Open;
   if (not cds_CP.IsEmpty) then
   begin
     MessageDlg('Primeiro exclua as parcelas, pra depois excluir a Venda', mtError, [mbOK], 0);
     exit;
   end;
  inherited;

end;

procedure TfVenda_Finalizar.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_funcionario);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
   begin
     if cds_venda.State in [dsBrowse] then
       cds_venda.Edit;
      cds_vendaCODVENDEDOR.AsInteger :=
        dm.proc_funcionarioCOD_FUNCIONARIO.AsInteger;
      DBEdit2.Text := dm.proc_funcionarioNOME.AsString;
   end;
   finally
    dm.proc_funcionario.Close;
    fProcurar.Free;
   end;
end;

procedure TfVenda_Finalizar.SpeedButton12Click(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_VENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_vendaID_VENDA.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    DtSrc.DataSet.Post;
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
  end;
  inherited;
  tipo := 'VD';
  fCheques := TfCheques.Create(Application);
  try
    fCheques.ShowModal;
  finally
    fCheques.Free;
  end;
  cds_venda.Edit;
end;

procedure TfVenda_Finalizar.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfVenda_Finalizar.cds_vendaNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_vendaID_MOVIMENTO.AsInteger := codmov;
  cds_vendaID_CLIENTE.AsInteger := codcli;
end;

end.
