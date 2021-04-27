unit uAtualizaLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, dxCore, dxButton,
  ExtCtrls, Grids, DBGrids, StdCtrls, XPMenu, Buttons, Mask, ToolEdit,
  TFlatGaugeUnit;

type
  TfAtualizaLote = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    cdsCR: TClientDataSet;
    dspCR: TDataSetProvider;
    sdsCR: TSQLDataSet;
    DataSource1: TDataSource;
    sdsCRVENCIMENTO: TDateField;
    sdsCRVALOR_NF: TFloatField;
    sdsCRN_INSCRICAO: TIntegerField;
    sdsCRNOME_SOCIO: TStringField;
    cdsCRVENCIMENTO: TDateField;
    cdsCRVALOR_NF: TFloatField;
    cdsCRN_INSCRICAO: TIntegerField;
    cdsCRNOME_SOCIO: TStringField;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1MAX: TFloatField;
    XPMenu1: TXPMenu;
    scdsCp_proc: TSQLDataSet;
    FlatGauge1: TFlatGauge;
    Label8: TLabel;
    sdsCRID_RECEBIMENTOS: TIntegerField;
    sdsCRNOME: TStringField;
    cdsCRID_RECEBIMENTOS: TIntegerField;
    cdsCRNOME: TStringField;
    Panel1: TPanel;
    dxButton2: TdxButton;
    BitBtn1: TdxButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    data1: TDateEdit;
    data2: TDateEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    Edit7: TEdit;
    Edit6: TEdit;
    Edit4: TEdit;
    SpeedButton2: TSpeedButton;
    sdsCRGRUPO: TStringField;
    cdsCRGRUPO: TStringField;
    sdsCRVALOR_RECEBER: TFloatField;
    cdsCRVALOR_RECEBER: TFloatField;
    MaskEdit2: TMaskEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    ComboBox2: TComboBox;
    Label6: TLabel;
    sdsCRPLANO: TStringField;
    cdsCRPLANO: TStringField;
    ComboBox1: TComboBox;
    Label7: TLabel;
    sdsCREMISSAO: TDateField;
    cdsCREMISSAO: TDateField;
    procedure BitBtn1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAtualizaLote: TfAtualizaLote;

implementation

uses UDM, uProcurar, uPrincipal;

{$R *.dfm}

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

procedure TfAtualizaLote.BitBtn1Click(Sender: TObject);
var
  SqlTexto, DataStr , mais : string;
begin

  if Edit2.Text = '' then
  begin
    MessageDlg('o campo Grupo tem que ter um valor..', mtWarning, [mbOK], 0);
    exit;
  end;
  if (cdsCR.Active) then
      cdsCR.Close;
  cdsCR.CommandText := '';
  sqlTexto := '';
  cdsCR.CommandText := 'SELECT r.ID_RECEBIMENTOS,r.EMISSAO ,r.VENCIMENTO,r.VALOR_NF, r.VALOR_RECEBER,s.N_INSCRICAO ' +
         ',s.GRUPO,s.NOME_SOCIO,c.NOME, s.PLANO from RECEBIMENTOS r inner Join SOCIOS s on ' +
         's.ID_SOCIO = r.ID_SOCIO left outer join COBRANCA c on ' +
         'c.ID_COB = s.ID_COB ';

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
        sqlTexto := sqlTexto + ' where r.VENCIMENTO between '
      else
        sqlTexto := sqlTexto + ' and r.VENCIMENTO between ';
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
  //------------------------------------------------------------------------------
  //Verifica se a inscrição foi preenchida
  //------------------------------------------------------------------------------

    if Edit3.Text = '' then
    begin
      MessageDlg('Preencha o campo Incrição...', mtWarning, [mbOK], 0);
      exit;
    end;
    if Edit1.Text = '' then
    begin
      MessageDlg('Preencha o campo Incrição...', mtWarning, [mbOK], 0);
      exit;
    end;
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where S.N_INSCRICAO between '
    else
      sqlTexto := sqlTexto + ' and S.N_INSCRICAO between ';
    sqlTexto := sqlTexto + '''' + Edit3.Text + '''';
    sqlTexto := sqlTexto + ' and ';
    sqlTexto := sqlTexto + '''' + Edit1.Text + '''';

 //==============================================================================
 //------------------------------------------------------------------------------
 //GRUPO
 //------------------------------------------------------------------------------
  if Edit2.Text<>'' then
  begin
      sqlTexto := sqlTexto + ' and s.GRUPO = ';
      sqlTexto := sqlTexto + '''' + Edit2.Text + '''';
  end;

 //==============================================================================
 //------------------------------------------------------------------------------
 //Lote
 //------------------------------------------------------------------------------
  if Edit7.Text<>'' then
  begin
      sqlTexto := sqlTexto + ' and r.LOTE = ';
      sqlTexto := sqlTexto + '' + Edit7.Text + '';
  end;

 //==============================================================================
 //------------------------------------------------------------------------------
 //Cobrador
 //------------------------------------------------------------------------------
  if Edit4.Text<>'' then
  begin
      sqlTexto := sqlTexto + ' and c.id_cob = ';
      sqlTexto := sqlTexto + '' + Edit4.Text + '';
  end;

  if ComboBox2.Text <> '' then
  begin
      sqlTexto := sqlTexto + ' and s.PLANO = ';
      sqlTexto := sqlTexto + '''' + ComboBox2.Text + '''';
  end;

    if ComboBox1.Text<>'' then
    begin
      if ComboBox1.Text <> 'Todos Pendentes' then
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where r.STATUS = '
        else
          sqlTexto := sqlTexto + ' and r.STATUS = ';
        sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
      end
      else
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where r.STATUS <> '
        else
          sqlTexto := sqlTexto + ' and r.STATUS <> ';
        sqlTexto := sqlTexto + '''' + 'Pago' + '''' + ' and r.STATUS <> ';
        sqlTexto := sqlTexto + '''' + 'Renegociado' + '''';
      end;
    end;

    mais := ' and r.situacao = ' + QuotedStr('Ativo') ;

  cdsCR.CommandText := cdsCR.CommandText + mais + sqlTexto ;
  cdsCR.Open;

  dxButton2.Enabled := True;
end;

procedure TfAtualizaLote.dxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfAtualizaLote.dxButton2Click(Sender: TObject);
var
sql :string;
valor : double;
begin
{ if DateEdit1.Text = '  /  /    ' then
 begin
   MessageDlg('o Campo Data precisa ter um valor..', mtWarning, [mbOK], 0);
   exit;
 end;

 if DateEdit2.Text = '  /  /    ' then
 begin
   MessageDlg('o Campo Data precisa ter um valor..', mtWarning, [mbOK], 0);
   exit;
 end;
        }
{ if MaskEdit1.Text = '0,00' then
 begin
   MessageDlg('informe o novo Valor da Mensalidade..', mtWarning, [mbOK], 0);
   exit;
 end;}

{ if MaskEdit2.Text = '0,00' then
 begin
   MessageDlg('informe o novo Valor Pendente..', mtWarning, [mbOK], 0);
   exit;
 end;
     }
  if not SQLDataSet1.Active then
     SQLDataSet1.Open;
  Label8.Caption := '';
  Label8.Caption := 'Gerando Cobranças...';
  Refresh;
  FlatGauge1.MaxValue := cdsCR.RecordCount;
  cdsCR.First;
  while not cdsCR.Eof do
  begin
    valor := StrToFloat(MaskEdit2.Text);
    DecimalSeparator:='.';
{    sql := 'UPDATE RECEBIMENTOS SET VALOR_RECEBER = ';
    if (Valor > 0) then
      sql := sql + FloatToStr(valor)
    else
      sql := sql + FloatToStr(cdsCRVALOR_RECEBER.AsFloat);
    DecimalSeparator:=',';
    sql := sql + ', EMISSAO = ';
}
    if (Valor > 0) then
    begin
      sql := 'UPDATE RECEBIMENTOS SET VALOR_RECEBER = ';
      sql := sql + FloatToStr(valor);
      sql := sql + ' , VALOR_NF = ' ;
      sql := sql + FloatToStr(valor);
      sql := sql + ' , VALOR_A_REC = ' ;
      sql := sql + FloatToStr(valor);
      sql := sql + ',';
    end else
    sql := 'UPDATE RECEBIMENTOS SET ';
    
    sql := sql + ' EMISSAO = ';

    DecimalSeparator:=',';

    if DateEdit1.Text <> '  /  /    ' then
      sql := sql + '''' + formatdatetime('mm/dd/yy', StrToDate(DateEdit1.Text)) + ''''
    else
      sql := sql + '''' + formatdatetime('mm/dd/yy', cdsCREMISSAO.AsDateTime) + '''';
    sql := sql + ', VENCIMENTO = ';
    if DateEdit2.Text <> '  /  /    ' then
      sql := sql + '''' + formatdatetime('mm/dd/yy', StrToDate(DateEdit2.Text)) + ''''
    else
      sql := sql + '''' + formatdatetime('mm/dd/yy', cdsCRVENCIMENTO.AsDateTime) + '''';
    sql := sql + ' WHERE ID_RECEBIMENTOS = ';
    sql := sql + IntToStr(cdsCRID_RECEBIMENTOS.AsInteger);
    scdsCp_proc.CommandText := scdsCp_proc.CommandText + sql;
    scdsCp_proc.ExecSQL;
    sql := '';
    scdsCp_proc.CommandText := '';
    FlatGauge1.Progress := FlatGauge1.Progress + 1;
    cdsCR.Next;
  end;
  FlatGauge1.Progress := 0;
  Label8.Caption := '';
  Label8.Caption := 'Atualização efetuada com SUCESSO...';
  Refresh;
  dxButton2.Enabled := False;
  BitBtn1.Enabled := True;

end;

procedure TfAtualizaLote.SpeedButton2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit4.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit6.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;

end;

procedure TfAtualizaLote.Edit2Exit(Sender: TObject);
begin
  Edit3.Text := '1';
  Edit1.Text := '500';
end;

procedure TfAtualizaLote.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfAtualizaLote.Edit1Exit(Sender: TObject);
begin
 if Edit6.Text = '' then
   SpeedButton2.Click;
   BitBtn1.SetFocus
end;

procedure TfAtualizaLote.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
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

end;

procedure TfAtualizaLote.DBGrid1TitleClick(Column: TColumn);
begin
 cdsCR.IndexFieldNames := Column.FieldName;
end;

procedure TfAtualizaLote.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varUsuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TfAtualizaLote.DSPGetProproperties(Sender: TObject;
  DataSet: TDataSet; out Properties: OleVariant);
begin
  { Declare Variants no uses }
  Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO',varUsuario,True]);
  Properties[1] := VarArrayOf(['MICRO',NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',
    IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;

procedure TfAtualizaLote.DSPUpdateData(Sender: TObject;
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

procedure TfAtualizaLote.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
