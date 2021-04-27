unit uCad_Obitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, ExtCtrls, DBCtrls, StdCtrls, Mask, DB, Menus, dxCore,
  dxButton, XPMenu, Buttons, Grids, DBGrids, ComCtrls, rpcompobase,
  rpvclreport, DBClient, Provider, SqlExpr, DBLocal, DBLocalS, FMTBcd, DBxpress,
  JvExControls, JvLabel, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit,DateUtils;

type
  TCad_Obitos = class(TfPai)
    Panel2: TPanel;
    dxButton2: TdxButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBox4: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit33: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit34: TDBEdit;
    GroupBox7: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Label41: TLabel;
    TabSheet3: TTabSheet;
    Label42: TLabel;
    DBEdit42: TDBEdit;
    Label43: TLabel;
    DBEdit43: TDBEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    TabSheet4: TTabSheet;
    GroupBox9: TGroupBox;
    DBEdit44: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit45: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit47: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit48: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit49: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit50: TDBEdit;
    GroupBox16: TGroupBox;
    Edit1: TEdit;
    TabSheet5: TTabSheet;
    GroupBox17: TGroupBox;
    DBEdit51: TDBEdit;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    DBEdit52: TDBEdit;
    GroupBox20: TGroupBox;
    DBEdit53: TDBEdit;
    GroupBox21: TGroupBox;
    DBEdit54: TDBEdit;
    GroupBox22: TGroupBox;
    GroupBox23: TGroupBox;
    DBEdit55: TDBEdit;
    DBGrid2: TDBGrid;
    dxButton1: TdxButton;
    dxButton5: TdxButton;
    dxButton4: TdxButton;
    DBMemo1: TDBMemo;
    dtsrc_CR: TDataSource;
    GroupBox25: TGroupBox;
    DBEdit56: TDBEdit;
    GroupBox26: TGroupBox;
    DBEdit57: TDBEdit;
    GroupBox27: TGroupBox;
    DBEdit58: TDBEdit;
    DataSource2: TDataSource;
    dxButton6: TdxButton;
    proc_dep: TSQLClientDataSet;
    proc_depID_DEP: TIntegerField;
    proc_depID_SOCIO: TIntegerField;
    proc_depNOME_DEP: TStringField;
    proc_depFALECIDO: TStringField;
    proc_depCODPAR: TFloatField;
    proc_depDTNASC: TDateField;
    proc_depDTFALEC: TDateField;
    proc_depID_PAR: TIntegerField;
    proc_depDESCRICAO: TStringField;
    proc_depGRUPO: TStringField;
    proc_depN_INSCRICAO: TIntegerField;
    proc_depSOBRENOME: TStringField;
    sds_dep: TSQLDataSet;
    dsp_dep: TDataSetProvider;
    cds_dep: TClientDataSet;
    cds_depID_DEP: TIntegerField;
    cds_depID_SOCIO: TIntegerField;
    cds_depNOME_DEP: TStringField;
    cds_depFALECIDO: TStringField;
    cds_depCODPAR: TFloatField;
    cds_depDTNASC: TDateField;
    cds_depDTFALEC: TDateField;
    cds_depID_PAR: TIntegerField;
    sds_depID_DEP: TIntegerField;
    sds_depID_SOCIO: TIntegerField;
    sds_depNOME_DEP: TStringField;
    sds_depFALECIDO: TStringField;
    sds_depCODPAR: TFloatField;
    sds_depDTNASC: TDateField;
    sds_depDTFALEC: TDateField;
    sds_depID_PAR: TIntegerField;
    proc_depCARENCIA: TIntegerField;
    proc_depDTACADASTRO: TDateField;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    sds_Obitos: TSQLDataSet;
    sds_ObitosID: TIntegerField;
    sds_ObitosDATA_SISTEMA: TDateField;
    sds_ObitosVIA: TStringField;
    sds_ObitosFALECIDO: TStringField;
    sds_ObitosSEXO: TStringField;
    sds_ObitosCOR: TStringField;
    sds_ObitosDATA_NASC: TDateField;
    sds_ObitosIDADE: TStringField;
    sds_ObitosESTADO_CIVIL: TStringField;
    sds_ObitosPROFISSAO: TStringField;
    sds_ObitosNATURALIDADE: TStringField;
    sds_ObitosENDERECO_FAL: TStringField;
    sds_ObitosNUMERO: TStringField;
    sds_ObitosBAIRRO: TStringField;
    sds_ObitosCIDADE: TStringField;
    sds_ObitosUF: TStringField;
    sds_ObitosCEP: TStringField;
    sds_ObitosFONE_1: TStringField;
    sds_ObitosFONE_2: TStringField;
    sds_ObitosFONE_3: TStringField;
    sds_ObitosNOME_PAI: TStringField;
    sds_ObitosNOME_MAE: TStringField;
    sds_ObitosESTCIVIL_PAI: TStringField;
    sds_ObitosESTCIVIL_MAE: TStringField;
    sds_ObitosENDERECO_PAIS: TStringField;
    sds_ObitosNUMERO_PAIS: TStringField;
    sds_ObitosBAIRRO_PAIS: TStringField;
    sds_ObitosCIDADE_PAIS: TStringField;
    sds_ObitosUF_PAIS: TStringField;
    sds_ObitosCEP_PAIS: TStringField;
    sds_ObitosFONE1_PAIS: TStringField;
    sds_ObitosFONE2_PAIS: TStringField;
    sds_ObitosDEIXA_BENS: TStringField;
    sds_ObitosDEIXA_TESTAMENTO: TStringField;
    sds_ObitosELEITOR: TStringField;
    sds_ObitosCIDADE_ELEITORAL: TStringField;
    sds_ObitosCEMITERIO: TStringField;
    sds_ObitosDATA_SEP: TDateField;
    sds_ObitosHORA_SEP: TTimeField;
    sds_ObitosLOCAL_FAL: TStringField;
    sds_ObitosDATA_FAL: TDateField;
    sds_ObitosHORA_FAL: TTimeField;
    sds_ObitosMEDICO_1: TStringField;
    sds_ObitosMEDICO_2: TStringField;
    sds_ObitosCRM_1: TStringField;
    sds_ObitosCRM_2: TStringField;
    sds_ObitosCAUSA_MORTE: TStringField;
    sds_ObitosOBS: TStringField;
    sds_ObitosNUPCIAS: TStringField;
    sds_ObitosDATA_CASAMENTO: TDateField;
    sds_ObitosCONJUGE: TStringField;
    sds_ObitosLIVRO: TStringField;
    sds_ObitosFOLHAS: TStringField;
    sds_ObitosNUM: TStringField;
    sds_ObitosDOC_APRESENTADO: TStringField;
    sds_ObitosREGISTRO: TStringField;
    sds_ObitosDECLARANTE: TStringField;
    sds_ObitosRG_CPF: TStringField;
    sds_ObitosPROFISSAO_DECL: TStringField;
    sds_ObitosGRAU_PARENTESCO: TStringField;
    sds_ObitosFONE_DECL: TStringField;
    sds_ObitosENDERECO_DECL: TStringField;
    sds_ObitosCOD_FUNCIONARIO: TIntegerField;
    sds_ObitosTIPO: TStringField;
    sds_ObitosTIPO_DOC: TStringField;
    sds_ObitosSITUACAO: TStringField;
    sds_ObitosOBS_GERAIS: TBlobField;
    sds_ObitosPRAZO_PG: TIntegerField;
    sds_ObitosVENCIMENTO: TDateField;
    sds_ObitosVALOR_SERVICO: TFloatField;
    sds_ObitosPARCELA: TFloatField;
    sds_ObitosENTRADA: TFloatField;
    sds_ObitosTIPO_OBITO: TStringField;
    sds_ObitosTIPO_URNA: TStringField;
    sds_ObitosSERIE: TStringField;
    sds_ObitosNOTAFISCAL: TSmallintField;
    sds_ObitosN_FICHA: TStringField;
    sds_ObitosID_GRUPO: TIntegerField;
    sds_ObitosGRUPO: TStringField;
    sds_ObitosINSCRICAO: TIntegerField;
    sds_ObitosCODIGO: TIntegerField;
    sds_ObitosID_SOCIO: TIntegerField;
    sds_ObitosLOTE: TIntegerField;
    sds_ObitosID_DEP: TIntegerField;
    dsp_Obitos: TDataSetProvider;
    cds_Obitos: TClientDataSet;
    cds_ObitosID: TIntegerField;
    cds_ObitosDATA_SISTEMA: TDateField;
    cds_ObitosVIA: TStringField;
    cds_ObitosFALECIDO: TStringField;
    cds_ObitosSEXO: TStringField;
    cds_ObitosCOR: TStringField;
    cds_ObitosDATA_NASC: TDateField;
    cds_ObitosIDADE: TStringField;
    cds_ObitosESTADO_CIVIL: TStringField;
    cds_ObitosPROFISSAO: TStringField;
    cds_ObitosNATURALIDADE: TStringField;
    cds_ObitosENDERECO_FAL: TStringField;
    cds_ObitosNUMERO: TStringField;
    cds_ObitosBAIRRO: TStringField;
    cds_ObitosCIDADE: TStringField;
    cds_ObitosUF: TStringField;
    cds_ObitosCEP: TStringField;
    cds_ObitosFONE_1: TStringField;
    cds_ObitosFONE_2: TStringField;
    cds_ObitosFONE_3: TStringField;
    cds_ObitosNOME_PAI: TStringField;
    cds_ObitosNOME_MAE: TStringField;
    cds_ObitosESTCIVIL_PAI: TStringField;
    cds_ObitosESTCIVIL_MAE: TStringField;
    cds_ObitosENDERECO_PAIS: TStringField;
    cds_ObitosNUMERO_PAIS: TStringField;
    cds_ObitosBAIRRO_PAIS: TStringField;
    cds_ObitosCIDADE_PAIS: TStringField;
    cds_ObitosUF_PAIS: TStringField;
    cds_ObitosCEP_PAIS: TStringField;
    cds_ObitosFONE1_PAIS: TStringField;
    cds_ObitosFONE2_PAIS: TStringField;
    cds_ObitosDEIXA_BENS: TStringField;
    cds_ObitosDEIXA_TESTAMENTO: TStringField;
    cds_ObitosELEITOR: TStringField;
    cds_ObitosCIDADE_ELEITORAL: TStringField;
    cds_ObitosCEMITERIO: TStringField;
    cds_ObitosDATA_SEP: TDateField;
    cds_ObitosHORA_SEP: TTimeField;
    cds_ObitosLOCAL_FAL: TStringField;
    cds_ObitosDATA_FAL: TDateField;
    cds_ObitosHORA_FAL: TTimeField;
    cds_ObitosMEDICO_1: TStringField;
    cds_ObitosMEDICO_2: TStringField;
    cds_ObitosCRM_1: TStringField;
    cds_ObitosCRM_2: TStringField;
    cds_ObitosCAUSA_MORTE: TStringField;
    cds_ObitosOBS: TStringField;
    cds_ObitosNUPCIAS: TStringField;
    cds_ObitosDATA_CASAMENTO: TDateField;
    cds_ObitosCONJUGE: TStringField;
    cds_ObitosLIVRO: TStringField;
    cds_ObitosFOLHAS: TStringField;
    cds_ObitosNUM: TStringField;
    cds_ObitosDOC_APRESENTADO: TStringField;
    cds_ObitosREGISTRO: TStringField;
    cds_ObitosDECLARANTE: TStringField;
    cds_ObitosRG_CPF: TStringField;
    cds_ObitosPROFISSAO_DECL: TStringField;
    cds_ObitosGRAU_PARENTESCO: TStringField;
    cds_ObitosFONE_DECL: TStringField;
    cds_ObitosENDERECO_DECL: TStringField;
    cds_ObitosCOD_FUNCIONARIO: TIntegerField;
    cds_ObitosTIPO: TStringField;
    cds_ObitosTIPO_DOC: TStringField;
    cds_ObitosSITUACAO: TStringField;
    cds_ObitosOBS_GERAIS: TBlobField;
    cds_ObitosPRAZO_PG: TIntegerField;
    cds_ObitosVENCIMENTO: TDateField;
    cds_ObitosVALOR_SERVICO: TFloatField;
    cds_ObitosPARCELA: TFloatField;
    cds_ObitosENTRADA: TFloatField;
    cds_ObitosTIPO_OBITO: TStringField;
    cds_ObitosTIPO_URNA: TStringField;
    cds_ObitosSERIE: TStringField;
    cds_ObitosNOTAFISCAL: TSmallintField;
    cds_ObitosN_FICHA: TStringField;
    cds_ObitosID_GRUPO: TIntegerField;
    cds_ObitosGRUPO: TStringField;
    cds_ObitosINSCRICAO: TIntegerField;
    cds_ObitosCODIGO: TIntegerField;
    cds_ObitosID_SOCIO: TIntegerField;
    cds_ObitosLOTE: TIntegerField;
    cds_ObitosID_DEP: TIntegerField;
    proc_urna: TSQLClientDataSet;
    proc_urnaDESCRICAO: TStringField;
    sds_urna: TSQLDataSet;
    dsp_urna: TDataSetProvider;
    cds_urna: TClientDataSet;
    cds_urnaID_PRODUTO: TIntegerField;
    cds_urnaDESCRICAO: TStringField;
    cds_urnaID_FAMILIA: TIntegerField;
    cds_urnaID_MARCA: TIntegerField;
    cds_urnaD_COMPRA: TDateField;
    cds_urnaV_COMPRA: TFloatField;
    cds_urnaV_VENDA: TFloatField;
    cds_urnaVC_REAL: TFloatField;
    cds_urnaM_LUCRO: TFloatField;
    cds_urnaESTOQUE: TIntegerField;
    cds_urnaREPOSICAO: TIntegerField;
    cds_urnaUN: TStringField;
    sds_urnaID_PRODUTO: TIntegerField;
    sds_urnaDESCRICAO: TStringField;
    sds_urnaID_FAMILIA: TIntegerField;
    sds_urnaID_MARCA: TIntegerField;
    sds_urnaD_COMPRA: TDateField;
    sds_urnaV_COMPRA: TFloatField;
    sds_urnaV_VENDA: TFloatField;
    sds_urnaVC_REAL: TFloatField;
    sds_urnaM_LUCRO: TFloatField;
    sds_urnaESTOQUE: TIntegerField;
    sds_urnaREPOSICAO: TIntegerField;
    sds_urnaUN: TStringField;
    GroupBox24: TGroupBox;
    DBEdit59: TDBEdit;
    dxButton7: TdxButton;
    GroupBox36: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    Label62: TLabel;
    proc_cartorio: TSQLClientDataSet;
    proc_cartorioNOME: TStringField;
    proc_cartorioENDERECO: TStringField;
    proc_cartorioCIDADE: TStringField;
    proc_cartorioID_CARTORIO: TIntegerField;
    GroupBox37: TGroupBox;
    DBComboBox3: TDBComboBox;
    GroupBox38: TGroupBox;
    DBEdit83: TDBEdit;
    GroupBox41: TGroupBox;
    DBEdit86: TDBEdit;
    proc_end: TSQLClientDataSet;
    proc_endENDERECO: TStringField;
    proc_endESTADO: TStringField;
    proc_endCEP: TStringField;
    proc_endBAIRRO: TStringField;
    proc_endMUNICIPIO: TStringField;
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
    proc_medico: TSQLClientDataSet;
    proc_medicoCRM: TStringField;
    proc_medicoNOME_MEDICO: TStringField;
    VCLReport7: TVCLReport;
    dxButton10: TdxButton;
    GroupBox39: TGroupBox;
    DBEdit84: TDBEdit;
    Label63: TLabel;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    Label64: TLabel;
    DBEdit89: TDBEdit;
    Label65: TLabel;
    DBEdit90: TDBEdit;
    Label66: TLabel;
    DBComboBox4: TDBComboBox;
    Label73: TLabel;
    DBEdit93: TDBEdit;
    Label75: TLabel;
    DBEdit95: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    TabSheet6: TTabSheet;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label4: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit20: TDBEdit;
    Label76: TLabel;
    GroupBox3: TGroupBox;
    DBEdit70: TDBEdit;
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
    dsp_CR: TDataSetProvider;
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
    proc_mens: TSQLClientDataSet;
    proc_mensID_DEP: TIntegerField;
    proc_mensID_SOCIO: TIntegerField;
    proc_mensNOME_DEP: TStringField;
    proc_mensFALECIDO: TStringField;
    proc_mensCODPAR: TFloatField;
    proc_mensDTNASC: TDateField;
    proc_mensDTFALEC: TDateField;
    proc_mensID_PAR: TIntegerField;
    proc_mensCARENCIA: TIntegerField;
    proc_mensDTACADASTRO: TDateField;
    proc_mensDESCRICAO: TStringField;
    proc_mensGRUPO: TStringField;
    proc_mensN_INSCRICAO: TIntegerField;
    proc_mensSOBRENOME: TStringField;
    proc_mensTIPO_SOCIO: TStringField;
    DBComboBox5: TDBComboBox;
    Label70: TLabel;
    DBEdit85: TDBEdit;
    DBEdit68: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    DBEdit69: TDBEdit;
    DBEdit94: TDBEdit;
    Label74: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    Label78: TLabel;
    DBEdit41: TDBEdit;
    Label67: TLabel;
    DBEdit91: TDBEdit;
    Label68: TLabel;
    DBEdit92: TDBEdit;
    Label69: TLabel;
    DBEdit67: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label77: TLabel;
    GroupBox8: TGroupBox;
    DBComboBox6: TDBComboBox;
    DBEdit71: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit72: TDBEdit;
    Label46: TLabel;
    DBEdit73: TDBEdit;
    Label47: TLabel;
    DBEdit74: TDBEdit;
    Label81: TLabel;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Label82: TLabel;
    Label83: TLabel;
    Panel5: TPanel;
    DBEdit101: TDBEdit;
    Label84: TLabel;
    sdsLote: TSQLDataSet;
    sdsLoteCOUNT: TIntegerField;
    DBEdit102: TDBEdit;
    sds_ObitosGRUPO_LOTE: TStringField;
    cds_ObitosGRUPO_LOTE: TStringField;
    ComboBox1: TComboBox;
    sdsSerie: TSQLDataSet;
    sdsSerieMAX: TIntegerField;
    sdsProcLote: TSQLDataSet;
    sdsProcLoteMAX: TIntegerField;
    ProcScio1: TMenuItem;
    serieNFProc: TSQLDataSet;
    serieNFProcMAX: TSmallintField;
    BitBtn1: TBitBtn;
    DBEdit103: TDBEdit;
    Label85: TLabel;
    DBEdit104: TDBEdit;
    Label86: TLabel;
    GroupBox28: TGroupBox;
    DBEdit106: TDBEdit;
    SpeedButton16: TBitBtn;
    SpeedButton10: TBitBtn;
    SpeedButton11: TBitBtn;
    SpeedButton17: TBitBtn;
    SpeedButton15: TBitBtn;
    SpeedButton14: TBitBtn;
    SpeedButton18: TBitBtn;
    SpeedButton19: TBitBtn;
    SpeedButton21: TBitBtn;
    SpeedButton22: TBitBtn;
    SpeedButton1: TBitBtn;
    SpeedButton2: TBitBtn;
    SpeedButton3: TBitBtn;
    SpeedButton8: TBitBtn;
    SpeedButton4: TBitBtn;
    SpeedButton7: TBitBtn;
    SpeedButton13: TBitBtn;
    SpeedButton20: TBitBtn;
    SpeedButton6: TBitBtn;
    SpeedButton12: TdxButton;
    SpeedButton5: TBitBtn;
    Label24: TLabel;
    Label25: TLabel;
    Label48: TLabel;
    SpeedButton9: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    IntegerField10: TIntegerField;
    ClientDataSet1ID: TIntegerField;
    DBEdit105: TDBEdit;
    GroupBox29: TGroupBox;
    DBEdit107: TDBEdit;
    dbedtNACIONALIDADE: TDBEdit;
    lbl1: TLabel;
    dbedtRG_CPF: TDBEdit;
    grp1: TGroupBox;
    dbedtGRAU_PARENTESCO: TDBEdit;
    DBEdit40: TDBEdit;
    SQLClientDataSet1: TSQLClientDataSet;
    SQLClientDataSet1ID_LOTE: TIntegerField;
    SQLClientDataSet1LOTE: TIntegerField;
    SQLClientDataSet1GRUPO: TStringField;
    SQLClientDataSet1GEROU: TStringField;
    SQLClientDataSet1N_FALEC: TIntegerField;
    VCLReport1: TVCLReport;
    SpeedButton23: TSpeedButton;
    DBEdit46: TDBEdit;
    Label49: TLabel;
    GroupBox11: TGroupBox;
    Label79: TLabel;
    Label80: TLabel;
    Label87: TLabel;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    BitBtn5: TBitBtn;
    Label88: TLabel;
    DBEdit111: TDBEdit;
    Label89: TLabel;
    DBEdit112: TDBEdit;
    Label90: TLabel;
    DBEdit113: TDBEdit;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    btbpis: TBitBtn;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit43Exit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dtsrc_CRStateChange(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure DBComboBox4Exit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cds_CRDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DBEdit102Exit(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btbpisClick(Sender: TObject);
  private
    { Private declarations }
    procedure socio;
    procedure socio_Vinhedo;
    procedure socio_valinhos;
    procedure serie_obito;
    procedure dependente;
    procedure ExcluiUltimoLote;
    procedure ExcluiLoteAnterior;
    procedure AlteraSocio;
  public
      TD: TTransactionDesc;
    { Public declarations }

  end;

var
  Cad_Obitos: TCad_Obitos;
  Lote ,id : Integer;
  grupo : string;
  tip_plano : string;
  serie : string;
  numero : integer;
implementation

uses uCad_Filhos, UDM, uProcurar, ufDlgLogin, uRel_parcelas, uProc_socio,
  uPrincipal, uVendas, uProc_end, uNotaFalec, uCheques, uRelatorios,
  uSocio_Procura, sCtrlResize, udmconsulta;

{$R *.dfm}


function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
{Retorna a diferenca de dias entre duas datas}
Var Data: TDateTime;
    dia, mes, ano: Word;
begin
  if DataAtual < DataVenc then
  begin
   Result := 'A data data atual não pode ser menor que a data inicial';
  end
  else
  begin
   Data := DataAtual - DataVenc;
   DecodeDate( Data, ano, mes, dia);
//   Result := FloatToStr(Data)+' Dias';
   Result := FloatToStr(Data);
  end;
end;

procedure TCad_Obitos.dxButton1Click(Sender: TObject);
var
   ano, mes, dia: word;
   I, np1: integer;
   data,np2:string;
   Sobra, parcela, np: double;
begin
  {** se o campo série  da NF ñ for preenchido cancelo a operação.}
   if (dm.cds_ObitosSERIE_NF.AsString = '') then
   begin
     MessageDlg('A serie da Nota Fiscal deve ser informada.', mtWarning, [mbOK], 0);
     exit;
   end;

   {** se estiver inserindo ou editando testo se é sócio}
   if DtSrc.DataSet.State in [dsInsert, dsEdit] then
   begin
      {** Se for sócio ou reembolso exevuto as rotinas do botão gravar}
      if ((dm.cds_ObitosTIPO_OBITO.AsString = 'SOCIO')
        or (dm.cds_ObitosTIPO_OBITO.AsString = 'REEMBOLSO')) then
          BitBtn1.Click; {** esse botão executa o btnGravar que é um dxbuton e ñ tem onclik}
      {** se o óbito estiver em modo de inserção ou edição salvo.}
      if dm.cds_Obitos.State in [dsInsert, dsEdit] then
        dm.cds_Obitos.ApplyUpdates(0);
   end;

   {** Abro a tabela serie e adiciono 1 a serie da Nota fiscal}
   if (dm.cds_serie.Active) then
       dm.cds_serie.Close;
   dm.cds_serie.Params[0].Clear;
   dm.cds_serie.Params[1].Clear;
   dm.cds_serie.Params[2].Clear;
   dm.cds_serie.Params[3].Clear;
   dm.cds_serie.Params[0].AsString := dm.cds_ObitosSERIE_NF.AsString;
   dm.cds_serie.Params[3].AsString := 'OB';
   dm.cds_serie.Open;
   dm.cds_serie.Edit;
   dm.cds_serieULTIMO_NUMERO.AsInteger := dm.cds_ObitosNOTAFISCAL.AsInteger;
//26/11/14   dm.cds_serie.ApplyUpdates(0);
   {** gera contas a receber}
   data :=DateToStr(DM.cds_ObitosVENCIMENTO.AsDateTime);
   if DBEdit54.Text <>'' then
   begin
     Sobra := DM.cds_ObitosVALOR_SERVICO.Value - DM.cds_ObitosENTRADA.Value;
     if dm.cds_ObitosPARCELA.AsFloat > 1 then
       np:=dm.cds_ObitosPARCELA.Value - 1;
     if Sobra <> 0 then
     parcela := Sobra / np;
   end
   else
    parcela := DM.cds_ObitosVALOR_SERVICO.Value / DM.cds_ObitosPARCELA.Value;
   np:=dm.cds_ObitosPARCELA.Value;
   np2 := floatToStr(np);
   np1 := StrToInt(np2);
   if not dtsrc_CR.DataSet.Active then
      dtsrc_CR.DataSet.Open;
   dtsrc_CR.DataSet.Append;
   cds_CRVENCIMENTO.AsDateTime :=dm.cds_ObitosVENCIMENTO.AsDateTime;
   for I:=1 to np1 do
   begin
    if cds_CR.State <> dsinsert then
       cds_CR.Append;
    cds_CRID.AsInteger:=dm.cds_ObitosID.AsInteger;
    cds_CRPARCELA.AsInteger:=I;
    cds_CRVALOR_NF.Value:=dm.cds_ObitosVALOR_SERVICO.Value;
    cds_CRTITULO.AsInteger := dm.cds_ObitosNOTAFISCAL.AsInteger;
    cds_CRGRUPO.AsString := dm.cds_ObitosGRUPO.AsString;
    cds_CRID_SOCIO.AsInteger := dm.cds_ObitosID_SOCIO.AsInteger;
    cds_CRSITUACAO.AsString := 'Ativo';    
    cds_CRTIPO_DOC.AsString := 'OB';
    if DBEdit54.Text <> '' then
    begin
      if I=1 then
      begin
        cds_CRVENCIMENTO.AsDateTime :=dm.cds_ObitosVENCIMENTO.AsDateTime;
        cds_CRDATA_PAG.AsDateTime :=now;
        cds_CREMISSAO.AsDateTime :=now;
        cds_CRSTATUS.Value:='Pago';
        cds_CRVALOR_RECEBER.Value:=dm.cds_ObitosENTRADA.Value;
        cds_CRVALOR_1VIA.Value:=dm.cds_ObitosENTRADA.Value;
        cds_CRVALOR_PAGO.Value:=dm.cds_ObitosENTRADA.Value;
     // gera codigo para tab. recebimentos
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
     //********************************************************************
        cds_CR.Post;
        data := DateToStr(cds_CRVENCIMENTO.AsDateTime);
      end
      else
      begin
        decodedate(StrToDate(data), Ano, mes, dia);
        mes:=mes+1;
        if mes<=12 then
        begin
          cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_CREMISSAO.AsDateTime :=now;
          cds_CRSTATUS.Value:='Pendente';
          cds_CRVALOR_RECEBER.Value:=parcela;
          cds_CRVALOR_1VIA.Value:=parcela;
          cds_CRVALOR_PAGO.Value:=0;
          cds_CRVALOR_DIF.Value:=0;
          cds_CRVALOR_A_REC.Value:=0;
          cds_CRDESCONTO.Value:=0;
          cds_CRJUROS.Value:=0;
       // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_CR.Post;
          data := DateToStr(cds_CRVENCIMENTO.AsDateTime);
      end;
    end
    else
    begin
        decodedate(StrToDate(data), Ano, mes, dia);
        mes:=mes+1;
        if mes<=12 then
        begin
          cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_CRSTATUS.Value:='Pendente';
          cds_CREMISSAO.AsDateTime :=now;
          cds_CRVALOR_RECEBER.Value:=parcela;
          cds_CRVALOR_1VIA.Value:=parcela;
          cds_CRVALOR_PAGO.Value:=0;
          cds_CRVALOR_DIF.Value:=0;
          cds_CRVALOR_A_REC.Value:=0;
          cds_CRDESCONTO.Value:=0;
          cds_CRJUROS.Value:=0;
       // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_CR.Post;
          data := DateToStr(cds_CRVENCIMENTO.AsDateTime);
    end;
   end;
   cds_CR.ApplyUpdates(0);
    if cds_CR.Active then
      cds_CR.Close;
    cds_CR.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
    cds_CR.Params[1].AsString := 'OB';
    cds_CR.Open;
end;

procedure TCad_Obitos.dxButton2Click(Sender: TObject);
begin
  inherited;
  if Procurar = 'N' then Exit;
  fProcurar:=TfProcurar.Create(self,dm.proc_obitos);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'FALECIDO';
   if fProcurar.ShowModal=mrOk then
   begin
    Dm.cds_Obitos.Close;
    dm.cds_Obitos.Params[0].Clear;
    Dm.cds_Obitos.Params[0].AsInteger:=Dm.proc_obitosID.AsInteger;
    id := Dm.proc_obitosID.AsInteger;
    Dm.cds_Obitos.Open;
    ComboBox1.Text := dm.proc_obitosSERIE.AsString;
    serie := dm.proc_obitosSERIE.AsString;
    numero := dm.cds_ObitosCODIGO.AsInteger;
    grupo :=  Dm.cds_ObitosGRUPO.AsString;
    Lote := Dm.cds_ObitosLOTE.AsInteger;
    if DM.cds_funcionario.Active then
      dm.cds_funcionario.Close;
    dm.cds_funcionario.Params[0].AsInteger := dm.cds_ObitosCOD_FUNCIONARIO.AsInteger;
    dm.cds_funcionario.Open;
    Edit1.Text := dm.cds_funcionarioNOME.AsString;
    dm.cds_funcionario.Close;
    if DM.cds_filhos.Active then
      dm.cds_filhos.Close;
    dm.cds_filhos.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
    dm.cds_filhos.Open;

    if cds_CR.Active then
      cds_CR.Close;
    cds_CR.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
    cds_CR.Params[1].AsString := 'OB';
    cds_CR.Open;

   end;
   finally
    dm.proc_obitos.Close;
    fProcurar.Free;
   end;
   PageControl1.ActivePage := TabSheet1;

end;

procedure TCad_Obitos.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_funcionario);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
   begin
     if dm.cds_Obitos.State in [dsBrowse] then
       dm.cds_Obitos.Edit;
      dm.cds_ObitosCOD_FUNCIONARIO.AsInteger :=
        dm.proc_funcionarioCOD_FUNCIONARIO.AsInteger;
      Edit1.Text := dm.proc_funcionarioNOME.AsString;
   end;
   finally
    dm.proc_funcionario.Close;
    fProcurar.Free;
   end;
end;

procedure TCad_Obitos.btnIncluirClick(Sender: TObject);
//var
// id_obito : integer;
begin
 ComboBox1.Text := '';
 serie := '';
 numero := 0;
 if Incluir = 'N' then Exit;
 grupo := '';
 Lote := 0;
 Edit1.Text := '';
 dm.cds_filhos.Params[0].Clear;
 if not DataSource1.DataSet.Active then
    DataSource1.DataSet.Open;
  if dtsrc_CR.DataSet.Active then
     dtsrc_CR.DataSet.Close;
  inherited;
 //id_obito := dm.cds_ObitosID.AsInteger; 
 PageControl1.ActivePage := TabSheet1;
 //dm.cds_ObitosSERIE.AsString := 'B';
// dm.cds_ObitosTIPO_DOC.AsString := 'ñ Oficial';
 DBEdit2.SetFocus;
 DBRadioGroup1.ItemIndex := 1;
 DBRadioGroup2.ItemIndex := 1;
 DBRadioGroup3.ItemIndex := 0;
 dm.cds_ObitosDATA_SISTEMA.AsDateTime := now;
end;

procedure TCad_Obitos.dxButton3Click(Sender: TObject);
begin
  inherited;

{ if cds_par.Active then
   cds_par.Close;
 cds_par.Params[0].Clear;
 cds_par.Params[0].Value := dm.cds_ObitosTIPO_DOC.AsString;
 cds_par.Open;

 if cds_parPARAMETRO1.AsString = 'serra1' then
 begin
   if dm.cds_ObitosSERIE.AsString = 'A' then
   begin
     VCLReport1.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport1.Execute;
   end;
   if dm.cds_ObitosSERIE.AsString = 'B' then
   begin
     VCLReport2.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport2.Execute;
   end;
 end;

 if cds_parPARAMETRO1.AsString = 'serra2' then
 begin
   if dm.cds_ObitosSERIE.AsString = 'A' then
   begin
     VCLReport5.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport5.Execute;
   end;
   if dm.cds_ObitosSERIE.AsString = 'B' then
   begin
     VCLReport6.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport6.Execute;
   end;
 end;
 cds_par.Close;
 }
end;

procedure TCad_Obitos.SpeedButton1Click(Sender: TObject);
var   str_sql : string;
  TD: TTransactionDesc;
begin
 { if dm.cds_Obitos.State in [dsInsert] then
  begin
    if dm.cds_serie.State in [dsBrowse] then
      dm.cds_serie.Edit;
    dm.cds_serieULTIMO_NUMERO.AsInteger := dm.cds_serieULTIMO_NUMERO.AsInteger + 1;
    dm.cds_serie.ApplyUpdates(0);
    dm.cds_Obitos.ApplyUpdates(0);
  end;  }
  inherited;
  if dm.cds_filhos.State in [dsInsert] then
  begin
   dm.cds_filhos.ApplyUpdates(0);
  end;
      // 29/10/2014
  if dm.cds_filhos.State in [dsEdit] then
  begin
     TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    str_sql := 'UPDATE FILHOS SET NOME  = ' + QuotedStr(DBEdit42.Text);
    str_sql := str_sql + ' , DATA_NASC = ' + QuotedStr(DBEdit43.Text);
    str_sql := str_sql + ' WHERE ID = ' + QuotedStr(DBEdit105.Text);
    str_sql := str_sql + ' and ID_FILHOS = ' + QuotedStr(dm.cds_filhosID_FILHOS.AsString);
    dm.SQLObitos.StartTransaction(TD);
    try
        dm.SQLObitos.ExecuteDirect(str_sql);
        dm.SQLObitos.Commit(TD);
    except
        dm.SQLObitos.Rollback(TD);
        MessageDlg('Erro ao Alterar Filhos .', mtError, [mbOK], 0);
        exit;
    end;
  end;
//  DBEdit42.ReadOnly := True;
//  DBEdit43.ReadOnly := True;
//  DBEdit42.Color := clYellow;
//  DBEdit43.Color := clYellow;
//  SpeedButton2.Enabled := True;
//  SpeedButton1.Enabled := False;
//  SpeedButton2.SetFocus;
end;

procedure TCad_Obitos.SpeedButton2Click(Sender: TObject);
begin
  //inherited;
  if (DataSource1.DataSet.State in [dsBrowse, dsInactive]) then
  begin
    if not DataSource1.DataSet.Active then
       DataSource1.DataSet.open;
    DataSource1.DataSet.Append;
    DBEdit42.ReadOnly := False;
    DBEdit43.ReadOnly := False;
    DBEdit42.Color := clWindow;
    DBEdit43.Color := clWindow;
    SpeedButton1.Enabled := True;
    SpeedButton2.Enabled := False;
    DBEdit42.SetFocus;
  end;
end;

procedure TCad_Obitos.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este FILHO?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DataSource1.DataSet.Delete;
     (DataSource1.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TCad_Obitos.DBEdit43Exit(Sender: TObject);
begin
  inherited;
  if DataSource1.State in [dsInsert, dsEdit] then
    SpeedButton1.Click;
    SpeedButton2.Click;
    DBEdit42.SetFocus;
end;

procedure TCad_Obitos.btnGravarClick(Sender: TObject);
begin

 if Alterar = 'N' then
   Exit;
 {** se o campo série ñ for preenchido cancelo a operação.}
 if (ComboBox1.Text = '') then
 begin
   MessageDlg('É preciso informar a série.', mtInformation, [mbOK], 0);
   exit;
 end;

  if (DBComboBox1.Text = '') then
 begin
   MessageDlg('É preciso informar o Tipo do Obito.', mtInformation, [mbOK], 0);
   exit;
 end;


 if DBEdit61.Text = '' then
 begin
     if (sdsSerie.Active) then
        sdsSerie.Close;
    sdsSerie.Params[0].AsString := ComboBox1.Text;
    sdsSerie.Open;
    if dm.cds_Obitos.State in [dsBrowse] then
       dm.cds_Obitos.Edit;
    dm.cds_ObitosCODIGO.AsInteger := sdsSerieMAX.Value + 1;
    sdsSerie.Close;
    if dm.cds_Obitos.State in [dsInsert,dsEdit] then
    begin
      if ComboBox1.Text = 'A' then
       dm.cds_ObitosTIPO_DOC.AsString := 'Oficial';
      if ComboBox1.Text = 'B' then
       dm.cds_ObitosTIPO_DOC.AsString := 'ñ Oficial';
    end;
 end;

 if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;

 if dm.cds_Obitos.State in [dsInactive, dsBrowse] then
   exit;
 {** se estiver em modo de inserção e o tipo for SOCIO ou REENBOLSO executo a Procedure}
 if (dm.cds_Obitos.State in [dsInsert]) then
 begin
   if ((dm.cds_ObitosTIPO_OBITO.AsString = 'SOCIO') or (dm.cds_ObitosTIPO_OBITO.AsString = 'REEMBOLSO')) then
   begin
     if (dm.cds_ObitosGRUPO.AsString = '')then
     begin
       MessageDlg('É preciso informar o Grupo do Sócio', mtInformation, [mbCancel], 0);
       exit;
     end;
          // manoel 04/03/15
     if (dm.cds_empresaCIDADE.AsString = 'ARTUR NOGUEIRA') then
     begin
       socio;
     end;

     if (dm.cds_empresaCIDADE.AsString = 'VINHEDO') then
     begin
       socio_Vinhedo;
     end;

     if (dm.cds_empresaCIDADE.AsString = 'VALINHOS') then
     begin
       socio_valinhos;
     end;

   end;
   {
 end
 else
 begin
   //** ó cds está em modo de edição testo se o TIPO do Óbito é diferente de SOCIO ou REEMBOLSO
   //se for testo se o valor do campo TIPO_OBITO antes da alteração era SOCIO ou REEMBOLSO
   //se sim executo a procedure AlteraSocio(diminui 1 falec. na tab.lotes e na tabela Grupo
   if ((dm.cds_ObitosTIPO_OBITO.AsString <> 'SOCIO') and (dm.cds_ObitosTIPO_OBITO.AsString <> 'REEMBOLSO')) then
     if ((dm.cds_ObitosTIPO_OBITO.OldValue = 'SOCIO') or (dm.cds_ObitosTIPO_OBITO.OldValue = 'REEMBOLSO')) then
       AlteraSocio;
   //** ó cds está em modo de edição testo se o TIPO do Óbito é = de SOCIO ou REEMBOLSO
   //se for testo se o valor do campo TIPO_OBITO antes da alteração era <> SOCIO ou REEMBOLSO
   //se sim executo a procedure socio(adiciona 1 falec. na tab.lotes e na tabela Grupo
   if ((dm.cds_ObitosTIPO_OBITO.AsString = 'SOCIO') or (dm.cds_ObitosTIPO_OBITO.AsString = 'REEMBOLSO')) then
     if ((dm.cds_ObitosTIPO_OBITO.OldValue <> 'SOCIO') and (dm.cds_ObitosTIPO_OBITO.OldValue <> 'REEMBOLSO')) then
     begin
       //** Se o usuário ñ informou o Grupo do Sócio cancelo a operação
       if (dm.cds_ObitosGRUPO.AsString = '')then
       begin
         MessageDlg('É preciso informar o Grupo do Sócio', mtInformation, [mbCancel], 0);
         exit;
       end;
       socio;
       //** se o socio for de vinhedo executo a procedure socio_vinhedo(testa se o socio é
       //TRIMESTRAL se for adiciona 1 falec. no grupo A)
       if (dm.cds_empresaCIDADE.AsString = 'VINHEDO') then
        socio_Vinhedo;
     end;
    }
 end;
 if dm.cds_Obitos.State in [dsEdit] then
  if grupo <> dm.cds_ObitosGRUPO.AsString then // se o grupo for diferente ñ permitir, exigir exclusão...
  begin
    MessageDlg('Não é permitido alteração do grupo, se o Óbito foi lançado em '+#13+#10+'grupo errado, primeiro exclua o errado e lance-o novamente no '+#13+#10+'grupo correto...', mtWarning, [mbOK], 0);
    dm.cds_Obitos.Cancel;
    exit;
  end;
  //=======================================================================
  // salvo o óbito
  dm.cds_ObitosSERIE.AsString := ComboBox1.Text;
  //if dm.cds_Obitos.State in [dsInsert] then
  //serie_obito;
 try
  inherited;
   serie_obito;   {** Corrijo o numero da serie}
 except
   ShowMessage('Erro. ! dados não forão salvos. ')
 end;



  //=======================================================================
  //Marco o Dependente como Falecido se ele for sócio
  if (dm.cds_ObitosTIPO_OBITO.AsString = 'SOCIO') or (dm.cds_ObitosTIPO_OBITO.AsString = 'REEMBOLSO') then
    dependente;

  //****************************************************************************
  if DataSource1.State in [dsInsert] then
     DataSource1.DataSet.Cancel;

end;

procedure TCad_Obitos.DataSource1StateChange(Sender: TObject);
begin
  inherited;
  SpeedButton2.Enabled:=DataSource1.State in [dsBrowse,dsInactive];
  SpeedButton1.Enabled:=DataSource1.State in [dsInsert,dsEdit];
//   btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  SpeedButton3.Enabled:=DataSource1.State in [dsBrowse];
end;

procedure TCad_Obitos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not odd(dm.cds_filhos.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;

end;

procedure TCad_Obitos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DataSource1.DataSet.Active then
     DataSource1.DataSet.Close;
  if dtsrc_CR.DataSet.Active then
     dtsrc_CR.DataSet.Close;
  if dm.cds_serie.Active then
     dm.cds_serie.Close;
end;

procedure TCad_Obitos.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;
begin
  inherited;
  if not odd(cds_CR.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid2.Canvas.Brush.Color := $00FFEFDF;
    DBGrid2.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = cds_CRSTATUS then
   if cds_CRSTATUS.AsString = 'Pendente' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_CRSTATUS then
   if cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_CRVALOR_RECEBER then
   if cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_CRVALOR_RECEBER then
   if cds_CRSTATUS.AsString = 'Pendente' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TCad_Obitos.dxButton6Click(Sender: TObject);
begin
  inherited;
     VCLReport7.FileName := str_relatorio + 'recibo_despesas_obitos.rep';
     VCLReport7.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport7.Execute;
end;

procedure TCad_Obitos.dxButton5Click(Sender: TObject);
begin
 inherited;
 if perfil <> 'administrador' then
 begin
  MessageDlg('   Somente usuários Administradores tem '+#13+#10+'permição para excluir parcelas', mtInformation, [mbOK], 0);
  exit;
 end;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    if (cds_CR.State in [dsBrowse]) then
        cds_CR.Edit;
    cds_CRSITUACAO.AsString := 'Cancelado';
    cds_CR.ApplyUpdates(0);

    if cds_CR.Active then
      cds_CR.Close;
    cds_CR.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
    cds_CR.Params[1].AsString := 'OB';
    cds_CR.Open;
    //dtsrc_CR.DataSet.Delete;
    //(dtsrc_CR.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TCad_Obitos.dxButton4Click(Sender: TObject);
begin
  inherited;
  cds_cr.ApplyUpdates(0);
end;

procedure TCad_Obitos.dtsrc_CRStateChange(Sender: TObject);
begin
  inherited;
  dxButton1.Enabled:=dtsrc_CR.State in [dsBrowse,dsInactive];
  dxButton5.Enabled:=dtsrc_CR.State in [dsBrowse];
end;

procedure TCad_Obitos.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  dxButton2.Enabled:=dtsrc.State in [dsBrowse,dsInactive];
  dxButton10.Enabled:=dtsrc.State in [dsBrowse,dsInsert,dsEdit];
 // SpeedButton13.Enabled:=dtsrc.State in [dsEdit];
end;

procedure TCad_Obitos.FormShow(Sender: TObject);
var a :string ;
begin
  //inherited;

  sCtrlResize.CtrlResize(TForm(Cad_Obitos));
  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';

  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Óbitos';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
     Incluir  := 'S';
     Cancelar := 'S';
     btnIncluir.Enabled := true;
     btnCancelar.Enabled := true;
     SpeedButton2.Enabled := true;
  end
  else
  begin
     Incluir  := 'N';
     Cancelar := 'N';
     btnIncluir.Enabled := false;
     btnCancelar.Enabled := false;
     SpeedButton2.Enabled := false;
  end;

  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
  begin
     Excluir := 'S';
     //btnExcluir.Enabled := true;
     SpeedButton3.Enabled := true;
  end
  else
  begin
     Excluir := 'N';
     btnExcluir.Enabled := false;
     SpeedButton3.Enabled := false;
  end;

  if dm.cdsPermissaoALTERAR.AsString = 'S' then
  begin
     Alterar := 'S';
     btnGravar.Enabled := true;
     SpeedButton1.Enabled := true;
  end
  else
  begin
     Alterar := 'N';
     btnGravar.Enabled := false;
     SpeedButton1.Enabled := false;
  end;

  if dm.cdsPermissaoCONSULTAR.AsString = 'S' then
  begin
     Procurar := 'S';
     dxButton2.Enabled := true;
  end
  else
  begin
     Procurar := 'N';
     dxButton2.Enabled := false;
  end;

  if dm.cds_serie.Active then
     dm.cds_serie.Close;
  dm.cds_serie.Params[0].Clear;
  dm.cds_serie.Params[1].Clear;
  dm.cds_serie.Params[2].Clear;
  dm.cds_serie.Params[3].Clear;
  dm.cds_serie.Params[1].AsString := 'todos';
  dm.cds_serie.Params[2].AsString := 'OB';
  dm.cds_serie.Open;
  dm.cds_serie.first;
  ComboBox1.Items.Clear;
  DBComboBox4.Items.Clear;
  while not dm.cds_serie.eof do
  begin
     ComboBox1.Items.Add(dm.cds_serieSERIE.asstring);
     DBComboBox4.Items.Add(dm.cds_serieSERIE.asstring);
     dm.cds_serie.next;
  end;
  dm.cds_serie.Close;

  if (not dmconsulta.cds_est_civil.Active) then
    dmconsulta.cds_est_civil.Open;
  dmconsulta.cds_est_civil.First;
  DBComboBox5.Items.Clear;
  while not dmconsulta.cds_est_civil.Eof do
  begin
    DBComboBox5.Items.Add(dmconsulta.cds_est_civilDESCRICAO.AsString);
    DBComboBox6.Items.Add(dmconsulta.cds_est_civilDESCRICAO.AsString);
    dmconsulta.cds_est_civil.Next;
  end;
end;

procedure TCad_Obitos.PageControl1Change(Sender: TObject);
begin



 // inherited;
//    if perfil <> 'administrador' then
 //    Cad_Obitos.TabSheet5.Visible := false;
end;

procedure TCad_Obitos.btnExcluirClick(Sender: TObject);
var
  str_sql : string;
  TD: TTransactionDesc;
  vardeleta : string;
begin
  if Excluir = 'N' then
    Exit;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
     if perfil <> 'administrador' then
     begin
       MessageDlg('usuário não tem permissão para excluir registros, solicite permissão '+#13+#10+'ao usuário administrador..', mtWarning, [mbOK], 0);
       exit;
     end;
     {** se for de Sócio ou Reembolso é preciso corrigir o Lote antes de excluir}
     if ((dm.cds_ObitosTIPO_OBITO.AsString = 'SOCIO') or
        (dm.cds_ObitosTIPO_OBITO.AsString = 'REEMBOLSO')) then
     begin
        {** verifico se a cobrança já foi emitida caso tenha, ñ permito a exclusão
           dm.cds_lote - está ligado a tabela recebimentos}
        if dm.cds_lote.Active then
          dm.cds_lote.Close;
        dm.cds_lote.Params[0].Clear;
        dm.cds_lote.Params[1].Clear;
        dm.cds_lote.Params[0].AsInteger := dm.cds_ObitosLOTE.AsInteger;
        dm.cds_lote.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
        dm.cds_lote.Open;
        if not dm.cds_lote.IsEmpty then
        begin
          MessageDlg('Lote já foi emitido, Exclusão não pode ser efetuada.', mtError, [mbOK], 0);
          dm.cds_lote.Close;
          exit;
        end;
        {** sdsProcLote Busca o numero do ultimo Lote criado do Grupo em questão}
        if (sdsProcLote.Active) then
           sdsProcLote.Close;
        sdsProcLote.Params[0].AsString := dm.cds_ObitosGRUPO.AsString;
        sdsProcLote.Open;
        {** Testo se o Óbito é do ultimo Lote se for executo a procedure ExcluiUltimoLote}
        if (sdsProcLoteMAX.AsInteger = dm.cds_ObitosLOTE.AsInteger) then
           ExcluiUltimoLote
        {** se o Óbito não é do ultimo Lote executo a procedure ExcluiLoteAnterior}
        else
           ExcluiLoteAnterior;
        sdsProcLote.Close;
     end
     {** se o óbito não for de sócio nem reembolso é só deletar o registro}
     else
     begin
        DtSrc.DataSet.Delete;

    //  para nao excluir apenas mudar o status do OBITO
   {
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    str_sql := 'UPDATE OBITOS SET STATUS = ' + QuotedStr('N');
    str_sql := str_sql + ' WHERE ID = ' + IntToStr (id) ;
    dm.SQLObitos.StartTransaction(TD);
    try
        dm.SQLObitos.ExecuteDirect(str_sql);
        dm.SQLObitos.Commit(TD);
    except
        dm.SQLObitos.Rollback(TD);
        MessageDlg('Erro ao Excluir Obito.', mtError, [mbOK], 0);
        exit;
    end;
    }
       (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
       dm.cds_Obitos.Close;


     end;
  end;
end;

procedure TCad_Obitos.SpeedButton5Click(Sender: TObject);
begin
  inherited;
   if dm.cds_Obitos.State in [dsInactive] then
      exit;
   varonde := 2;
   fSocio_Procura.ShowModal;
   ComboBox1.SetFocus;
end;

procedure TCad_Obitos.DBComboBox1Exit(Sender: TObject);
begin
  inherited;

 { if ((DBComboBox1.Text = 'SOCIO') or (DBComboBox1.Text = 'REEMBOLSO')) then
     SpeedButton5.Click;
  DBComboBox2.SetFocus;
  }
end;

procedure TCad_Obitos.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
 if Key in ['.'] then Key := ',';
end;

procedure TCad_Obitos.btnCancelarClick(Sender: TObject);
begin
  //  movimenta o estoque de Urnas
 if dm.cds_ObitosESTOQUE.AsString = 'S' then
 begin
    if cds_urna.Active then
      cds_urna.Close;
    cds_urna.Params[0].AsString :=
       dm.cds_ObitosTIPO_URNA.AsString;
    cds_urna.Open;
    cds_urna.Edit;
    cds_urnaESTOQUE.AsInteger := cds_urnaESTOQUE.AsInteger + 1;
    cds_urna.ApplyUpdates(0);
    cds_urna.Close;
    dm.cds_ObitosESTOQUE.AsString := 'N';
 end;

 if Cancelar = 'N' then Exit;
  inherited;
  if dm.cds_Obitos.Active then
    dm.cds_Obitos.Close;
end;

procedure TCad_Obitos.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  DM.cds_filhos.IndexFieldNames := Column.FieldName;
end;

procedure TCad_Obitos.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_urna);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'DESCRICAO';
   if fProcurar.ShowModal=mrOk then
    if dm.cds_Obitos.State in [dsInactive] then exit;
    if dm.cds_Obitos.State in [dsBrowse] then
      dm.cds_Obitos.Edit;
    Dm.cds_ObitosTIPO_URNA.AsString := proc_urnaDESCRICAO.AsString;
   finally
    proc_urna.Close;
    fProcurar.Free;
   end;
end;

procedure TCad_Obitos.dxButton7Click(Sender: TObject);
begin
  inherited;
 // teste se foi preenchido o campo série_NF
 if dm.cds_ObitosSERIE_NF.AsString = '' then
 begin
  MessageDlg('é preciso informar a Série da Nota antes de lançar as despesas..', mtWarning, [mbCancel], 0);
  exit;
 end;

 // teste se foi preenchido o campo NF
 if dm.cds_ObitosNOTAFISCAL.IsNull then
 begin
  MessageDlg('é preciso informar a Nota Fiscal antes de lançar as despesas..', mtWarning, [mbCancel], 0);
  exit;
 end;

 if dm.cds_Obitos.State in [dsInsert] then
  DM.cds_ObitosVENCIMENTO.AsDateTime := date;
  fVendas := TfVendas.Create(Application);
  try
    fVendas.ShowModal;
  finally
    fVendas.Free;
  end;
end;

procedure TCad_Obitos.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if dm.cds_Obitos.State in [dsInactive] then exit;

  fProcurar:=TfProcurar.Create(self,proc_cartorio);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    if dm.cds_Obitos.State in [dsBrowse] then
      dm.cds_Obitos.Edit;
      Dm.cds_ObitosID_CARTORIO.AsInteger := proc_cartorioID_CARTORIO.AsInteger;
      Dm.cds_ObitosREGISTRO.AsString := proc_cartorioNOME.AsString;
      Dm.cds_ObitosENDERECO.AsString := proc_cartorioENDERECO.AsString;
      Dm.cds_ObitosCIDADE_1.AsString := proc_cartorioCIDADE.AsString;
   finally
    fProcurar.Free;
   end;
end;

procedure TCad_Obitos.dxButton8Click(Sender: TObject);
begin
  inherited;
{    VCLReport3.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport3.Execute;}
end;

procedure TCad_Obitos.dxButton9Click(Sender: TObject);
begin
  inherited;
{    VCLReport4.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport4.Execute;}
end;

procedure TCad_Obitos.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  if proc_end.Active then
     proc_end.Close;
  proc_end.Params[0].Clear;
  proc_end.Params[1].Clear;
  proc_end.Params[0].AsInteger := dm.cds_ObitosID_SOCIO.AsInteger;
  proc_end.Open;
  if proc_end.IsEmpty then
  begin
    proc_end.Close;
    proc_end.Params[0].Clear;
    proc_end.Params[1].Clear;
    proc_end.Params[1].AsInteger := 9999999;
    proc_end.Open;
  end;
  fProc_end:=TfProc_end.Create(self,proc_end);
  try
//   fProc_end.BtnProcurar.Click;
   fProc_end.EvDBFind1.DataField := 'ENDERECO';
   if fProc_end.ShowModal=mrOk then
   begin
     if dm.cds_Obitos.State in [dsInactive] then
       exit;
     if dm.cds_Obitos.State in [dsBrowse] then
       dm.cds_Obitos.Edit;
     dm.cds_ObitosENDERECO_FAL.AsString:=proc_endENDERECO.AsString;
     dm.cds_ObitosUF.AsString:=proc_endESTADO.AsString;
     dm.cds_ObitosCEP.AsString:=proc_endCEP.AsString;
     dm.cds_ObitosBAIRRO.AsString:=proc_endBAIRRO.AsString;
     dm.cds_ObitosCIDADE.AsString:=proc_endMUNICIPIO.AsString;
   end;
   finally
    proc_end.Close;
    fProc_end.Free;
   end;
end;

procedure TCad_Obitos.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_medico);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'CRM';
   if fProcurar.ShowModal=mrOk then
   begin
    if dm.cds_Obitos.State in [dsInsert, dsEdit] then
       dm.cds_Obitos.Edit;
    if dm.cds_Obitos.State in [dsInsert, dsEdit] then
    begin
      dm.cds_ObitosCRM_1.AsString := proc_medicoCRM.AsString;
      dm.cds_ObitosMEDICO_1.AsString := proc_medicoNOME_MEDICO.AsString;
    end;
   end;
   finally
    proc_medico.Close;
    fProcurar.Free;
   end;
end;

procedure TCad_Obitos.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_medico);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'CRM';
   if fProcurar.ShowModal=mrOk then
   begin
    if dm.cds_Obitos.State in [dsInsert, dsEdit] then
       dm.cds_Obitos.Edit;
    if dm.cds_Obitos.State in [dsInsert, dsEdit] then
    begin
      dm.cds_ObitosCRM_2.AsString := proc_medicoCRM.AsString;
      dm.cds_ObitosMEDICO_2.AsString := proc_medicoNOME_MEDICO.AsString;
    end;
   end;
   finally
    proc_medico.Close;
    fProcurar.Free;
   end;
end;

procedure TCad_Obitos.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  tipo := 'ob';
  fCheques := TfCheques.Create(Application);
  try
    fCheques.ShowModal;
  finally
    fCheques.Free;
  end;
end;

procedure TCad_Obitos.dxButton10Click(Sender: TObject);
begin
  inherited;
  fRelatorios := TfRelatorios.Create(Application);
  try
    fRelatorios.ShowModal;
  finally
    fRelatorios.Free;
  end;    
end;

procedure TCad_Obitos.SpeedButton13Click(Sender: TObject);
var
 totalFalec : integer;
begin
  inherited;


   {** se ñ for Sócio ñ permito a mudança de Lote}
   if ((dm.cds_ObitosTIPO_OBITO.AsString <> 'SOCIO')
   and (dm.cds_ObitosTIPO_OBITO.AsString <> 'REEMBOLSO')) then
   begin
     MessageDlg('Operação só é permitida para Sócios.', mtError, [mbCancel], 0);
     exit;
   end;
  {** Testo se o Lote e Grupo existem caso ñ cancelo a operação}
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := StrToInt(DBEdit84.Text);
  dm.cdsCircular.Params[1].AsString := DBEdit102.Text;
  dm.cdsCircular.Open;
  if (dm.cdsCircular.IsEmpty) then
  begin
    MessageDlg('Lote ou Grupo inexistente.', mtError, [mbCancel], 0);
    DBEdit102.SetFocus;
    exit;
  end;
  {** testo se o lote do Grupo a ser alterado já gerou cobrança se sim cancelo
  a operação }
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := dm.cds_ObitosLOTE.OldValue;
  dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO.OldValue;
  dm.cdsCircular.Open;
  if (dm.cdsCircularGEROU.AsString = 'sim') then
  begin
    MessageDlg('Esse Lote(Circular) já Gerou cobrança, a alteração não é permitida', mtWarning, [mbCANCEL], 0);
    dm.cdsCircular.Close;
    dm.cds_Obitos.Cancel;
    exit;
  end;



  {** testo se o lote do Grupo a ser adicionado contem 7 falecimentos se sim
  a operação }
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := StrToInt(DBEdit84.Text);
  dm.cdsCircular.Params[1].AsString := DBEdit102.Text;
  dm.cdsCircular.Open;
  if (dm.cdsCircularGEROU.AsString = 'sim') then
  begin
    MessageDlg('Esse Lote(Circular) contem 7 falecimentos, a inclusão não é permitida', mtWarning, [mbCANCEL], 0);
    dm.cdsCircular.Close;
    dm.cds_Obitos.Cancel;
    exit;
  end;

  {** se passou pelos teste acima executo a alteração}
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := dm.cds_ObitosLOTE.OldValue;
  dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO.OldValue;
  dm.cdsCircular.Open;
  {** Removo 1 falecido do Lote antigo se o lote ficar com Zero deleto ele}
  {** se o Lote ficar com Zero deleto o Lote}
  dm.cdsCircular.Edit;
  dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger - 1;
  if (dm.cdsCircularN_FALEC.AsInteger = 0) then
  begin
    totalFalec := 0;
    dm.cdsCircular.Delete;
  end
  else
    totalFalec := dm.cdsCircularN_FALEC.AsInteger;
  dm.cdsCircular.ApplyUpdates(0);
  {** Removo 1 falecido do Grupo antigo }
  {** se o Lote ficar com Zero reduzo 1}
  if dm.cds_grupo.Active then
    dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].Clear;
  dm.cds_grupo.Params[2].AsString := dm.cds_ObitosGRUPO.OldValue ;
  dm.cds_grupo.Open;
  if not dm.cds_grupo.IsEmpty then
  begin
   dm.cds_grupo.Edit;
   dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger - 1;
   if (totalFalec = 0) then
     dm.cds_grupoLOTE.AsInteger := dm.cds_grupoLOTE.AsInteger - 1;
   dm.cds_grupo.ApplyUpdates(0);
  end;
  dm.cds_grupo.Close;
  {** Nessa parte adiciono 1 falecimento ao novo Lote}
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := StrToInt(DBEdit84.Text);
  dm.cdsCircular.Params[1].AsString := DBEdit102.Text;
  dm.cdsCircular.Open;

  dm.cdsCircular.Edit;
  if(dm.cdsCircularN_FALEC.AsInteger < 7) then
  begin
  dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger + 1;

      dm.SQLObitos.StartTransaction(TD);
      dm.SQLObitos.ExecuteDirect('UPDATE LOTES SET N_FALEC = ' + QuotedStr(IntToStr(dm.cdsCircularN_FALEC.AsInteger)) +
      ' where  lote = ' + QuotedStr(DBEdit84.Text) + ' and grupo = ' + QuotedStr (DBEdit102.Text))  ;
      dm.SQLObitos.Commit(TD);
  end else
  exit;
 // dm.cdsCircular.ApplyUpdates(0);

  {** Removo 1 falecido do Grupo antigo se o lote ficar com Zero deleto ele}
  {** se o Lote ficar com Zero deleto o Lote}
  if dm.cds_grupo.Active then
    dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].Clear;
  dm.cds_grupo.Params[2].AsString := DBEdit102.Text;
  dm.cds_grupo.Open;
  if not dm.cds_grupo.IsEmpty then
  begin
   dm.cds_grupo.Edit;
   dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger + 1;

       dm.SQLObitos.StartTransaction(TD);
      dm.SQLObitos.ExecuteDirect('UPDATE GRUPO SET TOT_FAL = ' + QuotedStr(IntToStr(dm.cds_grupoTOT_FAL.AsInteger)) +
      ' where  grupo = ' + QuotedStr(DBEdit102.Text)) ;
      dm.SQLObitos.Commit(TD);
//   dm.cds_grupo.ApplyUpdates(0);

  end;
  dm.cds_grupo.Close;


  if (dm.cds_Obitos.State in [dsEdit]) then
    dm.cds_Obitos.ApplyUpdates(0);
 //   dm.cds_Obitos.Refresh;
end;

procedure TCad_Obitos.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then
    exit;

  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.Edit;
  dm.cds_ObitosDATA_FAL.Clear;
  dm.cds_ObitosHORA_FAL.Clear;
end;

procedure TCad_Obitos.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_ObitosDATA_SEP.Clear;
     dm.cds_ObitosHORA_SEP.Clear;
  end;
end;

procedure TCad_Obitos.socio;
var
  grupo_lote , n_grupo_lote : integer;
  str_sql : string;
  TD: TTransactionDesc;
begin
  // unid  ARTUR  MENSAL A B C D  e 7 FALECIMENTO  adiciono o falecimento ao grupo que Pertencer
  if((tip_plano = 'MENSAL' ) and (dm.cds_ObitosGRUPO.AsString = 'E')) then
  begin
    Exit ;
  end;
 {
  if(tip_plano = '7 FALECIMENTO') then
  begin

  if SQLClientDataSet1.Active then
     SQLClientDataSet1.Close;
  SQLClientDataSet1.Params[0].AsString := 'não';
  SQLClientDataSet1.Params[1].AsString := DBEdit102.Text;
  SQLClientDataSet1.Open;
  DBEdit84.Text := SQLClientDataSet1LOTE.Text;

//  SpeedButton13.Enabled := True;
//  DBEdit102.Enabled := True;
//  DBEdit84.Enabled := True;


  SQLClientDataSet1.Close;

  end;
  }
    if((tip_plano = '7 FALECIMENTO')or(tip_plano = 'MENSAL')) then
  begin
 //   SpeedButton13.Click;


  {** sdsProcLote Busca o numero do ultimo Lote do grupo a quem o sócio pertence}
  if (sdsProcLote.Active) then
     sdsProcLote.Close;
  sdsProcLote.Params[0].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
  sdsProcLote.Open;
  {** verifico se o Lote tem 7 Falecimentos}
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := sdsProcLoteMAX.AsInteger;
  dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
  dm.cdsCircular.Open;

  {** se tiver 7 falc. crio um novo Lote para o grupo}


  if ((dm.cdsCircularN_FALEC.AsInteger = 7 )and(dm.cdsCircularGEROU.AsString = 'não')) then
  begin
     dm.cdsCircular.Append;
     dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
     dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger + 1;
     grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircularGEROU.AsString := 'não';
     dm.cdsCircularN_FALEC.AsInteger := 1;
     n_grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircular.ApplyUpdates(0);
     dm.cdsCircular.Close;
     dm.cds_ObitosLOTE.AsInteger := n_grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
  end ;
  {** se ñ tiver acrescento + 1 falec. ao Lote}
 // else
//  begin

   if ((dm.cdsCircularN_FALEC.AsInteger < 7 )and(dm.cdsCircularGEROU.AsString = 'não')) then
   begin
    dm.cdsCircular.Edit;

    dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
    dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger ;

    grupo_lote := dm.cdsCircularLOTE.AsInteger;
    dm.cdsCircularGEROU.AsString := 'não';
    dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger + 1;

    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    str_sql := 'UPDATE LOTES SET  N_FALEC = ' + IntToStr(dm.cdsCircularN_FALEC.AsInteger);
    str_sql := str_sql + ' WHERE LOTE = ' + IntToStr(dm.cdsCircularLOTE.AsInteger);
    str_sql := str_sql + ' and GRUPO = ' + QuotedStr(dm.cdsCircularGRUPO.AsString) ;// + IntToStr(dm.cds_ObitosID_SOCIO.AsInteger);
    dm.SQLObitos.StartTransaction(TD);
    try
        dm.SQLObitos.ExecuteDirect(str_sql);
        dm.SQLObitos.Commit(TD);
    except
        dm.SQLObitos.Rollback(TD);
        MessageDlg('Erro ao gravar LOTE.', mtError, [mbOK], 0);
        exit;
    end;

     dm.cds_ObitosLOTE.AsInteger := grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
     dm.cdsCircular.Close;
  end;

  {** se tiver 7 falc. crio um novo Lote para o grupo}


  if ((dm.cdsCircularN_FALEC.AsInteger = 7 )and(dm.cdsCircularGEROU.AsString = 'sim')) then
  begin
     dm.cdsCircular.Append;
     dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
     dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger + 1;
     grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircularGEROU.AsString := 'não';
     dm.cdsCircularN_FALEC.AsInteger := 1;
     n_grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircular.ApplyUpdates(0);
     dm.cdsCircular.Close;
     dm.cds_ObitosLOTE.AsInteger := n_grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
  end ;





  sdsProcLote.Close;

  end;



  {** adiciono (1) Falecimento ao grupo ....}
  if dm.cds_grupo.Active then
    dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].Clear;
  dm.cds_grupo.Params[2].AsString := dm.cds_ObitosGRUPO_LOTE.AsString ;
  dm.cds_grupo.Open;
  if not dm.cds_grupo.IsEmpty then
  begin
   dm.cds_grupo.Edit;
   dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger + 1;
   dm.cds_grupoLOTE.AsInteger := grupo_lote;
  // dm.cds_grupo.ApplyUpdates(0);
  end;
  dm.cds_grupo.Close;

end;

procedure TCad_Obitos.socio_Vinhedo;
var
  grupo_lote , n_grupo_lote : integer;
  str_sql : string;
  TD: TTransactionDesc;

begin
 // unid  Vinhedo  MENSAL , TRIMESTAL e 7 FALECIMENTO  adiciono o falecimento ao grupo A

 if(dm.cds_ObitosGRUPO.AsString <>'A') then
  begin
    Exit ;
  end;

    {** ERRADO se o sócio for da Cidade de Vinhedo e for do grupo B ele é Trimestral
    se fro trimestral adiciono o falecimento ao grupo A...}
    if dm.cds_ObitosGRUPO.AsString = 'A' then
    begin
  {** sdsProcLote Busca o numero do ultimo Lote do grupo a quem o sócio pertence}
  if (sdsProcLote.Active) then
     sdsProcLote.Close;
  sdsProcLote.Params[0].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
  sdsProcLote.Open;
  {** verifico se o Lote tem 7 Falecimentos}
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := sdsProcLoteMAX.AsInteger;
  dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
  dm.cdsCircular.Open;

  {** se tiver 7 falc. crio um novo Lote para o grupo}


  if ((dm.cdsCircularN_FALEC.AsInteger = 7 )and(dm.cdsCircularGEROU.AsString = 'não')) then
  begin
     dm.cdsCircular.Append;
     dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
     dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger + 1;
     grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircularGEROU.AsString := 'não';
     dm.cdsCircularN_FALEC.AsInteger := 1;
     n_grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircular.ApplyUpdates(0);
     dm.cdsCircular.Close;
     dm.cds_ObitosLOTE.AsInteger := n_grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
  end ;
  {** se ñ tiver acrescento + 1 falec. ao Lote}
 // else
//  begin

   if ((dm.cdsCircularN_FALEC.AsInteger < 7 )and(dm.cdsCircularGEROU.AsString = 'não')) then
   begin
    dm.cdsCircular.Edit;

    dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
    dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger ;

    grupo_lote := dm.cdsCircularLOTE.AsInteger;
    dm.cdsCircularGEROU.AsString := 'não';
    dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger + 1;

    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    str_sql := 'UPDATE LOTES SET  N_FALEC = ' + IntToStr(dm.cdsCircularN_FALEC.AsInteger);
    str_sql := str_sql + ' WHERE LOTE = ' + IntToStr(dm.cdsCircularLOTE.AsInteger);
    str_sql := str_sql + ' and GRUPO = ' + QuotedStr(dm.cdsCircularGRUPO.AsString) ;// + IntToStr(dm.cds_ObitosID_SOCIO.AsInteger);
    dm.SQLObitos.StartTransaction(TD);
    try
        dm.SQLObitos.ExecuteDirect(str_sql);
        dm.SQLObitos.Commit(TD);
    except
        dm.SQLObitos.Rollback(TD);
        MessageDlg('Erro ao gravar LOTE.', mtError, [mbOK], 0);
        exit;
    end;

     dm.cds_ObitosLOTE.AsInteger := grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
     dm.cdsCircular.Close;
  end;

  {** se tiver 7 falc. crio um novo Lote para o grupo}


  if ((dm.cdsCircularN_FALEC.AsInteger = 7 )and(dm.cdsCircularGEROU.AsString = 'sim')) then
  begin
     dm.cdsCircular.Append;
     dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
     dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger + 1;
     grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircularGEROU.AsString := 'não';
     dm.cdsCircularN_FALEC.AsInteger := 1;
     n_grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircular.ApplyUpdates(0);
     dm.cdsCircular.Close;
     dm.cds_ObitosLOTE.AsInteger := n_grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
  end ;


  sdsProcLote.Close;

  end;



  {** adiciono (1) Falecimento ao grupo ....}
  if dm.cds_grupo.Active then
    dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].Clear;
  dm.cds_grupo.Params[2].AsString := dm.cds_ObitosGRUPO_LOTE.AsString ;
  dm.cds_grupo.Open;
  if not dm.cds_grupo.IsEmpty then
  begin
   dm.cds_grupo.Edit;
   dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger + 1;
   dm.cds_grupoLOTE.AsInteger := grupo_lote;
  // dm.cds_grupo.ApplyUpdates(0);
  end;
  dm.cds_grupo.Close;


      {  isso era antes
        //** sdsProcLote Busca o numero do ultimo Lote do grupo A
        if (sdsProcLote.Active) then
           sdsProcLote.Close;
        sdsProcLote.Params[0].AsString := 'A';
        sdsProcLote.Open;
        //** verifico se o Lote tem 7 Falecimentos
        if (dm.cdsCircular.Active) then
            dm.cdsCircular.Close;
        dm.cdsCircular.Params[0].AsInteger := sdsProcLoteMAX.AsInteger;
        dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
        dm.cdsCircular.Open;
        //** se tiver 7 falc. crio um novo Lote para o grupo
        if ((dm.cdsCircularN_FALEC.AsInteger = 7)and(dm.cdsCircularGEROU.AsString = 'não')) then
        begin
           dm.cdsCircular.Append;
           dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
           dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger + 1;
           grupo_lote := dm.cdsCircularLOTE.AsInteger;
           dm.cdsCircularGEROU.AsString := 'não';
           dm.cdsCircularN_FALEC.AsInteger := 1;
           dm.cdsCircular.ApplyUpdates(0);
           dm.cdsCircular.Close;
        end
        //** se ñ tiver acrescento + 1 falec. ao Lote
        else
        begin
           dm.cdsCircular.Edit;
           dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger + 1;
           grupo_lote := dm.cdsCircularLOTE.AsInteger;
           dm.cdsCircular.ApplyUpdates(0);
           dm.cdsCircular.Close;
        end;
        sdsProcLote.Close;
        //** Aqui corrijo o Total de falec. do Grupo
        if dm.cds_grupo.Active then
          dm.cds_grupo.Close;
        dm.cds_grupo.Params[0].Clear;
        dm.cds_grupo.Params[1].Clear;
        dm.cds_grupo.Params[2].Clear;
        dm.cds_grupo.Params[2].AsString := 'A';
        dm.cds_grupo.Open;
        if not dm.cds_grupo.IsEmpty then
        begin
          dm.cds_grupo.Edit;
          dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger + 1;
          dm.cds_grupoLOTE.AsInteger := grupo_lote;
     //     dm.cds_grupo.ApplyUpdates(0);   18/08/14
        end;
        dm.cds_grupo.Close;
    end;
   }


end;

procedure TCad_Obitos.serie_obito;
begin
    // adiciono + 1 a Serie... controle de Serie Obitos...
    if (dm.cds_serie.Active) then
       dm.cds_serie.Close;
    dm.cds_serie.Params[0].Clear;
    dm.cds_serie.Params[1].Clear;
    dm.cds_serie.Params[2].Clear;
    dm.cds_serie.Params[3].Clear;
    dm.cds_serie.Params[0].AsString := ComboBox1.Text;
    dm.cds_serie.Params[3].AsString := 'OB';
    dm.cds_serie.Open;
    dm.cds_serie.Edit;
    dm.cds_serieULTIMO_NUMERO.AsInteger := dm.cds_ObitosCODIGO.AsInteger;
   // dm.cds_serie.ApplyUpdates(0);
end;

procedure TCad_Obitos.dependente;
var
    str_sql : string;
    TD: TTransactionDesc;
begin

    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    str_sql := 'UPDATE DEPENDENTE SET FALECIDO = ' + '''' + 'S' + '''';
    str_sql := str_sql + ', COBRA_DEP = ' + '''' + '' + '''';
    str_sql := str_sql + ', DTFALEC = ' + '''' + formatdatetime('mm/dd/yy', dm.cds_ObitosDATA_FAL.AsDateTime) + '''';
    str_sql := str_sql + ' WHERE NOME_DEP = ' + '''' + dm.cds_ObitosFALECIDO.AsString + '''';
    str_sql := str_sql + ' and ID_SOCIO = ' + IntToStr(dm.cds_ObitosID_SOCIO.AsInteger);
    dm.SQLObitos.StartTransaction(TD);
    try
        dm.SQLObitos.ExecuteDirect(str_sql);
        dm.SQLObitos.Commit(TD);
    except
        dm.SQLObitos.Rollback(TD);
        MessageDlg('Erro ao mudar Status para Falecido.', mtError, [mbOK], 0);
        exit;
    end;


   // mudo o status do dependente para Falecido......
   {if cds_dep.Active then
     cds_dep.Close;
   cds_dep.Params[0].AsString := dm.cds_ObitosFALECIDO.AsString;
   cds_dep.Open;
   if not cds_dep.IsEmpty then
   begin
     if cds_dep.State = dsBrowse then
       cds_dep.Edit;
     cds_depFALECIDO.AsString := 'S';
     cds_depDTFALEC.AsDateTime := dm.cds_ObitosDATA_FAL.AsDateTime;
     cds_dep.ApplyUpdates(0);
     cds_dep.Close;
   end;
    }
end;

procedure TCad_Obitos.ComboBox1Exit(Sender: TObject);
begin
  inherited;
  if (DM.cds_Obitos.State in [dsbrowse]) then
     if (dm.cds_ObitosSERIE.AsString <> ComboBox1.Text) then
        dm.cds_Obitos.Edit;

  if (DM.cds_Obitos.State in [dsInsert, dsEdit]) then
  begin
    if (sdsSerie.Active) then
        sdsSerie.Close;
    sdsSerie.Params[0].AsString := ComboBox1.Text;
    sdsSerie.Open;

    if dm.cds_Obitos.State in [dsBrowse] then
       dm.cds_Obitos.Edit;
    dm.cds_ObitosCODIGO.AsInteger := sdsSerieMAX.Value + 1;
    sdsSerie.Close;
    if dm.cds_Obitos.State in [dsInsert,dsEdit] then
    begin
      if ComboBox1.Text = 'A' then
       dm.cds_ObitosTIPO_DOC.AsString := 'Oficial';
      if ComboBox1.Text = 'B' then
       dm.cds_ObitosTIPO_DOC.AsString := 'ñ Oficial';
      if ComboBox1.Text = 'C' then
       dm.cds_ObitosTIPO_DOC.AsString := 'Oficial';
    end;
  end;
end;

procedure TCad_Obitos.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  ComboBox1.SetFocus;
end;

procedure TCad_Obitos.ExcluiLoteAnterior;
var
  str_sql : string;
  TD: TTransactionDesc;
  loteExcluido, totalFalec : integer;
begin
     loteExcluido := dm.cds_ObitosLOTE.AsInteger;
    {** Abro o ultimo Lote e Diminui um Falecimento}
    if (dm.cdsCircular.Active) then
        dm.cdsCircular.Close;
    dm.cdsCircular.Params[0].AsInteger := sdsProcLoteMAX.AsInteger;
    dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
    dm.cdsCircular.Open;
    if (not dm.cdsCircular.IsEmpty) then
    begin
      dm.cdsCircular.Edit;
      if (dm.cdsCircularN_FALEC.AsInteger = 7) then
         dm.cdsCircularGEROU.AsString := 'não';
      dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger - 1;
    //  dm.cdsCircular.ApplyUpdates(0);    02/10/2014
      dm.cdsCircular.Close;
    end;
    {** Reduzo um Falec. na tabela Grupo}
    if dm.cds_grupo.Active then
       dm.cds_grupo.Close;
    dm.cds_grupo.Params[0].Clear;
    dm.cds_grupo.Params[1].Clear;
    dm.cds_grupo.Params[2].Clear;
    dm.cds_grupo.Params[2].AsString := dm.cds_ObitosGRUPO_LOTE.AsString ;
    dm.cds_grupo.Open;
    if not dm.cds_grupo.IsEmpty then
    begin
       dm.cds_grupo.Edit;
       dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger - 1;
    //   dm.cds_grupo.ApplyUpdates(0);    02/10/2014
    end;
    dm.cds_grupo.Close;
    {** Abro o Óbito do ultimo Lote e passo para o Lote que foi Excluido}
    if (dm.cdsObito.Active) then
        dm.cdsObito.Close;
    dm.cdsObito.Params[0].AsInteger := sdsProcLoteMAX.AsInteger;
    dm.cdsObito.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
    dm.cdsObito.Open;
    dm.cdsObito.First;
    dm.cdsObito.Edit;
    dm.cdsObitoLOTE.AsInteger := loteExcluido;
   // dm.cdsObito.ApplyUpdates(0);  02/10/2014
    {** volto o Sócio ou dependente p/ ñ falecido}
    if dm.cds_dep.Active then
      dm.cds_dep.Close;
    dm.cds_dep.Params[0].Clear;
    dm.cds_dep.Params[1].Clear;
    dm.cds_dep.Params[2].AsInteger := dm.cds_ObitosID_DEP.AsInteger;
    dm.cds_dep.Open;
    if not dm.cds_dep.IsEmpty then
    begin
      dm.cds_dep.Edit;
      dm.cds_depFALECIDO.AsString := 'N';
      dm.cds_depDTFALEC.AsString := '';
   //   dm.cds_dep.ApplyUpdates(0);  02/10/2014
      dm.cds_dep.Close;
    end;
    DtSrc.DataSet.Delete;

   {
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    str_sql := 'UPDATE OBITOS SET STATUS = ' + QuotedStr('N');
    str_sql := str_sql + ' WHERE ID = ' + IntToStr (id) ;
    dm.SQLObitos.StartTransaction(TD);
    try
        dm.SQLObitos.ExecuteDirect(str_sql);
        dm.SQLObitos.Commit(TD);
    except
        dm.SQLObitos.Rollback(TD);
        MessageDlg('Erro ao Excluir Obito.', mtError, [mbOK], 0);
        exit;
    end;
    }
    
   (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
   dm.cds_Obitos.Close;


end;

procedure TCad_Obitos.ExcluiUltimoLote;
var
  str_sql : string;
  TD: TTransactionDesc;
  totalFalec : integer;
begin
    {** Abro a Lote e Diminui um Falecimento
      se tiver 7 falecimnetos no Lote o campo Gerou recebe não}
    if (dm.cdsCircular.Active) then
        dm.cdsCircular.Close;
    dm.cdsCircular.Params[0].AsInteger := dm.cds_ObitosLOTE.AsInteger;
    dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
    dm.cdsCircular.Open;
    if (not dm.cdsCircular.IsEmpty) then
    begin
      dm.cdsCircular.Edit;
      if (dm.cdsCircularN_FALEC.AsInteger = 7) then
         dm.cdsCircularGEROU.AsString := 'não';
      dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger - 1;
      if (dm.cdsCircularN_FALEC.AsInteger = 0) then
      begin
       totalFalec := 0;
       dm.cdsCircular.Delete;
      end
      else
       totalFalec := dm.cdsCircularN_FALEC.AsInteger;
      dm.cdsCircular.ApplyUpdates(0);
      dm.cdsCircular.Close;
    end;
    {** Reduzo um Falec. na tabela Grupo}
    if dm.cds_grupo.Active then
       dm.cds_grupo.Close;
    dm.cds_grupo.Params[0].Clear;
    dm.cds_grupo.Params[1].Clear;
    dm.cds_grupo.Params[2].Clear;
    dm.cds_grupo.Params[2].AsString := dm.cds_ObitosGRUPO_LOTE.AsString ;
    dm.cds_grupo.Open;
    if not dm.cds_grupo.IsEmpty then
    begin
       dm.cds_grupo.Edit;
       dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger - 1;
       if (totalFalec = 0) then
         dm.cds_grupoLOTE.AsInteger := dm.cds_grupoLOTE.AsInteger - 1;
       dm.cds_grupo.ApplyUpdates(0);
    end;
    dm.cds_grupo.Close;
    {** volto o Sócio ou dependente p/ ñ falecido}
    if dm.cds_dep.Active then
      dm.cds_dep.Close;
    dm.cds_dep.Params[0].Clear;
    dm.cds_dep.Params[1].Clear;
    dm.cds_dep.Params[2].AsInteger := dm.cds_ObitosID_DEP.AsInteger;
    dm.cds_dep.Open;
    if not dm.cds_dep.IsEmpty then
    begin
      dm.cds_dep.Edit;
      dm.cds_depFALECIDO.AsString := 'N';
      dm.cds_depDTFALEC.AsString := '';
      dm.cds_dep.ApplyUpdates(0);
      dm.cds_dep.Close;
    end;
    DtSrc.DataSet.Delete;
  {
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    str_sql := 'UPDATE OBITOS SET STATUS = ' + QuotedStr('N');
    str_sql := str_sql + ' WHERE ID = ' + IntToStr (id) ;
    dm.SQLObitos.StartTransaction(TD);
    try
        dm.SQLObitos.ExecuteDirect(str_sql);
        dm.SQLObitos.Commit(TD);
    except
        dm.SQLObitos.Rollback(TD);
        MessageDlg('Erro ao Excluir Obito.', mtError, [mbOK], 0);
        exit;
    end;
    }
   (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
    dm.cds_Obitos.Close;


end;

procedure TCad_Obitos.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_ObitosDATA_SISTEMA.Clear;
  end;
end;

procedure TCad_Obitos.SpeedButton17Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_ObitosDTA_EXPDICAO.Clear;
  end;
end;

procedure TCad_Obitos.SpeedButton18Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_ObitosDATA_CASAMENTO.Clear;
  end;
end;

procedure TCad_Obitos.SpeedButton19Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_ObitosDATA_CASAMENTO_2.Clear;
  end;
end;

procedure TCad_Obitos.SpeedButton20Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_ObitosVENCIMENTO.Clear;
  end;
end;

procedure TCad_Obitos.AlteraSocio;
var
  grupo_lote, totalFalec : integer;
begin
  {** Reduzo um falec. na tabela Lotes}
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := dm.cds_ObitosLOTE.AsInteger;
  dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
  dm.cdsCircular.Open;
  dm.cdsCircular.Edit;
  dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger - 1;
  if (dm.cdsCircularN_FALEC.AsInteger = 0) then
  begin
   totalFalec := 0;
   dm.cdsCircular.Delete;
  end
  else
   totalFalec := dm.cdsCircularN_FALEC.AsInteger;
  dm.cdsCircular.ApplyUpdates(0);
  dm.cdsCircular.Close;
  //sdsProcLote.Close;

  {** tira (1) Falecimento do grupo ....}
  if dm.cds_grupo.Active then
     dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].Clear;
  dm.cds_grupo.Params[2].AsString := dm.cds_ObitosGRUPO_LOTE.AsString ;
  dm.cds_grupo.Open;
  if not dm.cds_grupo.IsEmpty then
  begin
     dm.cds_grupo.Edit;
     dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger - 1;
     if (totalFalec = 0) then
       dm.cds_grupoLOTE.AsInteger := dm.cds_grupoLOTE.AsInteger - 1;
     dm.cds_grupo.ApplyUpdates(0);
  end;
  dm.cds_grupo.Close;
  dm.cds_ObitosLOTE.Clear;

end;

procedure TCad_Obitos.DBComboBox4Exit(Sender: TObject);
begin
  inherited;
  if (DM.cds_Obitos.State in [dsInsert, dsEdit]) then
  begin
    if (serieNFProc.Active) then
        serieNFProc.Close;
    serieNFProc.Params[0].AsString := DBComboBox4.Text;
    serieNFProc.Open;
    if dm.cds_Obitos.State in [dsBrowse] then
       dm.cds_Obitos.Edit;
    dm.cds_ObitosNOTAFISCAL.AsInteger := serieNFProcMAX.Value + 1;
    serieNFProc.Close;
    DBEdit56.SetFocus;
  end;
end;

procedure TCad_Obitos.btnSairClick(Sender: TObject);
var a : string ;
begin
//  inherited;
  close;
  a := '1' ;
  { // mudei aqui não esta sendo usado o estoque
  if(a = '1' )then
  begin
    VCLReport1.FileName := str_relatorio + 'rel_repor_estoque.rep';
    VCLReport1.Report.Params.ParamByName('DTA1').Value := StartOfTheMonth(now);
    VCLReport1.Report.Params.ParamByName('DTA2').Value := now;
    VCLReport1.Report.Params.ParamByName('CODGRUPO').Value := 9999999 ;
    VCLReport1.Title := str_relatorio + 'rel_repor_estoque.rep';
    VCLReport1.Execute;
  end;
   }
end;

procedure TCad_Obitos.SpeedButton21Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_ObitosD_NASC_PAI.Clear;
  end;
end;

procedure TCad_Obitos.SpeedButton22Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_ObitosD_NASC_MAE.Clear;
  end;
end;

procedure TCad_Obitos.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TCad_Obitos.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then
    exit;

  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.Edit;
  dm.cds_ObitosDATA_NASC.Clear;
end;

procedure TCad_Obitos.BitBtn3Click(Sender: TObject);
begin
  inherited;
 if not(Dm.cds_Obitos.Active)then
 begin
   if(ClientDataSet1.Active)then
     id := ClientDataSet1ID.AsInteger
     else begin
     ClientDataSet1.Open;
     id := ClientDataSet1ID.AsInteger ;
     end;
 end
 else begin
   if(ClientDataSet1.Active)then
     begin
      ClientDataSet1.Next;
      id := ClientDataSet1ID.AsInteger ;
     end
   else begin
     ClientDataSet1.Open;
     id := ClientDataSet1ID.AsInteger ;
 end;
   end;
  Dm.cds_Obitos.Close;
  dm.cds_Obitos.Params[0].Clear;
  Dm.cds_Obitos.Params[0].AsInteger:=id ;
  Dm.cds_Obitos.Open;
  ComboBox1.Text := dm.cds_ObitosSERIE.AsString;
  serie := dm.cds_ObitosSERIE.AsString;
  numero := dm.cds_ObitosCODIGO.AsInteger;
  grupo :=  dm.cds_ObitosGRUPO.AsString;
  Lote := dm.cds_ObitosLOTE.AsInteger;
  if DM.cds_funcionario.Active then
    dm.cds_funcionario.Close;
  dm.cds_funcionario.Params[0].AsInteger := dm.cds_ObitosCOD_FUNCIONARIO.AsInteger;
  dm.cds_funcionario.Open;
  Edit1.Text := dm.cds_funcionarioNOME.AsString;
  dm.cds_funcionario.Close;
  if DM.cds_filhos.Active then
    dm.cds_filhos.Close;
  dm.cds_filhos.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
  dm.cds_filhos.Open;

  if cds_CR.Active then
    cds_CR.Close;
  cds_CR.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
  cds_CR.Params[1].AsString := 'OB';
  cds_CR.Open;


end;


procedure TCad_Obitos.BitBtn4Click(Sender: TObject);
begin
  inherited;
 if not(Dm.cds_Obitos.Active)then
 begin
   if(ClientDataSet1.Active)then
     id := ClientDataSet1ID.AsInteger
     else begin
     ClientDataSet1.Open;
     id := ClientDataSet1ID.AsInteger ;
     end;
 end
 else begin
   if(ClientDataSet1.Active)then
     begin
      ClientDataSet1.Prior;
      id := ClientDataSet1ID.AsInteger ;
     end
   else begin
     ClientDataSet1.Open;
     id := ClientDataSet1ID.AsInteger ;
 end;
   end;
  Dm.cds_Obitos.Close;
  dm.cds_Obitos.Params[0].Clear;
  Dm.cds_Obitos.Params[0].AsInteger:=id ;
  Dm.cds_Obitos.Open;
  ComboBox1.Text := dm.cds_ObitosSERIE.AsString;
  serie := dm.cds_ObitosSERIE.AsString;
  numero := dm.cds_ObitosCODIGO.AsInteger;
  grupo :=  dm.cds_ObitosGRUPO.AsString;
  Lote := dm.cds_ObitosLOTE.AsInteger;
  if DM.cds_funcionario.Active then
    dm.cds_funcionario.Close;
  dm.cds_funcionario.Params[0].AsInteger := dm.cds_ObitosCOD_FUNCIONARIO.AsInteger;
  dm.cds_funcionario.Open;
  Edit1.Text := dm.cds_funcionarioNOME.AsString;
  dm.cds_funcionario.Close;
  if DM.cds_filhos.Active then
    dm.cds_filhos.Close;
  dm.cds_filhos.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
  dm.cds_filhos.Open;

  if cds_CR.Active then
    cds_CR.Close;
  cds_CR.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
  cds_CR.Params[1].AsString := 'OB';
  cds_CR.Open;
end;

procedure TCad_Obitos.cds_CRDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
//  inherited;
    ShowMessage('Não é possivel excluir esse Registro entre em contato com o Suporte');
end;

procedure TCad_Obitos.DBEdit102Exit(Sender: TObject);
begin
  //inherited;
  if(tip_plano = 'MENSAL') then
  begin
    SpeedButton13.Enabled := False;
    DBEdit102.Enabled := False;
    DBEdit84.Enabled := False;
  end;

  if(tip_plano = '7 FALECIMENTO') then
  begin
 {
if (dm.cds_socioPLANO.AsString = '7 FALECIMENTO') then
          begin    DBEdit102.Enabled := True;
                   DBEdit84.Enabled := True ;
          end else
              DBEdit102.Enabled := False;
             DBEdit84.Enabled := False;
}  
  if SQLClientDataSet1.Active then
     SQLClientDataSet1.Close;
  SQLClientDataSet1.Params[0].AsString := 'não';
  SQLClientDataSet1.Params[1].AsString := DBEdit102.Text;
  SQLClientDataSet1.Open;
  DBEdit84.Text := SQLClientDataSet1LOTE.Text;

  SQLClientDataSet1.Close;

  end;


end;

procedure TCad_Obitos.socio_valinhos;
var
  grupo_lote , n_grupo_lote : integer;
  str_sql : string;
  TD: TTransactionDesc;
begin
  // unid  Valinhos  MENSAL A B C e 7 FALECIMENTO  adiciono o falecimento ao grupo que Pertencer
  if((tip_plano = 'MENSAL' ) and (dm.cds_ObitosGRUPO.AsString = 'D')) then
  begin
    Exit ;
  end;

  if((tip_plano = '7 FALECIMENTO')or(tip_plano = 'MENSAL')) then
  begin

  {** sdsProcLote Busca o numero do ultimo Lote do grupo a quem o sócio pertence}
  if (sdsProcLote.Active) then
     sdsProcLote.Close;
  sdsProcLote.Params[0].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
  sdsProcLote.Open;
  {** verifico se o Lote tem 7 Falecimentos}
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := sdsProcLoteMAX.AsInteger;
  dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
  dm.cdsCircular.Open;

  {** se tiver 7 falc. crio um novo Lote para o grupo}


  if ((dm.cdsCircularN_FALEC.AsInteger = 7 )and(dm.cdsCircularGEROU.AsString = 'não')) then
  begin
     dm.cdsCircular.Append;
     dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
     dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger + 1;
     grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircularGEROU.AsString := 'não';
     dm.cdsCircularN_FALEC.AsInteger := 1;
     n_grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircular.ApplyUpdates(0);
     dm.cdsCircular.Close;
     dm.cds_ObitosLOTE.AsInteger := n_grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
  end ;
  {** se ñ tiver acrescento + 1 falec. ao Lote}
 // else
//  begin

   if ((dm.cdsCircularN_FALEC.AsInteger < 7 )and(dm.cdsCircularGEROU.AsString = 'não')) then
   begin
    dm.cdsCircular.Edit;

    dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
    dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger ;

    grupo_lote := dm.cdsCircularLOTE.AsInteger;
    dm.cdsCircularGEROU.AsString := 'não';
    dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger + 1;

    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    str_sql := 'UPDATE LOTES SET  N_FALEC = ' + IntToStr(dm.cdsCircularN_FALEC.AsInteger);
    str_sql := str_sql + ' WHERE LOTE = ' + IntToStr(dm.cdsCircularLOTE.AsInteger);
    str_sql := str_sql + ' and GRUPO = ' + QuotedStr(dm.cdsCircularGRUPO.AsString) ;// + IntToStr(dm.cds_ObitosID_SOCIO.AsInteger);
    dm.SQLObitos.StartTransaction(TD);
    try
        dm.SQLObitos.ExecuteDirect(str_sql);
        dm.SQLObitos.Commit(TD);
    except
        dm.SQLObitos.Rollback(TD);
        MessageDlg('Erro ao gravar LOTE.', mtError, [mbOK], 0);
        exit;
    end;

     dm.cds_ObitosLOTE.AsInteger := grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
     dm.cdsCircular.Close;
  end;

  {** se tiver 7 falc. crio um novo Lote para o grupo}


  if ((dm.cdsCircularN_FALEC.AsInteger = 7 )and(dm.cdsCircularGEROU.AsString = 'sim')) then
  begin
     dm.cdsCircular.Append;
     dm.cdsCircularGRUPO.AsString := dm.cds_ObitosGRUPO_LOTE.AsString;
     dm.cdsCircularLOTE.AsInteger := sdsProcLoteMAX.AsInteger + 1;
     grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircularGEROU.AsString := 'não';
     dm.cdsCircularN_FALEC.AsInteger := 1;
     n_grupo_lote := dm.cdsCircularLOTE.AsInteger;
     dm.cdsCircular.ApplyUpdates(0);
     dm.cdsCircular.Close;
     dm.cds_ObitosLOTE.AsInteger := n_grupo_lote;
     if dm.cds_ObitosGRUPO.AsString <> dm.cds_ObitosGRUPO_LOTE.AsString then
       dm.cds_ObitosGRUPO_LOTE.AsString := dm.cds_ObitosGRUPO.AsString;
  end ;

   sdsProcLote.Close;

  end;

  {** adiciono (1) Falecimento ao grupo ....}
  if dm.cds_grupo.Active then
    dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].Clear;
  dm.cds_grupo.Params[2].AsString := dm.cds_ObitosGRUPO_LOTE.AsString ;
  dm.cds_grupo.Open;
  if not dm.cds_grupo.IsEmpty then
  begin
   dm.cds_grupo.Edit;
   dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger + 1;
   dm.cds_grupoLOTE.AsInteger := grupo_lote;
  // dm.cds_grupo.ApplyUpdates(0);
  end;
  dm.cds_grupo.Close;
end;

procedure TCad_Obitos.SpeedButton23Click(Sender: TObject);
//var
 //totalFalec : integer;
begin
//  inherited;

    if (dm.cds_Obitos.State in [dsEdit]) then
    dm.cds_Obitos.ApplyUpdates(0);

 {
   //** se ñ for Sócio ñ permito a mudança de Lote
   if ((dm.cds_ObitosTIPO_OBITO.AsString <> 'SOCIO')
   and (dm.cds_ObitosTIPO_OBITO.AsString <> 'REEMBOLSO')) then
   begin
     MessageDlg('Operação só é permitida para Sócios.', mtError, [mbCancel], 0);
     exit;
   end;
  //** Testo se o Lote e Grupo existem caso ñ cancelo a operação
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := StrToInt(DBEdit84.Text);
  dm.cdsCircular.Params[1].AsString := DBEdit102.Text;
  dm.cdsCircular.Open;
  if (dm.cdsCircular.IsEmpty) then
  begin
    MessageDlg('Lote ou Grupo inexistente.', mtError, [mbCancel], 0);
    DBEdit102.SetFocus;
    exit;
  end;
  //** testo se o lote do Grupo a ser alterado já gerou cobrança se sim cancelo   a operação
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := dm.cds_ObitosLOTE.OldValue;
  dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO.OldValue;
  dm.cdsCircular.Open;
  if (dm.cdsCircularGEROU.AsString = 'sim') then
  begin
    MessageDlg('Esse Lote(Circular) já Gerou cobrança, a alteração não é permitida', mtWarning, [mbCANCEL], 0);
    dm.cdsCircular.Close;
    dm.cds_Obitos.Cancel;
    exit;
  end;



  //** testo se o lote do Grupo a ser adicionado contem 7 falecimentos se sim  a operação
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := StrToInt(DBEdit84.Text);
  dm.cdsCircular.Params[1].AsString := DBEdit102.Text;
  dm.cdsCircular.Open;
  if (dm.cdsCircularGEROU.AsString = 'sim') then
  begin
    MessageDlg('Esse Lote(Circular) contem 7 falecimentos, a inclusão não é permitida', mtWarning, [mbCANCEL], 0);
    dm.cdsCircular.Close;
    dm.cds_Obitos.Cancel;
    exit;
  end;

  //** se passou pelos teste acima executo a alteração
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := dm.cds_ObitosLOTE.OldValue;
  dm.cdsCircular.Params[1].AsString := dm.cds_ObitosGRUPO.OldValue;
  dm.cdsCircular.Open;
  //** Removo 1 falecido do Lote antigo se o lote ficar com Zero deleto ele
  //** se o Lote ficar com Zero deleto o Lote
  dm.cdsCircular.Edit;
  dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger - 1;
  if (dm.cdsCircularN_FALEC.AsInteger = 0) then
  begin
    totalFalec := 0;
    dm.cdsCircular.Delete;
  end
  else
    totalFalec := dm.cdsCircularN_FALEC.AsInteger;
  dm.cdsCircular.ApplyUpdates(0);
  //** Removo 1 falecido do Grupo antigo
  //** se o Lote ficar com Zero reduzo 1
  if dm.cds_grupo.Active then
    dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].Clear;
  dm.cds_grupo.Params[2].AsString := dm.cds_ObitosGRUPO.OldValue ;
  dm.cds_grupo.Open;
  if not dm.cds_grupo.IsEmpty then
  begin
   dm.cds_grupo.Edit;
   dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger - 1;
   if (totalFalec = 0) then
     dm.cds_grupoLOTE.AsInteger := dm.cds_grupoLOTE.AsInteger - 1;
   dm.cds_grupo.ApplyUpdates(0);
  end;
  dm.cds_grupo.Close;
  //** Nessa parte adiciono 1 falecimento ao novo Lote
  if (dm.cdsCircular.Active) then
      dm.cdsCircular.Close;
  dm.cdsCircular.Params[0].AsInteger := StrToInt(DBEdit84.Text);
  dm.cdsCircular.Params[1].AsString := DBEdit102.Text;
  dm.cdsCircular.Open;

  dm.cdsCircular.Edit;
  if(dm.cdsCircularN_FALEC.AsInteger < 7) then
  begin
  dm.cdsCircularN_FALEC.AsInteger := dm.cdsCircularN_FALEC.AsInteger + 1;

      dm.SQLObitos.StartTransaction(TD);
      dm.SQLObitos.ExecuteDirect('UPDATE LOTES SET N_FALEC = ' + QuotedStr(IntToStr(dm.cdsCircularN_FALEC.AsInteger)) +
      ' where  lote = ' + QuotedStr(DBEdit84.Text) + ' and grupo = ' + QuotedStr (DBEdit102.Text))  ;
      dm.SQLObitos.Commit(TD);
  end else
  exit;
 // dm.cdsCircular.ApplyUpdates(0);

  //** Removo 1 falecido do Grupo antigo se o lote ficar com Zero deleto ele
  //** se o Lote ficar com Zero deleto o Lote
  if dm.cds_grupo.Active then
    dm.cds_grupo.Close;
  dm.cds_grupo.Params[0].Clear;
  dm.cds_grupo.Params[1].Clear;
  dm.cds_grupo.Params[2].Clear;
  dm.cds_grupo.Params[2].AsString := DBEdit102.Text;
  dm.cds_grupo.Open;
  if not dm.cds_grupo.IsEmpty then
  begin
   dm.cds_grupo.Edit;
   dm.cds_grupoTOT_FAL.AsInteger := dm.cds_grupoTOT_FAL.AsInteger + 1;

       dm.SQLObitos.StartTransaction(TD);
      dm.SQLObitos.ExecuteDirect('UPDATE GRUPO SET TOT_FAL = ' + QuotedStr(IntToStr(dm.cds_grupoTOT_FAL.AsInteger)) +
      ' where  grupo = ' + QuotedStr(DBEdit102.Text)) ;
      dm.SQLObitos.Commit(TD);
//   dm.cds_grupo.ApplyUpdates(0);

  end;
  dm.cds_grupo.Close;


  if (dm.cds_Obitos.State in [dsEdit]) then
    dm.cds_Obitos.ApplyUpdates(0);
 //   dm.cds_Obitos.Refresh;
 }
end;

procedure TCad_Obitos.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if dm.cds_Obitos.State in [dsInactive] then exit;

  fProcurar:=TfProcurar.Create(self,proc_cartorio);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    if dm.cds_Obitos.State in [dsBrowse] then
      dm.cds_Obitos.Edit;
    Dm.cds_ObitosFAL_ID_CARTORIO.AsInteger := proc_cartorioID_CARTORIO.AsInteger;
    Dm.cds_ObitosFAL_CARTORIO.AsString := proc_cartorioNOME.AsString;
    Dm.cds_ObitosFAL_CARTORIO_END.AsString := proc_cartorioENDERECO.AsString;
    Dm.cds_ObitosFAL_CARTORIO_CIDADE.AsString := proc_cartorioCIDADE.AsString;
   finally
    fProcurar.Free;
   end;

end;

procedure TCad_Obitos.btbpisClick(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     DBEdit114.Text;
     dm.cds_ObitosPIS.Clear;
  end;
end;

end.
