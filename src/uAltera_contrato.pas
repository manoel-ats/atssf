unit uAltera_contrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  Tfaltera_contrato = class(TForm)
    Label1: TLabel;
    mdtaContrato: TMaskEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  faltera_contrato: Tfaltera_contrato;

implementation

uses uSocios;

{$R *.dfm}

procedure Tfaltera_contrato.BitBtn1Click(Sender: TObject);
begin
   if mdtaContrato.Text = '  /  /    ' then
   begin
    MessageDlg('preencha a Data de Inicio do Novo Contrato, '+#13+#10+'data em que o novo Plano entrará em vigor..', mtWarning, [mbOK], 0);
    exit;
   end;
end;

procedure Tfaltera_contrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if mdtaContrato.Text = '  /  /    ' then
   begin
    MessageDlg('preencha a Data de Inicio do Novo Contrato, '+#13+#10+'data em que o novo Plano entrará em vigor..', mtWarning, [mbOK], 0);
    exit;
   end;
   DTA_ALT_PLANO := mdtaContrato.Text;
end;

end.
