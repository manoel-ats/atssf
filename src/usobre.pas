unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMenu, Buttons;

type
  TfSobre = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    ProgramIcon: TImage;
    Copyright: TLabel;
    Comments: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    ProductName: TLabel;
    Label4: TLabel;
    XPMenu1: TXPMenu;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSobre: TfSobre;

implementation

{$R *.dfm}

procedure TfSobre.OKButtonClick(Sender: TObject);
begin
  Close;
end;

end.
