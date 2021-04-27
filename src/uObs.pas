unit uObs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMenu, StdCtrls, Buttons, DBCtrls;

type
  TfObs = class(TForm)
    BitBtn1: TBitBtn;
    XPMenu1: TXPMenu;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fObs: TfObs;

implementation

{$R *.dfm}

end.
