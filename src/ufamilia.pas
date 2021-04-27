unit uFamilia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, FMTBcd, Grids,
  DBGrids, SqlExpr, Provider, DBClient, StdCtrls, Mask, DBCtrls;

type
  TfFamilia = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    cds_grupo: TClientDataSet;
    cds_grupoID_FAMILIA: TIntegerField;
    cds_grupoDESCRICAO: TStringField;
    dsp_grupo: TDataSetProvider;
    sds_grupo: TSQLDataSet;
    sds_grupoID_FAMILIA: TIntegerField;
    sds_grupoDESCRICAO: TStringField;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFamilia: TfFamilia;

implementation

uses UDM, uUrnas;

{$R *.dfm}

procedure TfFamilia.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FAMILIA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_grupoID_FAMILIA.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

  inherited;

end;

procedure TfFamilia.btnSairClick(Sender: TObject);
begin
  inherited;
   fUrnas.cds_prodID_FAMILIA.AsInteger := cds_grupoID_FAMILIA.AsInteger;
   fUrnas.cds_grupo.Close;
   fUrnas.cds_grupo.Open;
end;

procedure TfFamilia.FormShow(Sender: TObject);
begin
  inherited;
 if not cds_grupo.Active then
   cds_grupo.Open;
end;

procedure TfFamilia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   fUrnas.cds_grupo.Close;
   fUrnas.cds_grupo.Open;
   fUrnas.cds_prodID_FAMILIA.AsInteger := cds_grupoID_FAMILIA.AsInteger;
end;

procedure TfFamilia.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.
