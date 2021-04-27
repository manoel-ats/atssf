unit uFiltro_Obitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, ToolEdit, Grids, DBGrids, StdCtrls, Buttons,
  Provider, SqlExpr, DB, DBClient, DBLocal, DBLocalS, XPMenu, DBCtrls,
  rpcompobase, rpvclreport, FMTBcd;

type
  TFiltro_Obitos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cbStatus: TComboBox;
    edCodCliente: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Data1: TDateEdit;
    Data2: TDateEdit;
    BitBtn9: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    scdsCp_proc: TSQLClientDataSet;
    scdsCp_procFALECIDO: TStringField;
    scdsCp_procDATA_FAL: TDateField;
    scdsCp_procLOCAL_FAL: TStringField;
    scdsCp_procCEMITERIO: TStringField;
    scdsCp_procENDERECO_FAL: TStringField;
    scdsCp_procNOME: TStringField;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    XPMenu1: TXPMenu;
    scdsCp_procID: TIntegerField;
    GroupBox18: TGroupBox;
    DBMemo1: TDBMemo;
    scdsCp_procSITUACAO: TStringField;
    scdsCp_procOBS_GERAIS: TBlobField;
    dtsrc_CR: TDataSource;
    scdsCp_procTIPO_URNA: TStringField;
    scdsCp_procGRUPO: TStringField;
    scdsCp_procINSCRICAO: TIntegerField;
    DBGrid2: TDBGrid;
    BitBtn14: TBitBtn;
    VCLReport1: TVCLReport;
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
    cds_CRtotal_titulo: TAggregateField;
    cds_CRtotal_pago: TAggregateField;
    ComboBox1: TComboBox;
    Label3: TLabel;
    BitBtn5: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbStatusClick(Sender: TObject);
    procedure cbStatusExit(Sender: TObject);
    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn14Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtro_Obitos: TFiltro_Obitos;

implementation

uses UDM, uProcurar, uCad_Obitos, sCtrlResize;

{$R *.dfm}

procedure TFiltro_Obitos.BitBtn3Click(Sender: TObject);
Var
 SqlTexto, DataStr: String;
begin
  inherited;
  if scdsCp_proc.Active then
     scdsCp_proc.Close;
   scdsCp_proc.CommandText:='select ob.ID, ob.FALECIDO, ob.DATA_FAL, ob.LOCAL_FAL, ' +
   'ob.CEMITERIO, ob.ENDERECO_FAL, ob.SITUACAO, ob.OBS_GERAIS, ' +
   'ob.TIPO_URNA, ob.GRUPO, ob.INSCRICAO, ob.TIPO_DOC ,' +
   'fun.NOME from OBITOS ob left outer join FUNCIONARIOS fun ' +
   'on fun.COD_FUNCIONARIO = ob.COD_FUNCIONARIO ';

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
      sqlTexto := sqlTexto + ' where ob.DATA_FAL between '
    else
      sqlTexto := sqlTexto + ' and ob.DATA_FAL between ';
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
  //Tipo Doc
  //------------------------------------------------------------------------------
  if ComboBox1.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ob.TIPO_DOC = '
    else
      sqlTexto := sqlTexto + ' and ob.TIPO_DOC = ';
      sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
  end;
 //==============================================================================


 //------------------------------------------------------------------------------
 //FUNCIONARIO
 //------------------------------------------------------------------------------
  if Edit3.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where fun.NOME = '
    else
      sqlTexto := sqlTexto + ' and fun.NOME = ';
      sqlTexto := sqlTexto + '''' + Edit3.Text + '''';
  end;

//  sqlTexto := sqlTexto + ' and STATUS = ''Pago''';
  //==============================================================================
  //------------------------------------------------------------------------------
  //ordena por vencimento
  //------------------------------------------------------------------------------

    sqlTexto := sqlTexto + ' order by ob.DATA_FAL, ob.FALECIDO ';
  //==============================================================================
    scdsCp_proc.CommandText := scdsCp_proc.CommandText + sqlTexto;
    scdsCp_proc.Open;
    if scdsCp_proc.IsEmpty then
    begin
      MessageDlg('não há Óbitos nesse Período', mtInformation, [mbOK], 0);
      exit;
    end
    else
    begin
      if cds_CR.Active then
        cds_CR.Close;
      cds_CR.Params[0].AsInteger := scdsCp_procID.AsInteger;
      cds_CR.Open;
      DBGrid1.SetFocus;
    end; 
end;

procedure TFiltro_Obitos.BitBtn1Click(Sender: TObject);
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

procedure TFiltro_Obitos.FormCreate(Sender: TObject);
var
   ano, mes, dia, dia1: word;
   ScreenHeight: LongInt;
   ScreenWidth: LongInt;
begin
  Data1.Text:=formatdatetime('dd/mm/yy',now);
  decodedate(Data1.date, ano, mes, dia);
  dia:=1;
  Data1.Date:=encodedate(ano, mes, dia);

  Data2.Text:=formatdatetime('dd/mm/yy',now);
  decodedate(Data2.date, ano, mes, dia);

  dia:=31;

   if mes = 1 then
     cbStatus.Text := 'Janeiro';

   if mes = 2 then
     cbStatus.Text := 'Fevereiro';
    if dia > 28 then
       dia:=28;

   if mes = 3 then
     cbStatus.Text := 'Março';

   if mes = 4 then
     cbStatus.Text := 'Abril';
     if dia > 30 then
        dia:=30;

   if mes = 5 then
     cbStatus.Text := 'Maio';

  if mes = 6 then
     cbStatus.Text := 'Junho';
    if dia > 30 then
       dia:=30;

   if mes = 7 then
     cbStatus.Text := 'Julho';

   if mes = 8 then
     cbStatus.Text := 'Agosto';

  if mes = 9 then
     cbStatus.Text := 'Setembro';
    if dia > 30 then
     dia:=30;

   if mes = 10 then
     cbStatus.Text := 'Outubro';

  if mes = 11 then
    cbStatus.Text := 'Novembro';
    if dia > 30 then
     dia:=30;

   if mes = 12 then
     cbStatus.Text := 'Dezembro';

 Data2.Date:=encodedate(ano, mes, dia);

end;

procedure TFiltro_Obitos.BitBtn4Click(Sender: TObject);
begin
  scdscp_proc.Close;
  cbStatus.Text:='';
  edcodcliente.Text:='';
  edit3.Text:='';
  data1.Text:='  /  /  ';
  data2.Text:='  /  /  ';
end;

procedure TFiltro_Obitos.BitBtn9Click(Sender: TObject);
begin
  cbStatus.Text := '';
  data1.Text:='  /  /    ';
  data2.Text:='  /  /    ';

end;

procedure TFiltro_Obitos.BitBtn2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_funcionario);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
   begin
      Edit3.Text := dm.proc_funcionarioNOME.AsString;
   end;
   finally
    dm.proc_funcionario.Close;
    fProcurar.Free;
   end;

end;

procedure TFiltro_Obitos.DBGrid1TitleClick(Column: TColumn);
begin
  with DataSource1.dataset as TSQLClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TFiltro_Obitos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;
begin
  inherited;
  if not odd(scdsCp_proc.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TFiltro_Obitos.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure TFiltro_Obitos.DBGrid1DblClick(Sender: TObject);
begin
  Cad_Obitos := TCad_Obitos.Create(Application);
  try
    Dm.cds_Obitos.Close;
    dm.cds_Obitos.Params[0].Clear;
    Dm.cds_Obitos.Params[0].AsInteger:=scdsCp_procID.AsInteger;
    Dm.cds_Obitos.Open;
    if DM.cds_filhos.Active then
      dm.cds_filhos.Close;
    dm.cds_filhos.Params[0].Clear;
    dm.cds_filhos.Params[0].AsInteger :=
      dm.cds_ObitosID.AsInteger;
    dm.cds_filhos.Open;
    Cad_Obitos.PageControl1.ActivePage := Cad_Obitos.TabSheet1;
    Cad_Obitos.ShowModal;
  finally
    Cad_Obitos.Free;
  end;

end;

procedure TFiltro_Obitos.DBGrid1CellClick(Column: TColumn);
begin
    if cds_CR.Active then
      cds_CR.Close;
    cds_CR.Params[0].AsInteger := scdsCp_procID.AsInteger;
    cds_CR.Open;
end;

procedure TFiltro_Obitos.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;  
begin
  if not odd(cds_CR.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid2.Canvas.Brush.Color := $00FFEFDF;
    DBGrid2.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = cds_CRSTATUS then
   if cds_CRSTATUS.AsString = 'Pendente' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_CRSTATUS then
   if cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_CRVALOR_RECEBER then
   if cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_CRVALOR_RECEBER then
   if cds_CRSTATUS.AsString = 'Pendente' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

end;

procedure TFiltro_Obitos.cbStatusClick(Sender: TObject);
var
   ano, mes, dia, dia1: word;
begin

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

procedure TFiltro_Obitos.cbStatusExit(Sender: TObject);
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

procedure TFiltro_Obitos.DBGrid1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    if cds_CR.Active then
      cds_CR.Close;
    cds_CR.Params[0].AsInteger := scdsCp_procID.AsInteger;
    cds_CR.Open;
{  Cad_Obitos := TCad_Obitos.Create(Application);
  try
    Dm.cds_Obitos.Close;
    dm.cds_Obitos.Params[0].Clear;
    Dm.cds_Obitos.Params[0].AsInteger:=scdsCp_procID.AsInteger;
    Dm.cds_Obitos.Open;
    if DM.cds_filhos.Active then
      dm.cds_filhos.Close;
    dm.cds_filhos.Params[0].Clear;
    dm.cds_filhos.Params[0].AsInteger :=
      dm.cds_ObitosID.AsInteger;
    dm.cds_filhos.Open;
    Cad_Obitos.PageControl1.ActivePage := Cad_Obitos.TabSheet1;
    Cad_Obitos.ShowModal;
  finally
    Cad_Obitos.Free;
  end;}
end;

procedure TFiltro_Obitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dtsrc_CR.DataSet.Active then
     dtsrc_CR.DataSet.Close;

  if scdsCp_proc.Active then
     scdsCp_proc.Close;

end;

procedure TFiltro_Obitos.BitBtn14Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'filtro_obito.rep';
  VCLReport1.Report.DataInfo.Items[0].SQL:= scdsCp_proc.CommandText;
  VCLReport1.Execute;
end;

procedure TFiltro_Obitos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  Cad_Obitos := TCad_Obitos.Create(Application);
  try
    Dm.cds_Obitos.Close;
    dm.cds_Obitos.Params[0].Clear;
    Dm.cds_Obitos.Params[0].AsInteger:=scdsCp_procID.AsInteger;
    Dm.cds_Obitos.Open;
    if DM.cds_filhos.Active then
      dm.cds_filhos.Close;
    dm.cds_filhos.Params[0].Clear;
    dm.cds_filhos.Params[0].AsInteger :=
      dm.cds_ObitosID.AsInteger;
    dm.cds_filhos.Open;
    Cad_Obitos.PageControl1.ActivePage := Cad_Obitos.TabSheet1;
    Cad_Obitos.ShowModal;
  finally
    Cad_Obitos.Free;
  end;
end;

procedure TFiltro_Obitos.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(Filtro_Obitos));
end;

procedure TFiltro_Obitos.BitBtn5Click(Sender: TObject);
begin
  ComboBox1.Text := '';
end;

end.
