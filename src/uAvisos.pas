unit uAvisos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  XPMenu, TFlatGaugeUnit;

type
  TfAvisos = class(TForm)
    Memo1: TMemo;
    XPMenu1: TXPMenu;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsID_SOCIO: TIntegerField;
    cdsOBS: TGraphicField;
    sdsID_SOCIO: TIntegerField;
    sdsOBS: TGraphicField;
    Label1: TLabel;
    FlatGauge1: TFlatGauge;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAvisos: TfAvisos;

implementation

uses UDM;

{$R *.dfm}

procedure TfAvisos.BitBtn1Click(Sender: TObject);
begin
  if Memo1.Text <> '' then
  begin
     Label1.Caption := '';
     Label1.Caption := 'Atualizando Cadastro Aguarde....';
     Refresh;
     if (not cds.Active) then
       cds.Open;
     FlatGauge1.MaxValue := cds.RecordCount;
     cds.First;
     while not cds.Eof do
     begin
       cds.Edit;
       if cdsOBS.AsString = '' then
         cdsOBS.AsString := Memo1.Text
       else
         cdsOBS.AsString := cdsOBS.AsString + ' - ' + Memo1.Text;
       cds.ApplyUpdates(0);
       FlatGauge1.Progress := FlatGauge1.Progress + 1;
       cds.Next;
     end;
     cds.Close;
     FlatGauge1.Progress := 0;
     Label1.Caption := '';
     Label1.Caption := 'Cadastro atualizado com SUCESSO...';
     Refresh;
  end;
end;

procedure TfAvisos.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
