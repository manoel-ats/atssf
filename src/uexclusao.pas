unit uExclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, XPMenu;

type
  TfExclusao = class(TForm)
    DtSrc: TDataSource;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    XPMenu1: TXPMenu;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExclusao: TfExclusao;

implementation

uses UDM;

{$R *.dfm}

procedure TfExclusao.BitBtn2Click(Sender: TObject);
begin
  exit;
end;

end.
