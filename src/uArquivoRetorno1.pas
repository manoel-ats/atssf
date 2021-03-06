unit uArquivoRetorno1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, DB, DBXpress, SqlExpr,
  DBClient, Provider, ExtCtrls, MMJPanel, rpcompobase, rpvclreport,rplabelitem;

type
  TfArquivoRetorno1 = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    sdsREC: TSQLDataSet;
    dspREC: TDataSetProvider;
    cdsREC: TClientDataSet;
    DtSrcREC: TDataSource;
    cdsRECID_RECEBIMENTOS: TIntegerField;
    cdsRECID: TIntegerField;
    cdsRECVALOR_NF: TFloatField;
    cdsRECVALOR_RECEBER: TFloatField;
    cdsRECPARCELA: TIntegerField;
    cdsRECVENCIMENTO: TDateField;
    cdsRECDATA_PAG: TDateField;
    cdsRECSTATUS: TStringField;
    cdsRECVALOR_PAGO: TFloatField;
    cdsRECVALOR_DIF: TFloatField;
    cdsRECJUROS: TFloatField;
    cdsRECDESCONTO: TFloatField;
    cdsRECMULTA: TFloatField;
    cdsRECEMISSAO: TDateField;
    cdsRECN_DOCUMENTO: TStringField;
    cdsRECCAIXA: TStringField;
    cdsRECFORMARECEBIMENTO: TStringField;
    cdsRECVALOR_A_REC: TFloatField;
    cdsRECTITULO: TIntegerField;
    cdsRECVALOR_1VIA: TFloatField;
    cdsRECID_SOCIO: TIntegerField;
    cdsRECLOTE: TIntegerField;
    cdsRECGEROU: TStringField;
    cdsRECDATA_DOC: TDateField;
    cdsRECGRUPO: TStringField;
    cdsRECID_BANCO: TIntegerField;
    cdsRECSITUACAO: TStringField;
    cdsRECTIPO_DOC: TStringField;
    cdsRECSELECIONOU: TStringField;
    cdsRECSERIE: TStringField;
    cdsRECPERCENTUALJUROS: TFloatField;
    cdsRECPERCENTUALMULTA: TFloatField;
    cdsRECPERCENTUALDESCONTO: TFloatField;
    cdsRECVALOROUTROSACRESCIMOS: TFloatField;
    cdsRECCODIGO: TIntegerField;
    cdsRECOBS: TGraphicField;
    cdsRECENTRADA: TFloatField;
    cdsRECCODCCUSTO: TSmallintField;
    cdsRECID_DEPREC: TIntegerField;
    cdsRECNOTAFISCAL: TIntegerField;
    cdsRECID_VENDA: TIntegerField;
    cdsRECID_ACORDO: TIntegerField;
    cdsRECN_BOLETO: TStringField;
    sdsRECID_RECEBIMENTOS: TIntegerField;
    sdsRECID: TIntegerField;
    sdsRECVALOR_NF: TFloatField;
    sdsRECVALOR_RECEBER: TFloatField;
    sdsRECPARCELA: TIntegerField;
    sdsRECVENCIMENTO: TDateField;
    sdsRECDATA_PAG: TDateField;
    sdsRECSTATUS: TStringField;
    sdsRECVALOR_PAGO: TFloatField;
    sdsRECVALOR_DIF: TFloatField;
    sdsRECJUROS: TFloatField;
    sdsRECDESCONTO: TFloatField;
    sdsRECMULTA: TFloatField;
    sdsRECEMISSAO: TDateField;
    sdsRECN_DOCUMENTO: TStringField;
    sdsRECCAIXA: TStringField;
    sdsRECFORMARECEBIMENTO: TStringField;
    sdsRECVALOR_A_REC: TFloatField;
    sdsRECTITULO: TIntegerField;
    sdsRECVALOR_1VIA: TFloatField;
    sdsRECID_SOCIO: TIntegerField;
    sdsRECLOTE: TIntegerField;
    sdsRECGEROU: TStringField;
    sdsRECDATA_DOC: TDateField;
    sdsRECGRUPO: TStringField;
    sdsRECID_BANCO: TIntegerField;
    sdsRECSITUACAO: TStringField;
    sdsRECTIPO_DOC: TStringField;
    sdsRECSELECIONOU: TStringField;
    sdsRECSERIE: TStringField;
    sdsRECPERCENTUALJUROS: TFloatField;
    sdsRECPERCENTUALMULTA: TFloatField;
    sdsRECPERCENTUALDESCONTO: TFloatField;
    sdsRECVALOROUTROSACRESCIMOS: TFloatField;
    sdsRECCODIGO: TIntegerField;
    sdsRECOBS: TGraphicField;
    sdsRECENTRADA: TFloatField;
    sdsRECCODCCUSTO: TSmallintField;
    sdsRECID_DEPREC: TIntegerField;
    sdsRECNOTAFISCAL: TIntegerField;
    sdsRECID_VENDA: TIntegerField;
    sdsRECID_ACORDO: TIntegerField;
    sdsRECN_BOLETO: TStringField;
    sdsRECNOME_SOCIO: TStringField;
    sdsRECGRUPO_1: TStringField;
    sdsRECN_INSCRICAO: TIntegerField;
    cdsRECNOME_SOCIO: TStringField;
    cdsRECGRUPO_1: TStringField;
    cdsRECN_INSCRICAO: TIntegerField;
    BitBtn3: TBitBtn;
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    sqs: TSQLDataSet;
    Memo1: TMemo;
    Label3: TLabel;
    sdsRECCOBRADOR: TIntegerField;
    sdsRECARQUIVORETORNO: TGraphicField;
    sdsRECNOMEARQUIVORETORNO: TStringField;
    cdsRECCOBRADOR: TIntegerField;
    cdsRECARQUIVORETORNO: TGraphicField;
    cdsRECNOMEARQUIVORETORNO: TStringField;
    BitBtn4: TBitBtn;
    VCLReport1: TVCLReport;
    sds_cbr: TSQLDataSet;
    dsp_cbr: TDataSetProvider;
    cds_cbr: TClientDataSet;
    cds_cbrID_CBR: TIntegerField;
    cds_cbrDATABAIXA: TDateField;
    cds_cbrNOMECBR: TStringField;
    cds_cbrOBS: TGraphicField;
    sds_cbrID_CBR: TIntegerField;
    sds_cbrDATABAIXA: TDateField;
    sds_cbrNOMECBR: TStringField;
    sds_cbrOBS: TGraphicField;
    RadioGroup1: TRadioGroup;
    Label4: TLabel;
    Edit5: TEdit;
    BitBtn16: TBitBtn;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    cdsB: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ComboBox1: TComboBox;
    DataSource2: TDataSource;
    BitBtn5: TBitBtn;
    sdsID: TStringField;
    sdsTITULO: TIntegerField;
    sdsDATA: TStringField;
    sdsVALOR: TStringField;
    sdsCENTAVOS: TStringField;
    cdsID: TStringField;
    cdsTITULO: TIntegerField;
    cdsDATA: TStringField;
    cdsVALOR: TStringField;
    cdsCENTAVOS: TStringField;
    SQLDataSet1ID: TStringField;
    SQLDataSet1TITULO: TIntegerField;
    SQLDataSet1DATA: TStringField;
    SQLDataSet1VALOR: TStringField;
    SQLDataSet1CENTAVOS: TStringField;
    cdsBID: TStringField;
    cdsBTITULO: TIntegerField;
    cdsBDATA: TStringField;
    cdsBVALOR: TStringField;
    cdsBCENTAVOS: TStringField;
    Label7: TLabel;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider2: TDataSetProvider;
    cdsRecS: TClientDataSet;
    ComboBox2: TComboBox;
    SQLDataSet2VALOR_NF: TFloatField;
    SQLDataSet2VALOR_RECEBER: TFloatField;
    SQLDataSet2VENCIMENTO: TDateField;
    SQLDataSet2DATA_PAG: TDateField;
    SQLDataSet2STATUS: TStringField;
    SQLDataSet2VALOR_PAGO: TFloatField;
    SQLDataSet2EMISSAO: TDateField;
    SQLDataSet2VALOR_A_REC: TFloatField;
    SQLDataSet2TITULO: TIntegerField;
    SQLDataSet2VALOR_1VIA: TFloatField;
    SQLDataSet2ID_SOCIO: TIntegerField;
    SQLDataSet2LOTE: TIntegerField;
    SQLDataSet2GEROU: TStringField;
    SQLDataSet2GRUPO: TStringField;
    SQLDataSet2COBRADOR: TIntegerField;
    SQLDataSet2NOMEARQUIVORETORNO: TStringField;
    SQLDataSet2NOME_SOCIO: TStringField;
    SQLDataSet2N_INSCRICAO: TIntegerField;
    SQLDataSet2GRUPO_1: TStringField;
    cdsRecSVALOR_NF: TFloatField;
    cdsRecSVALOR_RECEBER: TFloatField;
    cdsRecSVENCIMENTO: TDateField;
    cdsRecSDATA_PAG: TDateField;
    cdsRecSSTATUS: TStringField;
    cdsRecSVALOR_PAGO: TFloatField;
    cdsRecSEMISSAO: TDateField;
    cdsRecSVALOR_A_REC: TFloatField;
    cdsRecSTITULO: TIntegerField;
    cdsRecSVALOR_1VIA: TFloatField;
    cdsRecSID_SOCIO: TIntegerField;
    cdsRecSLOTE: TIntegerField;
    cdsRecSGEROU: TStringField;
    cdsRecSGRUPO: TStringField;
    cdsRecSCOBRADOR: TIntegerField;
    cdsRecSNOMEARQUIVORETORNO: TStringField;
    cdsRecSNOME_SOCIO: TStringField;
    cdsRecSN_INSCRICAO: TIntegerField;
    cdsRecSGRUPO_1: TStringField;
    sdsVT: TFloatField;
    cdsVT: TFloatField;
    SQLDataSet1VT: TFloatField;
    cdsBVT: TFloatField;
    c_retorno: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    SQLDataSet3: TSQLDataSet;
    DataSource3: TDataSource;
    BitBtn6: TBitBtn;
    DBGrid3: TDBGrid;
    BitBtn7: TBitBtn;
    SQLDataSet4: TSQLDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    SQLDataSet3ID: TStringField;
    SQLDataSet3TITULO: TIntegerField;
    SQLDataSet3DATA: TStringField;
    SQLDataSet3VALOR: TStringField;
    SQLDataSet3CENTAVOS: TStringField;
    SQLDataSet3VT: TFloatField;
    ClientDataSet1: TClientDataSet;
    IntegerField2: TIntegerField;
    DateField2: TDateField;
    FloatField2: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    c_retornoID: TStringField;
    c_retornoTITULO: TIntegerField;
    c_retornoDATA: TStringField;
    c_retornoVALOR: TStringField;
    c_retornoCENTAVOS: TStringField;
    c_retornoVT: TFloatField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    de : string;
    procedure baixa;
    procedure naoencontrou;
    procedure encontrou;
    procedure baixa1;
    procedure naoencontrou1;
    procedure encontrou1;
    procedure atualizacbr;
    { Public declarations }
  end;

var
  fArquivoRetorno1: TfArquivoRetorno1;
  v_pago, v_titulo, v_resto : double;
  codigo, n_titulo : integer;
  texto_memo, nome_cbr, executou : string;

implementation

uses UDM, uBaixaretorno1 ,  uProcurar;

{$R *.dfm}

procedure TfArquivoRetorno1.BitBtn1Click(Sender: TObject);
  var i , TEM: integer;
  Txt: Textfile;
  Entrada , tipo ,valorr, val: string;
 // txt : TStrings;
  tabela  : string;
 // campo : variant;
  TD: TTransactionDesc;
begin
  DBGrid3.Visible := False;
  DBGrid1.Visible := True;
  if (cds.Active) then
     cds.Close;

  if (sqs.Active) then
    sqs.Close;
  tabela := 'TABRETORNO';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQl.StartTransaction(TD);
    DM.SQl.ExecuteDirect('DELETE FROM TABRETORNO');
    DM.SQl.Commit(TD);
    DM.SQl.Connected := False;
  end;

  if (sqs.Active) then
    sqs.Close;

    if OpenDialog1.Execute then
    begin
      cds.Open;
      AssignFile(Txt,(OpenDialog1.FileName));// NOME do arquivo texto
      Reset(Txt);
      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);

      begin
        tipo := Copy(Entrada,1,02);
        valorr := Copy(Entrada,367,11);
        val := (IntToStr(Length(Entrada)));
        if(val <> '400')then
        begin
          MessageDlg(' Esse Arquivo ? CNAB 240'+#13+#10+'Use outro Bot?o para Abrir', mtError, [mbOK], 0);
        exit;
        end;


        if ((Tipo = '10')and(valorr <> '00000000000')) then
        begin
          cds.Append;
          cds.FieldByName('ID').Value:= Copy(Entrada,1,02);
          cds.FieldByName('TITULO').Value:= Copy(Entrada,64,06);
          cds.FieldByName('DATA').Value:= Copy(Entrada,111,02)  + '/'  + Copy(Entrada,113,02) + '/' + Copy(Entrada,115,02);   //(11,06)
          cds.FieldByName('VALOR').Value:= Copy(Entrada,367,11);
          cds.FieldByName('CENTAVOS').Value:= Copy(Entrada,378,02);
          cds.FieldByName('VT').Value:= Copy(Entrada,367,11) + ',' + Copy(Entrada,378,02);
          cds.Post;
        end;
      end;


      end;
      cds.ApplyUpdates(0);
      cds.First;
      CloseFile(Txt);
    end;

    if (cdsB.Active) then
      cdsB.Close;
    cdsB.Open;

   Label5.Caption := IntToStr(cdsB.RecordCount);
    if (Label5.Caption = '0' ) then
         MessageDlg('Esse ? Apenas Arquivo de Confer?ncia do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce n?o precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

   Label3.Caption := OpenDialog1.FileName;
   Label7.Caption := ExtractFileName(OpenDialog1.FileName);

 {
  txt : TStrings;
  tabela,tipo,strExporta,strExporta1, strApaga, strInsere, nome_txt : string;
  campo : variant;
  TD: TTransactionDesc;
begin

  if (cds.Active) then
     cds.Close;

  if (sqs.Active) then
    sqs.Close;
  tabela := 'TABRETORNO';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQl.StartTransaction(TD);
    DM.SQl.ExecuteDirect('DELETE FROM TABLE TABRETORNO');
    DM.SQl.Commit(TD);
    DM.SQl.Connected := False;
  end;

  if OpenDialog1.Execute then
      nome_txt := OpenDialog1.FileName;

  Label3.Caption := OpenDialog1.FileName;

  if not FileExists(nome_txt) then
  begin
     MessageDlg('Arquivo n?o existe ou n?o est? no local indicado ' + nome_txt + '?', mtError, [mbOK], 0);
     exit;
  end;
   strExporta := '';

   DM.SQl.Connected := True;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   DM.SQl.StartTransaction(TD);
   try

     strExporta := 'CREATE TABLE TABRETORNO EXTERNAL FILE ';
     strExporta := strExporta + '''' + nome_txt + ''' ';

     // Aqui esta certo para ler arquivo com ergistro

     strExporta := strExporta + '(ID CHAR(2),CAMPO1 CHAR(61), TITULO CHAR(6),CAMPO2 CHAR(2), ';
     strExporta := strExporta + 'CAMPO3 CHAR(39), ';
     strExporta := strExporta + 'DATA CHAR(6), CAMPO5 CHAR(36),campo9 char(13),';
     strExporta := strExporta + 'CAMPO7 CHAR(201),VALOR CHAR(11), centavos char(2), campo8 CHAR(22),NEWLINE CHAR (1))';


     DM.SQl.ExecuteDirect(strExporta);
     DM.SQl.Commit(TD);
   except
     DM.SQl.Rollback(TD);
     MessageDlg('Erro ao Criar a Tabela.' + #13 + #10 + 'Altere no firebird.conf a linha' +
     #13 + #10 + '#ExternalFileAccess = None' + #13+#10 + 'para :' + #13+#10 +
     'ExternalFileAccess = Full' , mtError, [mbOK], 0);
     exit;
   end;
   //cds.CommandText := '';
   //cds.CommandText := 'Select * from TABRETORNO where TIPO = ' + '''' + 'U' + '''';

   cds.Open;
   Label5.Caption := IntToStr(cds.RecordCount);
   if (Label5.Caption = '0' ) then
         MessageDlg('Esse ? Apenas Arquivo de Confer?ncia do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce n?o precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);
 }
end;

procedure TfArquivoRetorno1.DBGrid1DblClick(Sender: TObject);
begin
     if (RadioGroup1.ItemIndex = 0) then
     begin
        if (cdsREC.Active) then
           cdsREC.Close;
        cdsREC.Params[0].Clear;
     ///   cdsREC.Params[1].AsInteger := cdsTITULO.AsInteger;
        cdsREC.open;
     end;

     if (RadioGroup1.ItemIndex = 1) then
     begin
        if (cdsREC.Active) then
           cdsREC.Close;
        cdsREC.Params[1].Clear;
     ///   cdsREC.Params[0].AsInteger := StrToInt(cdsTITULO.asstring);
        cdsREC.open;
     end;
     if (cdsREC.IsEmpty) then
     begin
       MessageDlg('Arquivo n?o encontrado', mtWarning, [mbOK], 0);
     end;
end;

procedure TfArquivoRetorno1.BitBtn2Click(Sender: TObject);
begin
    if cds.State in [dsInactive] then
       exit;
    if (Edit5.Text = '') then
    begin
      MessageDlg('Informe o Codigo do Recebedor', mtWarning, [mbOK], 0);
      exit
    end;

    cds.First;
    cdsB.First;
    c_retorno.Open;
    c_retorno.First;
    executou := '';
    while not cds.Eof do
    begin
       //inicializo as variaveis
       v_pago := 0;
       v_titulo := 0;
       v_resto := 0;
       texto_memo := '';

       if (cdsREC.Active) then
           cdsREC.Close;
       cdsREC.Params[0].Clear;
       cdsREC.Params[1].Clear;
       cdsREC.Params[0].AsInteger := cdsTITULO.AsInteger;
       cdsREC.open;

       Label10.Caption := IntToStr(cdsTITULO.AsInteger);

       if (cdsVALOR.Value = '0' ) then
       begin
         MessageDlg('Esse ? Apenas Arquivo de Confer?ncia do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce n?o precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

          exit;
       end
       else
         if (not cdsREC.IsEmpty) then // se a busca conter dados
       begin
         // pesso a confirma??o se o t?tulo ? o correto
       //  if (MessageDlg('os Dados da Busca est?o corretos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
       if( StrToFloat(cdsVALOR.Value) = cdsRECVALOR_NF.Value ) then
             encontrou
         else
             naoencontrou;
       end;

       if (executou <> 'SIM') then
       begin
         if (cdsREC.IsEmpty) then // se a busca conter dados
           naoencontrou;
       end;

       executou := '';
       cds.Next;
       c_retorno.Next;
       cdsB.Next;
    end;
   // atualizacbr;
   MessageDlg('Leitura do Arquivo Finalizada.', mtInformation, [mbOK], 0);
end;

procedure TfArquivoRetorno1.baixa;
begin
    v_pago := cdsVT.AsFloat;
    v_titulo := cdsRECVALOR_RECEBER.AsFloat;

    if cdsREC.State in [dsBrowse] then
       cdsREC.Edit;
    cdsRECDATA_PAG.AsDateTime := now;
    cdsRECSTATUS.AsString := 'Pago';
    cdsRECVALOR_A_REC.AsFloat := cdsRECVALOR_RECEBER.AsFloat;
    cdsRECVALOR_PAGO.AsFloat := cdsRECVALOR_NF.AsFloat;
    if Edit4.Text <> '' then
     cdsRECCOBRADOR.AsInteger := StrToInt(Edit4.Text);
    texto_memo := texto_memo + 'COBST_SR71 : ';
    texto_memo := 'T?tulo n?: ' + IntToStr(cdsTITULO.AsInteger) + ' Data: ' +
       cdsDATA.AsString + ' valor R$ : ' +  FloatToStr(cdsVT.AsFloat );
    cdsRECARQUIVORETORNO.Value := texto_memo;
    cdsRECNOMEARQUIVORETORNO.AsString := ExtractFileName(OpenDialog1.FileName);
    cdsREC.ApplyUpdates(0);
    texto_memo := texto_memo + ' | Baixado - (Grupo : ' + cdsRECGRUPO_1.AsString;
    texto_memo := texto_memo + ' Inscri??o : ' + IntToStr(cdsRECN_INSCRICAO.AsInteger);
    texto_memo := texto_memo + ' Inscri??o : ' + cdsRECNOME_SOCIO.AsString;
    texto_memo := texto_memo + ' T?tulo : ' + IntToStr(cdsRECTITULO.AsInteger);
    texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(cdsRECVALOR_RECEBER.AsFloat) + ')';
    Memo1.Lines.Add(texto_memo);
    texto_memo := '';
    n_titulo := cdsTITULO.AsInteger;
    nome_cbr := ExtractFileName(OpenDialog1.FileName);
    if (v_pago > v_titulo) then
    begin
      v_resto := v_pago - v_titulo;
      codigo := cdsRECID_SOCIO.AsInteger;
      de := 'baixa';
      fBaixaretorno1.ShowModal;
    end;

end;

procedure TfArquivoRetorno1.naoencontrou;
begin

     if (cdsREC.Active) then
         cdsREC.Close;
     cdsREC.Params[1].Clear;
     cdsREC.Params[0].Clear;
     cdsREC.Params[1].AsInteger := cdsTITULO.AsInteger;
     cdsREC.open;

     if (not cdsREC.IsEmpty) then // se a busca conter dados
     begin
       // pesso a confirma??o se o t?tulo ? o correto
       if (MessageDlg('os Dados da Busca est?o corretos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
       begin
           encontrou;
       end
       else
       begin
       texto_memo := texto_memo + 'N?o encontrado T?tulo n?  ' + IntToStr(cdsTITULO.AsInteger);
       texto_memo := texto_memo + ' Data : ' + cdsDATA.AsString;
       texto_memo := texto_memo + ' Valor R$ : ' + cdsVT.AsString + ')';
         Memo1.Lines.Add(texto_memo);
         texto_memo := '';
         executou := 'SIM';
       end;
     end;

    if (executou = '') then
    begin
         texto_memo := texto_memo + 'T?tulo n?  ' + IntToStr(cdsTITULO.AsInteger) + ', j? Baixado';
         texto_memo := texto_memo + ' Data : ' + cdsDATA.AsString;
         texto_memo := texto_memo + ' Valor R$ : ' + cdsVT.AsString + ')';
         Memo1.Lines.Add(texto_memo);
         texto_memo := '';
         executou := 'SIM';
    end;
end;

procedure TfArquivoRetorno1.encontrou;
begin
   if cdsRECSTATUS.AsString <> 'Pago' then {** se t?tulo Pendente baixo}
   begin
    //  if MessageDlg('Confirma baixa desse t?tulo', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        baixa;
   end
   else
   begin

     MessageDlg('T?tulo ' + cdsTITULO.AsString + ' J? foi Baixado', mtInformation, [mbOK], 0);
   end;
end;

procedure TfArquivoRetorno1.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfArquivoRetorno1.FormClose(Sender: TObject;  var Action: TCloseAction) ;
var
  txt : TStrings;
  tabela,  tipo,strExporta, strApaga, strInsere, nome_txt : string;
  campo : variant;
  TD: TTransactionDesc;
begin

  if (cds.Active) then
     cds.Close;

  if (sqs.Active) then
    sqs.Close;
  tabela := 'TABRETORNO';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQl.StartTransaction(TD);
    DM.SQl.ExecuteDirect('DELETE FROM TABRETORNO');
    DM.SQl.Commit(TD);
    DM.SQl.Connected := False;
  end;

  if (sqs.Active) then
    sqs.Close;

end;

procedure TfArquivoRetorno1.atualizacbr;
begin
 { if (not cds_cbr.Active) then
     cds_cbr.Open;
  cds_cbr.Append;
  // pego o generator
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CBR, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_cbrID_CBR.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  cds_cbrDATABAIXA.AsDateTime := Now;
  cds_cbrNOMECBR.AsString := ExtractFileName(fArquivoRetorno1.OpenDialog1.FileName);
  cds_cbrOBS.Value := Memo1.Text;
  cds_cbr.ApplyUpdates(0);
  cds_cbr.Close;
  }
end;

procedure TfArquivoRetorno1.BitBtn16Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit4.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit5.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;
end;


procedure TfArquivoRetorno1.BitBtn4Click(Sender: TObject);
var nomearq : TRpLabel;
begin
  ComboBox1.Text := Label3.Caption;
  VCLReport1.Title := str_relatorio + 'santander.rep';
  VCLReport1.FileName := str_relatorio + 'santander.rep';
  nomearq:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel3'));
  // Arquivo
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '') ) then
  begin
    nomearq.Text := ComboBox1.Text;
  end;
  VCLReport1.Execute;
end;

procedure TfArquivoRetorno1.BitBtn5Click(Sender: TObject);
var nomearq : TRpLabel;
     sqlR : string;
begin
  if cdsRecS.Active then
    cdsRecS.Close;
   sqlR := 'SELECT rec.valor_nf,rec.valor_receber,rec.vencimento,rec.data_pag,rec.status,rec.valor_pago,rec.emissao,'+
    'rec.valor_a_rec,rec.titulo,rec.valor_1via, rec.id_socio,rec.lote,rec.gerou,rec.grupo,'+
    'rec.cobrador,rec.nomearquivoretorno, socios.nome_socio,socios.n_inscricao, socios.grupo '+
   'from socios  inner join recebimentos rec on (socios.id_socio = rec.id_socio)where rec.NOMEARQUIVORETORNO = ';
   sqlR := sqlR + QuotedStr(Label7.Caption) ;
   cdsRecS.CommandText := sqlR ;
  cdsRecS.Open;
  ComboBox2.Text := Label7.Caption;
  VCLReport1.FileName := str_relatorio + 'rec_santander.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
  VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;
  nomearq:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel3'));
  // Arquivo
  if((ComboBox2.Text <> '')or(ComboBox2.Text = '') ) then
  begin
    nomearq.Text := ComboBox2.Text;
  end;
  VCLReport1.Execute;
end;

procedure TfArquivoRetorno1.BitBtn6Click(Sender: TObject);
  var i , TEM: integer;
  Txt: Textfile;
  Entrada , tipo ,valorr, ocorrencia , val: string;
  tabela  : string;
  TD: TTransactionDesc;

begin
  DBGrid1.Visible := False;      
  DBGrid3.Visible := True;
  if (cds.Active) then
     cds.Close;
  if (c_retorno.Active) then
     c_retorno.Close;

  if (sqs.Active) then
    sqs.Close;
  tabela := 'TABRETORNO';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQl.StartTransaction(TD);
    DM.SQl.ExecuteDirect('DELETE FROM TABRETORNO');
    DM.SQl.Commit(TD);
    DM.SQl.Connected := False;
  end;

    if (sqs.Active) then
    sqs.Close;

    if OpenDialog1.Execute then
    begin
      cds.Open;
      c_retorno.Open;
      AssignFile(Txt,(OpenDialog1.FileName));{ NOME do arquivo texto}
      Reset(Txt);

      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
        tipo := Copy(Entrada,14,01);
        ocorrencia := Copy(Entrada,16,02);
        val := (IntToStr(Length(Entrada)));
        if(val <> '240')then
        begin
          MessageDlg(' Esse Arquivo ? CNAB 400'+#13+#10+'Use outro Bot?o para Abrir', mtError, [mbOK], 0);
        exit;
        end;



        if ((Tipo = 'T')and(ocorrencia = '06'))then
        begin
          c_retorno.Append;
          c_retorno.FieldByName('ID').Value:= 10 ; //Copy(Entrada,01,02);
          c_retorno.FieldByName('TITULO').Value:= Copy(Entrada,41,12);
          //   c_retorno.ApplyUpdates(0);
        end;
        if ((Tipo = 'U')and(ocorrencia = '06')) then
        begin
          c_retorno.Edit;
          c_retorno.FieldByName('DATA').Value:= Copy(Entrada,138,02)  + '/'  + Copy(Entrada,140,02) + '/' + Copy(Entrada,144,02);
          c_retorno.FieldByName('VT').Value:= Copy(Entrada,78,13) + ',' + Copy(Entrada,91,2);
          c_retorno.FieldByName('VALOR').Value:= c_retorno.FieldByName('VT').Value ; //Copy(Entrada,78,13) + ',' + Copy(Entrada,91,2); //Copy(Entrada,78,15);
          c_retorno.ApplyUpdates(0);
        end;
///           22/12/17
        if ((Tipo = 'T')and(ocorrencia = '17'))then
        begin
          c_retorno.Append;
          c_retorno.FieldByName('ID').Value:= 10 ; //Copy(Entrada,01,02);
          c_retorno.FieldByName('TITULO').Value:= Copy(Entrada,41,12);
          //   c_retorno.ApplyUpdates(0);
        end;
        if ((Tipo = 'U')and(ocorrencia = '17')) then
        begin
          c_retorno.Edit;
          c_retorno.FieldByName('DATA').Value:= Copy(Entrada,138,02)  + '/'  + Copy(Entrada,140,02) + '/' + Copy(Entrada,144,02);
          c_retorno.FieldByName('VT').Value:= Copy(Entrada,78,13) + ',' + Copy(Entrada,91,2);
          c_retorno.FieldByName('VALOR').Value:= c_retorno.FieldByName('VT').Value ; //Copy(Entrada,78,13) + ',' + Copy(Entrada,91,2); //Copy(Entrada,78,15);
          c_retorno.ApplyUpdates(0);
        end;
///

      end;
    end;

    cds.ApplyUpdates(0);
    cds.First;
    c_retorno.First;
    CloseFile(Txt);

    if (cdsB.Active) then
      cdsB.Close;
    cdsB.Open;

    Label5.Caption := IntToStr(cdsB.RecordCount);
    if (Label5.Caption = '0' ) then
         MessageDlg('Esse ? Apenas Arquivo de Confer?ncia do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce n?o precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

    Label3.Caption := OpenDialog1.FileName;
    Label7.Caption := ExtractFileName(OpenDialog1.FileName);





end;

procedure TfArquivoRetorno1.BitBtn7Click(Sender: TObject);
begin
    if cds.State in [dsInactive] then
       exit;
    if c_retorno.State in [dsInactive] then
       exit;
    if (Edit5.Text = '') then
    begin
      MessageDlg('Informe o Codigo do Recebedor', mtWarning, [mbOK], 0);
      exit
    end;

    cds.First;
    c_retorno.First;
    executou := '';
    while not c_retorno.Eof do
    begin
       //inicializo as variaveis
       v_pago := 0;
       v_titulo := 0;
       v_resto := 0;
       texto_memo := '';

       if (cdsREC.Active) then
           cdsREC.Close;
       cdsREC.Params[0].Clear;
       cdsREC.Params[1].Clear;
       cdsREC.Params[0].AsInteger := c_retornoTITULO.AsInteger;
       cdsREC.open;

       Label10.Caption := IntToStr(c_retornoTITULO.AsInteger);

       if (c_retornoVALOR.Value = '0' ) then
       begin
         MessageDlg('Esse ? Apenas Arquivo de Confer?ncia do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce n?o precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

          exit;
       end
       else
         if (not cdsREC.IsEmpty) then // se a busca conter dados
       begin
         // pesso a confirma??o se o t?tulo ? o correto
       //  if (MessageDlg('os Dados da Busca est?o corretos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
       if( StrToFloat(c_retornoVALOR.Value) = cdsRECVALOR_NF.Value ) then
             encontrou1
         else
             naoencontrou1;
       end;

       if (executou <> 'SIM') then
       begin
         if (cdsREC.IsEmpty) then // se a busca conter dados
           naoencontrou1;
       end;

       executou := '';
       cds.Next;
       c_retorno.Next;

    end;
   // atualizacbr;
   MessageDlg('Leitura do Arquivo Finalizada.', mtInformation, [mbOK], 0);

end;

procedure TfArquivoRetorno1.baixa1;
var
sql :string;
TD: TTransactionDesc;
begin
    v_pago := c_retornoVT.AsFloat;
    v_titulo := cdsRECVALOR_RECEBER.AsFloat;

    if cdsREC.State in [dsBrowse] then
       cdsREC.Edit;
    cdsRECDATA_PAG.AsDateTime := now;
    cdsRECSTATUS.AsString := 'Pago';
    cdsRECVALOR_A_REC.AsFloat := cdsRECVALOR_RECEBER.AsFloat;
    cdsRECVALOR_PAGO.AsFloat := cdsRECVALOR_NF.AsFloat;
    if Edit4.Text <> '' then
     cdsRECCOBRADOR.AsInteger := StrToInt(Edit4.Text);
    texto_memo := texto_memo + 'COBST_SR71 : ';
    texto_memo := 'T?tulo n?: ' + IntToStr(c_retornoTITULO.AsInteger) + ' Data: ' +
       c_retornoDATA.AsString + ' valor R$ : ' +  FloatToStr(c_retornoVT.AsFloat );
    cdsRECARQUIVORETORNO.Value := texto_memo;
    cdsRECNOMEARQUIVORETORNO.AsString := ExtractFileName(OpenDialog1.FileName);
    cdsREC.ApplyUpdates(0);

    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.SQLObitos.StartTransaction(TD);

    DecimalSeparator:='.';
    sql := 'UPDATE RECEBIMENTOS SET VALOR_A_REC = ';
    sql := sql + FloatToStr(cdsRECVALOR_RECEBER.AsFloat) ; //FloatToStr(valor);
    sql := sql + ' , VALOR_PAGO = ' ;
    sql := sql + FloatToStr(cdsRECVALOR_NF.AsFloat);       //FloatToStr(valor);
    sql := sql + ',';
    DecimalSeparator:=',';
    sql := sql + ' DATA_PAG = ';
    sql := sql + '''' + formatdatetime('mm/dd/yy',now) + '''';
    sql := sql + ',';
    sql := sql + ' STATUS = ';
    sql := sql + QuotedStr('Pago');
    sql := sql + ',';
    sql := sql + 'COBRADOR = ' ;
    sql := sql + (Edit4.Text);
    sql := sql + ' where TITULO = ';
    sql := sql + IntToStr(cdsBTITULO.AsInteger);
    dm.SQLObitos.ExecuteDirect(sql);
    dm.SQLObitos.Commit(TD);





    texto_memo := texto_memo + ' | Baixado - (Grupo : ' + cdsRECGRUPO_1.AsString;
    texto_memo := texto_memo + ' Inscri??o : ' + IntToStr(cdsRECN_INSCRICAO.AsInteger);
    texto_memo := texto_memo + ' Inscri??o : ' + cdsRECNOME_SOCIO.AsString;
    texto_memo := texto_memo + ' T?tulo : ' + IntToStr(c_retornoTITULO.AsInteger);
    texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(cdsRECVALOR_RECEBER.AsFloat) + ')';
    Memo1.Lines.Add(texto_memo);
    texto_memo := '';
    n_titulo := c_retornoTITULO.AsInteger;
    nome_cbr := ExtractFileName(OpenDialog1.FileName);
    if (v_pago > v_titulo) then
    begin
      v_resto := v_pago - v_titulo;
      codigo := cdsRECID_SOCIO.AsInteger;
      de := 'baixa1';  
      fBaixaretorno1.ShowModal;
    end;
end;

procedure TfArquivoRetorno1.encontrou1;
begin
   if cdsRECSTATUS.AsString <> 'Pago' then {** se t?tulo Pendente baixo}
   begin
    //  if MessageDlg('Confirma baixa desse t?tulo', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        baixa1;
   end
   else
   begin

     MessageDlg('T?tulo ' + c_retornoTITULO.AsString + ' J? foi Baixado', mtInformation, [mbOK], 0);
   end;
end;

procedure TfArquivoRetorno1.naoencontrou1;
begin

     if (cdsREC.Active) then
         cdsREC.Close;
     cdsREC.Params[1].Clear;
     cdsREC.Params[0].Clear;
     cdsREC.Params[1].AsInteger := c_retornoTITULO.AsInteger;
     cdsREC.open;

     if (not cdsREC.IsEmpty) then // se a busca conter dados
     begin
       // pesso a confirma??o se o t?tulo ? o correto
       if (MessageDlg('os Dados da Busca est?o corretos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
       begin
           encontrou1;
       end
       else
       begin
       texto_memo := texto_memo + 'N?o encontrado T?tulo n?  ' + IntToStr(c_retornoTITULO.AsInteger);
       texto_memo := texto_memo + ' Data : ' + c_retornoDATA.AsString;
       texto_memo := texto_memo + ' Valor R$ : ' + c_retornoVT.AsString + ')';
         Memo1.Lines.Add(texto_memo);
         texto_memo := '';
         executou := 'SIM';
       end;
     end;

    if (executou = '') then
    begin
         texto_memo := texto_memo + 'T?tulo n?  ' + IntToStr(c_retornoTITULO.AsInteger) + ', j? Baixado';
         texto_memo := texto_memo + ' Data : ' + c_retornoDATA.AsString;
         texto_memo := texto_memo + ' Valor R$ : ' + c_retornoVT.AsString + ')';
         Memo1.Lines.Add(texto_memo);
         texto_memo := '';
         executou := 'SIM';
    end;
end;

end.




