unit uContar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, StdCtrls, Mask, DBCtrls, SqlExpr, Provider, DBClient;

type
  TfContar = class(TForm)
    cds: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1SOCIOS_MENSAIS_ECONOMICO: TIntegerField;
    SQLDataSet1SOCIOS_7FALECIMENTO: TIntegerField;
    SQLDataSet1SOCIOS_MENSAIS: TIntegerField;
    cdsSOCIOS_MENSAIS_ECONOMICO: TIntegerField;
    cdsSOCIOS_7FALECIMENTO: TIntegerField;
    cdsSOCIOS_MENSAIS: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fContar: TfContar;

implementation

uses UDM;

{$R *.dfm}

procedure TfContar.FormShow(Sender: TObject);
begin
  if not(cds.Active)then
  cds.Open;


end;

end.
