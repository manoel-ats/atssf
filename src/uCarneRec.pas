unit uCarneRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  rpcompobase, rpvclreport, XPMenu, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, StdCtrls, Buttons, JvCombobox, JvDBSearchComboBox, Mask,
  ToolEdit,DBXpress, DBCtrls;

type
  TfCarneRec = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edCodCliente: TEdit;
    DateEdit2: TDateEdit;
    DateEdit1: TDateEdit;
    cbCobrador: TJvDBSearchComboBox;
    BitBtn5: TBitBtn;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TJvValidateEdit;
    Edit1: TJvValidateEdit;
    Panel1: TPanel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    sdsCobrador: TSQLDataSet;
    sdsCobradorNOME: TStringField;
    sdsCobradorID_COB: TIntegerField;
    XPMenu1: TXPMenu;
    dspCobrador: TDataSetProvider;
    cdsCobrador: TClientDataSet;
    cdsCobradorNOME: TStringField;
    cdsCobradorID_COB: TIntegerField;
    DtSrc: TDataSource;
    dtsCR: TDataSource;
    sdsGerar: TSQLDataSet;
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
    sdsGerarMESANO: TStringField;
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
    cdsGerarID_SOCIO: TIntegerField;
    cdsGerarID: TIntegerField;
    cdsGerarMESANO: TStringField;
    VCLReport1: TVCLReport;
    DBGrid1: TDBGrid;
    sqlCarne: TSQLDataSet;
    sqlCarnePARCELAS: TIntegerField;
    sqlCarneSTATUS: TStringField;
    sqlCarneSOMA: TFloatField;
    sqlCarneNOME_SOCIO: TStringField;
    sqlCarneSOC: TIntegerField;
    dspCarne: TDataSetProvider;
    cdsCarne: TClientDataSet;
    cdsCarnePARCELAS: TIntegerField;
    cdsCarneSTATUS: TStringField;
    cdsCarneSOMA: TFloatField;
    cdsCarneNOME_SOCIO: TStringField;
    cdsCarneSOC: TIntegerField;
    dsCarne: TDataSource;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCarneRec: TfCarneRec;

implementation

uses UDM, uSocio_Procura;

{$R *.dfm}

procedure TfCarneRec.BitBtn3Click(Sender: TObject);
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
   VCLReport1.FileName := str_relatorio + 'gera_carneTODOS.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.SQLObitos;
   VCLReport1.Report.Params.ParamByName('gr').Value := Edit2.Text;
   VCLReport1.Report.Params.ParamByName('data1').Value := DateEdit1.Text;
   VCLReport1.Report.Params.ParamByName('data2').Value := DateEdit2.Text;
   VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(Edit3.Text);
   VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(Edit1.Text);

   VCLReport1.Title := str_relatorio + 'gera_carneTODOS.rep';
   VCLReport1.Execute;

  {
   VCLReport1.FileName := str_relatorio + 'gera_carne.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.SQLObitos;
   VCLReport1.Report.Params.ParamByName('PARC1').Value := Edit5.Text;
   VCLReport1.Report.Params.ParamByName('PARC2').Value := Edit6.Text;
   if(edCodCliente.Text <> '')then
      VCLReport1.Report.Params.ParamByName('PID').Value := StrToInt(DBEdit2.Text)
   else VCLReport1.Report.Params.ParamByName('PID').Value := 9999999;
   VCLReport1.Title := str_relatorio + 'gera_carne.rep';
   VCLReport1.Execute;
 }
end;

procedure TfCarneRec.BitBtn6Click(Sender: TObject);
begin
  if (Edit2.Text = '') then
  begin
      MessageDlg('Informe o Grupo.', mtWarning, [mbOK], 0);
      edit2.SetFocus;
      exit;
  end;
 cdsCarne.Close;
  if not (cdsCarne.Active) then
    cdsCarne.Close;
  cdsCarne.Params[0].AsString :=Edit2.Text;
  cdsCarne.Params[1].AsDate := StrToDate(DateEdit1.Text); //'01/01/17';//DateEdit1.Date;
  cdsCarne.Params[2].AsDate := StrToDate(DateEdit2.Text); //'01/31/17';//DateEdit2.Date;
  cdsCarne.Params[3].AsInteger := StrToInt(Edit3.Text);
  cdsCarne.Params[4].AsInteger := StrToInt(Edit1.Text);


  cdsCarne.Open;
end;

procedure TfCarneRec.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfCarneRec.BitBtn5Click(Sender: TObject);
begin
   varonde := 9;
   fSocio_Procura.ShowModal;
end;

procedure TfCarneRec.BitBtn1Click(Sender: TObject);
begin
     Edit4.Text := '';
     edCodCliente.Text := '';
     Edit1.Text := '500';
     Edit3.Text := '1';
end;

end.
