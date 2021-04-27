unit uGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, XPMenu, Grids,
  DBGrids, StdCtrls, Mask, DBCtrls, FMTBcd, SqlExpr, DBClient, Provider;

type
  TfGrupo = class(TfPai)
    Label1: TLabel;
    Label2: TLabel;          
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    XPMenu1: TXPMenu;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    cdsCount: TSQLDataSet;
    sdsAtualizaGrupo: TSQLDataSet;
    dspAtualizaGrupo: TDataSetProvider;
    cdsAtualizaGrupo: TClientDataSet;
    cdsAtualizaGrupoID_GRUPO: TIntegerField;
    cdsAtualizaGrupoINSCRICAO: TIntegerField;
    cdsAtualizaGrupoQTDE: TIntegerField;
    cdsAtualizaGrupoGRUPO: TStringField;
    cdsAtualizaGrupoN_FALEC: TIntegerField;
    cdsAtualizaGrupoTOT_FAL: TIntegerField;
    cdsAtualizaGrupoLOTE: TIntegerField;
    cdsAtualizaGrupoGEROU: TStringField;
    sdsAtualizaGrupoID_GRUPO: TIntegerField;
    sdsAtualizaGrupoINSCRICAO: TIntegerField;
    sdsAtualizaGrupoQTDE: TIntegerField;
    sdsAtualizaGrupoGRUPO: TStringField;
    sdsAtualizaGrupoN_FALEC: TIntegerField;
    sdsAtualizaGrupoTOT_FAL: TIntegerField;
    sdsAtualizaGrupoLOTE: TIntegerField;
    sdsAtualizaGrupoGEROU: TStringField;
    cdsCountCOUNT: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGrupo: TfGrupo;

implementation

uses UDM, uPrincipal;

{$R *.dfm}

procedure TfGrupo.FormShow(Sender: TObject);
begin
  inherited;
  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';

  if dm.cds_grupo.Active then
     dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].AsInteger := 9999999;
  dm.cds_grupo.Open;

  dm.cds_grupo.First;
  while not dm.cds_grupo.Eof do
  begin
      if (cdsCount.Active) then
        cdsCount.Close;
      cdsCount.Params[0].Clear;
      cdsCount.Params[0].AsString := dm.cds_grupoGRUPO.AsString;
      cdsCount.Open;
      cdsAtualizaGrupo.Close;
      cdsAtualizaGrupo.Params[0].Clear;
      cdsAtualizaGrupo.Params[0].AsString := dm.cds_grupoGRUPO.AsString;
      cdsAtualizaGrupo.Open;
      cdsAtualizaGrupo.Edit;
      cdsAtualizaGrupoQTDE.AsInteger := cdsCountCOUNT.AsInteger;
      cdsAtualizaGrupo.ApplyUpdates(0);
      cdsAtualizaGrupo.Close;
      dm.cds_grupo.Next;
  end;

  if dm.cds_grupo.Active then
     dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].AsInteger := 9999999;
  dm.cds_grupo.Open;
  
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Grupo';
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

procedure TfGrupo.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfGrupo.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not odd(DtSrc.dataset.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = dm.cds_grupoN_FALEC then
     DBGrid1.Canvas.Font.Color := clRed;
  DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
end;

end.
