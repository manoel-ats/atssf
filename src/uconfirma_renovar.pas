unit uConfirma_renovar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, StdCtrls, DBClient, DB, XPMenu;

type
  TfConfirma_renovar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    XPMenu1: TXPMenu;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConfirma_renovar: TfConfirma_renovar;

implementation

uses uCad_Clientes, UDM, uRenovar;

{$R *.dfm}

procedure TfConfirma_renovar.dxButton1Click(Sender: TObject);
begin
 fRenovar := TfRenovar.Create(Application);
 try
   fRenovar.ShowModal;
 finally
   fRenovar.Free;
 end;
 close;
end;

procedure TfConfirma_renovar.dxButton2Click(Sender: TObject);
begin
  close;
end;

end.
