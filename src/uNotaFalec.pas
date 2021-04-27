unit uNotaFalec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, dxCore, dxButton, XPMenu, rpcompobase,
  rpvclreport;

type
  TfNotaFalec = class(TForm)
    XPMenu1: TXPMenu;
    Panel1: TPanel;
    dxButton8: TdxButton;
    RadioGroup1: TRadioGroup;
    VCLReport5: TVCLReport;
    VCLReport2: TVCLReport;
    VCLReport1: TVCLReport;
    procedure dxButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFalec: TfNotaFalec;

implementation

uses uCad_Obitos, UDM;

{$R *.dfm}

procedure TfNotaFalec.dxButton8Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    if dm.cds_ObitosSERIE.AsString = 'A' then
    begin
      VCLReport1.Report.Params.ParamByName('PID').Value :=
        dm.cds_ObitosID.AsInteger;
      VCLReport1.Execute;
    end;
    if dm.cds_ObitosSERIE.AsString = 'B' then
    begin
      VCLReport2.Report.Params.ParamByName('PID').Value :=
        dm.cds_ObitosID.AsInteger;
      VCLReport2.Execute;
    end;
  end
  else
  begin
     VCLReport5.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport5.Execute;
  end;
end;

procedure TfNotaFalec.FormCreate(Sender: TObject);
var
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;
begin
 if not dm.cds_par.Active then
   dm.cds_par.Open;

 if dm.cds_parPARAMETRO1.AsString = '800x600' then
 begin
   ScreenWidth := 800;
   ScreenHeight := 600;
 end;

 if dm.cds_parPARAMETRO1.AsString = '1024x768' then
 begin
   ScreenWidth := 1024;
   ScreenHeight := 768;
 end;

 if dm.cds_parPARAMETRO1.AsString = '1280x800' then
 begin
   ScreenWidth := 1280;
   ScreenHeight := 800;
 end;

 if dm.cds_parPARAMETRO1.AsString <> 'Padrão' then
 begin
    scaled := true;
    if (screen.width <> ScreenWidth) then
    begin
      height := longint(height) * longint(screen.height) DIV ScreenHeight;
      width := longint(width) * longint(screen.width) DIV ScreenWidth;
      scaleBy(screen.width, ScreenWidth);
    end;
 end
 else
 begin
    scaled := true;
    if (screen.width <> ScreenWidth) then
    begin
      height := longint(height) * longint(screen.height) DIV ScreenHeight;
      width := longint(width) * longint(screen.width) DIV ScreenWidth;
      scaleBy(screen.width, ScreenWidth);
    end;
  fNotaFalec.Position := poDesktopCenter;
  fNotaFalec.WindowState := wsNormal;
 end;
end;

end.
