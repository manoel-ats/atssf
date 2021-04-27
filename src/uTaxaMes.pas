unit uTaxaMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, Buttons, DB, EDBFind,
  SqlExpr, Provider, DBClient, DBLocal, DBLocalS, ExtCtrls;

type
  TfTaxaMes = class(TForm)
    btn7: TSpeedButton;
    Label1: TLabel;
    btn5: TSpeedButton;
    Data2: TJvDatePickerEdit;
    data1: TJvDatePickerEdit;
    VCLReport1: TVCLReport;
    EvDBFind1: TEvDBFind;
    DataSource1: TDataSource;
    proc_socio: TSQLClientDataSet;
    proc_socioID_SOCIO: TIntegerField;
    proc_socioNOME_SOCIO: TStringField;
    proc_socioSOBRENOME: TStringField;
    proc_socioGRUPO: TStringField;
    proc_socioN_INSCRICAO: TIntegerField;
    EvDBFind2: TEvDBFind;
    EvDBFind3: TEvDBFind;
    EvDBFind4: TEvDBFind;
    todos: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    procedure btn7Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure todosClick(Sender: TObject);
    procedure EvDBFind1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTaxaMes: TfTaxaMes;

implementation

uses UDM;

{$R *.dfm}

procedure TfTaxaMes.btn7Click(Sender: TObject);
begin
  close
end;

procedure TfTaxaMes.btn5Click(Sender: TObject);
var m , d :String;
begin
  m := '01/';
  d := data1.Text;
  data2.Text :=  (m+d);
  

  VCLReport1.FileName := str_relatorio + 'taxas.rep';
  VCLReport1.Title := VCLReport1.FileName;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
  if(todos.Checked = true) then
  VCLReport1.Report.Params.ParamByName('CODSOCIO').Value  := '9999999'
  else
  VCLReport1.Report.Params.ParamByName('CODSOCIO').Value  := StrToInt(EvDBFind4.Text);
  VCLReport1.Report.Params.ParamByName('VENCIMENTO').Value  := StrToDate(Data2.Text);
  VCLReport1.Execute;

end;

procedure TfTaxaMes.FormShow(Sender: TObject);
begin
  if not(proc_socio.Active)then
    proc_socio.Open;
end;

procedure TfTaxaMes.todosClick(Sender: TObject);
begin
  EvDBFind1.Clear;
  EvDBFind2.Clear;
  EvDBFind3.Clear;
  EvDBFind4.Clear;
end;

procedure TfTaxaMes.EvDBFind1Click(Sender: TObject);
begin
 todos.Checked := False ; 
end;

end.
