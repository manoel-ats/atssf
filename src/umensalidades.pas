unit uMensalidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, FMTBcd, XPMenu, SqlExpr, Provider, DBClient,
  DBLocalS;

type
  TfMensalidades = class(TfPai)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    XPMenu1: TXPMenu;
    cdsID_VALORES: TIntegerField;
    cdsVALOR: TFloatField;
    cdsDATA: TDateField;
    cdsTX_FUNERARIA: TFloatField;
    cdsTX_ADMINISTRATIVA: TFloatField;
    sdsID_VALORES: TIntegerField;
    sdsVALOR: TFloatField;
    sdsDATA: TDateField;
    sdsTX_FUNERARIA: TFloatField;
    sdsTX_ADMINISTRATIVA: TFloatField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    sdsFAIXA: TIntegerField;
    cdsFAIXA: TIntegerField;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMensalidades: TfMensalidades;

implementation

uses UDM, uPrincipal;

{$R *.dfm}

procedure TfMensalidades.btnGravarClick(Sender: TObject);
begin
// gera codigo para tab. recebimentos
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_VALORES, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdsID_VALORES.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;
  inherited;
     cds.Refresh;
end;

procedure TfMensalidades.FormShow(Sender: TObject);
begin
  inherited;
  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';

  if cds.Active then
    cds.Close;
  cds.Params[0].AsInteger := 9999999;
  cds.Open;

  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Mensalidades';
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

end;

procedure TfMensalidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if cds.Active then
    cds.Close;
end;

procedure TfMensalidades.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cdsTX_FUNERARIA.AsFloat := 0;
  cdsTX_ADMINISTRATIVA.AsFloat := 0;
  cdsVALOR.AsFloat := 0;
  DBEdit4.SetFocus;
end;

procedure TfMensalidades.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if cds.State in [dsInsert, dsEdit] then
    cdsVALOR.AsFloat := cdsTX_FUNERARIA.AsFloat + cdsTX_ADMINISTRATIVA.AsFloat;
end;

procedure TfMensalidades.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;
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
  if Column.Field = cdsVALOR then
  if cdsVALOR.AsFloat >= 0 then
  begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
  end;

end;

procedure TfMensalidades.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfMensalidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in ['.'] then Key := ',';
end;

end.
