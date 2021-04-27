unit uSeries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, XPMenu, Grids,
  DBGrids, StdCtrls, Mask, DBCtrls, FMTBcd, SqlExpr;

type
  TfSeries = class(TfPai)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    XPMenu1: TXPMenu;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    sdsSerie: TSQLDataSet;
    sdsSerieMAX: TIntegerField;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSeries: TfSeries;

implementation

uses UDM, ufDlgLogin, uPrincipal;

{$R *.dfm}

procedure TfSeries.FormShow(Sender: TObject);
begin
  inherited;

  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';

  if dm.cds_serie.Active then
     dm.cds_serie.Close;
  dm.cds_serie.Params[0].Clear;
  dm.cds_serie.Params[1].AsString := 'todos';
  dm.cds_serie.Params[2].Clear;
  dm.cds_serie.Params[3].AsString := 'td';
  dm.cds_serie.Open;

  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Série';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
    Incluir  := 'S';
    Cancelar  := 'S';
    btnIncluir.Enabled   := true;
    btnCancelar.Enabled  := true;
  end
  else
  begin
    Incluir  := 'N';
    Cancelar  := 'N';
    btnIncluir.Enabled := false;
    btnCancelar.Enabled  := false;
  end;

  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
  begin
     Excluir  := 'S';
     btnExcluir.Enabled  := true;
  end
  else
  begin
     Excluir  := 'N';
     btnExcluir.Enabled  := false;
  end;

  if dm.cdsPermissaoALTERAR.AsString = 'S' then
  begin
     Alterar  := 'S';
     btnGravar.Enabled  := true;
  end
  else
  begin
     Alterar  := 'N';
     btnGravar.Enabled  := false;
  end;

  dm.cds_serie.First;
  while not dm.cds_serie.Eof do
  begin
    if (sdsSerie.Active) then
        sdsSerie.Close;
    sdsSerie.Params[0].AsString := dm.cds_serieSERIE.AsString;
    sdsSerie.Open;
    if dm.cds_serie.State in [dsBrowse] then
      dm.cds_serie.Edit;
    dm.cds_serieULTIMO_NUMERO.AsInteger := sdsSerieMAX.Value;
    dm.cds_serie.ApplyUpdates(0);
    sdsSerie.Close;
    dm.cds_serie.Next;
  end;
end;

procedure TfSeries.btnExcluirClick(Sender: TObject);
begin
 if perfil <> 'administrador' then
 begin
   MessageDlg('usuário ñ tem permissão para excluir registros, solicite permissão '+#13+#10+'ao usuário administrador..', mtWarning, [mbOK], 0);
   exit;
 end;
  inherited;

end;

procedure TfSeries.btnGravarClick(Sender: TObject);
begin
 if perfil <> 'administrador' then
 begin
   MessageDlg('usuário ñ tem permissão para Aterar registros, solicite permissão '+#13+#10+'ao usuário administrador..', mtWarning, [mbOK], 0);
   exit;
 end;
  inherited;

end;

procedure TfSeries.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

end.
