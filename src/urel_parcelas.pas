unit uRel_parcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, QRCtrls, DB, QuickRpt, DBClient, DBLocal,
  DBLocalS, ExtCtrls;

type
  TRel_parcelas = class(TForm)
    QuickRep1: TQuickRep;
    cds_parcela: TSQLClientDataSet;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRDBText2: TQRDBText;
    QRShape4: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRShape5: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape8: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel20: TQRLabel;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    cds_parcelaID_RECEBIMENTOS: TIntegerField;
    cds_parcelaID: TIntegerField;
    cds_parcelaVALOR_NF: TFloatField;
    cds_parcelaVALOR_RECEBER: TFloatField;
    cds_parcelaPARCELA: TIntegerField;
    cds_parcelaVENCIMENTO: TDateField;
    cds_parcelaDATA_PAG: TDateField;
    cds_parcelaSTATUS: TStringField;
    cds_parcelaVALOR_PAGO: TFloatField;
    cds_parcelaVALOR_DIF: TFloatField;
    cds_parcelaJUROS: TFloatField;
    cds_parcelaDESCONTO: TFloatField;
    cds_parcelaMULTA: TFloatField;
    cds_parcelaEMISSAO: TDateField;
    cds_parcelaN_DOCUMENTO: TStringField;
    cds_parcelaCAIXA: TStringField;
    cds_parcelaFORMARECEBIMENTO: TStringField;
    cds_parcelaVALOR_A_REC: TFloatField;
    cds_parcelaTITULO: TStringField;
    cds_parcelaVALOR_1VIA: TFloatField;
    cds_parcelaDECLARANTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_parcelas: TRel_parcelas;

implementation

uses UDM;

{$R *.dfm}

end.
