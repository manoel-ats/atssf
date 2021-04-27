unit uMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, FMTBcd, Grids,
  DBGrids, DBClient, Provider, SqlExpr, StdCtrls, Mask, DBCtrls;

type
  TfMarcas = class(TfPai)
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    sds_marca: TSQLDataSet;
    sds_marcaID_MARCA: TIntegerField;
    sds_marcaDESCRICAO: TStringField;
    dsp_marca: TDataSetProvider;
    cds_marca: TClientDataSet;
    cds_marcaID_MARCA: TIntegerField;
    cds_marcaDESCRICAO: TStringField;
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
  fMarcas: TfMarcas;

implementation

uses UDM, uUrnas;

{$R *.dfm}

procedure TfMarcas.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MARCA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_marcaID_MARCA.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfMarcas.btnSairClick(Sender: TObject);
begin
  inherited;
  fUrnas.cds_marca.Close;
  fUrnas.cds_marca.Open;
  fUrnas.cds_prodID_MARCA.AsInteger := cds_marcaID_MARCA.AsInteger;
end;

procedure TfMarcas.FormShow(Sender: TObject);
begin
  inherited;
 if not cds_marca.Active then
   cds_marca.Open;
end;

procedure TfMarcas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fUrnas.cds_marca.Close;
  fUrnas.cds_marca.Open;
  fUrnas.cds_prodID_MARCA.AsInteger := cds_marcaID_MARCA.AsInteger;  
end;

procedure TfMarcas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.
