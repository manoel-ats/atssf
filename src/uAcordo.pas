unit uAcordo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, dxCore, dxButton,
  Mask, DBCtrls;

type
  TfAcordo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit35: TDBEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    mdta1: TMaskEdit;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    DBGrid5: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAcordo: TfAcordo;

implementation

uses uSocio_Procura;

{$R *.dfm}

procedure TfAcordo.BitBtn1Click(Sender: TObject);
begin
   varonde := 3;
   fSocio_Procura.ShowModal;
end;

end.
