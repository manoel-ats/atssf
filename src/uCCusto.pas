unit uCCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, FMTBcd, DBCtrls, Grids, DBGrids, StdCtrls, DB, DBClient,
  Provider, SqlExpr, Mask, Menus, dxCore, dxButton, ExtCtrls;

type
  TfCCusto = class(TfPai)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label4: TLabel;
    SQLDataSet1: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    cdsID_PRODUTO: TIntegerField;
    cdsDESCRICAO: TStringField;
    cdsTIPO: TStringField;
    sdsID_PRODUTO: TIntegerField;
    sdsDESCRICAO: TStringField;
    sdsTIPO: TStringField;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCCusto: TfCCusto;
  form_usa, descricao, tipoform : string;
  ID : integer;

implementation

uses UDM;

{$R *.dfm}

procedure TfCCusto.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfCCusto.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PRODUTOS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsID_PRODUTO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure TfCCusto.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfCCusto.FormShow(Sender: TObject);
var str :string;
begin
  inherited;
  if tipoform = '' then
  begin
     if (cds.Active) then
       cds.Close;
     cds.CommandText := 'Select * FROM PRODUTOS';
     cds.Open;
  end;
  if tipoform = 'RECEITA' then
  begin
     if (cds.Active) then
       cds.Close;
     str := 'Select * FROM PRODUTOS WHERE TIPO = ';
     str := str + '''RECEITA''';
     cds.CommandText := str;
     cds.Open;
  end;
  if tipoform = 'DESPESA' then
  begin
     if (cds.Active) then
       cds.Close;
     str := 'Select * FROM PRODUTOS WHERE TIPO = ';
     str := str + '''DESPESA''';
     cds.CommandText := str;
     cds.Open;
  end;

  if tipoform = 'Principal' then
  begin
     if (cds.Active) then
       cds.Close;
     str := 'Select * FROM PRODUTOS WHERE TIPO <> ''''';
//     str := str + '''';
     cds.CommandText := str;
     cds.Open;
  end;

end;

procedure TfCCusto.btnSairClick(Sender: TObject);
begin
  id := 0;
  descricao := '';
  if (form_usa = 'Despesas') then
  begin
    id := cdsID_PRODUTO.AsInteger;
    descricao := cdsDESCRICAO.AsString;
  end;
  if (cds.Active) then
    cds.Close;
  inherited;

end;

end.
