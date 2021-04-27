unit uPendente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, XPMenu, dxCore, dxButton, ExtCtrls,
  StdCtrls, Mask, ToolEdit, FMTBcd, DBCtrls, EDBFind, DB, SqlExpr;

type
  TfPendente = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    pnl1: TPanel;
    btnSair: TdxButton;
    dxButton13: TdxButton;
    pnl2: TPanel;
    edt4: TEdit;
    XPMenu1: TXPMenu;
    VCLReport1: TVCLReport;
    edt5: TEdit;
    lbl5: TLabel;
    Data1: TDateEdit;
    lbl6: TLabel;
    dxButton1: TdxButton;
    lbl7: TLabel;
    dxButton2: TdxButton;
    sqlMun: TSQLDataSet;
    sqlMunMUNICIPIO: TStringField;
    DtSrc_munic: TDataSource;
    EvDBFind1: TEvDBFind;
    DBComboBox1: TDBComboBox;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    procedure dxButton13Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fPendente: TfPendente;

implementation

uses UDM, udmconsulta;

{$R *.dfm}

procedure TfPendente.dxButton13Click(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'pendentes.rep';

   VCLReport1.Report.Params.ParamByName('DIAPGTO').Value := edt4.Text ;

   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := Data1.Text;

   VCLReport1.Report.Params.ParamByName('NPARCELA').Value := edt5.Text;
   // GRupo
   if edt1.Text <> '' then
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := edt1.Text
   else
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := 't';
   // Inscrição
   if edt2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := StrToInt(edt2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := 1;
   if edt3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := StrToInt(edt3.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := 500;
   VCLReport1.Title := VCLReport1.FileName;
   VCLReport1.Execute;
end;

procedure TfPendente.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfPendente.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfPendente.dxButton1Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'pendentes7F.rep';

   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := Data1.Text;

   VCLReport1.Report.Params.ParamByName('NPARCELA').Value := edt5.Text;
   // GRupo
   if edt1.Text <> '' then
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := edt1.Text
   else
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := 't';
   // Inscrição
   if edt2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := StrToInt(edt2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := 1;
   if edt3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := StrToInt(edt3.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := 500;
   VCLReport1.Title := VCLReport1.FileName;
   VCLReport1.Execute;
end;

procedure TfPendente.dxButton2Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'pendentes_cidades.rep';

 //  VCLReport1.Report.Params.ParamByName('DIAPGTO').Value := edt4.Text ;

   if edt4.Text  <> '' then
     VCLReport1.Report.Params.ParamByName('DIAPGTO').Value := edt4.Text
   else
     VCLReport1.Report.Params.ParamByName('DIAPGTO').Value := 0;


   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := Data1.Text;

   VCLReport1.Report.Params.ParamByName('NPARCELA').Value := edt5.Text;
   // GRupo
   if edt1.Text <> '' then
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := edt1.Text
   else
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := 't';
   // Inscrição
   if edt2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := StrToInt(edt2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := 1;
   if edt3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := StrToInt(edt3.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := 500000;

   VCLReport1.Report.Params.ParamByName('CIDADE').Value := DBComboBox1.Text;
   VCLReport1.Title := VCLReport1.FileName;
   VCLReport1.Execute;
end;

procedure TfPendente.FormShow(Sender: TObject);
begin
  if not sqlMun.Active then
    sqlMun.Open;
   if not dmconsulta.cds_munic.Active then
     dmconsulta.cds_munic.Open;

   if sqlMun.Active then
     sqlMun.Close;
   sqlMun.Open;
   While not sqlMun.Eof do
   begin
     DBComboBox1.Items.Add(sqlMunMUNICIPIO.AsString);
     sqlMun.Next;
   end;
end;

procedure TfPendente.dxButton3Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'pendentes_cidades7.rep';

 //  VCLReport1.Report.Params.ParamByName('DIAPGTO').Value := edt4.Text ;

 //  if edt4.Text  <> '' then
 //    VCLReport1.Report.Params.ParamByName('DIAPGTO').Value := edt4.Text
 //  else
  //   VCLReport1.Report.Params.ParamByName('DIAPGTO').Value := 0;


   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := Data1.Text;

   VCLReport1.Report.Params.ParamByName('NPARCELA').Value := edt5.Text;
   // GRupo
   if edt1.Text <> '' then
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := edt1.Text
   else
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := 't';
   // Inscrição
   if edt2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := StrToInt(edt2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := 1;
   if edt3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := StrToInt(edt3.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := 500000;

   VCLReport1.Report.Params.ParamByName('CIDADE').Value := DBComboBox1.Text;
   VCLReport1.Title := VCLReport1.FileName;
   VCLReport1.Execute;
end;

procedure TfPendente.dxButton4Click(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'pendentesTri.rep';

   VCLReport1.Report.Params.ParamByName('DIAPGTO').Value := edt4.Text ;

   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := Data1.Text;

   VCLReport1.Report.Params.ParamByName('NPARCELA').Value := edt5.Text;
   // GRupo
   if edt1.Text <> '' then
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := edt1.Text
   else
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := 't';
   // Inscrição
   if edt2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := StrToInt(edt2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := 1;
   if edt3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := StrToInt(edt3.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := 500;
   VCLReport1.Title := VCLReport1.FileName;
   VCLReport1.Execute;
end;

procedure TfPendente.dxButton5Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'pendentes_cidadesTri.rep';


   VCLReport1.Report.Params.ParamByName('DATAVENC').Value := Data1.Text;

   VCLReport1.Report.Params.ParamByName('NPARCELA').Value := edt5.Text;
   // GRupo
   if edt1.Text <> '' then
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := edt1.Text
   else
     VCLReport1.Report.Params.ParamByName('GRUPO').Value := 't';
   // Inscrição
   if edt2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := StrToInt(edt2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOINI').Value := 1;
   if edt3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := StrToInt(edt3.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSCRICAOFIN').Value := 500000;

   VCLReport1.Report.Params.ParamByName('CIDADE').Value := DBComboBox1.Text;
   VCLReport1.Title := VCLReport1.FileName;
   VCLReport1.Execute;
end;

end.
