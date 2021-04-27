unit uMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Buttons, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, ToolEdit,
  ExtCtrls;

type
  TfMov = class(TForm)
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    dataini: TDateEdit;
    dataini1: TDateEdit;
    datafin: TDateEdit;
    datafin2: TDateEdit;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    btnMensal: TBitBtn;
    btnEcon: TBitBtn;
    btnTri: TBitBtn;
    btnSete: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnMensalClick(Sender: TObject);
    procedure btnEconClick(Sender: TObject);
    procedure btnTriClick(Sender: TObject);
    procedure btnSeteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMov: TfMov;

implementation

uses UDM, uUtils;

{$R *.dfm}

procedure TfMov.BitBtn1Click(Sender: TObject);
begin

   VCLReport1.FileName := str_relatorio + 'conf.rep';
   VCLReport1.Report.Params.ParamByName('DATAINI').Value := dataini.Text;
   VCLReport1.Report.Params.ParamByName('DATAFIN').Value := datafin.Text;
 //  VCLReport1.Report.Params.ParamByName('DATAINI1').Value := dataini1.Text;
 //  VCLReport1.Report.Params.ParamByName('DATAFIN2').Value := datafin2.Text;
   VCLReport1.Title := str_relatorio + 'conf.rep';
   VCLReport1.Execute;
end;

procedure TfMov.ComboBox1Change(Sender: TObject);
var util: TUtils;
begin
  util := TUtils.Create;
  util.PeriodoIni := ComboBox1.Text;
  dataini.Text := util.PeriodoIni;
  util.PeriodoFim := ComboBox1.Text;
  datafin.Text := util.PeriodoFim;

end;

procedure TfMov.ComboBox2Change(Sender: TObject);
var util: TUtils;
begin
  util := TUtils.Create;
  util.PeriodoIni := ComboBox2.Text;
  dataini1.Text := util.PeriodoIni;
  util.PeriodoFim := ComboBox2.Text;
  datafin2.Text := util.PeriodoFim;

end;

procedure TfMov.BitBtn2Click(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'conf.rep';
   VCLReport1.Report.Params.ParamByName('DATAINI').Value := dataini.Text;
   VCLReport1.Report.Params.ParamByName('DATAFIN').Value := datafin.Text;
   VCLReport1.Title := str_relatorio + 'conf.rep';
   VCLReport1.Execute;
end;

procedure TfMov.btnMensalClick(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'qtd_pendentes.rep';
   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := datafin.Text;
   VCLReport1.Title := str_relatorio + 'qtd_pendentes.rep';
   VCLReport1.Execute;
end;

procedure TfMov.btnEconClick(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'qtd_pendentesEco.rep';
   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := datafin.Text;
   VCLReport1.Title := str_relatorio + 'qtd_pendentesEco.rep';
   VCLReport1.Execute;
end;

procedure TfMov.btnTriClick(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'qtd_pendentesTri.rep';
   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := datafin.Text;
   VCLReport1.Title := str_relatorio + 'qtd_pendentesTri.rep';
   VCLReport1.Execute;
end;

procedure TfMov.btnSeteClick(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'qtd_pendentes7.rep';
   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := datafin.Text;
   VCLReport1.Title := str_relatorio + 'qtd_pendentes7.rep';
   VCLReport1.Execute;
end;

end.
