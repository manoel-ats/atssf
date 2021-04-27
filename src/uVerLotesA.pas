unit uVerLotesA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, DB, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons, FMTBcd, EDBNav, dxCore,
  dxButton;

type
  TfVerLotesA = class(TForm)
    DBGrid1: TDBGrid;
    dslote: TDataSource;
    Panel1: TPanel;
    cdsL: TClientDataSet;
    dspL: TDataSetProvider;
    sqlL: TSQLDataSet;
    sqlLID_LOTE: TIntegerField;
    sqlLLOTE: TIntegerField;
    sqlLGRUPO: TStringField;
    sqlLGEROU: TStringField;
    sqlLN_FALEC: TIntegerField;
    cdsLID_LOTE: TIntegerField;
    cdsLLOTE: TIntegerField;
    cdsLGRUPO: TStringField;
    cdsLGEROU: TStringField;
    cdsLN_FALEC: TIntegerField;
    btnIncluir: TdxButton;
    btnSair: TdxButton;
    btnGravar: TdxButton;
    btnCancelar: TdxButton;
    Label1: TLabel;
    SQLClientDataSet1: TSQLClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVerLotesA: TfVerLotesA;

implementation

uses UDM, uGeraLote;

{$R *.dfm}

procedure TfVerLotesA.BitBtn1Click(Sender: TObject);
begin

//  close;
end;

procedure TfVerLotesA.FormShow(Sender: TObject);
begin
   if perfil <> 'administrador' then
   Panel1.Visible := false;

  if cdsL.Active then
     cdsL.Close;
  cdsL.Params[0].AsString := 'não';
  cdsL.Open;

end;

procedure TfVerLotesA.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfVerLotesA.btnIncluirClick(Sender: TObject);
begin
  if (not cdsL.Active) then
     cdsL.Open;
  cdsL.Append;
  // pego o generator
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOTE, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdsLID_LOTE.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  btnGravar.Visible := True;
  btnIncluir.Visible := False;
  btnCancelar.Enabled := True;
  {
  cds_cbrDATABAIXA.AsDateTime := Now;
  cds_cbrNOMECBR.AsString := ExtractFileName(fArquivoRetorno.OpenDialog1.FileName);
  cds_cbrOBS.Value := Memo1.Text;
  cds_cbr.ApplyUpdates(0);
  cds_cbr.Close;
  }
end;

procedure TfVerLotesA.btnGravarClick(Sender: TObject);
begin
  cdsL.ApplyUpdates(0) ;
  btnCancelar.Enabled := False; 
end;

procedure TfVerLotesA.btnCancelarClick(Sender: TObject);
begin
  cdsL.Cancel;
end;

end.
