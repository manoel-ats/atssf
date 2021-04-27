unit uGeraLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, dxCore, dxButton, StdCtrls, Mask, ToolEdit,
  Provider, DBClient, DBLocal, DBLocalS, XPMenu, rpcompobase, rpvclreport,
  ExtCtrls, gbCobranca, MaskUtils, contnrs, TFlatGaugeUnit, Buttons, Grids,
  DBGrids, VDOBasePrinter, VDODmPrinter, rplabelitem, DBXpress;


const
   CodigoBanco = '033';
   NomeBanco = 'BANESPA'; {Banespa}

type
  TfGeraLote = class(TForm)
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    sds_lote: TSQLDataSet;
    sds_loteID_RECEBIMENTOS: TIntegerField;
    sds_loteID: TIntegerField;
    sds_loteVALOR_NF: TFloatField;
    sds_loteVALOR_RECEBER: TFloatField;
    sds_lotePARCELA: TIntegerField;
    sds_loteVENCIMENTO: TDateField;
    sds_loteDATA_PAG: TDateField;
    sds_loteSTATUS: TStringField;
    sds_loteVALOR_PAGO: TFloatField;
    sds_loteVALOR_DIF: TFloatField;
    sds_loteJUROS: TFloatField;
    sds_loteDESCONTO: TFloatField;
    sds_loteMULTA: TFloatField;
    sds_loteEMISSAO: TDateField;
    sds_loteN_DOCUMENTO: TStringField;
    sds_loteCAIXA: TStringField;
    sds_loteFORMARECEBIMENTO: TStringField;
    sds_loteVALOR_A_REC: TFloatField;
    sds_loteVALOR_1VIA: TFloatField;
    sds_loteID_SOCIO: TIntegerField;
    sds_loteLOTE: TIntegerField;
    sds_loteGEROU: TStringField;
    sds_loteDATA_DOC: TDateField;
    sds_loteGRUPO: TStringField;
    scdsCp_proc: TSQLDataSet;
    XPMenu1: TXPMenu;
    dsp_lote: TDataSetProvider;
    cds_lote: TClientDataSet;
    cds_loteID_RECEBIMENTOS: TIntegerField;
    cds_loteID: TIntegerField;
    cds_loteVALOR_NF: TFloatField;
    cds_loteVALOR_RECEBER: TFloatField;
    cds_lotePARCELA: TIntegerField;
    cds_loteVENCIMENTO: TDateField;
    cds_loteDATA_PAG: TDateField;
    cds_loteSTATUS: TStringField;
    cds_loteVALOR_PAGO: TFloatField;
    cds_loteVALOR_DIF: TFloatField;
    cds_loteJUROS: TFloatField;
    cds_loteDESCONTO: TFloatField;
    cds_loteMULTA: TFloatField;
    cds_loteEMISSAO: TDateField;
    cds_loteN_DOCUMENTO: TStringField;
    cds_loteCAIXA: TStringField;
    cds_loteFORMARECEBIMENTO: TStringField;
    cds_loteVALOR_A_REC: TFloatField;
    cds_loteVALOR_1VIA: TFloatField;
    cds_loteID_SOCIO: TIntegerField;
    cds_loteLOTE: TIntegerField;
    cds_loteGEROU: TStringField;
    cds_loteDATA_DOC: TDateField;
    cds_loteGRUPO: TStringField;
    sds_lote1: TSQLClientDataSet;
    Edit1: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    tb_lotes: TSQLDataSet;
    Panel1: TPanel;
    dxButton2: TdxButton;
    dxButton1: TdxButton;
    dxButton4: TdxButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    sds_loteTITULO: TIntegerField;
    cds_loteTITULO: TIntegerField;
    gbCobranca1: TgbCobranca;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    sdsBanco: TSQLDataSet;
    cdsBancoID_BANCO: TIntegerField;
    cdsBancoCONTA: TStringField;
    cdsBancoBANCO: TStringField;
    cdsBancoCIDADE: TStringField;
    cdsBancoSALDO: TFloatField;
    cdsBancoAGENCIA: TStringField;
    cdsBancoDIGAGEN: TStringField;
    cdsBancoCOD_CED: TStringField;
    sdsBancoID_BANCO: TIntegerField;
    sdsBancoCONTA: TStringField;
    sdsBancoBANCO: TStringField;
    sdsBancoCIDADE: TStringField;
    sdsBancoSALDO: TFloatField;
    sdsBancoAGENCIA: TStringField;
    sdsBancoDIGAGEN: TStringField;
    sdsBancoCOD_CED: TStringField;
    sdsBancoID_TITULO: TIntegerField;
    cdsBancoID_TITULO: TIntegerField;
    sdsBancoN_DOC: TIntegerField;
    cdsBancoN_DOC: TIntegerField;
    sdsBancoJUROS: TFloatField;
    cdsBancoJUROS: TFloatField;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    cdsCR: TClientDataSet;
    dspCR: TDataSetProvider;
    sdsCR: TSQLDataSet;
    sdsCRID: TIntegerField;
    sdsCRNOME: TStringField;
    sdsCRRUA: TStringField;
    sdsCRCEP: TStringField;
    sdsCRUF: TStringField;
    sdsCRBAIRRO: TStringField;
    sdsCRMUNICIPIO: TStringField;
    sdsCREMISSAO: TDateField;
    sdsCRVENCIMENTO: TDateField;
    sdsCRVALOR: TFloatField;
    sdsCRVALORPENDENTE: TFloatField;
    sdsCRVALORDEVE: TFloatField;
    sdsCRN_DOC: TStringField;
    sdsCRINSTRUCOES: TStringField;
    sdsCRINSCRICAO: TIntegerField;
    sdsCRN_LOTE: TIntegerField;
    sdsCRN_GRUPO: TStringField;
    sdsCRSTATUS: TStringField;
    sdsCRVENCIDOS: TStringField;
    sdsCRD_VENCIDO: TDateField;
    sdsCRTOT_PENDENTE: TIntegerField;
    sdsCRCOD_COBRADOR: TIntegerField;
    sdsCRNOME_COBRADOR: TStringField;
    cdsCRID: TIntegerField;
    cdsCRNOME: TStringField;
    cdsCRRUA: TStringField;
    cdsCRCEP: TStringField;
    cdsCRUF: TStringField;
    cdsCRBAIRRO: TStringField;
    cdsCRMUNICIPIO: TStringField;
    cdsCREMISSAO: TDateField;
    cdsCRVENCIMENTO: TDateField;
    cdsCRVALOR: TFloatField;
    cdsCRVALORPENDENTE: TFloatField;
    cdsCRVALORDEVE: TFloatField;
    cdsCRN_DOC: TStringField;
    cdsCRINSTRUCOES: TStringField;
    cdsCRINSCRICAO: TIntegerField;
    cdsCRN_LOTE: TIntegerField;
    cdsCRN_GRUPO: TStringField;
    cdsCRSTATUS: TStringField;
    cdsCRVENCIDOS: TStringField;
    cdsCRD_VENCIDO: TDateField;
    cdsCRTOT_PENDENTE: TIntegerField;
    cdsCRCOD_COBRADOR: TIntegerField;
    cdsCRNOME_COBRADOR: TStringField;
    sdsCRDOCUMENTO: TStringField;
    cdsCRDOCUMENTO: TStringField;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    gbTitulo1: TgbTitulo;
    Label9: TLabel;
    Edit5: TEdit;
    sds_falec: TSQLDataSet;
    dsp_falec: TDataSetProvider;
    cds_falec: TClientDataSet;
    cds_falecFALEC1: TStringField;
    cds_falecNASC1: TDateField;
    cds_falecRESID1: TStringField;
    cds_falecNUM1: TStringField;
    cds_falecBAIRRO1: TStringField;
    cds_falecCIDADE1: TStringField;
    cds_falecUF1: TStringField;
    cds_falecCEP1: TStringField;
    cds_falecCEMITERIO1: TStringField;
    cds_falecSEP_D1: TDateField;
    cds_falecSEP_H1: TTimeField;
    cds_falecFAL_L1: TStringField;
    cds_falecFAL_D1: TDateField;
    cds_falecFAL_H1: TTimeField;
    cds_falecLOTE1: TIntegerField;
    cds_falecGRUPO1: TStringField;
    cds_falecINSCRICAO1: TIntegerField;
    cds_falecREGISTRO1: TStringField;
    cds_falecID_DEP1: TIntegerField;
    cds_falecSOCIO1: TStringField;
    cds_falecDEPENDENTE1: TStringField;
    cds_falecPARENTESCO1: TStringField;
    cds_falecFALEC2: TStringField;
    cds_falecNASC2: TDateField;
    cds_falecRESID2: TStringField;
    cds_falecNUM2: TStringField;
    cds_falecBAIRRO2: TStringField;
    cds_falecCIDADE2: TStringField;
    cds_falecUF2: TStringField;
    cds_falecCEP2: TStringField;
    cds_falecCEMITERIO2: TStringField;
    cds_falecSEP_D2: TDateField;
    cds_falecSEP_H2: TTimeField;
    cds_falecFAL_L2: TStringField;
    cds_falecFAL_D2: TDateField;
    cds_falecFAL_H2: TTimeField;
    cds_falecLOTE2: TIntegerField;
    cds_falecGRUPO2: TStringField;
    cds_falecINSCRICAO2: TIntegerField;
    cds_falecREGISTRO2: TStringField;
    cds_falecID_DEP2: TIntegerField;
    cds_falecSOCIO2: TStringField;
    cds_falecDEPENDENTE2: TStringField;
    cds_falecPARENTESCO2: TStringField;
    cds_falecFALEC3: TStringField;
    cds_falecNASC3: TDateField;
    cds_falecRESID3: TStringField;
    cds_falecNUM3: TStringField;
    cds_falecBAIRRO3: TStringField;
    cds_falecCIDADE3: TStringField;
    cds_falecUF3: TStringField;
    cds_falecCEP3: TStringField;
    cds_falecCEMITERIO3: TStringField;
    cds_falecSEP_D3: TDateField;
    cds_falecSEP_H3: TTimeField;
    cds_falecFAL_L3: TStringField;
    cds_falecFAL_D3: TDateField;
    cds_falecFAL_H3: TTimeField;
    cds_falecLOTE3: TIntegerField;
    cds_falecGRUPO3: TStringField;
    cds_falecINSCRICAO3: TIntegerField;
    cds_falecREGISTRO3: TStringField;
    cds_falecID_DEP3: TIntegerField;
    cds_falecSOCIO3: TStringField;
    cds_falecDEPENDENTE3: TStringField;
    cds_falecPARENTESCO3: TStringField;
    cds_falecFALEC4: TStringField;
    cds_falecNASC4: TDateField;
    cds_falecRESID4: TStringField;
    cds_falecNUM4: TStringField;
    cds_falecBAIRRO4: TStringField;
    cds_falecCIDADE4: TStringField;
    cds_falecUF4: TStringField;
    cds_falecCEP4: TStringField;
    cds_falecCEMITERIO4: TStringField;
    cds_falecSEP_D4: TDateField;
    cds_falecSEP_H4: TTimeField;
    cds_falecFAL_L4: TStringField;
    cds_falecFAL_D4: TDateField;
    cds_falecFAL_H4: TTimeField;
    cds_falecLOTE4: TIntegerField;
    cds_falecGRUPO4: TStringField;
    cds_falecINSCRICAO4: TIntegerField;
    cds_falecREGISTRO4: TStringField;
    cds_falecID_DEP4: TIntegerField;
    cds_falecSOCIO4: TStringField;
    cds_falecDEPENDENTE4: TStringField;
    cds_falecPARENTESCO4: TStringField;
    cds_falecFALEC5: TStringField;
    cds_falecNASC5: TDateField;
    cds_falecRESID5: TStringField;
    cds_falecNUM5: TStringField;
    cds_falecBAIRRO5: TStringField;
    cds_falecCIDADE5: TStringField;
    cds_falecUF5: TStringField;
    cds_falecCEP5: TStringField;
    cds_falecCEMITERIO5: TStringField;
    cds_falecSEP_D5: TDateField;
    cds_falecSEP_H5: TTimeField;
    cds_falecFAL_L5: TStringField;
    cds_falecFAL_D5: TDateField;
    cds_falecFAL_H5: TTimeField;
    cds_falecLOTE5: TIntegerField;
    cds_falecGRUPO5: TStringField;
    cds_falecINSCRICAO5: TIntegerField;
    cds_falecREGISTRO5: TStringField;
    cds_falecID_DEP5: TIntegerField;
    cds_falecSOCIO5: TStringField;
    cds_falecDEPENDENTE5: TStringField;
    cds_falecPARENTESCO5: TStringField;
    cds_falecFALEC6: TStringField;
    cds_falecNASC6: TDateField;
    cds_falecRESID6: TStringField;
    cds_falecNUM6: TStringField;
    cds_falecBAIRRO6: TStringField;
    cds_falecCIDADE6: TStringField;
    cds_falecUF6: TStringField;
    cds_falecCEP6: TStringField;
    cds_falecCEMITERIO6: TStringField;
    cds_falecSEP_D6: TDateField;
    cds_falecSEP_H6: TTimeField;
    cds_falecFAL_L6: TStringField;
    cds_falecFAL_D6: TDateField;
    cds_falecFAL_H6: TTimeField;
    cds_falecLOTE6: TIntegerField;
    cds_falecGRUPO6: TStringField;
    cds_falecINSCRICAO6: TIntegerField;
    cds_falecREGISTRO6: TStringField;
    cds_falecID_DEP6: TIntegerField;
    cds_falecSOCIO6: TStringField;
    cds_falecDEPENDENTE6: TStringField;
    cds_falecPARENTESCO6: TStringField;
    cds_falecFALEC7: TStringField;
    cds_falecNASC7: TDateField;
    cds_falecRESID7: TStringField;
    cds_falecNUM7: TStringField;
    cds_falecBAIRRO7: TStringField;
    cds_falecCIDADE7: TStringField;
    cds_falecUF7: TStringField;
    cds_falecCEP7: TStringField;
    cds_falecCEMITERIO7: TStringField;
    cds_falecSEP_D7: TDateField;
    cds_falecSEP_H7: TTimeField;
    cds_falecFAL_L7: TStringField;
    cds_falecFAL_D7: TDateField;
    cds_falecFAL_H7: TTimeField;
    cds_falecLOTE7: TIntegerField;
    cds_falecGRUPO7: TStringField;
    cds_falecINSCRICAO7: TIntegerField;
    cds_falecREGISTRO7: TStringField;
    cds_falecID_DEP7: TIntegerField;
    cds_falecSOCIO7: TStringField;
    cds_falecDEPENDENTE7: TStringField;
    cds_falecPARENTESCO7: TStringField;
    sds_falecFALEC1: TStringField;
    sds_falecNASC1: TDateField;
    sds_falecRESID1: TStringField;
    sds_falecNUM1: TStringField;
    sds_falecBAIRRO1: TStringField;
    sds_falecCIDADE1: TStringField;
    sds_falecUF1: TStringField;
    sds_falecCEP1: TStringField;
    sds_falecCEMITERIO1: TStringField;
    sds_falecSEP_D1: TDateField;
    sds_falecSEP_H1: TTimeField;
    sds_falecFAL_L1: TStringField;
    sds_falecFAL_D1: TDateField;
    sds_falecFAL_H1: TTimeField;
    sds_falecLOTE1: TIntegerField;
    sds_falecGRUPO1: TStringField;
    sds_falecINSCRICAO1: TIntegerField;
    sds_falecREGISTRO1: TStringField;
    sds_falecID_DEP1: TIntegerField;
    sds_falecSOCIO1: TStringField;
    sds_falecDEPENDENTE1: TStringField;
    sds_falecPARENTESCO1: TStringField;
    sds_falecFALEC2: TStringField;
    sds_falecNASC2: TDateField;
    sds_falecRESID2: TStringField;
    sds_falecNUM2: TStringField;
    sds_falecBAIRRO2: TStringField;
    sds_falecCIDADE2: TStringField;
    sds_falecUF2: TStringField;
    sds_falecCEP2: TStringField;
    sds_falecCEMITERIO2: TStringField;
    sds_falecSEP_D2: TDateField;
    sds_falecSEP_H2: TTimeField;
    sds_falecFAL_L2: TStringField;
    sds_falecFAL_D2: TDateField;
    sds_falecFAL_H2: TTimeField;
    sds_falecLOTE2: TIntegerField;
    sds_falecGRUPO2: TStringField;
    sds_falecINSCRICAO2: TIntegerField;
    sds_falecREGISTRO2: TStringField;
    sds_falecID_DEP2: TIntegerField;
    sds_falecSOCIO2: TStringField;
    sds_falecDEPENDENTE2: TStringField;
    sds_falecPARENTESCO2: TStringField;
    sds_falecFALEC3: TStringField;
    sds_falecNASC3: TDateField;
    sds_falecRESID3: TStringField;
    sds_falecNUM3: TStringField;
    sds_falecBAIRRO3: TStringField;
    sds_falecCIDADE3: TStringField;
    sds_falecUF3: TStringField;
    sds_falecCEP3: TStringField;
    sds_falecCEMITERIO3: TStringField;
    sds_falecSEP_D3: TDateField;
    sds_falecSEP_H3: TTimeField;
    sds_falecFAL_L3: TStringField;
    sds_falecFAL_D3: TDateField;
    sds_falecFAL_H3: TTimeField;
    sds_falecLOTE3: TIntegerField;
    sds_falecGRUPO3: TStringField;
    sds_falecINSCRICAO3: TIntegerField;
    sds_falecREGISTRO3: TStringField;
    sds_falecID_DEP3: TIntegerField;
    sds_falecSOCIO3: TStringField;
    sds_falecDEPENDENTE3: TStringField;
    sds_falecPARENTESCO3: TStringField;
    sds_falecFALEC4: TStringField;
    sds_falecNASC4: TDateField;
    sds_falecRESID4: TStringField;
    sds_falecNUM4: TStringField;
    sds_falecBAIRRO4: TStringField;
    sds_falecCIDADE4: TStringField;
    sds_falecUF4: TStringField;
    sds_falecCEP4: TStringField;
    sds_falecCEMITERIO4: TStringField;
    sds_falecSEP_D4: TDateField;
    sds_falecSEP_H4: TTimeField;
    sds_falecFAL_L4: TStringField;
    sds_falecFAL_D4: TDateField;
    sds_falecFAL_H4: TTimeField;
    sds_falecLOTE4: TIntegerField;
    sds_falecGRUPO4: TStringField;
    sds_falecINSCRICAO4: TIntegerField;
    sds_falecREGISTRO4: TStringField;
    sds_falecID_DEP4: TIntegerField;
    sds_falecSOCIO4: TStringField;
    sds_falecDEPENDENTE4: TStringField;
    sds_falecPARENTESCO4: TStringField;
    sds_falecFALEC5: TStringField;
    sds_falecNASC5: TDateField;
    sds_falecRESID5: TStringField;
    sds_falecNUM5: TStringField;
    sds_falecBAIRRO5: TStringField;
    sds_falecCIDADE5: TStringField;
    sds_falecUF5: TStringField;
    sds_falecCEP5: TStringField;
    sds_falecCEMITERIO5: TStringField;
    sds_falecSEP_D5: TDateField;
    sds_falecSEP_H5: TTimeField;
    sds_falecFAL_L5: TStringField;
    sds_falecFAL_D5: TDateField;
    sds_falecFAL_H5: TTimeField;
    sds_falecLOTE5: TIntegerField;
    sds_falecGRUPO5: TStringField;
    sds_falecINSCRICAO5: TIntegerField;
    sds_falecREGISTRO5: TStringField;
    sds_falecID_DEP5: TIntegerField;
    sds_falecSOCIO5: TStringField;
    sds_falecDEPENDENTE5: TStringField;
    sds_falecPARENTESCO5: TStringField;
    sds_falecFALEC6: TStringField;
    sds_falecNASC6: TDateField;
    sds_falecRESID6: TStringField;
    sds_falecNUM6: TStringField;
    sds_falecBAIRRO6: TStringField;
    sds_falecCIDADE6: TStringField;
    sds_falecUF6: TStringField;
    sds_falecCEP6: TStringField;
    sds_falecCEMITERIO6: TStringField;
    sds_falecSEP_D6: TDateField;
    sds_falecSEP_H6: TTimeField;
    sds_falecFAL_L6: TStringField;
    sds_falecFAL_D6: TDateField;
    sds_falecFAL_H6: TTimeField;
    sds_falecLOTE6: TIntegerField;
    sds_falecGRUPO6: TStringField;
    sds_falecINSCRICAO6: TIntegerField;
    sds_falecREGISTRO6: TStringField;
    sds_falecID_DEP6: TIntegerField;
    sds_falecSOCIO6: TStringField;
    sds_falecDEPENDENTE6: TStringField;
    sds_falecPARENTESCO6: TStringField;
    sds_falecFALEC7: TStringField;
    sds_falecNASC7: TDateField;
    sds_falecRESID7: TStringField;
    sds_falecNUM7: TStringField;
    sds_falecBAIRRO7: TStringField;
    sds_falecCIDADE7: TStringField;
    sds_falecUF7: TStringField;
    sds_falecCEP7: TStringField;
    sds_falecCEMITERIO7: TStringField;
    sds_falecSEP_D7: TDateField;
    sds_falecSEP_H7: TTimeField;
    sds_falecFAL_L7: TStringField;
    sds_falecFAL_D7: TDateField;
    sds_falecFAL_H7: TTimeField;
    sds_falecLOTE7: TIntegerField;
    sds_falecGRUPO7: TStringField;
    sds_falecINSCRICAO7: TIntegerField;
    sds_falecREGISTRO7: TStringField;
    sds_falecID_DEP7: TIntegerField;
    sds_falecSOCIO7: TStringField;
    sds_falecDEPENDENTE7: TStringField;
    sds_falecPARENTESCO7: TStringField;
    sdsBancoVENCIMENTO: TStringField;
    sdsBancoVENCIMENTO1: TStringField;
    sdsBancoVENCIMENTO2: TStringField;
    cdsBancoVENCIMENTO: TStringField;
    cdsBancoVENCIMENTO1: TStringField;
    cdsBancoVENCIMENTO2: TStringField;
    sdsBancoLOCAL_PGTO: TStringField;
    cdsBancoLOCAL_PGTO: TStringField;
    BitBtn1: TdxButton;
    BitBtn2: TdxButton;
    Edit6: TEdit;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    BitBtn4: TSpeedButton;
    sdsCRGEROU: TStringField;
    cdsCRGEROU: TStringField;
    sdsCRIDREC: TIntegerField;
    cdsCRIDREC: TIntegerField;
    sds_lote1ID_RECEBIMENTOS: TIntegerField;
    sds_lote1ID: TIntegerField;
    sds_lote1VALOR_NF: TFloatField;
    sds_lote1VALOR_RECEBER: TFloatField;
    sds_lote1PARCELA: TIntegerField;
    sds_lote1VENCIMENTO: TDateField;
    sds_lote1DATA_PAG: TDateField;
    sds_lote1STATUS: TStringField;
    sds_lote1VALOR_PAGO: TFloatField;
    sds_lote1VALOR_DIF: TFloatField;
    sds_lote1JUROS: TFloatField;
    sds_lote1DESCONTO: TFloatField;
    sds_lote1MULTA: TFloatField;
    sds_lote1EMISSAO: TDateField;
    sds_lote1N_DOCUMENTO: TStringField;
    sds_lote1CAIXA: TStringField;
    sds_lote1FORMARECEBIMENTO: TStringField;
    sds_lote1VALOR_A_REC: TFloatField;
    sds_lote1TITULO: TIntegerField;
    sds_lote1VALOR_1VIA: TFloatField;
    sds_lote1ID_SOCIO: TIntegerField;
    sds_lote1LOTE: TIntegerField;
    sds_lote1GEROU: TStringField;
    sds_lote1DATA_DOC: TDateField;
    sds_lote1GRUPO: TStringField;
    sds_lote1ID_BANCO: TIntegerField;
    sds_lote1SITUACAO: TStringField;
    sds_lote1TIPO_DOC: TStringField;
    sds_lote1SELECIONOU: TStringField;
    sds_lote1SERIE: TStringField;
    sds_lote1PERCENTUALJUROS: TFloatField;
    sds_lote1PERCENTUALMULTA: TFloatField;
    sds_lote1PERCENTUALDESCONTO: TFloatField;
    sds_lote1VALOROUTROSACRESCIMOS: TFloatField;
    FlatGauge1: TFlatGauge;
    Label8: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    proc_banco: TSQLClientDataSet;
    proc_bancoAGENCIA: TStringField;
    proc_bancoBANCO: TStringField;
    dxButton5: TdxButton;
    dsp_CR: TDataSetProvider;
    sds_CR: TSQLDataSet;
    sds_CRID_RECEBIMENTOS: TIntegerField;
    sds_CRID: TIntegerField;
    sds_CRVALOR_NF: TFloatField;
    sds_CRVALOR_RECEBER: TFloatField;
    sds_CRPARCELA: TIntegerField;
    sds_CRVENCIMENTO: TDateField;
    sds_CRDATA_PAG: TDateField;
    sds_CRSTATUS: TStringField;
    sds_CRVALOR_PAGO: TFloatField;
    sds_CRVALOR_DIF: TFloatField;
    sds_CRJUROS: TFloatField;
    sds_CRDESCONTO: TFloatField;
    sds_CRMULTA: TFloatField;
    sds_CREMISSAO: TDateField;
    sds_CRN_DOCUMENTO: TStringField;
    sds_CRCAIXA: TStringField;
    sds_CRFORMARECEBIMENTO: TStringField;
    sds_CRVALOR_A_REC: TFloatField;
    sds_CRVALOR_1VIA: TFloatField;
    sds_CRTIPO_DOC: TStringField;
    sds_CRID_SOCIO: TIntegerField;
    sds_CRLOTE: TIntegerField;
    sds_CRGEROU: TStringField;
    sds_CRDATA_DOC: TDateField;
    sds_CRGRUPO: TStringField;
    sds_CRID_BANCO: TIntegerField;
    sds_CRSITUACAO: TStringField;
    sds_CRSELECIONOU: TStringField;
    sds_CRPERCENTUALJUROS: TFloatField;
    sds_CRPERCENTUALMULTA: TFloatField;
    sds_CRPERCENTUALDESCONTO: TFloatField;
    sds_CRVALOROUTROSACRESCIMOS: TFloatField;
    sds_CRTITULO: TIntegerField;
    sds_CRSERIE: TStringField;
    cds_CR: TClientDataSet;
    cds_CRID_RECEBIMENTOS: TIntegerField;
    cds_CRID: TIntegerField;
    cds_CRVALOR_NF: TFloatField;
    cds_CRVALOR_RECEBER: TFloatField;
    cds_CRPARCELA: TIntegerField;
    cds_CRVENCIMENTO: TDateField;
    cds_CRDATA_PAG: TDateField;
    cds_CRSTATUS: TStringField;
    cds_CRVALOR_PAGO: TFloatField;
    cds_CRVALOR_DIF: TFloatField;
    cds_CRJUROS: TFloatField;
    cds_CRDESCONTO: TFloatField;
    cds_CRMULTA: TFloatField;
    cds_CREMISSAO: TDateField;
    cds_CRN_DOCUMENTO: TStringField;
    cds_CRCAIXA: TStringField;
    cds_CRFORMARECEBIMENTO: TStringField;
    cds_CRVALOR_A_REC: TFloatField;
    cds_CRVALOR_1VIA: TFloatField;
    cds_CRTIPO_DOC: TStringField;
    cds_CRID_SOCIO: TIntegerField;
    cds_CRLOTE: TIntegerField;
    cds_CRGEROU: TStringField;
    cds_CRDATA_DOC: TDateField;
    cds_CRGRUPO: TStringField;
    cds_CRID_BANCO: TIntegerField;
    cds_CRSITUACAO: TStringField;
    cds_CRSELECIONOU: TStringField;
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRTITULO: TIntegerField;
    cds_CRSERIE: TStringField;
    cds_CRtotal_titulo: TAggregateField;
    cds_CRtotal_pago: TAggregateField;
    cds_CRCODIGO: TIntegerField;
    DataSource2: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsID_RECEBIMENTOS: TIntegerField;
    cdsSTATUS: TStringField;
    cdsEMISSAO: TDateField;
    cdsVENCIMENTO: TDateField;
    cdsVALOR_NF: TFloatField;
    cdsLOTE: TIntegerField;
    cdsGEROU: TStringField;
    cdsCODIGO: TIntegerField;
    cdsGRUPO: TStringField;
    cdsNOME_SOCIO: TStringField;
    cdsN_INSCRICAO: TIntegerField;
    cdsID_SOCIO: TIntegerField;
    cdsID_COB: TIntegerField;
    sdsID_RECEBIMENTOS: TIntegerField;
    sdsSTATUS: TStringField;
    sdsEMISSAO: TDateField;
    sdsVENCIMENTO: TDateField;
    sdsVALOR_NF: TFloatField;
    sdsLOTE: TIntegerField;
    sdsGEROU: TStringField;
    sdsCODIGO: TIntegerField;
    sdsGRUPO: TStringField;
    sdsNOME_SOCIO: TStringField;
    sdsN_INSCRICAO: TIntegerField;
    sdsID_SOCIO: TIntegerField;
    sdsID_COB: TIntegerField;
    sds_CRCODIGO: TIntegerField;
    sql_recibo: TSQLDataSet;
    cds_recibo: TClientDataSet;
    dsp_recibo: TDataSetProvider;
    cds_reciboIDREC: TIntegerField;
    cds_reciboID: TIntegerField;
    cds_reciboNOME: TStringField;
    cds_reciboRUA: TStringField;
    cds_reciboCEP: TStringField;
    cds_reciboUF: TStringField;
    cds_reciboBAIRRO: TStringField;
    cds_reciboMUNICIPIO: TStringField;
    cds_reciboEMISSAO: TDateField;
    cds_reciboVENCIMENTO: TDateField;
    cds_reciboVALOR: TFloatField;
    cds_reciboVALORPENDENTE: TFloatField;
    cds_reciboVALORDEVE: TFloatField;
    cds_reciboN_DOC: TStringField;
    cds_reciboINSTRUCOES: TStringField;
    cds_reciboINSCRICAO: TIntegerField;
    cds_reciboN_LOTE: TIntegerField;
    cds_reciboN_GRUPO: TStringField;
    cds_reciboSTATUS: TStringField;
    cds_reciboVENCIDOS: TStringField;
    cds_reciboD_VENCIDO: TDateField;
    cds_reciboTOT_PENDENTE: TIntegerField;
    cds_reciboCOD_COBRADOR: TIntegerField;
    cds_reciboNOME_COBRADOR: TStringField;
    cds_reciboDOCUMENTO: TStringField;
    cds_reciboGEROU: TStringField;
    sql_reciboIDREC: TIntegerField;
    sql_reciboID: TIntegerField;
    sql_reciboNOME: TStringField;
    sql_reciboRUA: TStringField;
    sql_reciboCEP: TStringField;
    sql_reciboUF: TStringField;
    sql_reciboBAIRRO: TStringField;
    sql_reciboMUNICIPIO: TStringField;
    sql_reciboEMISSAO: TDateField;
    sql_reciboVENCIMENTO: TDateField;
    sql_reciboVALOR: TFloatField;
    sql_reciboVALORPENDENTE: TFloatField;
    sql_reciboVALORDEVE: TFloatField;
    sql_reciboN_DOC: TStringField;
    sql_reciboINSTRUCOES: TStringField;
    sql_reciboINSCRICAO: TIntegerField;
    sql_reciboN_LOTE: TIntegerField;
    sql_reciboN_GRUPO: TStringField;
    sql_reciboSTATUS: TStringField;
    sql_reciboVENCIDOS: TStringField;
    sql_reciboD_VENCIDO: TDateField;
    sql_reciboTOT_PENDENTE: TIntegerField;
    sql_reciboCOD_COBRADOR: TIntegerField;
    sql_reciboNOME_COBRADOR: TStringField;
    sql_reciboDOCUMENTO: TStringField;
    sql_reciboGEROU: TStringField;
    VDODmPrinter1: TVDODmPrinter;
    cds_par: TSQLClientDataSet;
    cds_parPARAMETRO: TStringField;
    cds_parDESCRICAO: TStringField;
    cds_parCONFIGURADO: TStringField;
    cds_parPARAMETRO1: TStringField;
    cds_parPARAMETRO2: TStringField;
    cds_parPARAMETRO3: TStringField;
    cds_parPARAMETRO4: TStringField;
    cds_parPARAMETRO5: TStringField;
    cds_parPARAMETRO6: TStringField;
    cds_parPARAMETRO7: TStringField;
    cds_parPARAMETRO8: TStringField;
    cds_parPARAMETRO9: TStringField;
    sds_banco: TSQLDataSet;
    sds_bancoID_BANCO: TIntegerField;
    sds_bancoCONTA: TStringField;
    sds_bancoBANCO: TStringField;
    sds_bancoCIDADE: TStringField;
    sds_bancoSALDO: TFloatField;
    sds_bancoAGENCIA: TStringField;
    sds_bancoDIGAGEN: TStringField;
    sds_bancoCOD_CED: TStringField;
    sds_bancoID_TITULO: TIntegerField;
    sds_bancoCARTEIRA: TStringField;
    sds_bancoN_DOC: TIntegerField;
    sds_bancoJUROS: TFloatField;
    sds_bancoVENCIMENTO: TStringField;
    sds_bancoVENCIMENTO1: TStringField;
    sds_bancoVENCIMENTO2: TStringField;
    sds_bancoLOCAL_PGTO: TStringField;
    sds_bancoVENCIMENTO3: TStringField;
    dsp_banco: TDataSetProvider;
    cds_banco: TClientDataSet;
    cds_bancoID_BANCO: TIntegerField;
    cds_bancoCONTA: TStringField;
    cds_bancoBANCO: TStringField;
    cds_bancoCIDADE: TStringField;
    cds_bancoSALDO: TFloatField;
    cds_bancoAGENCIA: TStringField;
    cds_bancoDIGAGEN: TStringField;
    cds_bancoCOD_CED: TStringField;
    cds_bancoID_TITULO: TIntegerField;
    cds_bancoCARTEIRA: TStringField;
    cds_bancoN_DOC: TIntegerField;
    cds_bancoJUROS: TFloatField;
    cds_bancoVENCIMENTO: TStringField;
    cds_bancoVENCIMENTO1: TStringField;
    cds_bancoVENCIMENTO2: TStringField;
    cds_bancoLOCAL_PGTO: TStringField;
    cds_bancoVENCIMENTO3: TStringField;
    cds_boleto: TClientDataSet;
    dspboleto: TDataSetProvider;
    sds_boleto: TSQLDataSet;
    cds_boletoIDREC: TIntegerField;
    cds_boletoID: TIntegerField;
    cds_boletoNOME: TStringField;
    cds_boletoRUA: TStringField;
    cds_boletoCEP: TStringField;
    cds_boletoUF: TStringField;
    cds_boletoBAIRRO: TStringField;
    cds_boletoMUNICIPIO: TStringField;
    cds_boletoEMISSAO: TDateField;
    cds_boletoVENCIMENTO: TDateField;
    cds_boletoVALOR: TFloatField;
    cds_boletoVALORPENDENTE: TFloatField;
    cds_boletoVALORDEVE: TFloatField;
    cds_boletoN_DOC: TStringField;
    cds_boletoINSTRUCOES: TStringField;
    cds_boletoINSCRICAO: TIntegerField;
    cds_boletoN_LOTE: TIntegerField;
    cds_boletoN_GRUPO: TStringField;
    cds_boletoSTATUS: TStringField;
    cds_boletoVENCIDOS: TStringField;
    cds_boletoD_VENCIDO: TDateField;
    cds_boletoTOT_PENDENTE: TIntegerField;
    cds_boletoCOD_COBRADOR: TIntegerField;
    cds_boletoNOME_COBRADOR: TStringField;
    cds_boletoDOCUMENTO: TStringField;
    cds_boletoGEROU: TStringField;
    sds_boletoIDREC: TIntegerField;
    sds_boletoID: TIntegerField;
    sds_boletoNOME: TStringField;
    sds_boletoRUA: TStringField;
    sds_boletoCEP: TStringField;
    sds_boletoUF: TStringField;
    sds_boletoBAIRRO: TStringField;
    sds_boletoMUNICIPIO: TStringField;
    sds_boletoEMISSAO: TDateField;
    sds_boletoVENCIMENTO: TDateField;
    sds_boletoVALOR: TFloatField;
    sds_boletoVALORPENDENTE: TFloatField;
    sds_boletoVALORDEVE: TFloatField;
    sds_boletoN_DOC: TStringField;
    sds_boletoINSTRUCOES: TStringField;
    sds_boletoINSCRICAO: TIntegerField;
    sds_boletoN_LOTE: TIntegerField;
    sds_boletoN_GRUPO: TStringField;
    sds_boletoSTATUS: TStringField;
    sds_boletoVENCIDOS: TStringField;
    sds_boletoD_VENCIDO: TDateField;
    sds_boletoTOT_PENDENTE: TIntegerField;
    sds_boletoCOD_COBRADOR: TIntegerField;
    sds_boletoNOME_COBRADOR: TStringField;
    sds_boletoDOCUMENTO: TStringField;
    sds_boletoGEROU: TStringField;
    sds_boletoN_BOLETO: TStringField;
    cds_boletoN_BOLETO: TStringField;
    sds_grupo: TSQLDataSet;
    sds_grupoID_GRUPO: TIntegerField;
    sds_grupoINSCRICAO: TIntegerField;
    sds_grupoQTDE: TIntegerField;
    sds_grupoGRUPO: TStringField;
    sds_grupoN_FALEC: TIntegerField;
    VCLReport1: TVCLReport;
    sds_numero: TSQLDataSet;
    dsp_numero: TDataSetProvider;
    cds_numero: TClientDataSet;
    Edit9: TEdit;
    Label11: TLabel;
    cds_numeroID_RECEBIMENTOS: TIntegerField;
    cds_numeroTITULO: TIntegerField;
    sds_numeroID_RECEBIMENTOS: TIntegerField;
    sds_numeroTITULO: TIntegerField;
    RadioGroup1: TRadioGroup;
    Label12: TLabel;
    SpeedButton3: TSpeedButton;
    sdsBancoVENCIMENTO3: TStringField;
    sdsBancoCADBANCO: TStringField;
    sdsBancoDESCBANCO: TStringField;
    sdsBancoCONTACORRRENTE: TStringField;
    sdsBancoDIGITOCONTACORRENTE: TStringField;
    sdsBancoINICIONOSSONUMERO: TStringField;
    sdsBancoFIMNOSSONUMERO: TStringField;
    sdsBancoPROXIMONOSSONUMERO: TStringField;
    sdsBancoVARIACAO: TStringField;
    sdsBancoNUMEROCONVENIO: TStringField;
    sdsBancoTIPOIMPRESSAOCARNE: TIntegerField;
    sdsBancoTIPOCARNE: TStringField;
    sdsBancoDEMONSTRATIVO: TStringField;
    sdsBancoINSTRUCOESCAIXA: TStringField;
    sdsBancoINSTRUCAO1: TStringField;
    sdsBancoINSTRUCAO2: TStringField;
    sdsBancoACEITEDOCUMENTO: TStringField;
    sdsBancoESPECIEDOCUMENTO: TStringField;
    sdsBancoINSTRUCAO3: TStringField;
    cdsBancoVENCIMENTO3: TStringField;
    cdsBancoCADBANCO: TStringField;
    cdsBancoDESCBANCO: TStringField;
    cdsBancoCONTACORRRENTE: TStringField;
    cdsBancoDIGITOCONTACORRENTE: TStringField;
    cdsBancoINICIONOSSONUMERO: TStringField;
    cdsBancoFIMNOSSONUMERO: TStringField;
    cdsBancoPROXIMONOSSONUMERO: TStringField;
    cdsBancoVARIACAO: TStringField;
    cdsBancoNUMEROCONVENIO: TStringField;
    cdsBancoTIPOIMPRESSAOCARNE: TIntegerField;
    cdsBancoTIPOCARNE: TStringField;
    cdsBancoDEMONSTRATIVO: TStringField;
    cdsBancoINSTRUCOESCAIXA: TStringField;
    cdsBancoINSTRUCAO1: TStringField;
    cdsBancoINSTRUCAO2: TStringField;
    cdsBancoACEITEDOCUMENTO: TStringField;
    cdsBancoESPECIEDOCUMENTO: TStringField;
    cdsBancoINSTRUCAO3: TStringField;
    sds_bancoCADBANCO: TStringField;
    sds_bancoDESCBANCO: TStringField;
    sds_bancoCONTACORRRENTE: TStringField;
    sds_bancoDIGITOCONTACORRENTE: TStringField;
    sds_bancoINICIONOSSONUMERO: TStringField;
    sds_bancoFIMNOSSONUMERO: TStringField;
    sds_bancoPROXIMONOSSONUMERO: TStringField;
    sds_bancoVARIACAO: TStringField;
    sds_bancoNUMEROCONVENIO: TStringField;
    sds_bancoTIPOIMPRESSAOCARNE: TIntegerField;
    sds_bancoTIPOCARNE: TStringField;
    sds_bancoDEMONSTRATIVO: TStringField;
    sds_bancoINSTRUCOESCAIXA: TStringField;
    sds_bancoINSTRUCAO1: TStringField;
    sds_bancoINSTRUCAO2: TStringField;
    sds_bancoACEITEDOCUMENTO: TStringField;
    sds_bancoESPECIEDOCUMENTO: TStringField;
    sds_bancoINSTRUCAO3: TStringField;
    cds_bancoCADBANCO: TStringField;
    cds_bancoDESCBANCO: TStringField;
    cds_bancoCONTACORRRENTE: TStringField;
    cds_bancoDIGITOCONTACORRENTE: TStringField;
    cds_bancoINICIONOSSONUMERO: TStringField;
    cds_bancoFIMNOSSONUMERO: TStringField;
    cds_bancoPROXIMONOSSONUMERO: TStringField;
    cds_bancoVARIACAO: TStringField;
    cds_bancoNUMEROCONVENIO: TStringField;
    cds_bancoTIPOIMPRESSAOCARNE: TIntegerField;
    cds_bancoTIPOCARNE: TStringField;
    cds_bancoDEMONSTRATIVO: TStringField;
    cds_bancoINSTRUCOESCAIXA: TStringField;
    cds_bancoINSTRUCAO1: TStringField;
    cds_bancoINSTRUCAO2: TStringField;
    cds_bancoACEITEDOCUMENTO: TStringField;
    cds_bancoESPECIEDOCUMENTO: TStringField;
    cds_bancoINSTRUCAO3: TStringField;
    sdsCRN_BOLETO: TStringField;
    sdsCRN_TITULO: TIntegerField;
    cdsCRN_BOLETO: TStringField;
    cdsCRN_TITULO: TIntegerField;
    sdsBancoCARTEIRA: TStringField;
    cdsBancoCARTEIRA: TStringField;
    Edit10: TEdit;
    Label15: TLabel;
    BitBtn3: TBitBtn;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    sdsCRTIPO_DOC: TStringField;
    cdsCRTIPO_DOC: TStringField;
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dxButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure SpeedButton3Click(Sender: TObject);
  private
      {SANTANDER}
      function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;

      {Banespa}
      //  function GerarRemessaCNAB240(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
      function GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
      //  function LerRetornoCNAB240(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
      function LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
      function VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando,
      sOcorrenciaOriginal: String): String;
      function  GetNomeBanco   : string; {Retorna o nome do banco}
      function  GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string; {Retorna o conteúdo da parte variável do código de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores serão apresentados no boleto }
      function  LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean; {Lê o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
      procedure BANCO_BANESPA;
      procedure BANCO_BRASIL;
      procedure SANTANDER_LOTE;
  { Private declarations }
  public
    { Public declarations }
  end;

var
  fGeraLote: TfGeraLote;
  Registro, Registro1: string;
  NomArquivo, NomArquivo1 : string;
  arquivo, arquivo1 : TextFile;
  numeroremessa: integer;
  banco, banco_lote , l_pgto, texto, texto1, texto2, texto3 : string;
  label_pgto,label_text,label_text1,label_text2,label_text3:TRpLabel;
  contador : integer;


implementation

uses UDM, uVerLotes, uProcurar, uCad_Obitos, uNumero_Boleto, uPrincipal;


{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

function NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

procedure TfGeraLote.dxButton3Click(Sender: TObject);
begin
   Close;
end;

procedure TfGeraLote.dxButton2Click(Sender: TObject);
var sql_texto, total, sql_lote : string;
    TD: TTransactionDesc;
begin
  {** Inicializo as Variaveis}

  sql_lote := '';
  sql_texto := '';
  total := '';
  {** Verifico se os campos referentes a Lote e Grupo forão preenchidos se ñ cancelo a operação}
  if Edit7.Text = '' then
  begin
    MessageDlg('Informe o Lote..', mtWarning, [mbOK], 0);
    exit;
  end;
  if Edit7.Text = '0'then
  begin
    MessageDlg('Não Há Taxas a Ser Gerado..', mtWarning, [mbOK], 0);
    exit;
  end;

  if Edit2.Text = '' then
  begin
    MessageDlg('Informe o Grupo..', mtWarning, [mbOK], 0);
    exit;
  end;
  {** Verifi se a cobrança já foi gerada para esse Lote}
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := StrtoInt(Edit7.Text);
  dm.cdsCircular.Params[1].AsString := Edit2.Text;
  dm.cdsCircular.Open;
  if (dm.cdsCircularGEROU.AsString = 'sim') then
  begin
    MessageDlg('Já foi gerada a Cobrança para esse Lote', mtInformation, [mbOK], 0);
    dm.cdsCircular.Close;
    exit;
  end
  {** se não foi, Executo a procedure que insere as mensalidades na tabela Recebimentos}
  else
  begin
     Label8.Caption := '';
     Label8.Caption := 'Gerando Cobranças Aguarde....';
     Refresh;
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     dm.SQLObitos.StartTransaction(TD);
     try
         sql_texto := 'Execute procedure SP_LOTECOBRANCA(';
         sql_texto := sql_texto + Edit7.Text + ',';
         sql_texto := sql_texto + '''' + Edit2.Text + ''',';
         sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit1.Text)) + ''',';
         sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit2.Text)) + ''')';
         DM.SQLObitos.ExecuteDirect(sql_texto);
         {** Mudo o valor do campo GEROU da tabela LOTES para sim}
         sql_lote := 'UPDATE LOTES SET GEROU = ' + '''' + 'sim' + '''';
         sql_lote := sql_lote + 'where LOTE = ';
         sql_lote := sql_lote + '' + Edit7.Text + '';
         sql_lote := sql_lote + ' and GRUPO = ';
         sql_lote := sql_lote + '''' + Edit2.Text + '''';
         tb_lotes.CommandText := sql_lote;
         tb_lotes.ExecSQL();
         dm.SQLObitos.Commit(TD);
         {** Limpo novamente as variaveis}
         sql_texto := '';
         sql_lote := '';
     except
       dm.SQLObitos.Rollback(TD);
       MessageDlg('Erro ao gerar a cobrança...', mtError, [mbOK], 0);
       exit;
     end;
     Label8.Caption := '';
     Label8.Caption := 'COBRANÇA GERADA COM SUCESSO....';
     Refresh;
  end;
  {** --------------Clique do botão pesquisar-----------------}
  {** Abro a Tabela Recebimentos com parametros (lote, Grupo) p/impresssão }
  if cdsCR.Active then
    cdsCR.Close;
   cdsCR.Params[0].Clear;
   cdsCR.Params[1].Clear;
   cdsCR.Params[2].Clear;
   cdsCR.Params[3].Clear;
   cdsCR.Params[4].Clear;
   cdsCR.Params[0].AsInteger := StrToInt(Edit7.Text);
   cdsCR.Params[1].AsString := Edit2.Text;
   cdsCR.Params[2].AsInteger := StrToInt(Edit3.Text);
   cdsCR.Params[3].AsInteger := StrToInt(Edit1.Text);
  if Edit4.Text <> '' then
    cdsCR.Params[4].AsInteger := StrToInt(Edit4.Text)
  else
    cdsCR.Params[4].AsInteger := 9999999;
  cdsCR.Open;

  {** Abilito os botões de impressão}
  if dxButton2.Enabled = True then
    dxButton2.Enabled := False;
  if dxButton1.Enabled = false then
    dxButton1.Enabled := true;
  if BitBtn2.Enabled = false then
    BitBtn2.Enabled := true;

end;

procedure TfGeraLote.FormShow(Sender: TObject);
var
   ano, mes, dia : word;
begin
  inherited;
    DateEdit1.Text:=formatdatetime('dd/mm/yyyy',now);
    decodedate(DateEdit1.date, ano, mes, dia);

    DateEdit2.Text:=formatdatetime('dd/mm/yyyy',now);
    decodedate(DateEdit2.date, ano, mes, dia);

    mes := mes + 1;

    if mes = 13 then
    begin
     mes := 1;
     ano := ano + 1;
    end;

    if ((mes = 1) and (dia > 30)) then
      dia := 30;
    if ((mes = 4) and (dia > 30)) then
      dia := 30;
    if ((mes = 2) and (dia > 28)) then
      dia := 28;
    if ((mes = 6) and (dia > 30)) then
      dia := 30;
    if ((mes = 7) and (dia > 30)) then
      dia := 30;
    if ((mes = 9) and (dia > 30)) then
      dia := 30;
      
    DateEdit2.Date := encodedate(ano, mes, dia);

end;

procedure TfGeraLote.dxButton1Click(Sender: TObject);
begin
   {** verifico se foi selecionado o cobrador para impressão do boleto}
   if Edit4.Text = '' then
   begin
     MessageDlg('Escolha um Cobrador', mtWarning, [mbOK], 0);
     exit;
   end;

   //*************************************************************************
   contador := 0;
   if MessageDlg('Alterar numero desses Boletos ?',mtConfirmation,
              [mbYes,mbNo],0) = mrYes then
   begin
     if Edit9.Text = '' Then
     begin
        MessageDlg('Informe o numero do Boleto Inicial', mtWarning, [mbOK], 0);
        exit;
     end;
       {** Altero o Número do Título na tabela recebimentos}
       if cds_numero.Active then
         cds_numero.Close;
        cds_numero.Params[0].Clear;
        cds_numero.Params[1].Clear;
        cds_numero.Params[2].Clear;
        cds_numero.Params[3].Clear;
        cds_numero.Params[4].Clear;
        cds_numero.Params[5].Clear;
        cds_numero.Params[0].AsInteger := StrToInt(Edit7.Text);
        cds_numero.Params[1].AsString := Edit2.Text;
        cds_numero.Params[2].AsInteger := StrToInt(Edit3.Text);
        cds_numero.Params[3].AsInteger := StrToInt(Edit1.Text);
        if Edit4.Text <> '' then
          cds_numero.Params[4].AsInteger :=  StrToInt(Edit4.Text)
        else
          cds_numero.Params[4].AsInteger := 9999999;
        cds_numero.Open;
        Label8.Caption := '';
        Label8.Caption := 'Atualizando Nº do Boletos...';
        Refresh;
        FlatGauge1.MaxValue := cds_numero.RecordCount;
        contador := StrToInt(Edit9.Text);
        cds_numero.First;
        while not cds_numero.Eof do
        begin
           cds_numero.Edit;
           cds_numeroTITULO.AsString := IntToStr(contador);
           contador := contador + 1;
           cds_numero.ApplyUpdates(0);
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           cds_numero.Next;
        end;
        FlatGauge1.Progress := 0;
        Label8.Caption := '';
        Label8.Caption := 'Nº do Boletos atualizados com SUCESSO...';
        Refresh;
   end;
   //*************************************************************************
   {** Abro a tabela parametros pra ver qual o banco que ele usa para imprimir os boletos}
   if (not cds_par.Active) then
     cds_par.Open;
   if ( not cds_par.Locate('PARAMETRO','Banco Lotes', [loPartialKey])) then
   begin
    MessageDlg('insira o parâmetro "Banco Lotes"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
    exit;
   end;
   {** Busco os dados do bamco para impressão}
   if (not cds_banco.Active) then
     cds_banco.Open;
   if ( not cds_banco.Locate('BANCO',cds_parPARAMETRO1.AsString, [loPartialKey])) then
   begin
    MessageDlg('Banco não Cadastrado.', mtWarning, [mbOK], 0);
    exit;
   end
   else
   begin
     {** alimento as variaveis com os dados do banco}
     banco_lote := cds_bancoBANCO.AsString;
     l_pgto := cds_bancoLOCAL_PGTO.AsString;
     texto  := cds_bancoVENCIMENTO.AsString;
     texto1 := cds_bancoVENCIMENTO1.AsString;
     texto2 := cds_bancoVENCIMENTO2.AsString;
     texto3 := cds_bancoVENCIMENTO3.AsString;
   end;
   //***************************************************************************
   {** Existem dois tipos de boletos pequei da tabela parametro o tipo que ele usa
   e guardei na variavel banco_lote aqui eu testo pra ver qual relatorio imprimir}
   if (banco_lote = 'HSBC') then
     VCLReport1.FileName := str_relatorio + 'boleto_hsbc.rep';
   if (banco_lote = 'BANESPA') then
     VCLReport1.FileName := str_relatorio + 'boleto_banespa.rep';
   if (banco_lote = 'BRASIL') then
     VCLReport1.FileName := str_relatorio + 'boleto_brasil.rep';

   {** configuro a conecção do reportmanager para o sisObitos}
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
   {** Alimento alguns Labels do relatório(boleto) ref. a dados do banco }
   label_pgto:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel0'));
   label_text:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel1'));
   label_text1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel2'));
   label_text2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel3'));
   label_text3:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel4'));
   if Assigned(label_pgto) then
     label_pgto.Text := l_pgto;
   if Assigned(label_text) then
     label_text.Text := texto;
   if Assigned(label_text1) then
     label_text1.Text := texto1;
   if Assigned(label_text2) then
     label_text2.Text := texto2;
   if Assigned(label_text3) then
     label_text3.Text := texto3;
   {** entro com os parametros para impressão do boleto.}
   VCLReport1.Report.Params.ParamByName('LOTE').Value := StrToInt(Edit7.Text); //lote
   VCLReport1.Report.Params.ParamByName('GP').Value := Edit2.Text; //grupo
   VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(Edit3.Text); //inscrição
   VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(Edit1.Text); //inscrição
   VCLReport1.Report.Params.ParamByName('COB').Value := StrToInt(Edit4.Text); //Cobrador
   VCLReport1.Execute;
end;

procedure TfGeraLote.Edit2Exit(Sender: TObject);
begin
  if dm.cds_grupo.Active then
     dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].AsString := Edit2.Text;
  dm.cds_grupo.Open;
  Edit3.Text := '1';
  Edit1.Text := IntToStr(dm.cds_grupoINSCRICAO.AsInteger);
  dm.cds_grupo.Close;
end;

procedure TfGeraLote.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfGeraLote.dxButton4Click(Sender: TObject);
begin
  fVerLotes := TfVerLotes.Create(Application);
  try
    fVerLotes.ShowModal;
  finally
    fVerLotes.Free;
  end;
  Edit2.SetFocus; 
end;

procedure TfGeraLote.FormCreate(Sender: TObject);
var
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;
begin
{   ScreenWidth := 800;
   ScreenHeight := 600;
   scaled := true;
   height := longint(height) * longint(screen.height) DIV ScreenHeight;
   width := longint(width) * longint(screen.width) DIV ScreenWidth;
   scaleBy(screen.width, ScreenWidth);
 }
end;
 
{*************************************************************************}
{------------------------ Remessa Boleto Banespa -------------------------}

function TfGeraLote.CalcularDigitoNossoNumero(ATitulo: TgbTitulo): string;
var
   ANossoNumero,
   ADigitoNossoNumero: string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,7,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

procedure TfGeraLote.FormatarBoleto(ATitulo: TgbTitulo;
  var AAgenciaCodigoCedente, ANossoNumero, ACarteira,
  AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0') + '/' + Formatar(Cedente.CodigoCedente,6,false,'0') + '-' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,7,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3);
      AEspecieDocumento := '';
   end;
end;

function TfGeraLote.GerarRemessa(var ACobranca: TgbCobranca;
  var Remessa: TStringList): boolean;
begin
   case ACobranca.LayoutArquivo of
//      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;

function TfGeraLote.GerarRemessaCNAB400(var ACobranca: TgbCobranca; var Remessa: TStringList): boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, Registro : string;
   cTotalTitulos: Currency;
   NumeroRegistro, numeroTitulo, numerodoc : integer;
   valorpendente : double;
begin
 if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;

   Result := FALSE;
   NumeroRegistro := 0;
   Remessa.Clear;


   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DA REMESSA }

      Remessa.Add('0'+ // IDENT.DO REGISTRO
                  '1'+ // IDENT.DO ARQUIVO DE REMESSA
                  'REMESSA'+ // IDENT. POR EXTENSO REMESSA
                  '01'+ // IDENT. DO TIPO DE SERVIÇO
                  Formatar('COBRANCA',15)+ // IDENT.POR EXTENSO TIPO SERVIÇO
                  Formatar('0',11)+ // USO DO BANCO
                  Formatar('',09)+
                  Formatar(dm.cds_empresaRAZAO_EMPRESA.AsString,30,true,' ')+ // NOME DA EMPRESA POR EXTENSO
                  Formatar('033',3,false,'0')+ // BANCO ENCARREGADO DA COBRANÇA
                  Formatar(cdsBancoBANCO.AsString,15,true,' ')+ // NOME DO BANCO POR EXTENSO
                  FormatDateTime('ddmmyy',StrToDateTime(DateEdit1.Text))+ // DATA DA GRAVAÇÃO DO ARQUIVO
                  Formatar('01600',5)+ // DENSIDADE DE GRAVAÇÃO
                  Formatar('BPI',3)+ // UNIDADE DENSIDADE GRAVAÇÃO
                  Formatar('',286)+ // USO DO BANCO
                  '000001'); // NUMERO SEQUENCIAL REGISTRO

       numeroTitulo := cdsBancoID_TITULO.asInteger;
       numerodoc := cdsBancoN_DOC.AsInteger;

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin
         ATitulosTipoOcorrencia := '01';
         aTitulosEspecieDocumento := '05';
         aTitulosAceite:='N';
         Registro := '1'; //  IDENT. DO REGISTRO
         Registro := Registro + Formatar('02',2); // IDENT.TIPO INSCR.EMPRESA 01-CPF 02-CNPJ
         Registro := Registro + Formatar(dm.cds_empresaCNPJ.AsString,14); // NUMERO DO CGC DA EMPRESA
         Registro := Registro + Formatar(cdsBancoCOD_CED.AsString,11); {CODIGO CEDENTE}
         Registro := Registro + Formatar('',9); // FILLER - BRANCOS
         Registro := Registro + Formatar(cdsCRN_GRUPO.AsString + '-' +
              IntToStr(cdsCRINSCRICAO.AsInteger) +
              IntToStr(cdsCRN_LOTE.AsInteger) ,25,true,' '); // IDENT. DO TITULO NA EMPRESA

         Registro := Registro + Formatar(cdsBancoAGENCIA.AsString,3,false,'0'); //Número Agencia cedente
//         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //DIGITO AG
//         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,6,false,'0'); // C/C PARA CRÉDITO DA COBRANÇA
//         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1); //DIGITO C/C
//         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); // IDENT. DO TITULO NA EMPRESA
         Registro := Registro + Formatar(IntToStr(numeroTitulo),7,false,'0'); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
         Registro := Registro + Formatar('',10); // FILLER - BRANCOS
         Registro := Registro + Formatar('',25); // USO DO BANCO
         Registro := Registro + Formatar(cdsBancoCARTEIRA.AsString,1); // CODIGO DA CARTEIRA
         Registro := Registro + Formatar('01',2); // IDENT. DA TRANSACAO(OCORRENCIA)
         Registro := Registro + Formatar(IntToStr(numerodoc),10); // NUMERO DA DUPLICATA, ETC...111..120
         Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit2.Text)); // DATA DE VENCIMENTO DO TITULO  121..126
         Registro := Registro + FormatCurr('0000000000000',cdsCRVALOR.AsFloat * 100); // VALOR NOMINAL DO TITULO 127..139
         Registro := Registro + Formatar('033',3); // BANCO ENCARREGADO DA COBRANÇA 140..142
         Registro := Registro + '00000';  // 143..147
         Registro := Registro + Formatar('05',2); // ESPÉCIE DO TITULO 148..149
         Registro := Registro + Formatar('N',1); // IDENT. DE ACEITE DO TITULO 150..150
         Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit1.Text)); // DATA DE EMISSAO DO TITULO
         Registro := Registro + '00'; // Primeira Instrucao 157..158
         Registro := Registro + '00'; // Segunda Instrucao  159..160
         if cdsBancoJUROS.AsFloat > 0 then
           Registro := Registro + FormatCurr('0000000000000',cdsBancoJUROS.AsFloat * 100) // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO
         else
           Registro := Registro + FormatCurr('99999999999',11); // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO 161..173

         Registro := Registro + Formatar('',6); // DATA LIMITE P/ CONCESSÃO DESC. 174..179
         Registro := Registro + FormatCurr('0000000000000',11); // VALOR DESCONTO A SER CONCEDIDO 180..192
         Registro := Registro + FormatCurr('0000000000000',11); // VALOR DE IOF  193..205
         Registro := Registro + FormatCurr('0000000000000',11); // VALOR DO ABATIMENTO

         if dm.cds_socio.FieldByName('TIPO_DOC').AsString = 'F' then
           Registro := Registro + Formatar('01',2); // IDENT. TIPO INSCRIÇÃO DO SACADO

         if dm.cds_socio.FieldByName('TIPO_DOC').AsString = 'J' then
           Registro := Registro + Formatar('02',2); // IDENT. TIPO INSCRIÇÃO DO SACADO

         if dm.cds_socio.FieldByName('TIPO_DOC').AsString = '' then
           Registro := Registro + Formatar('98',2); // IDENT. TIPO INSCRIÇÃO DO SACADO    219..220

         if dm.cds_socio.FieldByName('TIPO_DOC').AsString <> '' then
           Registro := Registro + Formatar(RemoveChar(cdsCRDOCUMENTO.AsString),14,false,'0') // CGC/CPF DO SACADO
         else
           Registro := Registro + Formatar('00000000000000',14); // CGC/CPF DO SACADO 221..234

         Registro := Registro + Formatar(cdsCRNOME.AsString, 40,true,' '); // NOME DO SACADO 235..374
         Registro := Registro + Formatar(cdsCRRUA.AsString, 40); // ENDEREÇO DO SACADO 275..315

         Registro := Registro + Formatar(cdsCRBAIRRO.AsString,12); // BAIRRO DO SACADO
         Registro := Registro + Formatar(RemoveChar(cdsCRCEP.AsString),8,false,'0'); // CEP DO SACADO
         Registro := Registro + Formatar(cdsCRMUNICIPIO.AsString,15,true); // CIDADE DO SACADO
         Registro := Registro + Formatar(cdsCRUF.AsString,2,false); // ESTADO DO SACADO
         Registro := Registro + Formatar('',40,true,' '); // NOME DO SACADOR/AVALISTA
         Registro := Registro + '00'; // Prazo p/ Protesto
         Registro := Registro + Formatar('',1); //FILLER - BRANCOS
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO

         Remessa.Add(Registro);
         cTotalTitulos:=cTotalTitulos+Titulos[NumeroRegistro].ValorDocumento;
         NumeroRegistro := NumeroRegistro + 1;
         numeroTitulo := numeroTitulo + 1;
         numerodoc := numerodoc + 1;

      end;
      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+ // IDENT. DO REGISTRO
                  Formatar(' ',393,False,' ')+ // USO DO BANCO
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0')); // QUANTIDADE TOTAL DE REGISTROS

   end;

   Result := TRUE;
end;

function TfGeraLote.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo): string;
var
   ANossoNumero,
   ACodigoAgencia,
   ACodigoCedente: string;
begin

   {
    A primeira parte do código de barras será calculada automaticamente.
    Ela é composta por:
    Código do banco (3 posições)
    Código da moeda = 9 (1 posição)
    Dígito do código de barras (1 posição) - Será calculado e incluído pelo componente
    Fator de vencimento (4 posições) - Obrigatório a partir de 03/07/2000
    Valor do documento (10 posições) - Sem vírgula decimal e com ZEROS à esquerda

    A segunda parte do código de barras é um campo livre, que varia de acordo
    com o banco. Esse campo livre será calculado por esta função (que você deverá
    alterar de acordo com as informações fornecidas pelo banco).
   }

   {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}

   with ATitulo do
   begin
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0');
      ACodigoCedente := Formatar(Cedente.CodigoCedente,7,false,'0');
      ANossoNumero := Formatar(NossoNumero,13,false,'0');
   end;

   Result := ACodigoAgencia + ACodigoCedente + ANossoNumero + '1' + '7';
end;

function TfGeraLote.GetNomeBanco: string;
begin
   Result := NomeBanco;
end;

function TfGeraLote.LerRetorno(var ACobranca: TgbCobranca;
  Retorno: TStringList): boolean;
var
//   ACodigoBanco,
//   ANomeCedente,
//   ATipoInscricao : string;
   NumeroRegistro : integer;
   ATitulo : TgbTitulo;
begin
   NumeroRegistro := 0;
   ATitulo := TgbTitulo.Create(nil);

   TRY

      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         case length(Retorno[0]) of
            240 :
               begin
                 Result := FALSE;
                 Raise Exception.CreateFmt('Processamento de arquivo retorno não está disponível para o banco %s - %s',[CodigoBanco, NomeBanco]);
               end;
            400 :
               begin
                  LayoutArquivo := laCNAB400;
                  Result := LerRetornoCNAB400(ACobranca, Retorno);
               end
         else
            begin
               LayoutArquivo := laOutro;
               Raise Exception.CreateFmt('Tamanho de registro inválido: %d',[length(Retorno[0])]);
            end;
         end;
      end;

      ATitulo.Free;
      Result := TRUE
   EXCEPT
      ATitulo.Free;
      Result := FALSE;
      Raise; //Propaga o erro
   END;
end;

function TfGeraLote.LerRetornoCNAB400(var ACobranca: TgbCobranca;
  Retorno: TStringList): boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao,
   ATipoOcorrencia : string;
   NumeroRegistro : integer;
   ATitulo : TgbTitulo;
begin
   NumeroRegistro := 0;
   ATitulo := TgbTitulo.Create(nil);

   TRY
      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         if length(Retorno[0]) <> 400 then
         begin
            LayoutArquivo := laOutro;
            Raise Exception.CreateFmt('Tamanho de registro diferente de 400 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
         end;

         LayoutArquivo := laCNAB400;

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança com layout CNAB400');

         { Lê registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);

         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));

         if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
            DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));


         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],109,8)));

         {Lê os registros DETALHE}
         {Processa até o penúltimo registro porque o último contém apenas o TRAILLER}
         for NumeroRegistro := 1 to (Retorno.Count - 2) do
         begin
            {Confirmar se o tipo do registro é 1}
            if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
               Continue; {Não processa o registro atual}

            { Ler títulos do arquivo retorno}
            {Dados do titulo}
            with ATitulo do
            begin
               {Dados do cedente do título}
               with Cedente do
               begin
                  ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],2,2);
                  if ATipoInscricao = '01' then
                     TipoInscricao := tiPessoaFisica
                  else if ATipoInscricao = '02' then
                     TipoInscricao := tiPessoaJuridica
                  else
                     TipoInscricao := tiOutro;
                  NumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],4,14);
                  ContaBancaria.Banco.Codigo := ACodigoBanco;
                  Nome := ANomeCedente;
               end; {with ACedente}

               SeuNumero := Copy(Retorno.Strings[NumeroRegistro],38,25);
               NumeroDocumento := Copy(Retorno.Strings[NumeroRegistro],117,10);

               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataOcorrencia := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataOcorrencia := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));

               ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;
             //  ValorCredito := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],254,13))/100;
               ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
               ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100;
               ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],241,13))/100;
               ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;
               ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)))/100;

               {Dados que variam de acordo com o banco}

               {Nosso número SEM DÍGITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,11);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],18,4);
               Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],22,1);

               {Tipo de ocorrência}
               ATipoOcorrencia := Copy(Retorno.Strings[NumeroRegistro],109,2);
               OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],109,2); //@w
               DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal); //@w
               {case StrToInt(ATipoOcorrencia) of
                  01: TipoOcorrencia := toRetornoRegistroConfirmado;
                  02: TipoOcorrencia := toRetornoBaixado;
                  03: TipoOcorrencia := toRetornoAbatimentoConcedido;
                  04: TipoOcorrencia := toRetornoAbatimentoCancelado;
                  05: TipoOcorrencia := toRetornoVencimentoAlterado;
                  06: TipoOcorrencia := toRetornoDadosAlterados;
                  07: TipoOcorrencia := toRetornoDadosAlterados;
                  08: TipoOcorrencia := toRetornoDadosAlterados;
                  09: TipoOcorrencia := toRetornoDadosAlterados;
                  10: TipoOcorrencia := toRetornoDadosAlterados;
                  11: TipoOcorrencia := toRetornoDadosAlterados;
                  12: TipoOcorrencia := toRetornoDadosAlterados;
                  20: TipoOcorrencia := toRetornoTituloEmSer;
                  21: TipoOcorrencia := toRetornoLiquidado;
                  22: TipoOcorrencia := toRetornoLiquidado;
                  23: TipoOcorrencia := toRetornoBaixado;
                  24: TipoOcorrencia := toRetornoBaixado;
                  25: TipoOcorrencia := toRetornoProtestado;
                  26: TipoOcorrencia := toRetornoEncaminhadoACartorio;
                  27: TipoOcorrencia := toRetornoProtestoSustado;
                  28: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                  29: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                  30: TipoOcorrencia := toRetornoDadosAlterados;
                  31: TipoOcorrencia := toRetornoDebitoTarifas;
                  32: TipoOcorrencia := toRetornoDebitoTarifas;
                  33: TipoOcorrencia := toRetornoBaixaOuLiquidacaoEstornada;
                  99: TipoOcorrencia := toRetornoRegistroRecusado;
               else
                  TipoOcorrencia := toRetornoOutrasOcorrencias;
               end; {case StrToInt(ATipoOcorrencia)}

               MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],302,2);
               DescricaoMotivoRejeicaoComando :=
                 VerificaMotivoRejeicaoComando(MotivoRejeicaoComando,
                 OcorrenciaOriginal);
               Carteira := Copy(Retorno.Strings[NumeroRegistro],108,1);
               ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],189,13))/100;
               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));
//               Sacado.Nome := Copy(Retorno.Strings[NumeroRegistro],347,30);

            end; {with ATitulo}

            {Insere o título}
            Titulos.Add(ATitulo);
         end;
      end;

      ATitulo.Free;
      Result := TRUE
   EXCEPT
      ATitulo.Free;
      Result := FALSE;
      Raise; {Propaga o erro}
   END;
end;

function TfGeraLote.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando,
  sOcorrenciaOriginal: String): String;
begin
 if sMotivoRejeicaoComando = '  ' then begin
    Result:='';
    Exit;
 end;
 if (sOcorrenciaOriginal = '03') or (sOcorrenciaOriginal = '26') then
   case StrToInt(sMotivoRejeicaoComando) of
     04: Result:='04-Código de ocorrência não permitida para carteira' ;
     05: Result:='05-Código de ocorrência inválido' ;
     06: Result:='06-Código de cedente inválido' ;
     07: Result:='07-Nosso número não informado' ;
     08: Result:='08-Nosso número duplicado no movimento' ;
     09: Result:='09-Código da carteira inválido' ;
     10: Result:='10-Código da carteira indevido p/ modalidade de cobrança' ;
     15: Result:='15-Data de vencimento inválida' ;
     16: Result:='16-Título vencido há mais de 1 (um) ano' ;
     18: Result:='18-Valor do título inválido/não confere' ;
     19: Result:='19-Espécie de título inválido para cobrança' ;
     20: Result:='20-Espécie de título indevida para a carteira' ;
     22: Result:='22-Data de emissão inválida' ;
     23: Result:='23-Data de emissão posterior a data de entrada' ;
     25: Result:='25-Juros de mora inválido' ;
     27: Result:='27-Valor do desconto maior ou igual ao valor do título' ;
     28: Result:='28-valor do abatimento/desconto inválido' ;
     29: Result:='29-Valor do abatimento maior ou igual ao valor do título' ;
     34: Result:='34-Cancelamento de instrução de protesto para título enviado à cartório' ;
     38: Result:='38-Nome de sacado não informado' ;
     39: Result:='39-Endereço do sacado não informado' ;
     40: Result:='40-Portadora indevida para carteira' ;
     41: Result:='41-CEP sem praça de cobrança (não localizado ou inválido)' ;
     42: Result:='42-CEP referente à cobrança a cargo de banco correspondente' ;
     51: Result:='51-Instrução para título não cadastrado' ;
     53: Result:='53-Entrada para título já cadastrado' ;
     65: Result:='65-Pedido de baixa não permitido para carteira' ;
     66: Result:='66-Pedido de débito não permitido para carteira' ;
     67: Result:='67-Novo vencimento inválido' ;
     68: Result:='68-Novo número de título irregular' ;
     69: Result:='69-Tipo de conta indevido para carteira' ;
     70: Result:='70-Instruções de cobrança conflitantes' ;
     71: Result:='71-Data para desconto inválida' ;
     72: Result:='72-Outros motivos (disponibilizado para futuras inserções)' ;
     74: Result:='74-Novo "uso da empresa" inválido' ;
     75: Result:='75-Entrada para título já liquidado' ;
     76: Result:='76-Conta cedente inativa - contatar agência' ;
     77: Result:='77-Espécie de título inválido para tipo de pessoa' ;
     78: Result:='78-Instruções já comandada anteriormente' ;
     79: Result:='79-Título remetido à cartório' ;
     80: Result:='80-Título já contém instrução de protesto' ;
     81: Result:='81-Baixa não permitida para cobrança' ;
     82: Result:='82-Alteração de vencimento não permitida para cobrança' ;
     94: Result:='94-Tarifa de contratação de título descontado' ;
   end;
 if (sOcorrenciaOriginal = '29') then
   case StrToInt(sMotivoRejeicaoComando) of
     01: Result:='01-Endereço incompleto ou inexistente' ;
     02: Result:='02-Endereço fora do perímetro urbano' ;
     03: Result:='03-Endereço não consta do guia da cidade' ;
     04: Result:='04-Sacado transferiu domicilio' ;
     05: Result:='05-Sacado não é encontrado no endereço' ;
     06: Result:='06-Sacado desconhecido' ;
     07: Result:='07-Sacado alega que não recebeu mercadoria' ;
     08: Result:='08-Sacado alega que devolveu mercadoria' ;
     09: Result:='09-Sacado pede dispensa de juros de mora' ;
     10: Result:='10-Sacado alega que já pagou ao cedente' ;
     11: Result:='11-Sacado não reconhece a dívida' ;
     12: Result:='12-Sacado discorda do valor do título' ;
     13: Result:='13-Sacado discorda do vencimento' ;
     14: Result:='14-sacado em concordata' ;
     15: Result:='15-Sacado em falência' ;
     16: Result:='16-Reapresentado' ;
     17: Result:='17-Entregue franco de pagamento ao sacado' ;
     18: Result:='18-Entregue franco de pagamento ao representante' ;
     19: Result:='19-A entrega franco de pagamento é difícil' ;
     20: Result:='20-Sacado pede prorrogação' ;
     21: Result:='21-Sacado pede desconto' ;
     22: Result:='22-Pedido desconto' ;
     23: Result:='23-Sacado mudou-se' ;
   end;
end;

function TfGeraLote.VerificaOcorrenciaOriginal(
  sOcorrenciaOriginal: String): String;
begin
  if sOcorrenciaOriginal='  ' then begin
     Result:='';
     Exit;
  end;
 case StrToInt(sOcorrenciaOriginal) of
   02: Result:='02-Entrada confirmada' ;
   03: Result:='03-Entrada rejeitada' ;
   04: Result:='04-Transferência de carteira-entrada' ;
   05: Result:='05-Transferência de carteira-baixa' ;
   06: Result:='06-Liquidação Normal' ;
   07: Result:='07-Liquidação por Conta' ;
   08: Result:='08-Liquidação por Saldo' ;
   09: Result:='09-Baixado conforme comando via arquivo - remessa' ;
   10: Result:='10-Baixado conforme comando agência' ;
   11: Result:='11-Títulos em Ser: Utilizado no arquivo existência mensal' ;
   12: Result:='12-Abatimento Concedido' ;
   13: Result:='13-Abatimento Cancelado' ;
   14: Result:='14-Vencimento alterado' ;
   15: Result:='15-Liquidação em Cartório' ;
   19: Result:='19-Confirmação de instrução de protesto' ;
   20: Result:='20-Cancelamento de instrução de protesto' ;
   23: Result:='23-Remessa a cartório' ;
   24: Result:='24-Retirada de cartório' ;
   25: Result:='25-Baixado por ter sido protestado' ;
   26: Result:='26-Instrução rejeitada' ;
   28: Result:='28-Débito de tarifa/custas' ;
   29: Result:='29-Ocorrência do sacado' ;
   30: Result:='30-Desconto concedido' ;
 end;

end;

//initialization
//RegisterClass(TgbBanco033);

procedure TfGeraLote.BitBtn1Click(Sender: TObject);
begin

 if Edit7.Text = '' then
 begin
   MessageDlg('Preencha o campo Lote ', mtWarning, [mbOK], 0);
   Edit7.SetFocus;
   exit;
 end;

 if ((Edit2.Text = '') and (Edit7.Text = '0' )) then
 begin
   MessageDlg('Não há Taxas a Ser Geradas ', mtWarning, [mbOK], 0);
   Edit2.SetFocus;
   exit;
 end;

 if Edit2.Text = '' then
 begin
   MessageDlg('Preencha o campo Grupo ', mtWarning, [mbOK], 0);
   Edit2.SetFocus;
   exit;
 end;
 if Edit3.Text = '' then
 begin
   MessageDlg('Preencha o campo Inscrição ', mtWarning, [mbOK], 0);
   Edit3.SetFocus;
   exit;
 end;

 if Edit1.Text = '' then
 begin
   MessageDlg('Preencha o campo Inscrição ', mtWarning, [mbOK], 0);
   Edit1.SetFocus;
   exit;
 end;

 if cdsCR.Active then
   cdsCR.Close;
  cdsCR.Params[0].Clear;
  cdsCR.Params[1].Clear;
  cdsCR.Params[2].Clear;
  cdsCR.Params[3].Clear;
  cdsCR.Params[4].Clear;
  cdsCR.Params[0].AsInteger := StrToInt(Edit7.Text);
  cdsCR.Params[1].AsString := Edit2.Text;
  cdsCR.Params[2].AsInteger := StrToInt(Edit3.Text);
  cdsCR.Params[3].AsInteger := StrToInt(Edit1.Text);
 if Edit4.Text <> '' then
  cdsCR.Params[4].AsInteger := StrToInt(Edit4.Text)
 else
  cdsCR.Params[4].AsInteger := 9999999;
  cdsCR.Open;
  {** Tratamento dos botões}
  if (not cdsCR.IsEmpty) then
  begin
    if dxButton2.Enabled = True then
      dxButton2.Enabled := False;
    if dxButton1.Enabled = false then
      dxButton1.Enabled := true;
    if BitBtn2.Enabled = False then
      BitBtn2.Enabled := True;
    if dxButton5.Enabled = false then
      dxButton5.Enabled := true;
  end
  else
  begin
    if dxButton2.Enabled = False then
      dxButton2.Enabled := True;
    if dxButton1.Enabled = true then
      dxButton1.Enabled := false;
    if BitBtn2.Enabled = true then
      BitBtn2.Enabled := false;
    if dxButton5.Enabled = true then
      dxButton5.Enabled := false;
  end;

  Label16.Caption := IntToStr(cdsCR.RecordCount);

end;

procedure TfGeraLote.BitBtn2Click(Sender: TObject);
begin
   if (not cds_par.Active) then
     cds_par.Open;
   if ( not cds_par.Locate('PARAMETRO','Banco Lotes', [loPartialKey])) then
   begin
     MessageDlg('insira o parâmetro "Banco Lotes"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
     exit;
   end
   else
   begin
      if cds_parPARAMETRO1.AsString = 'SANTANDER' then
      begin
        SANTANDER_LOTE;
      end;
      if cds_parPARAMETRO1.AsString = 'BRASIL' then
      begin
        BANCO_BRASIL;
      end;
      if cds_parPARAMETRO1.AsString = 'BANESPA' then
      begin
        BANCO_BANESPA;
      end;

   end;
end;

procedure TfGeraLote.BitBtn4Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  Edit5.Text := SaveDialog1.FileName;
end;

procedure TfGeraLote.SpeedButton2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit4.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit6.Text := dm.proc_cobNOME.AsString;
    end;
  finally
    dm.proc_cob.Close;
    fProcurar.Free;
    BitBtn3.Click;
  end; 
end;

procedure TfGeraLote.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (cdsCRGEROU.AsString = 'S') then
   begin
     DBGrid1.Canvas.Brush.Color := $00CEF3FF;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end
   else
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.Canvas.Brush.Color := $00FFEFDF;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfGeraLote.SpeedButton1Click(Sender: TObject);
var caminho : string;
begin
  fProcurar:=TfProcurar.Create(self,proc_banco);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'BANCO';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit8.Text := proc_bancoBANCO.AsString;
    end;
  finally
    proc_banco.Close;
    fProcurar.Free;
  end;
  {** Abro a tabela parametros pra ver qual o banco que ele usa para imprimir os boletos}
   if (not cds_par.Active) then
     cds_par.Open;
   if ( not cds_par.Locate('PARAMETRO','Banco Lotes', [loPartialKey])) then
   begin
    MessageDlg('insira o parâmetro "Banco Lotes"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
    exit;
   end;

  if (not cds_banco.Active) then
   cds_banco.Open;
   if ( not cds_banco.Locate('BANCO',cds_parPARAMETRO1.AsString, [loPartialKey])) then
   begin
   caminho := cds_parDESCRICAO.AsString ;
   end;
   if Edit8.Text = 'BANCO SANTANDER' then
   Edit5.Text := caminho  + '_LOTE' + edit7.Text + edit2.Text + '_' + FormatDateTime('dd_mm_yy', now) + '.txt';
   if Edit8.Text = 'BRASIL' then
     Edit5.Text := 'C:\BancoBrasil\CBR' + Edit2.Text + '_' + FormatDateTime('dd_mm_yy', now) + '.txt' ;

end;

procedure TfGeraLote.dxButton5Click(Sender: TObject);
begin
   contador := 0;
   if MessageDlg('Alterar numero desses Recibos ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
     if Edit9.Text = '' Then
     begin
        MessageDlg('Informe o numero do Recibo Inicial', mtWarning, [mbOK], 0);
        exit;
     end;
     // Altero o Número do Título
     if cds_numero.Active then
       cds_numero.Close;
      cds_numero.Params[0].Clear;
      cds_numero.Params[1].Clear;
      cds_numero.Params[2].Clear;
      cds_numero.Params[3].Clear;
      cds_numero.Params[4].Clear;
      cds_numero.Params[5].Clear;
      cds_numero.Params[0].AsInteger := StrToInt(Edit7.Text);
      cds_numero.Params[1].AsString := Edit2.Text;
      cds_numero.Params[2].AsInteger := StrToInt(Edit3.Text);
      cds_numero.Params[3].AsInteger := StrToInt(Edit1.Text);
      if Edit4.Text <> '' then
        cds_numero.Params[4].AsInteger :=  StrToInt(Edit4.Text)
      else
        cds_numero.Params[4].AsInteger := 9999999;
      cds_numero.Open;
      Label8.Caption := '';
      Label8.Caption := 'Atualizando Nº do Recibo...';
      Refresh;
      FlatGauge1.MaxValue := cds_numero.RecordCount;
      contador := StrToInt(Edit9.Text);
      cds_numero.First;
      while not cds_numero.Eof do
      begin
         cds_numero.Edit;
         cds_numeroTITULO.AsString := IntToStr(contador);
         contador := contador + 1;
         cds_numero.ApplyUpdates(0);
         FlatGauge1.Progress := FlatGauge1.Progress + 1;
         cds_numero.Next;
      end;
      FlatGauge1.Progress := 0;
      Label8.Caption := '';
      Label8.Caption := 'Nº do Recibo atualizados com SUCESSO...';
      Refresh;
   end;

   // Imprimindo Recibo.....
   if (not cds_par.Active) then
     cds_par.Open;

   if ( not cds_par.Locate('PARAMETRO','recibo', [loPartialKey])) then
   begin
    MessageDlg('insira o parâmetro "recibo"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
    exit;
   end;

   if cds_parPARAMETRO1.AsString = 'serra1' then
     if RadioGroup1.ItemIndex = 1 then
       VCLReport1.FileName := str_relatorio + 'recibo_artur.rep'
     else
       VCLReport1.FileName := str_relatorio + 'recibo_artur_soma.rep';


   if cds_parPARAMETRO1.AsString = 'serra2' then
     if RadioGroup1.ItemIndex = 1 then
       VCLReport1.FileName := str_relatorio + 'recibo_valinhos.rep'
     else
       VCLReport1.FileName := str_relatorio + 'recibo_valinhos_soma.rep';

   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;

   VCLReport1.Report.Params.ParamByName('LOTE').Value := StrToInt(Edit7.Text);
   VCLReport1.Report.Params.ParamByName('GP').Value := Edit2.Text;
   VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(Edit3.Text);
   VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(Edit1.Text);

   if Edit4.Text <> '' then
    VCLReport1.Report.Params.ParamByName('COB').Value := StrToInt(Edit4.Text)
   else
    VCLReport1.Report.Params.ParamByName('COB').Value:= 9999999;
   VCLReport1.Execute;
   Label8.Caption := '...';
end;

procedure TfGeraLote.Button1Click(Sender: TObject);
begin
 {  if cds.Active then
     cds.Close;
   cds.Params[0].AsInteger := StrToInt(Edit7.Text);
   cds.Params[1].AsString := Edit2.Text;
   cds.Params[2].AsInteger := StrToInt(Edit3.Text);
   cds.Params[3].AsInteger := StrToInt(Edit1.Text);
   cds.Params[4].AsInteger := StrToInt(Edit4.Text);
   cds.Open;}
end;

procedure TfGeraLote.Button2Click(Sender: TObject);
var
  cod : integer;
begin
{  cod := 5347;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdsCODIGO.AsInteger := cod;
    cds.ApplyUpdates(0);
    cod := cod + 1;
    cds.Next;
  end;
 }
   cds.ApplyUpdates(0);
end;

procedure TfGeraLote.DBGrid2TitleClick(Column: TColumn);
begin
  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfGeraLote.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varUsuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TfGeraLote.DSPGetProproperties(Sender: TObject;
  DataSet: TDataSet; out Properties: OleVariant);
begin
  { Declare Variants no uses }
  Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO',varUsuario,True]);
  Properties[1] := VarArrayOf(['MICRO',NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',
    IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;

procedure TfGeraLote.DSPUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
   str, str_For, strOriginal :string;
   i : Integer;
begin
  str := '';
  str_For := '';
  strOriginal := '';
  with DataSet do
  begin
    SetOptionalParam('DATA',Date,True);
    SetOptionalParam('HORA',Time,True);
      //aqui salvo na tabela
      str := 'INSERT INTO LOGS (MICRO, TABELA, USUARIO, DATA, HORA, data_set)';
      str := str +  ' VALUES(';
      str := str + '''' + GetOptionalParam('MICRO') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('TABELA') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('USUARIO') + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('mm/dd/yy',Date) + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('hh/nn/ss',Time) + '''';
      str := str + ', ';
      for i := 0 to dataset.FieldCount - 1 do
      begin
        //aqui se deletar o arquivo
        if (dataset.UpdateStatus = usDeleted) then
        begin
           if (str_For = '') then
            str_for := '----Deletado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
        // aqui se modificar o arquivo
        if (dataset.UpdateStatus = usUnModified) then
        begin
           if (str_For = '') then
            str_for := '----Modificado----' + #13+#10;
             strOriginal := strOriginal + dataset.FieldDefList[i].Name;
             if (dataset.Fields[i].AsString <> '') then
               strOriginal := strOriginal + ': ' + dataset.Fields[i].AsString
             else
               strOriginal := strOriginal + ': Vazio';
           DataSet.Next;
           if (not dataset.Fields[i].IsNull) then
           begin
             if (dataset.Fields[i].AsString = '') then
               str_For := str_For + strOriginal +  ' -> Vazio; '+#13+#10
             else
               str_For := str_For + strOriginal +  ' -> ' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
           strOriginal := '';
           DataSet.First;
        end;
        // aqui se inserir um novo
        if (dataset.UpdateStatus = usInserted) then
        begin
           if (str_For = '') then
            str_for := '----Adicionado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
      end;
      str := str + '''' + str_For + '''';
      str := str+  ')';
      dm.SQLObitos.ExecuteDirect(str);
  end;
end;

procedure TfGeraLote.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfGeraLote.BANCO_BANESPA;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, Registro : string;
   cTotalTitulos: Currency;
   NumeroRegistro, numeroTitulo, numerodoc : integer;
   valorpendente : double;
begin
     {** gero o arquivo remassa para enviar para o Banco }
     {** verifico se o a tabela recebimentos está aberta }
     if not cdsCR.Active then
     begin
      MessageDlg('antes de gerar os Boetos, selecione os socios para quem será '+#13+#10+'emitida a cobrança.', mtWarning, [mbOK], 0);
      exit;
     end;
     {** na remessa tem que constar os nomes dos 7 falecidos desse lote, aqui busco
     da tabela obitos os falecidos com parametros Lote e grupo}
     if cds_falec.Active then
        cds_falec.Close;
     cds_falec.Params[0].Clear;
     cds_falec.Params[1].Clear;
     cds_falec.Params[0].AsInteger := StrToInt(Edit7.Text);
     cds_falec.Params[1].AsString := Edit2.Text;
     cds_falec.Open;
     {** verifico se foi selecionado o banco e se ele existe na tabela BANCOS}
     if cdsBanco.Active then
       cdsBanco.Close;
     cdsBanco.Params[0].AsString := Edit8.Text;
     cdsBanco.Open;
     if cdsBanco.IsEmpty then
     begin
       MessageDlg('pôr favor selecione o banco', mtWarning, [mbOK], 0);
       exit;
     end;

    {** daqui pra baixo gero o arquivo remessa}
    NomArquivo := Edit5.Text;
    AssignFile(Arquivo, NomArquivo);
    Rewrite(Arquivo);
    Registro := '';


    if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     Append(Arquivo);
     Rewrite(arquivo);

         { GERAR REGISTRO-HEADER DA REMESSA }
        Registro := ('0'+ // IDENT.DO REGISTRO
                    '1'+ // IDENT.DO ARQUIVO DE REMESSA
                    'REMESSA'+ // IDENT. POR EXTENSO REMESSA
                    '01'+ // IDENT. DO TIPO DE SERVIÇO
                    Formatar('COBRANCA',15)+ // IDENT.POR EXTENSO TIPO SERVIÇO
                    Formatar(cdsBancoCOD_CED.AsString,11)+ // USO DO BANCO
                    Formatar('',09)+
                    Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ // NOME DA EMPRESA POR EXTENSO
                    Formatar('033',3,false,'0')+ // BANCO ENCARREGADO DA COBRANÇA
                    Formatar(cdsBancoBANCO.AsString,15,true,' ')+ // NOME DO BANCO POR EXTENSO
                    FormatDateTime('ddmmyy',StrToDateTime(DateEdit1.Text))+ // DATA DA GRAVAÇÃO DO ARQUIVO
                    Formatar('01600',5)+ // DENSIDADE DE GRAVAÇÃO
                    Formatar('BPI',3)+ // UNIDADE DENSIDADE GRAVAÇÃO
                    Formatar('',286)+ // USO DO BANCO
                    '000001'); // NUMERO SEQUENCIAL REGISTRO
         writeln(Arquivo, Registro);
         NumeroRegistro := 2;
         numeroTitulo := cdsBancoID_TITULO.asInteger;
         numerodoc := cdsBancoN_DOC.AsInteger;

    Label8.Caption := '';
    Label8.Caption := 'Gerando Remessa...';
    Refresh;
    FlatGauge1.MaxValue := cdsCR.RecordCount;

     cdsCR.First;
     while not cdsCR.Eof do
     begin
        { GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
           ATitulosTipoOcorrencia := '01';
           aTitulosEspecieDocumento := '05';
           aTitulosAceite:='N';
           Registro := '1'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('02',2); // IDENT.TIPO INSCR.EMPRESA 01-CPF 02-CNPJ
           Registro := Registro + Formatar(RemoveChar(dm.cds_empresaCNPJ.AsString),14); // NUMERO DO CGC DA EMPRESA
           Registro := Registro + Formatar(cdsBancoCOD_CED.AsString,11); {CODIGO CEDENTE}
           Registro := Registro + Formatar('',9); // FILLER - BRANCOS    29..37
           Registro := Registro + Formatar(cdsCRN_GRUPO.AsString + '-' +
                IntToStr(cdsCRINSCRICAO.AsInteger) +
                IntToStr(cdsCRN_LOTE.AsInteger) ,25,true,' '); // IDENT. DO TITULO NA EMPRESA  38..62
           Registro := Registro + Formatar(cdsBancoAGENCIA.AsString,3,false,'0'); //Número Agencia cedente 063..065
           Registro := Registro + Formatar(IntToStr(numeroTitulo),7,false,'0'); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
           if cds_CR.Active then
             cds_CR.Close;
           cds_CR.Params[0].AsInteger := cdsCRIDREC.AsInteger;
           cds_CR.Open;
           cds_CR.Edit;
           cds_CRCODIGO.AsInteger := numeroTitulo;
           cds_CR.ApplyUpdates(0);
           cds_CR.Close;
           Registro := Registro + Formatar('',10); // FILLER - BRANCOS  073..082
           Registro := Registro + Formatar('',25); // USO DO BANCO      083..107
           Registro := Registro + Formatar(cdsBancoCARTEIRA.AsString,1); // CODIGO DA CARTEIRA  108..108
           Registro := Registro + Formatar('01',2); // IDENT. DA TRANSACAO(OCORRENCIA)   109..110
           Registro := Registro + Formatar(IntToStr(numerodoc),10,false,'0'); // NUMERO DA DUPLICATA, ETC...111..120

           Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit2.Text)); // DATA DE VENCIMENTO DO TITULO  121..126
           Registro := Registro + FormatCurr('0000000000000',cdsCRVALOR.AsFloat * 100); // VALOR NOMINAL DO TITULO 127..139
           Registro := Registro + Formatar('033',3); // BANCO ENCARREGADO DA COBRANÇA 140..142
           Registro := Registro + '00000';  // 143..147
           Registro := Registro + Formatar('05',2); // ESPÉCIE DO TITULO 148..149
           Registro := Registro + Formatar('N',1); // IDENT. DE ACEITE DO TITULO 150..150
           Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit1.Text)); // DATA DE EMISSAO DO TITULO
           Registro := Registro + '00'; // Primeira Instrucao 157..158
           Registro := Registro + '00'; // Segunda Instrucao  159..160
           if cdsBancoJUROS.AsFloat > 0 then
             Registro := Registro + FormatCurr('0000000000000',cdsBancoJUROS.AsFloat * 100) // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO
           else
             Registro := Registro + FormatCurr('9999999999999',13); // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO 161..173

           Registro := Registro + Formatar('',6); // DATA LIMITE P/ CONCESSÃO DESC. 174..179
           Registro := Registro + FormatCurr('0000000000000',0); // VALOR DESCONTO A SER CONCEDIDO 180..192
           Registro := Registro + FormatCurr('0000000000000',0); // VALOR DE IOF  193..205
           Registro := Registro + FormatCurr('0000000000000',0); // VALOR DO ABATIMENTO

           if dm.cds_socio.FieldByName('TIPO_DOC').AsString = 'F' then
             Registro := Registro + Formatar('01',2); // IDENT. TIPO INSCRIÇÃO DO SACADO

           if dm.cds_socio.FieldByName('TIPO_DOC').AsString = 'J' then
             Registro := Registro + Formatar('02',2); // IDENT. TIPO INSCRIÇÃO DO SACADO

           if dm.cds_socio.FieldByName('TIPO_DOC').AsString = '' then
             Registro := Registro + Formatar('98',2); // IDENT. TIPO INSCRIÇÃO DO SACADO    219..220

           if dm.cds_socio.FieldByName('TIPO_DOC').AsString <> '' then
             Registro := Registro + Formatar(RemoveChar(cdsCRDOCUMENTO.AsString),14,false,'0') // CGC/CPF DO SACADO
           else
             Registro := Registro + Formatar('00000000000000',14); // CGC/CPF DO SACADO 221..234

           Registro := Registro + Formatar(cdsCRNOME.AsString, 40,true,' '); // NOME DO SACADO 235..374
           Registro := Registro + Formatar(cdsCRRUA.AsString, 40); // ENDEREÇO DO SACADO 275..315

           Registro := Registro + Formatar(cdsCRBAIRRO.AsString,12); // BAIRRO DO SACADO
           Registro := Registro + Formatar(RemoveChar(cdsCRCEP.AsString),8,false,'0'); // CEP DO SACADO
           Registro := Registro + Formatar(cdsCRMUNICIPIO.AsString,15,true); // CIDADE DO SACADO
           Registro := Registro + Formatar(cdsCRUF.AsString,2,false); // ESTADO DO SACADO
           Registro := Registro + Formatar('',40,true,' '); // NOME DO SACADOR/AVALISTA
           Registro := Registro + '00'; // Prazo p/ Protesto
           Registro := Registro + Formatar('',1); //FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           numeroTitulo := numeroTitulo + 1;
           numerodoc := numerodoc + 1;
           writeln(Arquivo, Registro);


           {------------  Arquivo Tipo 02 ---------------}

           Registro := '2'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',4); // FILLER - BRANCOS  02..06
           Registro := Registro + Formatar(cdsBancoVENCIMENTO.AsString,61,true,' '); // multa
           Registro := Registro + Formatar(cdsBancoVENCIMENTO1.AsString,60,true,' '); // multa
           Registro := Registro + Formatar(cdsBancoVENCIMENTO2.AsString,58,true,' '); // multa
           Registro := Registro + Formatar('',210); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           writeln(Arquivo, Registro);
           Registro := '2'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',4); // FILLER - BRANCOS  02..06
           Registro := Registro + Formatar('EM QUALQUER FILIAL.',61,true,' '); // multa
           Registro := Registro + Formatar('',328); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           writeln(Arquivo, Registro);

           {------------  Arquivo Tipo 03 ---------------}

           Registro := '3'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',29); // FILLER - BRANCOS
           Registro := Registro + Formatar('Grupo:' + cdsCRN_GRUPO.AsString,7); // Grupo
           Registro := Registro + Formatar('',4); // FILLER - BRANCOS
           Registro := Registro + Formatar('Nr.da Circular:',15); // lote
           Registro := Registro + Formatar (IntToStr(cdsCRN_LOTE.AsInteger),3, false, '0');// lote
           Registro := Registro + Formatar('',106); // FILLER - BRANCOS
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC1.AsString,39); // 1º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D1.AsDateTime);  //data 1º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO1.AsString,15); // dependente  1º falec
           Registro := Registro + Formatar('',159); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           writeln(Arquivo, Registro);

           Registro := '3'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',5); // FILLER - BRANCOS
           Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO1.AsString,79); // Local 1º falec
           // 2º falicido
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC2.AsString,39); // 2º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D2.AsDateTime); //data 2º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO2.AsString,15); // dependente  2º falec
           Registro := Registro + Formatar('',11); // FILLER - BRANCOS
           Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO2.AsString,79); // Local 2º falec
           Registro := Registro + Formatar('',149); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           writeln(Arquivo, Registro);
           Registro := '3'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',4); // FILLER - BRANCOS
           // 3º falicido
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC3.AsString,39); // 3º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D3.AsDateTime); //data 3º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO3.AsString,15); // dependente  3º falec
           Registro := Registro + Formatar('',11); // FILLER - BRANCOS
           Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO3.AsString,79); // Local 3º Falec
           // 4º falecido
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC4.AsString,39); // 4º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D4.AsDateTime);  //data 4º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO4.AsString,15); // dependente 4º falec
           Registro := Registro + Formatar('',159); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           writeln(Arquivo, Registro);
           Registro := '3'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',5); // FILLER - BRANCOS
           Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO4.AsString,79); // Local 4º Falec
           // 5º Falecido
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC5.AsString,39); // 5º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D5.AsDateTime);  //data 5º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO5.AsString,15); // dependente 5º falec
           Registro := Registro + Formatar('',11); // FILLER - BRANCOS
           Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO5.AsString,79); // Local 5º Falec
           Registro := Registro + Formatar('',149); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           writeln(Arquivo, Registro);
           Registro := '3'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',4); // FILLER - BRANCOS
           // 6º Falecido
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC6.AsString,39); // 6º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D6.AsDateTime);  //data 6º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO6.AsString,15); // dependente 6º falec
           Registro := Registro + Formatar('',11); // FILLER - BRANCOS
           Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO6.AsString,79); // Local Falec  6º falec
           // 7º Falecido
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC7.AsString,39); // 7º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D7.AsDateTime);  //data 7º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO7.AsString,15); // dependente
           Registro := Registro + Formatar('',159); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           writeln(Arquivo, Registro);

           Registro := '3'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',5); // FILLER - BRANCOS
           Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO7.AsString,79); // Local Falec  7º falec
           Registro := Registro + Formatar('',100); // FILLER - BRANCOS
           Registro := Registro + Formatar('|A TRANSPARENCIA E A NOSSA CREDIBILIDADE',40);
           Registro := Registro + Formatar('',169); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           NumeroRegistro := NumeroRegistro + 1;
           writeln(Arquivo, Registro);

           Registro := '3'; //  IDENT. DO REGISTRO
           Registro := Registro + Formatar('',393); // FILLER - BRANCOS
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
           writeln(Arquivo, Registro);
           NumeroRegistro := NumeroRegistro + 1;
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           cdsCR.Next;
        end;
        if cdsBanco.State in [dsBrowse] then
          cdsBanco.Edit;
        cdsBancoID_TITULO.asInteger := numeroTitulo + 1;
        cdsBanco.ApplyUpdates(0);
        NumeroRegistro := NumeroRegistro - 1;
       {------------------- Fim do arquivo   ----------------------}
        Registro := '9'; //  IDENT. DO REGISTRO
        Registro := Registro + Formatar('',393); // FILLER - BRANCOS
        Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
        writeln(Arquivo, Registro);
        CloseFile(arquivo);
        FlatGauge1.Progress := 0;
        Label8.Caption := '';
        Label8.Caption := 'Remessa gerada com SUCESSO...';
        Refresh;
end;

procedure TfGeraLote.BANCO_BRASIL;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite : string;
   cTotalTitulos: Currency;
   NumeroRegistro, numeroTitulo, numerodoc : integer;
   valorpendente : double;
begin
   // BANCO DO BRASIL //
   if (cdsbanco.Active) then
    cdsbanco.Close;
   cdsbanco.Params[0].AsString := Edit8.Text;
   cdsbanco.Open;
   {** Verifico se o Banco excolhido existe}
   if (cdsbanco.IsEmpty) then
   begin
     MessageDlg('Banco Inexistente.', mtWarning, [mbOK], 0);
    exit;
   end;
   {** Alimento a variavel para depois usála no campo nosso numero}
   numeroTitulo := cdsBancoID_TITULO.asInteger;
   //numerodoc := cdsBancoN_DOC.AsInteger;

   {** gero o arquivo remassa para enviar para o Banco Brasil}
   {** verifico se o a tabela recebimentos está aberta }
   if not cdsCR.Active then
   begin
      MessageDlg('antes de gerar os Boletos, selecione os socios para quem será '+#13+#10+'emitida a cobrança.', mtWarning, [mbOK], 0);
      exit;
   end;
   {** na remessa tem que constar os nomes dos 7 falecidos desse lote, aqui busco
   da tabela obitos os falecidos com parametros Lote e grupo}
   if cds_falec.Active then
      cds_falec.Close;
   cds_falec.Params[0].Clear;
   cds_falec.Params[1].Clear;
   cds_falec.Params[0].AsInteger := StrToInt(Edit7.Text);
   cds_falec.Params[1].AsString := Edit2.Text;
   cds_falec.Open;
   {** verifico se foi selecionado o banco e se ele existe na tabela BANCOS}
   if cdsBanco.Active then
     cdsBanco.Close;
   cdsBanco.Params[0].AsString := Edit8.Text;
   cdsBanco.Open;
   if cdsBanco.IsEmpty then
   begin
     MessageDlg('pôr favor selecione o banco', mtWarning, [mbOK], 0);
     exit;
   end;
   {** daqui pra baixo gero o arquivo remessa}
   NomArquivo := Edit5.Text;
   AssignFile(Arquivo, NomArquivo);
   Rewrite(Arquivo);
   Registro := '';

  { NomArquivo1 := 'C:\BancoBrasil\LISTA' + Edit2.Text + '_' + FormatDateTime('dd_mm_yy', now) + '.txt' ;
   AssignFile(arquivo1, NomArquivo1);
   Rewrite(Arquivo1);
   Registro1 := '';
   }

   if (not dm.cds_empresa.Active) then
     dm.cds_empresa.Open;
   Append(Arquivo);
   Rewrite(arquivo);

       { GERAR REGISTRO-HEADER DA REMESSA }

   Registro := ('01'+ // TIPO DE REGISTRO 1 a 2
            Formatar(cdsBancoAGENCIA.AsString,4,true,' ')+  //AGENCIA 3 a 6
            Formatar(cdsBancoDIGAGEN.AsString,1,true,' ')+ //DIGITO AGENCIA  7 a 7
            Formatar('0000',4)+ // Completar com zeros conta corrente
            Formatar(cdsBancoCONTACORRRENTE.AsString,5,false,'0')+  //CONTA CORRENTE  8 a 16
            Formatar(cdsBancoDIGITOCONTACORRENTE.AsString,1,true,' ')+ //DIGITO CONTA CORRENTE 17 a 17
            Formatar(cdsBancoCARTEIRA.AsString,3,false,'0')+ // Carteira  18 a 20
            Formatar(cdsBancoVARIACAO.AsString,3,false,'0')+ // Variação  21 a 23
            Formatar('000000',6)+ // 24 a 29 6 digitos Display  Numero do convenio com 6 posicoes completar com 0
            Formatar(dm.cds_empresaNOME_EMPRESA.AsString,45,true,' ')+ // Cedente  30 a 74 45 posições
            Formatar('LUTO SERRA',10)+ //75 a 84  sigla do cedente
            Formatar('01',2)+ // //85 a 86 Tipo de impressão bloqueto envelopado e expedido pelo BB
            // Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ // Cedente
            //Formatar(dm.cds_empresaENDERECO.AsString,60,true,' ')+//87 a 146 Endereço para devolução
            Formatar(Concat(dm.cds_empresaENDERECO.AsString) + (' ') +
               (dm.cds_empresaNR.AsString)+(' ')+(dm.cds_empresaBAIRRO.AsString),60,true)+
            Formatar(RemoveChar(dm.cds_empresaCEP.AsString),8,true,'0') + //147 a 154 CEP para devolução
            Formatar(Concat(dm.cds_empresaCIDADE.AsString,' ') + (dm.cds_empresaESTADO.AsString),20,true) +
            Formatar('0000001',7)+ {175 a 181  SEQUENCIAL DE REMESSA.. Numero da remessa efetuada
                                               pelo cliente. O Sistema nao controla tal numeracao,
                                               admitindo quebra na sequencia e repeticao de numero
                                               ja processado. Pode ser utilizado pelo cliente para
                                               seu proprio controle. }
            Formatar('N',1)+ //182  Indicador de comferencia do sequencial de remessa
                                                { S-confere sequencial N-nao confere }
            Formatar(' ',4)+//183 a 186
            //Formatar('CBR454',8,true,' ')+//187 a 194 Identificador do arquivo CBR454
            Formatar(Edit10.Text,8,true,' ')+//187 a 194 Identificador do arquivo CBR454
            Formatar(' ',46)+//195 a 197 Reservado para o banco
            Formatar(cdsBancoNUMEROCONVENIO.AsString,7,false,'7')+ //241 a 247 espaços
            Formatar(' ',3)+ //248 a 250 espaços
                   ''); // NUMERO SEQUENCIAL REGISTRO
   writeln(Arquivo, Registro);
   NumeroRegistro := 2;
   numeroTitulo := cdsBancoID_TITULO.asInteger;
   numerodoc := cdsBancoN_DOC.AsInteger;
   {------------  Arquivo Tipo 02 ---------------}
   Registro := '02'; //  Tipo de registro 1 a 2
   Registro := Registro + Formatar('2',1); // Tipo de fonte da instrucao 1 3 a 3
   Registro := Registro + Formatar('2',1); // Tipo de fonte da instrucao 2 4 a 4
   Registro := Registro + Formatar('2',1); // Tipo de fonte da instrucao 3 5 a 5
   Registro := Registro + Formatar('2',1); // Tipo de fonte da instrucao 4 6 a 6
   Registro := Registro + Formatar(cdsBancoVENCIMENTO.AsString,60,true,' '); // Instrucao 1  7 a 66
   Registro := Registro + Formatar(cdsBancoVENCIMENTO1.AsString,60,true,' '); // Instrucao 2  67 a 126
   Registro := Registro + Formatar(cdsBancoVENCIMENTO2.AsString,60,true,' '); // Instrucao 3  127 a 186
   Registro := Registro + Formatar(cdsBancoVENCIMENTO3.AsString,60,true,' '); // Instrucao 4  187 a 246
   Registro := Registro + Formatar(' ',4); // Espaços  246 a 250
   NumeroRegistro := NumeroRegistro + 1;
   writeln(Arquivo, Registro);
   Label8.Caption := '';
   Label8.Caption := 'Gerando Remessa...';
   Refresh;
   FlatGauge1.MaxValue := cdsCR.RecordCount;
   cdsCR.First;
   while not cdsCR.Eof do
   begin
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
     {------------  Arquivo Tipo 04 ---------------}
     Registro := '04'; //  IDENT. DO REGISTRO     1 a 2
     Registro := Registro + Formatar('2',1); // Tipo de fonte 3 a 3
     Registro := Registro + Formatar('2',1); // Tipo de fonte 4 a 4
     Registro := Registro + Formatar('2',1); // Tipo de fonte 5 a 5
     Registro := Registro + Formatar('',25); // FILLER - BRANCOS
     Registro := Registro + Formatar('Grupo:' + cdsCRN_GRUPO.AsString,7); // Grupo
     Registro := Registro + Formatar('',4); // FILLER - BRANCOS
     Registro := Registro + Formatar('Nr.da Circular:',15); // lote
     Registro := Registro + Formatar (IntToStr(cdsCRN_LOTE.AsInteger),3, false, '0');// lote
     Registro := Registro + Formatar('',106); // FILLER - BRANCOS
     Registro := Registro + Formatar('|Fal.' + cds_falecFALEC1.AsString,39); // 1º falecido
     Registro := Registro + Formatar('Em',3);
     Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D1.AsDateTime);  //data 1º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('dep.',4);
     Registro := Registro + Formatar(cds_falecPARENTESCO1.AsString,15); // dependente  1º falec
     Registro := Registro + Formatar('',15); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO1.AsString,79); // Local 1º falec
     // 2º falicido
     Registro := Registro + Formatar('|Fal.' + cds_falecFALEC2.AsString,39); // 2º falecido
     Registro := Registro + Formatar('Em',3);
     Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D2.AsDateTime);// 8 campos //data 2º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('dep.',4);
     Registro := Registro + Formatar(cds_falecPARENTESCO2.AsString,15); // dependente  2º falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO2.AsString,79); // Local 2º falec
     Registro := Registro + Formatar('',5); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     // 3º falicido
     Registro := Registro + Formatar('|Fal.' + cds_falecFALEC3.AsString,39); // 3º falecido
     Registro := Registro + Formatar('Em',3);
     Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D3.AsDateTime); //data 3º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('dep.',4);
     Registro := Registro + Formatar(cds_falecPARENTESCO3.AsString,15); // dependente  3º falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO3.AsString,79); // Local 3º Falec
     // 4º falecido
     Registro := Registro + Formatar('|Fal.' + cds_falecFALEC4.AsString,39); // 4º falecido
     Registro := Registro + Formatar('Em',3);
     Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D4.AsDateTime);  //data 4º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('dep.',4);
     Registro := Registro + Formatar(cds_falecPARENTESCO4.AsString,15); // dependente 4º falec
     Registro := Registro + Formatar('',15); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO4.AsString,79); // Local 4º Falec
     // 5º Falecido
     Registro := Registro + Formatar('|Fal.' + cds_falecFALEC5.AsString,39); // 5º falecido
     Registro := Registro + Formatar('Em',3);
     Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D5.AsDateTime);  //data 5º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('dep.',4);
     Registro := Registro + Formatar(cds_falecPARENTESCO5.AsString,15); // dependente 5º falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO5.AsString,79); // Local 5º Falec
     Registro := Registro + Formatar('',5); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     // 6º Falecido
     Registro := Registro + Formatar('|Fal.' + cds_falecFALEC6.AsString,39); // 6º falecido
     Registro := Registro + Formatar('Em',3);
     Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D6.AsDateTime);  //data 6º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('dep.',4);
     Registro := Registro + Formatar(cds_falecPARENTESCO6.AsString,15); // dependente 6º falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO6.AsString,79); // Local Falec  6º falec
     // 7º Falecido
     Registro := Registro + Formatar('|Fal.' + cds_falecFALEC7.AsString,39); // 7º falecido
     Registro := Registro + Formatar('Em',3);
     Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D7.AsDateTime);  //data 7º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('dep.',4);
     Registro := Registro + Formatar(cds_falecPARENTESCO7.AsString,15); // dependente
     Registro := Registro + Formatar('',15); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('Cart:' + cds_falecREGISTRO7.AsString,79); // Local Falec  7º falec
     Registro := Registro + Formatar('',100); // FILLER - BRANCOS
     Registro := Registro + Formatar('|A TRANSPARENCIA E A NOSSA CREDIBILIDADE',40);
     Registro := Registro + Formatar('',25); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',245); // FILLER - BRANCOS
     writeln(Arquivo, Registro);
     NumeroRegistro := NumeroRegistro + 1;
     {**------------  Arquivo Tipo 05  ---------------}
     {**Refere-se à parcelas em atrazo}
     if cdsCRTOT_PENDENTE.AsInteger > 0 then
     begin
         Registro := '05'; //  IDENT. DO REGISTRO
         Registro := Registro + Formatar('2',1); // Tipo de fonte
         Registro := Registro + Formatar('2',1); // Tipo de fonte
         Registro := Registro + Formatar('2',1); // Tipo de fonte
         Registro := Registro + Formatar('2',1); // Tipo de fonte
         Registro := Registro + Formatar('',60); // FILLER - BRANCOS
         Registro := Registro + Formatar('',60); // FILLER - BRANCOS
         Registro := Registro + Formatar('',60); // FILLER - BRANCOS
         Registro := Registro + Formatar('CONTEM ' + IntToStr(cdsCRTOT_PENDENTE.AsInteger) +
                ' PARCELA(S) EM ATRASO', 60);
         Registro := Registro + Formatar('',4); // FILLER - BRANCOS
         writeln(Arquivo, Registro);
         NumeroRegistro := NumeroRegistro + 1;
     end;
     {------------  Arquivo Tipo 11  ---------------}
     Registro := '11'; //  Tipo de registro 1 a 2
     Registro := Registro + Formatar('3',1); // IDENT.TIPO INSCR.EMPRESA 1-CPF 2-CNPJ 3-Isento 3 a 3
     Registro := Registro + Formatar('000000000000000',15); // Isento preencher com Zeros 4 a 18
     Registro := Registro + Formatar(cdsCRNOME.AsString,40,true,' '); // NOME DO SACADO  19 a 78 {O Certo é 60 }
     Registro := Registro + Formatar(cdsCRN_GRUPO.AsString + '-' +
          IntToStr(cdsCRINSCRICAO.AsInteger) +
          IntToStr(cdsCRN_LOTE.AsInteger) ,20,true,' '); // IDENT. DO TITULO NA EMPRESA  38..62
     Registro := Registro + Formatar(cdsCRRUA.AsString + '-' + cdsCRBAIRRO.AsString, 60); // ENDEREÇO DO SACADO 79 a 138
     //Registro := Registro + Formatar(cdsCRBAIRRO.AsString,12); // BAIRRO DO SACADO
     Registro := Registro + Formatar(RemoveChar(cdsCRCEP.AsString),8,false,'0'); // CEP DO SACADO 139 a 146
     Registro := Registro + Formatar(cdsCRMUNICIPIO.AsString,18,true); // CIDADE DO SACADO
     Registro := Registro + Formatar(cdsCRUF.AsString,2,false); // ESTADO DO SACADO
     Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit1.Text)); // DATA DE EMISSAO DO TITULO
     Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit2.Text)); // DATA DE VENCIMENTO DO TITULO  121..126
     Registro := Registro + Formatar('N',1); //  ACEITE DO TITULO  N-sem aceite
     Registro := Registro + Formatar('RC',2); //  Especie de titulo  RC-recibo
     if cds_CR.Active then
       cds_CR.Close;
     cds_CR.Params[0].AsInteger := cdsCRIDREC.AsInteger;
     cds_CR.Open;
     cds_CR.Edit;
     cds_CRCODIGO.AsInteger := numeroTitulo;
     cds_CR.ApplyUpdates(0);
     Registro := Registro + Formatar(cdsBancoNUMEROCONVENIO.AsString, 7); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
     //     Registro := Registro + Formatar(IntToStr(numeroTitulo),10,false,'0'); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
     Registro := Registro + Formatar(IntToStr(cdsCRN_TITULO.AsInteger),10,false,'0'); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
     cds_CR.Close;
     //Registro := Registro + Formatar('D',1,true); // DV-nosso numero  193 a 193
     Registro := Registro + Formatar(intTostr(cdsCRN_TITULO.AsInteger),10,false,'0'); // Nr do titulo atribuido pelo cedente 15 casa  194 a 208
     Registro := Registro + Formatar('09',2); // Display Tipo de Moeda 209 a 210  09 Real
     Registro := Registro + Formatar('00000000000000000',17); // Quantidade de moeda variavel 211 a 225
     Registro := Registro + FormatCurr('0000000000000',cdsCRVALOR.AsFloat * 100); // Valor do titulo 226 a 240
     Registro := Registro + Formatar('00',2); // Prazo para protesto o  241 a 242
     Registro := Registro + Formatar('',6); // Espacos P/ Uso do banco  243 a 248
     Registro := Registro + Formatar('00',2); // Total de parcelas  249 a 250
     NumeroRegistro := NumeroRegistro + 1;
     numeroTitulo := numeroTitulo + 1;
     numerodoc := numerodoc + 1;
     writeln(Arquivo, Registro);
     FlatGauge1.Progress := FlatGauge1.Progress + 1;
     cdsCR.Next;
   end;
   if cdsBanco.State in [dsBrowse] then
     cdsBanco.Edit;
   cdsBancoID_TITULO.asInteger := numeroTitulo + 1;
   cdsBanco.ApplyUpdates(0);
   NumeroRegistro := NumeroRegistro - 1;
   //------------------- Fim do arquivo   ----------------------
   Registro := '99'; //  IDENT. DO REGISTRO
   Registro := Registro + Formatar(IntToStr(NumeroRegistro),15,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
   Registro := Registro + Formatar(' ',233); // FILLER - BRANCOS
   writeln(Arquivo, Registro);
   CloseFile(arquivo);
   // CloseFile(arquivo1);
   FlatGauge1.Progress := 0;
   Label8.Caption := '';
   Label8.Caption := 'Arquivo Remessa Banco Brasil gerada com SUCESSO...';
   Refresh;
end;

procedure TfGeraLote.SANTANDER_LOTE;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, Registro : string;
   cTotalTitulos: Currency;
   NumeroRegistro, numeroTitulo, numerodoc , numero: integer;
   valorpendente : double;
begin
     //** gero o arquivo remassa para enviar para o Banco
     //** verifico se o a tabela recebimentos está aberta
     if not cdsCR.Active then
     begin
      MessageDlg('antes de gerar os Boetos, selecione os socios para quem será '+#13+#10+'emitida a cobrança.', mtWarning, [mbOK], 0);
      exit;
     end;
     //** na remessa tem que constar os nomes dos 7 falecidos desse lote, aqui busco
     //da tabela obitos os falecidos com parametros Lote e grupo}
     if cds_falec.Active then
        cds_falec.Close;
     cds_falec.Params[0].Clear;
     cds_falec.Params[1].Clear;
     cds_falec.Params[0].AsInteger := StrToInt(Edit7.Text);
     cds_falec.Params[1].AsString := Edit2.Text;
     cds_falec.Open;
     //** verifico se foi selecionado o banco e se ele existe na tabela BANCOS
     if cdsBanco.Active then
       cdsBanco.Close;
     cdsBanco.Params[0].AsString := Edit8.Text;
     cdsBanco.Open;
     if cdsBanco.IsEmpty then
     begin
       MessageDlg('Favor Selecionar um Banco', mtWarning, [mbOK], 0);
       exit;
     end;

     if (Edit6.Text = '')then
     begin
       MessageDlg('Favor Selecionar um Cobrador', mtWarning, [mbOK], 0);
       exit;
     end;

    //** daqui pra baixo gero o arquivo remessa
    NomArquivo := Edit5.Text;
    AssignFile(Arquivo, NomArquivo);
    Rewrite(Arquivo);
    Registro := '';


    if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     Append(Arquivo);
     Rewrite(arquivo);

         // GERAR REGISTRO-HEADER DA REMESSA

        Registro := ('033'+ // 001 - 003	Código do Banco na compensação	N	003		353 / 008 / 033	o
                    '0000'+ // 004 - 007	Lote de serviço	N	004		0000
                    '0'+ // 008 - 008	Tipo de registro	N	001		0
                    Formatar('',08)+ // 009 - 016  Reservado (uso Banco)A 008 Brancos
                    '2' +    // 017 - 017	Tipo de inscrição da empresa	N	001		1 = CPF,  2 = CNPJ
                    '0' +  // este zero é para ficar o cnpj com 15 casas
                    Formatar(RemoveChar(dm.cds_empresaCNPJ.AsString),14) + //  018 – 032	Nº de inscrição da empresa	N	015
                    Formatar(cdsBancoCONTA.AsString,15,true,' ')+ //  033 – 047 Código de Transmissão N 015
                    Formatar('',25)+ // 048 - 072 Reservado (uso Banco) A 025 Brancos
                    Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ // 073 - 102  Nome da empresa A 030
                    Formatar(cdsBancoBANCO.AsString,30,true,' ')+ //103 - 132 Nome do Banco  A  030
                    Formatar('',10)+  //133 - 142 Reservado (uso Banco) A 010 Brancos
                    '1' +  //143 - 143 Código remessa N 001 1 = Remessa
                    FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text))+ // 144 - 151 Data de geração do arquivo N  008 DDMMAAAA

                    Formatar('',06)+//152 - 157 Reservado (uso Banco) A 006 Brancos
                    '000001' +  //158 - 163 Nº seqüencial do arquivo N  006
                    '040'  +    // 164 - 166 Nº da versão do layout do arquivo N   003  040
                    Formatar('',74) +
                    '');// 167 - 240 Reservado (uso Banco) A 074 Brancos

         writeln(Arquivo, Registro);

         NumeroRegistro := 1;
         numeroTitulo := cdsBancoID_TITULO.asInteger;
         numerodoc := cdsBancoN_DOC.AsInteger;


         // REGISTRO HEADER DO LOTE  REMESSA

         Registro := '033'+  // 001 - 003	Código do Banco na compensação	N	003		353 / 008 / 033
         '0001'+ // 004 - 007	Numero do lote remessa	N	004
         '1'+ //  008 - 008	Tipo de registro	N	001		1
         'R' + // 009 - 009	Tipo de operação 	A	001		R (Remessa)
         '01'+  // 010 - 011	Tipo de serviço	N	002		01 (Cobrança)
         Formatar('',02)+ // 012 - 013	Reservado (uso Banco)	A	002		Brancos
         '030' + //014 - 016	Nº da versão do layout do lote	N	003		030
         Formatar('',01)+ //017 - 017	Reservado (uso Banco) 	A	001		Brancos
         '2' + //018 - 018	Tipo de inscrição da empresa	N	001		1 =  CPF, 2 = CNPJ
         '0' +  // este zero é para ficar o cnpj com 15 casas
         Formatar(RemoveChar(dm.cds_empresaCNPJ.AsString),14)+ //019 - 033	Nº de inscrição da empresa	N	015
         Formatar('',20)+ //034 – 053	Reservado (uso Banco) 	A	020		Brancos
         Formatar(cdsBancoCONTA.AsString,15,true,' ')+ //  033 – 047 Código de Transmissão N 015
         Formatar('',05)+ //069 – 073	Reservado uso Banco	A	005		Brancos
         Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ //074 - 103	Nome do Cedente	A	030
         Formatar(cdsBancoVENCIMENTO1.AsString,40,true,' ') + // 104 - 143	Mensagem 1	A	040
         Formatar(cdsBancoVENCIMENTO2.AsString,40,true,' ') + // 144 - 183	Mensagem 2	A	040
         '00000000' + //184 - 191	Número remessa/retorno	N	008
         FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text))+ //192 - 199	Data da gravação remessa/retorno	N	008		DDMMAAAA
         Formatar('',41) ;//200 - 240	Reservado (uso Banco)	A	041		Brancos  
         numeroTitulo := numeroTitulo + 1;
         numerodoc := numerodoc + 1;
         writeln(Arquivo, Registro);


    Label8.Caption := '';
    Label8.Caption := 'Gerando Remessa...';
    Refresh;
    FlatGauge1.MaxValue := cdsCR.RecordCount;

     cdsCR.First;
     while not cdsCR.Eof do
     begin

       // GERAR REGISTRO DETALHE  - SEGMENTO P        TIPO 3

           ATitulosTipoOcorrencia := '01';
           aTitulosEspecieDocumento := '05';
           aTitulosAceite:='N';

           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353 / 008 / 033
           Registro := Registro + '0001'; //004 - 007	Numero do lote remessa	N	004			1
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3	2
           Registro := Registro + Formatar(IntToStr(NumeroRegistro ),5,false,'0');  // 009 - 013	Nº seqüencial do registro de lote	N	005			11
           Registro := Registro + 'P'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		P	13
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento remessa	N	002			14
           Registro := Registro + Formatar(cdsBancoAGENCIA.AsString,4,false,'0');// 018 –021	Agência do Cedente   	N	004
           Registro := Registro + Formatar(cdsBancoDIGAGEN.AsString,1,false,'0');// 022 –022	Dígito da Agência do Cedente	N	001
           Registro := Registro + Formatar(cdsBancoCONTACORRRENTE.AsString,9,false,'0');// 023 - 031	Número da conta corrente	N	009
           Registro := Registro + Formatar(cdsBancoDIGITOCONTACORRENTE.AsString,1,false,'0'); // 032 – 032	Dígito verificador da conta	N	001
           Registro := Registro + Formatar(cdsBancoCONTACORRRENTE.AsString,9,false,'0');// 033 - 041	Conta cobrança  	N	009
           Registro := Registro + Formatar(cdsBancoDIGITOCONTACORRENTE.AsString,1,false,'0'); // 042 - 042	Dígito da conta cobrança	N	001
           Registro := Registro + Formatar('',2); // 043 - 044	Reservado (uso Banco)	A	002		Brancos
           Registro := Registro + Formatar(IntToStr(cdsCRN_TITULO.AsInteger) ,12,false,'0');// 045 –057	Identificação do título no Banco  	N	013		Nosso Número 	15
           Registro := Registro + Formatar(IntToStr(cdsCRN_TITULO.AsInteger) + Modulo11(IntToStr(cdsCRN_TITULO.AsInteger)),1,false,'0');// // 045 –057	Identificação do título no Banco  	N	013		Nosso Número 	15
           Registro := Registro + '5'; // 058 - 058	Tipo de cobrança	N	001			5
           Registro := Registro + '1';// 059 - 059	Forma de Cadastramento 	N	001			6    1 com registro 2 sem registro
           Registro := Registro + '1';// 060 - 060	Tipo de documento 	N	001		1- Tradicional , 2- Escritural
           Registro := Registro + Formatar('',01);// 061 –061	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + Formatar('',01); // 062 - 062	Reservado (uso Banco) 	A	001		Brancos
           Registro := Registro + Formatar(IntToStr(cdsCRN_TITULO.AsInteger) ,15,false,'0'); // 063 - 077	Nº  do documento 	A	015		Seu número	16
           Registro := Registro + FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit2.Text)); // 078 - 085	Data de vencimento do título	N	008		DDMMAAAA	17
           Registro := Registro + FormatCurr('000000000000000',cdsCRVALOR.AsFloat * 100);// 086 - 100	Valor nominal do título	N	015	2	Decimais sem separador	18
           Registro := Registro + Formatar(cdsBancoAGENCIA.AsString,4,false,'0');   // 101 - 104	Agência encarregada da cobrança	N	004			19
           Registro := Registro + Formatar(cdsBancoDIGAGEN.AsString,1,false,'0');// 105 – 105	Dígito da Agência do Cedente	N	001			19
           Registro := Registro + Formatar('',01);// 106 - 106	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '17'; // 107 – 108	Espécie do título	N	002			20
           Registro := Registro + 'N'; // 109 - 109	Identif. de título Aceito/Nào Aceito	A	001		A- Aceite, N- Não Aceite
           Registro := Registro + FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text)); // 110 - 117	Data da emissão do título	N	008		DDMMAAAA
           Registro := Registro + '3'; // 118 - 118	Código do juros de mora	N	001			21
           Registro := Registro + '00000000' ;// 119 - 126	Data do juros de mora	N	008		DDMMAAAA	22
           Registro := Registro + '000000000000000' ;// 127 - 141	Valor da mora/dia  ou Taxa mensal	N	015	2	Decimais, sem separador	18
           Registro := Registro + '0' ;// 142 - 142	Código do desconto 1	N	001			23
           Registro := Registro + '00000000' ; // 143 - 150	Data de desconto 1	N	008		DDMMAAAA	23
           Registro := Registro + '000000000000000' ;// 151 - 165	Valor ou Percentual do desconto concedido	N	015	2	Decimais sem separador	18
           Registro := Registro + '000000000000000' ;// 166 - 180	Valor do IOF a ser recolhido	N	015	2	Decimais sem separador	18
           Registro := Registro + '000000000000000' ;// 181 - 195	Valor do abatimento	N	015	2	Decimais sem separador	18
           Registro := Registro + Formatar('',25); // 196 - 220	Identificação do título na empresa	A	025		Uso cedente(opcional)	24
           Registro := Registro + '0' ;// 221 - 221	Código para protesto	N	001			25
           Registro := Registro + '00' ;// 222 - 223	Número de dias para protesto	N	002
           Registro := Registro + '1';// 224 - 224	Código para Baixa/Devolução	N	001			26      // 3 até dia 01/10
           Registro := Registro + '0' ;// 225 – 225	Reservado (uso Banco)	N	001		Zero Fixo
           Registro := Registro + '05' ;// 226 - 227	Número de dias para Baixa/Devolução	N	002   // 00 até dia 01/10
           Registro := Registro + '00' ;//228 - 229	Código da moeda	N	002
           Registro := Registro + Formatar('',11);//230 –240	Reservado (uso Banco)	A	011		Brancos
           NumeroRegistro := NumeroRegistro + 1;
           numerodoc := numerodoc + 1;
           writeln(Arquivo, Registro);

           // GERAR REGISTRO DETALHE  - SEGMENTO Q

           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; //004 - 007 Numero do lote remessa  N  004
           Registro := Registro + '3'; // 008 - 008 Tipo de registro  N    001   3
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');
           Registro := Registro + 'Q'; //014 - 014 Cód. Segmento do registro detalhe A 001 P
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01' ;// 016 - 017	Código de movimento remessa	N	002			14


           // 18/01/18      // 018 - 018	Tipo de inscrição do sacado	N	001			29
           if(cdsCRTIPO_DOC.AsString = 'F') then
           begin
             Registro := Registro + ('1'); // 018 - 018	Tipo de inscrição do sacado	N	001			29
           end;

           if(cdsCRTIPO_DOC.AsString ='J') then
           begin
             Registro := Registro + ('2'); // 018 - 018	Tipo de inscrição do sacado	N	001			29
           end;


           // dia 18/01/18

           Registro := Registro + Formatar(RemoveChar(cdsCRDOCUMENTO.AsString),15,false,'0'); // 019 - 033	Número de inscrição do sacado	N	015			29

           Registro := Registro + Formatar(cdsCRNOME.AsString, 40,true,' '); // 034 - 073	Nome sacado	A	040
           Registro := Registro + Formatar(cdsCRRUA.AsString, 40); // 074 - 113	Endereço  sacado	A	040
           Registro := Registro + Formatar(cdsCRBAIRRO.AsString,15); // 114 - 128	Bairro  sacado	A	015
           Registro := Registro + Formatar(RemoveChar(cdsCRCEP.AsString),5,true,'0'); // 129 - 133	Cep  sacado	N	005
           Registro := Registro + Formatar(RemoveChar(cdsCRCEP.AsString),3,false,'0'); // 134 - 136	Sufixo do Cep do sacado	N	003
           Registro := Registro + Formatar(cdsCRMUNICIPIO.AsString,15,true); // 137 - 151	Cidade do sacado	A	015
           Registro := Registro + Formatar(cdsCRUF.AsString,2,false); // 152 - 153	Unidade da federação do sacado	A	002
           Registro := Registro + '0';// 154 - 154	Tipode inscrição sacador/avalista	N	001			29
           Registro := Registro + '000000000000000';// 155 - 169	Nº de inscrição sacador/avalista	N	015			29
           Registro := Registro + Formatar('',40);// 170 - 209	Nome do sacador/avalista	A	040			30
           Registro := Registro + '000' ;// 210 –212	Identificador de carne	N	003		         	28
           Registro := Registro + '000' ;// 213 –215	Sequencial da Parcela ou número inicial da parcela	N	003			28
           Registro := Registro + '000' ;// 216 –218	Quantidade total de parcelas	N	003			28
           Registro := Registro + '000' ;// 219 – 221	Número do plano	N	003			28
           Registro := Registro + Formatar('',19);// 222 - 240	Reservado (uso Banco)	A	019		Brancos
           writeln(Arquivo, Registro);

         // GERAR REGISTRO DETALHE  - SEGMENTO S

           Numero := 1 ;
           NumeroRegistro := NumeroRegistro + 1;
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + '.';
           Registro := Registro + Formatar('',23);
           Registro := Registro + Formatar('Grupo:' + cdsCRN_GRUPO.AsString,7); // Grupo
           Registro := Registro + Formatar('',4); // FILLER - BRANCOS
           Registro := Registro + Formatar('Nr.da Circular:',15);  // 059 - 098	Mensagem 6	A	040
           Registro := Registro + Formatar (IntToStr(cdsCRN_LOTE.AsInteger),3, false, '0');// lote
           Registro := Registro + Formatar('',166);
           writeln(Arquivo, Registro);


          // GERAR REGISTRO DETALHE OUTRA LINHA  - SEGMENTO S

           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('',219);
           writeln(Arquivo, Registro);


          // GERAR REGISTRO DETALHE OUTRA LINHA  - SEGMENTO S

            // 1º falecido

           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro ),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC1.AsString,39); // 1º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D1.AsDateTime);  //data 1º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO1.AsString,15); // dependente  1º falec
           Registro := Registro + Formatar('',149);// 015 - 015	Reservado
           writeln(Arquivo, Registro);
           // cartorio 1º Falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Cart:' + cds_falecREGISTRO1.AsString,79); // Local 1º falec
           Registro := Registro + Formatar('',140);
           writeln(Arquivo, Registro);
           // 2º falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro ),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC2.AsString,39); // 2º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D2.AsDateTime);  //data 2º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO2.AsString,15); // dependente  2º falec
           Registro := Registro + Formatar('',149);// 015 - 015	Reservado
           writeln(Arquivo, Registro);
           // cartorio 2º Falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Cart:' + cds_falecREGISTRO2.AsString,79); // Local 1º falec
           Registro := Registro + Formatar('',140);
           writeln(Arquivo, Registro);
           // 3º falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro ),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC3.AsString,39); // 3º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D3.AsDateTime);  //data 3º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO3.AsString,15); // dependente  3º falec
           Registro := Registro + Formatar('',149);// 015 - 015	Reservado
           writeln(Arquivo, Registro);
           // cartorio 3º Falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Cart:' + cds_falecREGISTRO3.AsString,79); // Local 3º falec
           Registro := Registro + Formatar('',140);
           writeln(Arquivo, Registro);
           // 4º falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro ),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC4.AsString,39); // 4º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D4.AsDateTime);  //data 4º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO4.AsString,15); // dependente 4 º falec
           Registro := Registro + Formatar('',149);// 015 - 015	Reservado
           writeln(Arquivo, Registro);
           // cartorio 4º Falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Cart:' + cds_falecREGISTRO4.AsString,79); // Local 4º falec
           Registro := Registro + Formatar('',140);
           writeln(Arquivo, Registro);
           // 5º falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro ),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC5.AsString,39); // 5º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D5.AsDateTime);  //data 5º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO5.AsString,15); // dependente  5º falec
           Registro := Registro + Formatar('',149);// 015 - 015	Reservado
           writeln(Arquivo, Registro);
           // cartorio 5º Falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Cart:' + cds_falecREGISTRO5.AsString,79); // Local 5º falec
           Registro := Registro + Formatar('',140);
           writeln(Arquivo, Registro);
           // 6º falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro ),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC6.AsString,39); // 6º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D6.AsDateTime);  //data 6º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO6.AsString,15); // dependente  6º falec
           Registro := Registro + Formatar('',149);// 015 - 015	Reservado
           writeln(Arquivo, Registro);
           // cartorio 6º Falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Cart:' + cds_falecREGISTRO6.AsString,79); // Local 6º falec
           Registro := Registro + Formatar('',140);
           writeln(Arquivo, Registro);
           // 7º falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro ),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Fal.' + cds_falecFALEC7.AsString,39); // 7º falecido
           Registro := Registro + Formatar('Em',3);
           Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D7.AsDateTime);  //data 7º falec
           Registro := Registro + Formatar('',1); // FILLER - BRANCOS
           Registro := Registro + Formatar('dep.',4);
           Registro := Registro + Formatar(cds_falecPARENTESCO7.AsString,15); // dependente  7º falec
           Registro := Registro + Formatar('',149);// 015 - 015	Reservado
           writeln(Arquivo, Registro);
           // cartorio 7º Falecido
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|Cart:' + cds_falecREGISTRO7.AsString,79); // Local 7º falec
           Registro := Registro + Formatar('',140);
           writeln(Arquivo, Registro);
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           NumeroRegistro := NumeroRegistro + 1;
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('',219);
           writeln(Arquivo, Registro);
           ////////////
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           NumeroRegistro := NumeroRegistro + 1;
           Registro := Registro + '1';
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('|A TRANSPARENCIA E A NOSSA CREDIBILIDADE',40);
           Registro := Registro + Formatar('',179);
           writeln(Arquivo, Registro);
           ////////////
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('',219);
           writeln(Arquivo, Registro);
           /////////////
           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; // 004 - 007	Numero do lote remessa	N	004
           Registro := Registro + '3'; // 008 - 008	Tipo de registro	N	001		3
           NumeroRegistro := NumeroRegistro + 1;
           Numero := Numero + 1;
           Registro := Registro + Formatar(IntToStr(NumeroRegistro),5,false,'0');  // 009 - 013	Nº sequencial do registro de lote	N	005
           Registro := Registro + 'S'; // 014 - 014	Cód. Segmento do registro detalhe	A	001		S
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01'; // 016 - 017	Código de movimento	N	002
           Registro := Registro + '1';
           Registro := Registro + Formatar(IntToStr(Numero),2,false,'0');
           Registro := Registro + '4';
           Registro := Registro + Formatar('',219);
           writeln(Arquivo, Registro);
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           cdsCR.Next;
           NumeroRegistro := NumeroRegistro + 1;

     end;

        if cdsBanco.State in [dsBrowse] then
          cdsBanco.Edit;
        cdsBancoID_TITULO.asInteger := numeroTitulo + 1;
        cdsBanco.ApplyUpdates(0);
        NumeroRegistro := NumeroRegistro + 1;


       // TRAILER DE LOTE REMESSA      TIPO 5


         Registro :=  '033' ; //  001 - 003	Código do Banco na compensação	N	003		353 / 008 / 033
         Registro := Registro + '0001' ;// 004 - 007	Numero do lote remessa	N	004
         Registro := Registro + '5' ; // 008 - 008	Tipo de registro	N	001		5
         Registro := Registro + Formatar('',9) ;// 009 - 017	Reservado (uso Banco)	N	009		Brancos
         Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // 018 - 023	Quantidade de registros do lote	N	006
         Registro := Registro + Formatar('',217) ;// 024 - 240	Reservado (uso Banco)	A	217		Brancos
         writeln(Arquivo, Registro);

       // TRAILER DE ARQUIVO REMESSA

        NumeroRegistro := NumeroRegistro + 1;

        Registro :=  '033' ; // 001 - 003 Código do Banco na compensação N 003 353 / 008 / 033
        Registro := Registro + '9999' ;// 004 - 007  Numero do lote remessa N       004
        Registro := Registro + '9' ; //  008 - 008 Tipo de registro N   001 9
        Registro := Registro + Formatar('',9) ; //009 - 017 Reservado (uso Banco)  N      009  Brancos
        Registro := Registro + '000001' ; // 018 - 023  Quantidade de lotes do arquivo N  006 Registros tipo=1
        NumeroRegistro := NumeroRegistro + 1;  // aqui eu somo todos os tipos de  Linha
        Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
        Registro := Registro + Formatar('',211) ; //

       //------------------- Fim do arquivo   ----------------------


        writeln(Arquivo, Registro);
        CloseFile(arquivo);
        FlatGauge1.Progress := 0;
        Label8.Caption := '';
        Label8.Caption := 'Remessa gerada com SUCESSO...';
        Refresh;



end;

function TfGeraLote.Modulo11(Valor: String; Base: Integer; Resto: boolean): string;
var
   Soma : integer;
   Contador, Peso, Digito : integer;
begin
   Soma := 0;
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
      if Peso < Base then
         Peso := Peso + 1
      else
         Peso := 2;
   end;

   if Resto then
      Result := IntToStr(Soma mod 11)
   else
   begin
      Digito := 11 - (Soma mod 11);
      if (Digito > 9) then
         Digito := 0;
      Result := IntToStr(Digito);
   end


end;

end.
