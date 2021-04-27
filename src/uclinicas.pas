unit uClinicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, Mask, DBCtrls, DB, Menus, dxCore, dxButton,
  ExtCtrls, Grids, DBGrids, XPMenu;

type
  TfClinicas = class(TfPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    XPMenu1: TXPMenu;
    Panel3: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClinicas: TfClinicas;

implementation

uses UDM, ufDlgLogin, uPrincipal;

{$R *.dfm}

procedure TfClinicas.FormShow(Sender: TObject);
begin
  inherited;
  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';
  if dm.cds_clinica.Active then
     dm.cds_clinica.Close;
  dm.cds_clinica.Params[0].AsInteger := 9999999;
  dm.cds_clinica.Open;

  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Clinica';
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
end;

procedure TfClinicas.btnExcluirClick(Sender: TObject);
begin
 if perfil <> 'administrador' then
 begin
   MessageDlg('usuário ñ tem permissão para excluir registros, solicite permissão '+#13+#10+'ao usuário administrador..', mtWarning, [mbOK], 0);
   exit;
 end;
  inherited;

end;

procedure TfClinicas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

end.
