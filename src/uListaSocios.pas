unit uListaSocios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, dxCore, dxButton, ExtCtrls,
  StdCtrls, Buttons;

type
  TfListaSocios = class(TForm)
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    Panel1: TPanel;
    btnSair: TdxButton;
    dxButton13: TdxButton;
    Panel2: TPanel;
    VCLReport1: TVCLReport;
    Label4: TLabel;
    Edit6: TEdit;
    Edit5: TEdit;
    SpeedButton1: TSpeedButton;
    rg1: TRadioGroup;
    procedure btnSairClick(Sender: TObject);
    procedure dxButton13Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaSocios: TfListaSocios;

implementation

uses UDM, uProcurar;

{$R *.dfm}

procedure TfListaSocios.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfListaSocios.dxButton13Click(Sender: TObject);
begin

   if(rg1.ItemIndex = 0) then
     VCLReport1.FileName := str_relatorio + 'Lista_socios.rep'
   else
   VCLReport1.FileName := str_relatorio + 'Lista_sociosB.rep';

   // GRupo
   if Edit1.Text <> '' then
     VCLReport1.Report.Params.ParamByName('GP').Value := Edit1.Text
   else
     VCLReport1.Report.Params.ParamByName('GP').Value := 't';
   // Inscrição
   if Edit2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('IN1').Value := StrToInt(Edit2.Text)
   else
     VCLReport1.Report.Params.ParamByName('IN1').Value := 1;
   if Edit3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('IN2').Value := StrToInt(Edit3.Text)
   else
     VCLReport1.Report.Params.ParamByName('IN2').Value := 500;
   //Cobrador
   if Edit5.Text <> '' then
     VCLReport1.Report.Params.ParamByName('PCB').Value := StrToInt(Edit5.text)
   else
     VCLReport1.Report.Params.ParamByName('PCB').Value := 9999999;

   VCLReport1.Execute;

end;

procedure TfListaSocios.SpeedButton1Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit5.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit6.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;
end;

end.
