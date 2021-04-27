unit uMuda_Plano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, dxCore, dxButton,
  ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfMuda_Plano = class(TForm)
    DBGrid5: TDBGrid;
    Panel1: TPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit35: TDBEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    sds_CR: TSQLDataSet;
    sds_CRID_RECEBIMENTOS: TIntegerField;
    sds_CRID: TIntegerField;
    sds_CRVALOR_NF: TFloatField;
    sds_CRVALOR_RECEBER: TFloatField;
    sds_CRPARCELA: TIntegerField;
    sds_CRVENCIMENTO: TDateField;
    sds_CRDATA_PAG: TDateField;
    sds_CRSTATUS: TStringField;
    sds_CRVALOR_PAGO: TFloatField;
    sds_CRVALOR_DIF: TFloatField;
    sds_CRJUROS: TFloatField;
    sds_CRDESCONTO: TFloatField;
    sds_CRMULTA: TFloatField;
    sds_CREMISSAO: TDateField;
    sds_CRN_DOCUMENTO: TStringField;
    sds_CRCAIXA: TStringField;
    sds_CRFORMARECEBIMENTO: TStringField;
    sds_CRVALOR_A_REC: TFloatField;
    sds_CRVALOR_1VIA: TFloatField;
    sds_CRTIPO_DOC: TStringField;
    sds_CRID_SOCIO: TIntegerField;
    sds_CRLOTE: TIntegerField;
    sds_CRGEROU: TStringField;
    sds_CRDATA_DOC: TDateField;
    sds_CRGRUPO: TStringField;
    sds_CRID_BANCO: TIntegerField;
    sds_CRSITUACAO: TStringField;
    sds_CRSELECIONOU: TStringField;
    sds_CRPERCENTUALJUROS: TFloatField;
    sds_CRPERCENTUALMULTA: TFloatField;
    sds_CRPERCENTUALDESCONTO: TFloatField;
    sds_CRVALOROUTROSACRESCIMOS: TFloatField;
    sds_CRTITULO: TIntegerField;
    sds_CRSERIE: TStringField;
    dsp_CR: TDataSetProvider;
    cds_CR: TClientDataSet;
    cds_CRID_RECEBIMENTOS: TIntegerField;
    cds_CRID: TIntegerField;
    cds_CRVALOR_NF: TFloatField;
    cds_CRVALOR_RECEBER: TFloatField;
    cds_CRPARCELA: TIntegerField;
    cds_CRVENCIMENTO: TDateField;
    cds_CRDATA_PAG: TDateField;
    cds_CRSTATUS: TStringField;
    cds_CRVALOR_PAGO: TFloatField;
    cds_CRVALOR_DIF: TFloatField;
    cds_CRJUROS: TFloatField;
    cds_CRDESCONTO: TFloatField;
    cds_CRMULTA: TFloatField;
    cds_CREMISSAO: TDateField;
    cds_CRN_DOCUMENTO: TStringField;
    cds_CRCAIXA: TStringField;
    cds_CRFORMARECEBIMENTO: TStringField;
    cds_CRVALOR_A_REC: TFloatField;
    cds_CRVALOR_1VIA: TFloatField;
    cds_CRTIPO_DOC: TStringField;
    cds_CRID_SOCIO: TIntegerField;
    cds_CRLOTE: TIntegerField;
    cds_CRGEROU: TStringField;
    cds_CRDATA_DOC: TDateField;
    cds_CRGRUPO: TStringField;
    cds_CRID_BANCO: TIntegerField;
    cds_CRSITUACAO: TStringField;
    cds_CRSELECIONOU: TStringField;
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRTITULO: TIntegerField;
    cds_CRSERIE: TStringField;
    dtsrc_CR1: TDataSource;
    pendente: TSQLDataSet;
    pendentePENDENTE: TFloatField;
    ds_pendente: TDataSource;
    mdta1: TMaskEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Label5: TLabel;
    mdtaContrato: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMuda_Plano: TfMuda_Plano;
  varparcelas, varrenegiciada, varnovaparc : string;
  varmudou : integer;

implementation

uses uSocio_Cadastro, UDM;

{$R *.dfm}

procedure TfMuda_Plano.FormShow(Sender: TObject);
begin

  if (dm.cds_CR.Active) then
    dm.cds_CR.Close;

  if (cds_CR.Active) then
    cds_CR.Close;
  cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
  cds_cr.Open;

  if (pendente.Active) then
    pendente.Close;
  pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
  pendente.Open;

  mdta1.Text := DateToStr(Now);
  Edit2.Text := '1';
  Edit3.Text := '0';

end;

procedure TfMuda_Plano.dxButton1Click(Sender: TObject);
var
   ano, mes, dia: word;
   I, np: integer;
   data, data1 :string;
   Sobra, parcela : double;
begin
    Memo1.Lines.Clear;
    Memo2.Lines.Clear;
    Memo3.Lines.Clear;
    varparcelas := '';
    varrenegiciada := '';
    varnovaparc := '';

   if mdtaContrato.Text = '  /  /    ' then
   begin
    MessageDlg('preencha a Data de Inicio do Novo Contrato, '+#13+#10+'data em que o novo Plano entrará em vigor..', mtWarning, [mbOK], 0);
    exit;
   end;

   cds_CR.First;
   while not cds_cr.Eof do
   begin
      {if (cds_CRSTATUS.AsString = 'Cobrança') then
      begin
        varparcelas := varparcelas + ' Venc.: ' + DateToStr(cds_CRVENCIMENTO.AsDateTime);
        varparcelas := varparcelas + ' - Status :' + cds_CRSTATUS.AsString;
        varparcelas := varparcelas + ' - Valor :' + Format('%-6.2n',[cds_CRVALOR_NF.Value]);
        varparcelas := varparcelas + ' - Situação : Parcela Excluida  ';
        Memo1.Lines.Add(varparcelas);
        varparcelas := '';
        cds_cr.Delete;
        cds_CR.First;
        cds_cr.ApplyUpdates(0);
      end
      else
      begin}
        varrenegiciada := varrenegiciada + ' Venc.: ' + DateToStr(cds_CRVENCIMENTO.AsDateTime);
        varrenegiciada := varrenegiciada + ' - Status :' + cds_CRSTATUS.AsString;
        varrenegiciada := varrenegiciada + ' - Valor :' + Format('%-6.2n',[cds_CRVALOR_NF.Value]);
        varrenegiciada := varrenegiciada + ' - Situação : ACORDO  ';
        Memo2.Lines.Add(varrenegiciada);
        varrenegiciada := '';
        cds_CR.Edit;
        cds_CRSTATUS.AsString := 'Acordo';
        cds_cr.ApplyUpdates(0);
        cds_cr.Next;
      //end;
   end;

   //***************************************
   // gera contas a receber

   data :=mdta1.Text; // pego a data de vencimento

   //testo se teve entrada
   if Edit3.Text <>'0' then
   begin
     Sobra := pendentePENDENTE.Value - StrToFloat(Edit3.Text);
     if (StrToInt(Edit2.Text) > 1) then
       np:=StrToInt(Edit2.Text) - 1;
     if Sobra <> 0 then
     parcela := Sobra / np;
   end
   else //se ñ teve entrada
    parcela := pendentePENDENTE.Value / StrToFloat(Edit2.Text);
   //**************************************************************************

   np:=StrToInt(Edit2.Text);  // np recebe a quantidade de parcelas

   // abro a tabela Contas a receber e para inserir nova linha
   if not dtsrc_CR1.DataSet.Active then
      dtsrc_CR1.DataSet.Open;
   dtsrc_CR1.DataSet.Append;

   // aqui começa a inserção das parcelas
   for I:=1 to np do
   begin
    if cds_CR.State <> dsinsert then
       cds_CR.Append;
    cds_CRID.AsInteger:= dm.cds_socioID_SOCIO.AsInteger;
    cds_CRID_SOCIO.AsInteger:= dm.cds_socioID_SOCIO.AsInteger;
    cds_CRGRUPO.AsString := dm.cds_socioGRUPO.AsString;
    cds_CRPARCELA.AsInteger:=I;
    cds_CRVALOR_NF.Value:=parcela;
    cds_CRVALOR_A_REC.Value:=parcela;
    cds_CRJUROS.Value:=0;
    cds_CRVALOR_DIF.Value:=0;
    cds_CRDESCONTO.Value:=0;
    cds_CRMULTA.Value:=0;

    if Edit3.Text <> '0' then    //se tiver entrada preencho os dados do pgto
    begin
      if I=1 then //se for a primeira Parcela
      begin
        cds_CRVENCIMENTO.AsDateTime := now;
        cds_CRDATA_PAG.AsDateTime :=now;
        cds_CREMISSAO.AsDateTime :=now;
        cds_CRSTATUS.Value:='Pago';
        cds_CRVALOR_RECEBER.Value:=StrToFloat(Edit3.Text);
        cds_CRVALOR_1VIA.Value:=StrToFloat(Edit3.Text);
        cds_CRVALOR_PAGO.Value:=StrToFloat(Edit3.Text);
        // gera codigo para tab. recebimentos
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
        //********************************************************************
         cds_CR.Post;
      end
      else  // se ñ for a primeira parcela
      begin
        decodedate(StrToDate(data), Ano, mes, dia);
        if I > 1 then
          mes:=mes+1;
        if mes<=12 then
        begin
          cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_CREMISSAO.AsDateTime :=now;
          cds_CRSTATUS.Value:='Pendente';
          cds_CRVALOR_RECEBER.Value:=parcela;
          cds_CRVALOR_1VIA.Value:=parcela;
          cds_CRVALOR_PAGO.Value:=0;
          // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
          //********************************************************************
          cds_CR.Post;
          data := DateToStr(cds_CRVENCIMENTO.AsDateTime);
      end;
    end
    else // aqui só executo se entrada for maior que zero
    begin
        decodedate(StrToDate(data), Ano, mes, dia);
        if I > 1 then
          mes:=mes+1;
        if mes<=12 then
        begin
          cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_CRSTATUS.Value:='Pendente';
          cds_CREMISSAO.AsDateTime :=now;
          cds_CRVALOR_RECEBER.Value:=parcela;
          cds_CRVALOR_1VIA.Value:=parcela;
          cds_CRVALOR_PAGO.Value:=0;
          // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
          //********************************************************************
          cds_CR.Post;
          data := DateToStr(cds_CRVENCIMENTO.AsDateTime);
       end;
   end;

   cds_CR.ApplyUpdates(0);

    if (cds_CR.Active) then
      cds_CR.Close;
    cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    cds_CR.Open;

   cds_CR.First;
   while not cds_cr.Eof do
   begin
      if (cds_CRSTATUS.AsString = 'Pendente') then
      begin
        varnovaparc := varnovaparc + ' Venc.: ' + DateToStr(cds_CRVENCIMENTO.AsDateTime);
        varnovaparc := varnovaparc + ' - Status :' + cds_CRSTATUS.AsString;
        varnovaparc := varnovaparc + ' - Valor :' + Format('%-6.2n',[cds_CRVALOR_NF.Value]);
        varnovaparc := varnovaparc + ' - Situação : Parcela à Receber    ';
        Memo3.Lines.Add(varnovaparc);
        varnovaparc := '';
      end;
      cds_cr.Next;
   end;
   varmudou := 1;
end;

procedure TfMuda_Plano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    DTA_ALT_PLANO := mdtaContrato.Text;

    if (pendente.Active) then
        pendente.Close;
        
    if (cds_CR.Active) then
        cds_CR.Close;

    if dm.cds_CR.Active then
      dm.cds_CR.Close;
    dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_CR.Open;

end;

procedure TfMuda_Plano.dxButton2Click(Sender: TObject);
begin
    Memo1.Lines.Clear;
    Memo2.Lines.Clear;
    varparcelas := '';
    varrenegiciada := '';
    varnovaparc := '';

   if mdtaContrato.Text = '  /  /    ' then
   begin
    MessageDlg('preencha a Data de Inicio do Novo Contrato, '+#13+#10+'data em que o novo Plano entrará em vigor..', mtWarning, [mbOK], 0);
    exit;
   end;

   cds_CR.First;
   while not cds_cr.Eof do
   begin
      if (cds_CRSTATUS.AsString = 'Cobrança') then
      begin
        varparcelas := varparcelas + ' Venc.: ' + DateToStr(cds_CRVENCIMENTO.AsDateTime);
        varparcelas := varparcelas + ' - Status :' + cds_CRSTATUS.AsString;
        varparcelas := varparcelas + ' - Valor :' + Format('%-6.2n',[cds_CRVALOR_NF.Value]);
        varparcelas := varparcelas + ' - Situação : Parcela Excluida   | ';
        Memo1.Lines.Add(varparcelas);
        varparcelas := '';
        cds_cr.Delete;
        cds_CR.First;
        cds_cr.ApplyUpdates(0);
      end
      else
      begin
        varrenegiciada := varrenegiciada + ' Venc.: ' + DateToStr(cds_CRVENCIMENTO.AsDateTime);
        varrenegiciada := varrenegiciada + ' - Status :' + cds_CRSTATUS.AsString;
        varrenegiciada := varrenegiciada + ' - Valor :' + Format('%-6.2n',[cds_CRVALOR_NF.Value]);
        varrenegiciada := varrenegiciada + ' - Situação : Parcela Cancelada  | ';
        Memo2.Lines.Add(varrenegiciada);
        varrenegiciada := '';
        cds_CR.Edit;
        cds_CRSTATUS.AsString := 'Cancelado';
        cds_cr.ApplyUpdates(0);
        cds_cr.Next;
      end;
   end;
      varmudou := 1;
end;

procedure TfMuda_Plano.dxButton3Click(Sender: TObject);
begin
  Close;
end;

end.
