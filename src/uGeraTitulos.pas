unit uGeraTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvEdit,
  JvValidateEdit, FMTBcd, DB, SqlExpr, ExtCtrls, XPMenu, DBClient, Provider,
  DBXpress, rpcompobase, rpvclreport;

type
  TfGeraTitulos = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    Label23: TLabel;
    cbCobrador: TJvDBSearchComboBox;
    Label4: TLabel;
    JvDBGrid1: TJvDBGrid;
    edCodCliente: TEdit;
    BitBtn5: TBitBtn;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Edit2: TEdit;
    Label6: TLabel;
    sdsCobrador: TSQLDataSet;
    sdsCobradorNOME: TStringField;
    sdsCobradorID_COB: TIntegerField;
    XPMenu1: TXPMenu;
    Edit4: TEdit;
    dspCobrador: TDataSetProvider;
    cdsCobrador: TClientDataSet;
    DtSrc: TDataSource;
    Edit3: TJvValidateEdit;
    Edit1: TJvValidateEdit;
    dtsCR: TDataSource;
    cdsCobradorNOME: TStringField;
    cdsCobradorID_COB: TIntegerField;
    sdsGerar: TSQLDataSet;
    dspGerar: TDataSetProvider;
    cdsGerar: TClientDataSet;
    cdsGerarID_RECEBIMENTOS: TIntegerField;
    cdsGerarSTATUS: TStringField;
    cdsGerarEMISSAO: TDateField;
    cdsGerarVENCIMENTO: TDateField;
    cdsGerarVALOR_NF: TFloatField;
    cdsGerarLOTE: TIntegerField;
    cdsGerarGRUPO: TStringField;
    cdsGerarNOME_SOCIO: TStringField;
    cdsGerarN_INSCRICAO: TIntegerField;
    cdsGerarCPF_CGC: TStringField;
    cdsGerarNOME: TStringField;
    cdsGerarN_BOLETO: TStringField;
    cdsGerarTITULO: TIntegerField;
    sdsGerarID_RECEBIMENTOS: TIntegerField;
    sdsGerarSTATUS: TStringField;
    sdsGerarEMISSAO: TDateField;
    sdsGerarVENCIMENTO: TDateField;
    sdsGerarVALOR_NF: TFloatField;
    sdsGerarLOTE: TIntegerField;
    sdsGerarGRUPO: TStringField;
    sdsGerarNOME_SOCIO: TStringField;
    sdsGerarN_INSCRICAO: TIntegerField;
    sdsGerarCPF_CGC: TStringField;
    sdsGerarNOME: TStringField;
    sdsGerarN_BOLETO: TStringField;
    sdsGerarTITULO: TIntegerField;
    sdsGerarID_SOCIO: TIntegerField;
    sdsGerarID: TIntegerField;
    cdsGerarID_SOCIO: TIntegerField;
    cdsGerarID: TIntegerField;
    sdsGerarMESANO: TStringField;
    cdsGerarMESANO: TStringField;
    VCLReport1: TVCLReport;
    Label3: TLabel;
    rbmensal: TRadioButton;
    rbtrimestral: TRadioButton;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGeraTitulos: TfGeraTitulos;

implementation

uses UDM, uSocio_Procura;

{$R *.dfm}

procedure TfGeraTitulos.BitBtn5Click(Sender: TObject);
begin
   varonde := 8;
   fSocio_Procura.ShowModal;
end;

procedure TfGeraTitulos.FormShow(Sender: TObject);
begin
  cdsCobrador.Open;
  cbCobrador.Text := '';
end;

procedure TfGeraTitulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsCobrador.Close;
end;

procedure TfGeraTitulos.FormCreate(Sender: TObject);
var
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;
begin
  //  ScreenWidth := 800;
  //  ScreenHeight := 600;
  //  scaled := true;
  //  height := longint(height) * longint(screen.height) DIV ScreenHeight;
  //  width := longint(width) * longint(screen.width) DIV ScreenWidth;
  //  scaleBy(screen.width, ScreenWidth);
end;

procedure TfGeraTitulos.BitBtn1Click(Sender: TObject);
var
   ano, mes, dia, dia1: word;
   sql_texto, mesano : string;
   TD: TTransactionDesc;
begin
  {** Verifico se os campos referentes a Lote e Grupo forão preenchidos se ñ cancelo a operação}
  if DateEdit1.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Emissão do Títilo.', mtWarning, [mbOK], 0);
    exit;
  end;
  if DateEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Vencimento do Títilo.', mtWarning, [mbOK], 0);
    exit;
  end
  else
       decodedate(StrToDate(DateEdit2.Text), ano, mes, dia);
  mesano := IntToStr(mes);
  mesano := mesano + IntToStr(ano);

  if (Edit2.Text = '') then
  begin
      MessageDlg('Informe o Grupo.', mtWarning, [mbOK], 0);
      edit2.SetFocus;
      exit;
  end;
  if (Edit3.Text = '') then
  begin
      MessageDlg('Informe a Inscrição.', mtWarning, [mbOK], 0);
      edit3.SetFocus;
      exit;
  end;
  if (Edit1.Text = '') then
  begin
      MessageDlg('Informe a Inscrição.', mtWarning, [mbOK], 0);
      edit1.SetFocus;
      exit;
  end;
  if (cdsGerar.Active) then
    cdsGerar.Close;
  cdsGerar.Params[0].AsString := mesano;
  cdsGerar.Params[1].AsString := Edit2.Text;
  cdsGerar.Params[2].AsInteger := StrToInt(Edit3.Text);
  cdsGerar.Params[3].AsInteger := StrToInt(Edit1.Text);
  if (cbCobrador.Text <> '') then
  begin
    cdsCobrador.Locate('NOME', cbCobrador.Text, [loCaseInsensitive]);
    cdsGerar.Params[5].Clear;
    cdsGerar.Params[4].AsInteger := cdsCobradorID_COB.AsInteger;
  end
  else
  begin
    cdsGerar.Params[4].Clear;
    cdsGerar.Params[5].AsInteger := 9999999;
  end;
  cdsGerar.Open;

  if (rbmensal.Checked = true) then
  begin

  if (cdsGerar.IsEmpty) then
  begin
    {********  GERO AS COBRANÇAS MENSAL ********************}
     sql_texto := '';
     //Panel2.Visible := True;
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     dm.SQLObitos.StartTransaction(TD);
     try
         sql_texto := 'Execute procedure SPGERATITULO(';
         sql_texto := sql_texto + '''' + Edit2.Text + ''','; // Grupo
         sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit1.Text)) + ''','; //Emissão
         sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit2.Text)) + ''','; //Vencimento
         sql_texto := sql_texto + '''' + mesano + ''','; // Mês da Cobrança
         sql_texto := sql_texto + '''' + Edit3.Text + ''','; //+ 'null'; //Incrição de
         sql_texto := sql_texto + '''' + Edit1.Text + ''','; //+  ',' + 'null'; //Incrição até
         sql_texto := sql_texto +  'null'; //Cobrador
         sql_texto := sql_texto +  ')';
         DM.SQLObitos.ExecuteDirect(sql_texto);
         dm.SQLObitos.Commit(TD);
         MessageDlg('Títulos Gerados com Suscesso', mtWarning, [mbOK], 0);
         {** Limpo novamente as variaveis}
         sql_texto := '';
     except
       dm.SQLObitos.Rollback(TD);
       MessageDlg('Erro ao gerar a cobrança...', mtError, [mbOK], 0);
       exit;
     end;
  end
  else
  begin
    MessageDlg('Já foi gerada Cobrança para o mês selecionado', mtInformation, [mbOK], 0);
    exit;
  end;
  BitBtn6.Click;
  end;

  if (rbtrimestral.Checked = true) then
  begin

  if (cdsGerar.IsEmpty) then
  begin
    {********  GERO AS COBRANÇAS TRIMESTRAL ********************}
     sql_texto := '';
     //Panel2.Visible := True;
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     dm.SQLObitos.StartTransaction(TD);
     try
         sql_texto := 'Execute procedure SPGERATITULOM(';
         sql_texto := sql_texto + '''' + Edit2.Text + ''','; // Grupo
         sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit1.Text)) + ''','; //Emissão
         sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit2.Text)) + ''','; //Vencimento
         sql_texto := sql_texto + '''' + mesano + ''','; // Mês da Cobrança
         sql_texto := sql_texto + '''' + Edit3.Text + ''','; //+ 'null'; //Incrição de
         sql_texto := sql_texto + '''' + Edit1.Text + ''','; //+  ',' + 'null'; //Incrição até
         sql_texto := sql_texto +  'null'; //Cobrador
         sql_texto := sql_texto +  ')';
         DM.SQLObitos.ExecuteDirect(sql_texto);
         dm.SQLObitos.Commit(TD);
         MessageDlg('Títulos Gerados com Suscesso', mtWarning, [mbOK], 0);
         {** Limpo novamente as variaveis}
         sql_texto := '';
     except
       dm.SQLObitos.Rollback(TD);
       MessageDlg('Erro ao gerar a cobrança...', mtError, [mbOK], 0);
       exit;
     end;
  end
  else
  begin
    MessageDlg('Já foi gerada Cobrança para o mês selecionado', mtInformation, [mbOK], 0);
    exit;
  end;
  BitBtn6.Click;
  end;

end;

procedure TfGeraTitulos.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure TfGeraTitulos.BitBtn6Click(Sender: TObject);
var
   ano, mes, dia, dia1: word;
   sql_texto, mesano : string;
   TD: TTransactionDesc;
   cont : integer;
begin
  {** Verifico se os campos referentes a Lote e Grupo forão preenchidos se ñ cancelo a operação}
  if DateEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Vencimento do Títilo que deseja Localizar.', mtWarning, [mbOK], 0);
    exit;
  end
  else
       decodedate(StrToDate(DateEdit2.Text), ano, mes, dia);

  mesano := IntToStr(mes);
  mesano := mesano + IntToStr(ano);

  if (Edit2.Text = '') then
  begin
      MessageDlg('Informe o Grupo.', mtWarning, [mbOK], 0);
      edit2.SetFocus;
      exit;
  end;

  if (Edit3.Text = '') then
  begin
      MessageDlg('Informe a Inscrição.', mtWarning, [mbOK], 0);
      edit3.SetFocus;
      exit;
  end;

  if (Edit1.Text = '') then
  begin
      MessageDlg('Informe a Inscrição.', mtWarning, [mbOK], 0);
      edit1.SetFocus;
      exit;
  end;

  if (cdsGerar.Active) then
    cdsGerar.Close;
  cdsGerar.Params[0].AsString := mesano;
  cdsGerar.Params[1].AsString := Edit2.Text;
  cdsGerar.Params[2].AsInteger := StrToInt(Edit3.Text);
  cdsGerar.Params[3].AsInteger := StrToInt(Edit1.Text);
  if (cbCobrador.Text <> '') then
  begin
    cdsCobrador.Locate('NOME', cbCobrador.Text, [loCaseInsensitive]);
    cdsGerar.Params[5].Clear;
    cdsGerar.Params[4].AsInteger := cdsCobradorID_COB.AsInteger;
  end
  else
  begin
    cdsGerar.Params[4].Clear;
    cdsGerar.Params[5].AsInteger := 9999999;
  end;
  cdsGerar.Open;

  if (cdsGerar.IsEmpty) then
  begin
    MessageDlg('Não á Títulos nesse período', mtWarning, [mbOK], 0);
    cdsGerar.Close;
    DateEdit2.SetFocus;
  end;
  if not(cdsGerar.IsEmpty) then
  begin
   Label3.Caption := IntToStr(cdsGerar.RecordCount);
  end;
end;

procedure TfGeraTitulos.BitBtn3Click(Sender: TObject);
var
   ano, mes, dia, dia1: word;
   sql_texto, mesano : string;
   TD: TTransactionDesc;
begin
  if DateEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Vencimento do Títilo.', mtWarning, [mbOK], 0);
    exit;
  end
  else
       decodedate(StrToDate(DateEdit2.Text), ano, mes, dia);
  mesano := IntToStr(mes);
  mesano := mesano + IntToStr(ano);

  if (Edit2.Text = '') then
  begin
      MessageDlg('Informe o Grupo.', mtWarning, [mbOK], 0);
      edit2.SetFocus;
      exit;
  end;
  if (Edit3.Text = '') then
  begin
      MessageDlg('Informe a Inscrição.', mtWarning, [mbOK], 0);
      edit3.SetFocus;
      exit;
  end;
  if (Edit1.Text = '') then
  begin
      MessageDlg('Informe a Inscrição.', mtWarning, [mbOK], 0);
      edit1.SetFocus;
      exit;
  end;

   VCLReport1.FileName := str_relatorio + 'recibo_mogiana.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
   VCLReport1.Report.Params.ParamByName('GR').Value := mesano;
   VCLReport1.Report.Params.ParamByName('GP').Value := Edit2.Text;
   VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(Edit3.Text);
   VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(Edit1.Text);
  if (cbCobrador.Text <> '') then
  begin
    cdsCobrador.Locate('NOME', cbCobrador.Text, [loCaseInsensitive]);
    VCLReport1.Report.Params.ParamByName('CB').Value := cdsCobradorID_COB.Value;
  end
  else
  begin
     VCLReport1.Report.Params.ParamByName('CB').Value := 9999999;
  end;
  VCLReport1.Title := str_relatorio + 'recibo_mogiana.rep';
  VCLReport1.Execute;
end;

procedure TfGeraTitulos.BitBtn2Click(Sender: TObject);
var
   ano, mes, dia, dia1: word;
   sql_texto, mesano , sql  : string;
   TD: TTransactionDesc;
   cont : integer;
begin
 if perfil <> 'administrador' then
 begin
  MessageDlg('   Somente usuários Administradores tem '+#13+#10+'permição para excluir parcelas', mtInformation, [mbOK], 0);
  exit;
 end;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin

  while not cdsGerar.Eof do
  begin
  dm.SQLObitos.StartTransaction(TD);

  sql := 'UPDATE RECEBIMENTOS SET SITUACAO = ';
  sql := sql + QuotedStr('Inativo');
  sql := sql + ' where id_recebimentos = ';
  sql := sql + IntToStr(cdsGerarID_RECEBIMENTOS.AsInteger);
  sql := sql ;
  //   dtsCR.DataSet.Delete;
  //   (dtsCR.DataSet as TClientDataSet).ApplyUpdates(0);
  dm.SQLObitos.ExecuteDirect(sql);
  dm.SQLObitos.Commit(TD);

  cdsGerar.Next;
  end;

  end;

  BitBtn6.Click;

end;

end.
