unit uSplash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, jpeg, MMJPanel, TFlatProgressBarUnit,
  TFlatGaugeUnit, DBXpress, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TfSplash = class(TForm)
    Image1: TImage;
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    ver_campo: TSQLDataSet;
    FlatGauge1: TFlatGauge;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
  end;

var
  fSplash: TfSplash;

implementation

uses UDM;

{$R *.DFM}

procedure TfSplash.FormShow(Sender: TObject);
var
  contador: integer;
  tabela,  tipo, atualizar: string;
  campo : variant;
  TD: TTransactionDesc;
begin
 {
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.SQLObitos.StartTransaction(TD);
  atualizar := '';
  atualizar := 'update recebimentos set selecionou = null';
  atualizar := atualizar + ' where selecionou = ';
  atualizar := atualizar + '''' + 'S' + '''';
  dm.SQLObitos.ExecuteDirect(atualizar);
  dm.SQLObitos.Commit(TD);
 }
end;

end.
