unit uRenovar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxCore, dxButton, StdCtrls, Mask, DBCtrls;

type
  TfRenovar = class(TForm)
    Label44: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label45: TLabel;
    DBEdit32: TDBEdit;
    Label47: TLabel;
    dxButton1: TdxButton;
    DtSrc: TDataSource;
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRenovar: TfRenovar;

implementation

uses UDM, uCad_Clientes;

{$R *.dfm}

procedure TfRenovar.dxButton1Click(Sender: TObject);
var
 a,c1,c2,c3,c4,c5,c6,c7,c8 :String;
begin
      if (dm.cds_socio.State in [dsBrowse]) then
         dm.cds_socio.Edit;
       dm.cds_socioDATAINICIO.AsDateTime := dm.cds_CRVENCIMENTO.AsDateTime;
       dm.cds_socio.ApplyUpdates(0);

       DecimalSeparator := '.';
       a := 'Execute Procedure SP_RENOVA_MENS(';
       c1 :=  formatDateTime('mm/dd/yyyy',DM.cds_socioDATAINICIO.AsDateTime);
       c2 := IntToStr (DM.cds_socioDIAPGTO.AsInteger);
       c3 := IntToStr (DM.cds_socioMESES.AsInteger);
       c4:= IntToStr (DM.cds_CRPARCELA.AsInteger);
       c5 := FloatToStr(DM.cds_socioVALOR_SERVICO.AsFloat);
       c6 := IntToStr (DM.cds_socioID_SOCIO.AsInteger);
       c7 := IntToStr (DM.cds_socioCODIGO.AsInteger);
       c8 := IntToStr (DM.cds_socioID_COB.AsInteger);

       a := a + '''' + c1 + '''' + ',' + c2 + ',' + c3 + ',' + c4 + ',' + c5 + ',' + '''' + c6 + ''','  + '''' + c7 + ''',' + c8 + ')';

       DM.SQLObitos.ExecuteDirect(a);
       DecimalSeparator := ',';
       Close;

    if dm.cds_socio.Active then
      dm.cds_socio.Close;
    dm.cds_socio.Params[0].AsInteger := StrToInt(c6);
    dm.cds_socio.Open;

    if DM.cds_CR.Active then
      dm.cds_CR.Close;
    dm.cds_CR.Params[0].AsInteger := StrToInt(c6);
    dm.cds_CR.Params[1].AsString := 'MS';
    dm.cds_CR.Open;       
      
end;

end.
