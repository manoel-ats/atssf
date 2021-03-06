unit uCarteirinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, Buttons, StdCtrls, dxCore, dxButton,
  ExtCtrls, XPMenu;

type
  TfCarteirinha = class(TForm)
    Panel1: TPanel;
    dxButton1: TdxButton;
    dxButton3: TdxButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    VCLReport1: TVCLReport;
    XPMenu1: TXPMenu;
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCarteirinha: TfCarteirinha;

implementation

uses uProcurar, UDM, uProcGrupo, uFiltroProcura, uProcura_Trimestral,
  uSocio_Procura;

{$R *.dfm}

procedure TfCarteirinha.SpeedButton1Click(Sender: TObject);
begin
       fSocio_Procura.ShowModal;

end;

procedure TfCarteirinha.dxButton1Click(Sender: TObject);
begin
  if Edit2.Text = '' then
  begin
   MessageDlg('? preciso que voc? selecione um S?cio, '+#13+#10+'para poder imprimir a carteirinha', mtWarning, [mbOK], 0);
   exit;
  end;
    VCLReport1.Title:= str_relatorio + 'Carteirinha.rep';
    VCLReport1.FileName := str_relatorio + 'Carteirinha.rep';
    VCLReport1.Report.Params.ParamByName('PID').Value := StrToInt(Edit2.Text);
    VCLReport1.Execute;

end;

procedure TfCarteirinha.dxButton3Click(Sender: TObject);
begin
   close;
end;

end.
