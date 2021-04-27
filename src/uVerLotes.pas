unit uVerLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, DB, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons;

type
  TfVerLotes = class(TForm)
    DBGrid1: TDBGrid;
    SQLClientDataSet1: TSQLClientDataSet;
    DataSource1: TDataSource;
    SQLClientDataSet1ID_LOTE: TIntegerField;
    SQLClientDataSet1LOTE: TIntegerField;
    SQLClientDataSet1GRUPO: TStringField;
    DBNavigator1: TDBNavigator;
    SQLClientDataSet1GEROU: TStringField;
    SQLClientDataSet1N_FALEC: TIntegerField;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVerLotes: TfVerLotes;

implementation

uses UDM, uGeraLote;

{$R *.dfm}

procedure TfVerLotes.FormCreate(Sender: TObject);
begin
  if SQLClientDataSet1.Active then
     SQLClientDataSet1.Close;
  SQLClientDataSet1.Params[0].AsString := 'não';
  SQLClientDataSet1.Open;
end;

procedure TfVerLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SQLClientDataSet1.Active then
     SQLClientDataSet1.Close;
end;

procedure TfVerLotes.BitBtn1Click(Sender: TObject);
begin
  fGeraLote.Edit7.Text := IntToStr(SQLClientDataSet1LOTE.AsInteger);
  fGeraLote.Edit2.Text := SQLClientDataSet1GRUPO.AsString;
  if( SQLClientDataSet1LOTE.AsInteger = 0 )then
  fGeraLote.Label18.Caption := 'Não Há Taxas a Ser Gerado !!!!';
  close;
end;

end.
