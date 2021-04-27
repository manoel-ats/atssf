unit uMunicipio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, Grids, DBGrids, StdCtrls, Mask, DBCtrls, DB, Menus,
  dxCore, dxButton, ExtCtrls, XPMenu;

type
  TfMunicipio = class(TfPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    XPMenu1: TXPMenu;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMunicipio: TfMunicipio;

implementation

uses UDM, uPrincipal;

{$R *.dfm}

procedure TfMunicipio.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfMunicipio.FormShow(Sender: TObject);
begin
  inherited;
  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';

  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Municipio';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
     Incluir  := 'S';
     Cancelar := 'S';
     btnIncluir.Enabled := true;
     btnCancelar.Enabled := true;
  end
  else
  begin
     Incluir  := 'N';
     Cancelar := 'N';
     btnIncluir.Enabled := false;
     btnCancelar.Enabled := false;
  end;

  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
  begin
     Excluir := 'S';
     btnExcluir.Enabled := true;
  end
  else
  begin
     Excluir := 'N';
     btnExcluir.Enabled := false;
  end;

  if dm.cdsPermissaoALTERAR.AsString = 'S' then
  begin
     Alterar := 'S';
     btnGravar.Enabled := true;
  end
  else
  begin
     Alterar := 'N';
     btnGravar.Enabled := false;
  end;

  if dm.cds_munic.Active then
    dm.cds_munic.Close;
  dm.cds_munic.Params[0].Clear;
  dm.cds_munic.Params[1].AsInteger := 9999999;
  dm.cds_munic.Open;
end;

procedure TfMunicipio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dm.cds_munic.Active then
     dm.cds_munic.Close;
end;

procedure TfMunicipio.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not odd(dm.cds_munic.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfMunicipio.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  DM.cds_munic.IndexFieldNames := Column.FieldName;
end;

end.
