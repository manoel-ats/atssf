unit uSeguro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids, DBGrids,
  JvComponentBase, JvDBGridExport, StdCtrls, Buttons;

type
  TfSeguro = class(TForm)
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    dspEX: TDataSetProvider;
    sqlEX: TSQLDataSet;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    cdsEX: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSeguro: TfSeguro;

implementation

uses UDM;

{$R *.dfm}

procedure TfSeguro.BitBtn1Click(Sender: TObject);
begin
if not cdsEX.IsEmpty then
  begin

    SaveDialog1.Filter:='Arquivo do Microsoft Excel|*.xls';
    SaveDialog1.DefaultExt:='xls';
    SaveDialog1.FilterIndex:=1;

    if SaveDialog1.Execute then
    begin

      JvDBGridExcelExport1.FileName := SaveDialog1.FileName;
      JvDBGridExcelExport1.ExportGrid;
      MessageDlg('Exportação executada com sucesso.',mtInformation,[mbOk],0);

    end;
  end;
end;

procedure TfSeguro.FormShow(Sender: TObject);
begin
  if not(cdsEX.Active) then
  cdsEX.Open;
end;

end.
