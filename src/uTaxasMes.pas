unit uTaxasMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, ExtCtrls, StdCtrls, Mask, ToolEdit;

type
  TfTaxasMes = class(TForm)
    lbl6: TLabel;
    Data1: TDateEdit;
    pnl2: TPanel;
    pnl1: TPanel;
    btnSair: TdxButton;
    dxButton2: TdxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTaxasMes: TfTaxasMes;

implementation

{$R *.dfm}

end.
