unit uFiltro_CR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, Grids, DBGrids,
  Provider, SqlExpr, XPMenu, DB, DBClient, DBLocal, DBLocalS, rpcompobase,
  rpvclreport, FMTBcd, DBCtrls;

type
  TFiltro_CR = class(TForm)
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    XPMenu1: TXPMenu;
    dtsrc_serie: TDataSource;
    Panel2: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn11: TBitBtn;
    BtnBaixarTitulo: TBitBtn;
    BitBtn14: TBitBtn;
    VCLReport1: TVCLReport;
    sds_pendente: TSQLDataSet;
    sds_pendentePENDENTE: TFloatField;
    ds_pendente: TDataSource;
    sds_pago: TSQLDataSet;
    sds_pagoPAGO: TFloatField;
    ds_pago: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    scdsCp_proc: TClientDataSet;
    sdsTITULO: TIntegerField;
    sdsID_RECEBIMENTOS: TIntegerField;
    sdsVENCIMENTO: TDateField;
    sdsDATA_PAG: TDateField;
    sdsSTATUS: TStringField;
    sdsVALOR_NF: TFloatField;
    sdsVALOR_RECEBER: TFloatField;
    sdsPARCELA: TIntegerField;
    sdsVALOR_1VIA: TFloatField;
    sdsVALOR_PAGO: TFloatField;
    sdsVALOR_DIF: TFloatField;
    sdsTIPO_DOC: TStringField;
    sdsFALECIDO: TStringField;
    sdsSERIE: TStringField;
    sdsNOTAFISCAL: TSmallintField;
    sdsGRUPO: TStringField;
    sdsINSCRICAO: TIntegerField;
    sdsCODIGO: TIntegerField;
    scdsCp_procTITULO: TIntegerField;
    scdsCp_procID_RECEBIMENTOS: TIntegerField;
    scdsCp_procVENCIMENTO: TDateField;
    scdsCp_procDATA_PAG: TDateField;
    scdsCp_procSTATUS: TStringField;
    scdsCp_procVALOR_NF: TFloatField;
    scdsCp_procVALOR_RECEBER: TFloatField;
    scdsCp_procPARCELA: TIntegerField;
    scdsCp_procVALOR_1VIA: TFloatField;
    scdsCp_procVALOR_PAGO: TFloatField;
    scdsCp_procVALOR_DIF: TFloatField;
    scdsCp_procTIPO_DOC: TStringField;
    scdsCp_procFALECIDO: TStringField;
    scdsCp_procSERIE: TStringField;
    scdsCp_procNOTAFISCAL: TSmallintField;
    scdsCp_procGRUPO: TStringField;
    scdsCp_procINSCRICAO: TIntegerField;
    scdsCp_procCODIGO: TIntegerField;
    Panel4: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    edCodCliente: TEdit;
    BitBtn1: TBitBtn;
    ComboBox2: TComboBox;
    BitBtn5: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Edit3: TEdit;
    Edit7: TEdit;
    BitBtn10: TBitBtn;
    cbStatus: TComboBox;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    Data2: TDateEdit;
    Data1: TDateEdit;
    sdsORIGEM: TIntegerField;
    scdsCp_procORIGEM: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbStatusExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BtnBaixarTituloClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtro_CR: TFiltro_CR;

implementation

uses uProcurar, UDM, uReceber, uRecibo, uPrincipal, sCtrlResize;

function NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

//const
//ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
//ScreenHeight: LongInt = 600;

{$R *.dfm}

procedure TFiltro_CR.BitBtn2Click(Sender: TObject);
begin
  ComboBox1.Text := '';
end;

procedure TFiltro_CR.BitBtn4Click(Sender: TObject);
begin
  scdscp_proc.Close;
  cbStatus.Text:='';
  edcodcliente.Text:='';
  edit3.Text:='';
  data1.Text:='  /  /  ';
  data2.Text:='  /  /  ';
  ComboBox2.Text := '';
  ComboBox2.Text := '';
  Edit1.Text := '';
  Edit2.Text := '';
  Edit7.Text := '';    
end;

procedure TFiltro_CR.BitBtn1Click(Sender: TObject);
begin
  FProcurar:=TFProcurar.Create(Self,dm.proc_obitos);
  try
   FProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'FALECIDO';
   if FProcurar.ShowModal=mrOK then
  begin
   edCodCliente.Text := dm.proc_obitosFALECIDO.AsString;
  end;
  finally
   DM.proc_obitos.Close;
   FProcurar.Free;
  end;
end;

procedure TFiltro_CR.cbStatusExit(Sender: TObject);
var
   ano, mes, dia, dia1: word;
begin
  inherited;

    Data1.Text:=formatdatetime('dd/mm/yy',now);
    decodedate(Data1.date, ano, mes, dia);


    Data2.Text:=formatdatetime('dd/mm/yy',now);
    decodedate(Data2.date, ano, mes, dia);


    dia:=1;

       if cbStatus.Text = 'Janeiro' then
       mes:=1;
     if cbStatus.Text = 'Fevereiro' then
       mes:=2;
     if cbStatus.Text = 'Março' then
       mes:=3;
     if cbStatus.Text = 'Abril' then
       mes:=4;
     if cbStatus.Text = 'Maio' then
       mes:=5;
     if cbStatus.Text = 'Junho' then
       mes:=6;
     if cbStatus.Text = 'Julho' then
       mes:=7;
     if cbStatus.Text = 'Agosto' then
       mes:=8;
     if cbStatus.Text = 'Setembro' then
       mes:=9;
     if cbStatus.Text = 'Outubro' then
       mes:=10;
     if cbStatus.Text = 'Novembro' then
       mes:=11;
     if cbStatus.Text = 'Dezembro' then
       mes:=12;


    Data1.Date:=encodedate(ano, mes, dia);

    dia:=31;

     if mes = 2 then
      if dia > 28 then
         dia:=28;

     if mes = 4 then
       if dia > 30 then
          dia:=30;

    if mes = 6 then
      if dia > 30 then
         dia:=30;

    if mes = 9 then
      if dia > 30 then
       dia:=30;

    if mes = 11 then
      if dia > 30 then
       dia:=30;

   Data2.Date:=encodedate(ano, mes, dia);

end;

procedure TFiltro_CR.BitBtn5Click(Sender: TObject);
begin
  ComboBox2.Text := '';
  Edit1.Text := '';
end;

procedure TFiltro_CR.BitBtn7Click(Sender: TObject);
begin
  Edit2.Text := '';
end;

procedure TFiltro_CR.BitBtn8Click(Sender: TObject);
begin
  Edit3.Text := '';
end;

procedure TFiltro_CR.BitBtn3Click(Sender: TObject);
Var
 SqlTexto, SqlTexto1, DataStr, total_Str: String;
 Pago, Pendente: String;
 total : integer;
 valor_titulo, valor_recebido,valor_resto :Double;
begin
  inherited;
  if scdsCp_proc.Active then
     scdsCp_proc.Close;
   scdsCp_proc.CommandText:='select cr.TITULO, cr.ID_RECEBIMENTOS, cr.VENCIMENTO, ' +
   'cr.DATA_PAG, cr.STATUS, cr.VALOR_NF, cr.VALOR_RECEBER, cr.PARCELA, cr.VALOR_1VIA, ' +
   'cr.VALOR_PAGO, cr.VALOR_DIF, cr.TIPO_DOC, ob.FALECIDO, ' +
   'ob.SERIE, ob.NOTAFISCAL, ob.GRUPO, ob.INSCRICAO, ob.CODIGO, cr.ORIGEM ' +
   'from RECEBIMENTOS cr left outer join OBITOS ob ' +
   'on ob.ID = cr.ID ';

  //==============================================================================
  datastr:='  /  /    ';
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (data1.Text<>datastr) then
  StrToDate(data1.Text);
  if (data2.Text<>datastr) then
  StrToDate(data2.Text);
  if (data1.Text<>datastr) then
  if (data2.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where cr.VENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and cr.VENCIMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data1.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     data1.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Falecido
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ob.FALECIDO = '
    else
      sqlTexto := sqlTexto + ' and ob.FALECIDO = ';
      sqlTexto := sqlTexto + '''' + edCodCliente.Text + '''';
  end;
 //==============================================================================
 //------------------------------------------------------------------------------
 //Status
 //------------------------------------------------------------------------------
  if ComboBox1.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where cr.STATUS = '
    else
      sqlTexto := sqlTexto + ' and cr.STATUS = ';
      sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
  end;

 //==============================================================================
 //------------------------------------------------------------------------------
 //SERIE
 //------------------------------------------------------------------------------
  if ComboBox2.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ob.SERIE = '
    else
      sqlTexto := sqlTexto + ' and ob.SERIE = ';
      sqlTexto := sqlTexto + '''' + ComboBox2.Text + '''';
  end;
 //==============================================================================
 //------------------------------------------------------------------------------
 //Codigo
 //------------------------------------------------------------------------------
  if Edit1.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ob.CODIGO = '
    else
      sqlTexto := sqlTexto + ' and ob.CODIGO = ';
      sqlTexto := sqlTexto + '''' + Edit1.Text + '''';
  end;
 //==============================================================================
 //------------------------------------------------------------------------------
 //GRUPO
 //------------------------------------------------------------------------------
  if Edit2.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ob.GRUPO = '
    else
      sqlTexto := sqlTexto + ' and ob.GRUPO = ';
      sqlTexto := sqlTexto + '''' + Edit2.Text + '''';
  end;

 //==============================================================================
 //------------------------------------------------------------------------------
 //Inscrição
 //------------------------------------------------------------------------------
  if Edit3.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ob.INSCRICAO = '
    else
      sqlTexto := sqlTexto + ' and ob.INSCRICAO = ';
      sqlTexto := sqlTexto + '''' + Edit3.Text + '''';
  end;

 //==============================================================================
 //------------------------------------------------------------------------------
 //Nota Fiscal
 //------------------------------------------------------------------------------
  if Edit7.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ob.NOTAFISCAL = '
    else
      sqlTexto := sqlTexto + ' and ob.NOTAFISCAL = ';
      sqlTexto := sqlTexto + '''' + Edit7.Text + '''';
  end;

 //==============================================================================
 //------------------------------------------------------------------------------
 //Tipo DOC
 //------------------------------------------------------------------------------
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where cr.TIPO_DOC = '
    else
      sqlTexto := sqlTexto + ' and cr.TIPO_DOC = ';
      sqlTexto := sqlTexto + '''OB''';

   sqlTexto := sqlTexto + ' and cr.SITUACAO = ''Ativo''';
  //==============================================================================
  //------------------------------------------------------------------------------
  //ordena por vencimento
  //------------------------------------------------------------------------------
    SqlTexto1 := SqlTexto;
    sqlTexto := sqlTexto + ' order by cr.VENCIMENTO, ob.FALECIDO ';
  //==============================================================================
    scdsCp_proc.CommandText := scdsCp_proc.CommandText + sqlTexto;
    scdsCp_proc.Open;
  //------------------------------------------------------------------------------
  //Totais
  //------------------------------------------------------------------------------
    if (sds_pendente.Active) then
      sds_pendente.Close;
    Pendente := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
    'left outer join OBITOS ob on ob.ID = cr.ID ';
    Pendente := Pendente + SqlTexto1;
    sds_pendente.CommandText := Pendente;
    sds_pendente.Open;
    if (sds_pago.Active) then
      sds_pago.Close;
    Pago := 'SELECT SUM(VALOR_PAGO) as pago from RECEBIMENTOS cr ' +
    'left outer join OBITOS ob on ob.ID = cr.ID ';
    Pago := Pago + SqlTexto1;
    sds_pago.CommandText := Pago;
    sds_pago.Open;

end;

procedure TFiltro_CR.BitBtn10Click(Sender: TObject);
begin
  Edit7.Text := '';
end;

procedure TFiltro_CR.BitBtn11Click(Sender: TObject);
begin
  Close;
end;

procedure TFiltro_CR.DBGrid1TitleClick(Column: TColumn);
begin
  scdsCp_proc.IndexFieldNames := Column.FieldName;
end;

procedure TFiltro_CR.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;
begin
  inherited;
  if not odd(DataSource1.dataset.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCp_procSTATUS then
   if scdsCp_procSTATUS.AsString = 'Pendente' then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCp_procSTATUS then
   if scdsCp_procSTATUS.AsString = 'Pago' then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCp_procVALOR_RECEBER then
  begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
  end;
  if Column.Field = scdsCp_procVALOR_PAGO then
  begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
  end;
end;

procedure TFiltro_CR.BitBtn6Click(Sender: TObject);
begin
  fReceber := TfReceber.Create(Application);
  try
    receber := 'OBITO';
    if scdsCp_procGRUPO.AsString <> '' then
    begin
      fReceber.Edit1.Text := scdsCp_procGRUPO.AsString;
      fReceber.Edit2.Text := IntToStr(scdsCp_procINSCRICAO.AsInteger);
    end
    else
    begin
      fReceber.Edit1.Text := scdsCp_procSERIE.AsString;
      fReceber.Label22.Caption := 'Série';
      fReceber.Label23.Caption := 'Série';
      fReceber.Edit2.Text := IntToStr(scdsCp_procCODIGO.AsInteger);
      fReceber.Label26.Caption := 'Código/ID';
      fReceber.Label27.Caption := 'Código/ID';
    end;
    fReceber.Edit3.Text := scdsCp_procFALECIDO.AsString;
    fReceber.ShowModal;
  finally
    fReceber.Free;
  end;
end;

procedure TFiltro_CR.BitBtn9Click(Sender: TObject);
begin
  cbStatus.Text :='';
  data1.Text:='  /  /    ';
  data2.Text:='  /  /    ';
end;

procedure TFiltro_CR.BtnBaixarTituloClick(Sender: TObject);
begin
  if dm.cds_CR.Active then
    dm.cds_CR.Close;
  dm.cds_cr.Params[0].Clear;
  dm.cds_cr.Params[1].Clear;
  dm.cds_cr.Params[1].AsInteger := scdsCp_procID_RECEBIMENTOS.AsInteger;
  dm.cds_cr.Open;
  dm.cds_cr.Edit;
  dm.cds_CRDATA_PAG.AsDateTime := now;
  dm.cds_CRSTATUS.AsString := 'Pago';
  dm.cds_CRVALOR_A_REC.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
  dm.cds_CRVALOR_PAGO.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
  dm.cds_CR.ApplyUpdates(0);
  dm.cds_CR.Close;
  BitBtn3.Click;
end;

procedure TFiltro_CR.BitBtn14Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'CR_obito.rep';
  VCLReport1.Report.DataInfo.Items[0].SQL:= scdsCp_proc.CommandText;
  VCLReport1.Execute;
end;

procedure TFiltro_CR.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varUsuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TFiltro_CR.DSPGetProproperties(Sender: TObject;
  DataSet: TDataSet; out Properties: OleVariant);
begin
 Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO',varUsuario,True]);
  Properties[1] := VarArrayOf(['MICRO',NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',
    IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;

procedure TFiltro_CR.DSPUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
   str, str_For, strOriginal :string;
   i : Integer;
begin
  str := '';
  str_For := '';
  strOriginal := '';
  with DataSet do
  begin
    SetOptionalParam('DATA',Date,True);
    SetOptionalParam('HORA',Time,True);
      //aqui salvo na tabela
      str := 'INSERT INTO LOGS (MICRO, TABELA, USUARIO, DATA, HORA, data_set)';
      str := str +  ' VALUES(';
      str := str + '''' + GetOptionalParam('MICRO') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('TABELA') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('USUARIO') + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('mm/dd/yy',Date) + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('hh/nn/ss',Time) + '''';
      str := str + ', ';
      for i := 0 to dataset.FieldCount - 1 do
      begin
        //aqui se deletar o arquivo
        if (dataset.UpdateStatus = usDeleted) then
        begin
           if (str_For = '') then
            str_for := '----Deletado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
        // aqui se modificar o arquivo
        if (dataset.UpdateStatus = usUnModified) then
        begin
           if (str_For = '') then
            str_for := '----Modificado----' + #13+#10;
             strOriginal := strOriginal + dataset.FieldDefList[i].Name;
             if (dataset.Fields[i].AsString <> '') then
               strOriginal := strOriginal + ': ' + dataset.Fields[i].AsString
             else
               strOriginal := strOriginal + ': Vazio';
           DataSet.Next;
           if (not dataset.Fields[i].IsNull) then
           begin
             if (dataset.Fields[i].AsString = '') then
               str_For := str_For + strOriginal +  ' -> Vazio; '+#13+#10
             else
               str_For := str_For + strOriginal +  ' -> ' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
           strOriginal := '';
           DataSet.First;
        end;
        // aqui se inserir um novo
        if (dataset.UpdateStatus = usInserted) then
        begin
           if (str_For = '') then
            str_for := '----Adicionado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
      end;
      str := str + '''' + str_For + '''';
      str := str+  ')';
      dm.SQLObitos.ExecuteDirect(str);
  end;
end;

procedure TFiltro_CR.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(Filtro_CR));
end;

end.
