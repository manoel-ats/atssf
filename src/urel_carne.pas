unit uRel_Carne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, dxCore, dxButton, StdCtrls, ExtCtrls;

type
  TfRel_Carne = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    dxButton1: TdxButton;
    dxButton3: TdxButton;
    VCLReport1: TVCLReport;
    Edit1: TEdit;
    Parcela: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_Carne: TfRel_Carne;

implementation

{$R *.dfm}

procedure TfRel_Carne.dxButton1Click(Sender: TObject);
begin
   VCLReport1.Report.Params.ParamByName('PARC1').Value :=
       StrToInt(Edit1.Text);
    VCLReport1.Report.Params.ParamByName('PARC2').Value :=
       StrToInt(Edit2.Text);
    VCLReport1.Report.Params.ParamByName('PID').Value :=
       StrToInt(Edit3.Text);

    VCLReport1.Execute;
end;

procedure TfRel_Carne.dxButton3Click(Sender: TObject);
begin
  close;
end;

end.
