unit uParametro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, Grids, DBGrids, StdCtrls, Mask, DBCtrls, DB, Menus,
  dxCore, dxButton, ExtCtrls;

type
  TfParametro = class(TfPai)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fParametro: TfParametro;

implementation

uses UDM, Rel_obitos;

{$R *.dfm}

procedure TfParametro.FormShow(Sender: TObject);
begin
  inherited;
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].Clear;
  dm.cds_parametro.Params[1].Clear;
  dm.cds_parametro.Params[1].AsString := 'todos';
  dm.cds_parametro.Open;
end;

end.
