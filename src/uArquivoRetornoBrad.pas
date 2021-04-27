unit uArquivoRetornoBrad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, DB, DBXpress, SqlExpr,
  DBClient, Provider, XPMenu, ExtCtrls, MMJPanel, rpcompobase, rpvclreport;

type
  TfArquivoRetornoBrad = class(TForm)
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
    XPMenu1: TXPMenu;
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
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1ID: TStringField;
    SQLDataSet1TITULO: TIntegerField;
    SQLDataSet1DATA: TStringField;
    SQLDataSet1VALOR_RECEBIDO: TFloatField;
    SQLDataSet1VALOR_TITULO: TFloatField;
    SQLDataSet1MULTA_JUROS: TFloatField;
    SQLDataSet1BAIXADO: TStringField;
    DataSetProvider1: TDataSetProvider;
    cdsB: TClientDataSet;
    cdsBID: TStringField;
    cdsBTITULO: TIntegerField;
    cdsBDATA: TStringField;
    cdsBVALOR_RECEBIDO: TFloatField;
    cdsBVALOR_TITULO: TFloatField;
    cdsBMULTA_JUROS: TFloatField;
    cdsBBAIXADO: TStringField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    sds: TSQLDataSet;
    BitBtn5: TBitBtn;
    sdsID: TStringField;
    sdsTITULO: TStringField;
    sdsVALOR: TStringField;
    sdsCENTAVOS: TStringField;
    sdsVALORPG: TStringField;
    sdsCENTAVOSPG: TStringField;
    sdsDATA: TStringField;
    sdsVALOR_JUROS: TStringField;
    sdsCENTAVOS_JUROS: TStringField;
    sdsVALOR_COM_JUROS: TStringField;
    sdsVALPG: TStringField;
    sdsVALOR_MULTA: TStringField;
    sdsCENTAVOS_MULTA: TStringField;
    sdsVALOR_COM_MULTA: TStringField;
    sdsBAIXADO: TStringField;
    cdsID: TStringField;
    cdsTITULO: TStringField;
    cdsVALOR: TStringField;
    cdsCENTAVOS: TStringField;
    cdsVALORPG: TStringField;
    cdsCENTAVOSPG: TStringField;
    cdsDATA: TStringField;
    cdsVALOR_JUROS: TStringField;
    cdsCENTAVOS_JUROS: TStringField;
    cdsVALOR_COM_JUROS: TStringField;
    cdsVALPG: TStringField;
    cdsVALOR_MULTA: TStringField;
    cdsCENTAVOS_MULTA: TStringField;
    cdsVALOR_COM_MULTA: TStringField;
    cdsBAIXADO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure baixa;
    procedure naoencontrou;
    procedure encontrou;
    procedure atualizacbr;
    { Public declarations }
  end;

var
  fArquivoRetornoBrad: TfArquivoRetornoBrad;
  v_pago, v_titulo, v_resto : double;
  codigo, n_titulo : integer;
  texto_memo, nome_cbr, executou : string;

implementation

uses UDM, uBaixaretorno1 , uProcurar;

{$R *.dfm}

procedure TfArquivoRetornoBrad.BitBtn1Click(Sender: TObject);
  var i : integer;
  Txt: Textfile;
  Entrada , tipo: string;
begin

    if OpenDialog1.Execute then
    begin
      cds.Open;
      AssignFile(Txt,(OpenDialog1.FileName));{ NOME do arquivo texto}
      Reset(Txt);
      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
        tipo := Copy(Entrada,1,02);
        if (Tipo = '10') then
        begin
          cds.Append;
          cds.FieldByName('ID').Value:= Copy(Entrada,1,02);
          cds.FieldByName('TITULO').Value:= Copy(Entrada,76,06);
          cds.FieldByName('DATA').Value:= Copy(Entrada,111,02)  + '/'  + Copy(Entrada,113,02) + '/' + Copy(Entrada,115,02);   //(11,06)
          cds.FieldByName('VALOR').Value:= Copy(Entrada,153,11);   //155,09);
          cds.FieldByName('CENTAVOS').Value:= Copy(Entrada,164,02);

          cds.FieldByName('VALORPG').Value:= Copy(Entrada,254,11);        // Copy(Entrada,254,11);
          cds.FieldByName('CENTAVOSPG').Value:= Copy(Entrada,265,02);     // Copy(Entrada,265,02);
          cds.FieldByName('VALPG').Value:= Copy(Entrada,254,11) + '.'+ Copy(Entrada,265,02);

          cds.FieldByName('VALOR_JUROS').Value := Copy(Entrada,267,11);
          cds.FieldByName('CENTAVOS_JUROS').Value := Copy(Entrada,278,02);
          cds.FieldByName('VALOR_COM_JUROS').Value := Copy(Entrada,267,11) + '.' +Copy(Entrada,278,02);

          cds.FieldByName('VALOR_MULTA').Value := Copy(Entrada,280,11);
          cds.FieldByName('CENTAVOS_MULTA').Value := Copy(Entrada,291,02);
          cds.FieldByName('VALOR_COM_MULTA').Value := Copy(Entrada,280,11) + '.' +Copy(Entrada,291,02);


          cds.Post;
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
         MessageDlg('Esse é Apenas Arquivo de Conferência do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce não precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

   Label3.Caption := OpenDialog1.FileName;

   BitBtn2.Enabled := True;
{
var
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
    DM.SQl.ExecuteDirect('DELETE FROM TABRETORNO');
    DM.SQl.Commit(TD);
    DM.SQl.Connected := False;
  end;

  if OpenDialog1.Execute then
      nome_txt := OpenDialog1.FileName;

  Label3.Caption := OpenDialog1.FileName;

  if not FileExists(nome_txt) then
  begin
     MessageDlg('Arquivo não existe ou não está no local indicado ' + nome_txt + '?', mtError, [mbOK], 0);
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
         MessageDlg('Esse é Apenas Arquivo de Conferência do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce não precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

 }

end;

procedure TfArquivoRetornoBrad.DBGrid1DblClick(Sender: TObject);
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
       MessageDlg('Arquivo não encontrado', mtWarning, [mbOK], 0);
     end;
end;

procedure TfArquivoRetornoBrad.BitBtn2Click(Sender: TObject);
begin
    if cds.State in [dsInactive] then
       exit;
    if (Edit5.Text = '') then
    begin
      MessageDlg('Informe o Codigo do Recebedor', mtWarning, [mbOK], 0);
      exit
    end;  


    cds.First;
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

       if(cdsVALOR.Value = '0' ) then
       begin
         MessageDlg('Esse é Apenas Arquivo de Conferência do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce não precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

          exit;
       end
       else
         if (not cdsREC.IsEmpty) then // se a busca conter dados
       begin
         // pesso a confirmação se o título é o correto
       //  if (MessageDlg('os Dados da Busca estão corretos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
       if(StrToFloat(cdsVALOR.Value) = cdsRECVALOR_NF.Value ) then
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
    end;
    atualizacbr;

end;

procedure TfArquivoRetornoBrad.baixa;
begin

    v_pago := cdsVALOR.AsFloat;
    v_titulo := cdsRECVALOR_RECEBER.AsFloat;

    if cdsREC.State in [dsBrowse] then
       cdsREC.Edit;
    cdsRECDATA_PAG.AsDateTime := now;
    cdsRECSTATUS.AsString := 'Pago';
    cdsRECVALOR_A_REC.AsFloat := cdsRECVALOR_RECEBER.AsFloat;
    cdsRECVALOR_PAGO.AsFloat := cdsRECVALOR_NF.AsFloat;
    if Edit4.Text <> '' then
     cdsRECCOBRADOR.AsInteger := StrToInt(Edit4.Text);
    texto_memo := texto_memo + 'CB: ';
    texto_memo := 'Título nº: ' + IntToStr(cdsTITULO.AsInteger) + ' Data: ' +
       cdsDATA.AsString + ' valor R$ : ' +  FloatToStr(cdsVALOR.AsFloat);
    cdsRECARQUIVORETORNO.Value := texto_memo;
    cdsRECNOMEARQUIVORETORNO.AsString := ExtractFileName(OpenDialog1.FileName);
    cdsREC.ApplyUpdates(0);
    texto_memo := texto_memo + ' | Baixado - (Grupo : ' + cdsRECGRUPO_1.AsString;
    texto_memo := texto_memo + ' Inscrição : ' + IntToStr(cdsRECN_INSCRICAO.AsInteger);
    texto_memo := texto_memo + ' Inscrição : ' + cdsRECNOME_SOCIO.AsString;
    texto_memo := texto_memo + ' Título : ' + IntToStr(cdsRECTITULO.AsInteger);
    texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(cdsRECVALOR_RECEBER.AsFloat) + ')';
    Memo1.Lines.Add(texto_memo);
    texto_memo := '';
    n_titulo := cdsTITULO.AsInteger;
    nome_cbr := ExtractFileName(OpenDialog1.FileName);
    if (v_pago > v_titulo) then
    begin
      v_resto := v_pago - v_titulo;
      codigo := cdsRECID_SOCIO.AsInteger;
      fBaixaretorno1.ShowModal;
    end;

end;

procedure TfArquivoRetornoBrad.naoencontrou;
begin

     if (cdsREC.Active) then
         cdsREC.Close;
     cdsREC.Params[1].Clear;
     cdsREC.Params[0].Clear;
     cdsREC.Params[1].AsInteger := cdsTITULO.AsInteger;
     cdsREC.open;

     if (not cdsREC.IsEmpty) then // se a busca conter dados
     begin
       // pesso a confirmação se o título é o correto
       if (MessageDlg('os Dados da Busca estão corretos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
       begin
           encontrou;
       end    
       else
       begin
       texto_memo := texto_memo + 'Não encontrado Título nº  ' + IntToStr(cdsTITULO.AsInteger);
       texto_memo := texto_memo + ' Data : ' + cdsDATA.AsString;
       texto_memo := texto_memo + ' Valor R$ : ' + cdsVALOR.AsString + ')';
         Memo1.Lines.Add(texto_memo);
         texto_memo := '';
         executou := 'SIM';
       end;
     end;

    if (executou <> 'SIM') then
    begin
         texto_memo := texto_memo + 'Não encontrado Título nº  ' + IntToStr(cdsTITULO.AsInteger);
         texto_memo := texto_memo + ' Data : ' + cdsDATA.AsString;
         texto_memo := texto_memo + ' Valor R$ : ' + cdsVALOR.AsString + ')';
         Memo1.Lines.Add(texto_memo);
         texto_memo := '';         
         executou := 'SIM';
    end;
end;

procedure TfArquivoRetornoBrad.encontrou;
begin
   if cdsRECSTATUS.AsString <> 'Pago' then {** se título Pendente baixo}
   begin
    //  if MessageDlg('Confirma baixa desse título', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        baixa;
   end
   else
   begin
     MessageDlg('Título ' + '1cdsTITULO.asstring1' + ' Já foi Baixado', mtInformation, [mbOK], 0);
   end;  
end;

procedure TfArquivoRetornoBrad.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfArquivoRetornoBrad.FormClose(Sender: TObject;  var Action: TCloseAction) ;
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
    DM.SQl.ExecuteDirect('Delete from TABRETORNO');
    DM.SQl.Commit(TD);
    DM.SQl.Connected := False;
  end;

  if (sqs.Active) then
    sqs.Close;

end;

procedure TfArquivoRetornoBrad.atualizacbr;
begin
  if (not cds_cbr.Active) then
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
  cds_cbrNOMECBR.AsString := ExtractFileName(fArquivoRetornoBrad.OpenDialog1.FileName);
  cds_cbrOBS.Value := Memo1.Text;
  cds_cbr.ApplyUpdates(0);
  cds_cbr.Close;
  
end;

procedure TfArquivoRetornoBrad.BitBtn16Click(Sender: TObject);
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


procedure TfArquivoRetornoBrad.BitBtn5Click(Sender: TObject);
vAR
  TD: TTransactionDesc;
begin
 if (cds.Active) then
     cds.Close;

  if (cdsREC.Active) then
     cdsREC.Close;
  Memo1.Text := '';

  if (cdsB.Active) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.SQLObitos.StartTransaction(TD);
    dm.SQLObitos.ExecuteDirect('DELETE FROM TABRETORNO');
    dm.SQLObitos.Commit(TD);
  end;

  if (cdsB.Active) then
     cdsB.Close;

  if (sqs.Active) then
    sqs.Close;
end;

end.




