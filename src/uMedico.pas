unit uMedico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, FMTBcd, DBClient, Provider, DB, SqlExpr, XPMenu, StdCtrls,
  Menus, dxCore, dxButton, ExtCtrls, DBCtrls, Grids, DBGrids, Mask;

type
  TfMedico = class(TfPai)
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    XPMenu1: TXPMenu;
    sds_medico: TSQLDataSet;
    dsp_medico: TDataSetProvider;
    cds_medico: TClientDataSet;
    cds_medicoID_MEDICO: TIntegerField;
    cds_medicoNOME_MEDICO: TStringField;
    cds_medicoCRM: TStringField;
    sds_medicoID_MEDICO: TIntegerField;
    sds_medicoNOME_MEDICO: TStringField;
    sds_medicoCRM: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMedico: TfMedico;

implementation

uses UDM, uPrincipal;

{$R *.dfm}

procedure TfMedico.FormShow(Sender: TObject);
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
  dm.cdsPermissao.Params[1].AsString := 'medico';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
     Incluir  := 'S';
     Cancelar := 'S';
  end
  else
  begin
     Incluir  := 'N';
     Cancelar := 'N';
  end;

  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
     Excluir := 'S'
  else
     Excluir := 'N';
  if dm.cdsPermissaoALTERAR.AsString = 'S' then
     Alterar := 'S'
  else
     Alterar := 'N';

  if dm.cdsPermissaoCONSULTAR.AsString = 'S' then
  begin
     Procurar := 'S';
    if not cds_medico.Active then
      cds_medico.Open;
  end
  else
     Procurar := 'N';

end;

procedure TfMedico.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MEDICO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_medicoID_MEDICO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfMedico.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

end.
