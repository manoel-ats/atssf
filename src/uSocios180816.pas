unit uSocios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, DB, Menus, dxCore, dxButton, ExtCtrls, StdCtrls, Mask,
  DBCtrls, Grids, DBGrids, Buttons, ComCtrls, SqlExpr, Provider, DBClient,
  DBLocal, DBLocalS, rpcompobase, rpvclreport, FMTBcd, VDOBasePrinter,
  VDODmPrinter, ImgList, DBXpress, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls,  JvSpin,   JvDBSpinEdit ,comobj, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, EDBNav;

type
  TfSocios = class(TfPai)
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label60: TLabel;
    Label61: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    DBEdit26: TDBEdit;
    DBEdit33: TDBEdit;
    dxButton13: TdxButton;
    dxButton10: TdxButton;
    dxButton2: TdxButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit21: TDBEdit;
    Label9: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit23: TDBEdit;
    Label32: TLabel;
    SpeedButton5: TSpeedButton;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBRadioGroup5: TDBRadioGroup;
    GroupBox11: TGroupBox;
    DBEdit46: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label31: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    Edit1: TEdit;
    Label12: TLabel;
    Edit2: TEdit;
    Label13: TLabel;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    Label14: TLabel;
    Edit4: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    btGravar_D: TdxButton;
    btCancelar_D: TdxButton;
    btIncluir_D: TdxButton;
    btExcluir_D: TdxButton;
    dxButton3: TdxButton;
    dxButton20: TdxButton;
    dxButton21: TdxButton;
    Panel4: TPanel;
    btCancelar_E: TdxButton;
    btGravar_E: TdxButton;
    dxButton11: TdxButton;
    btExcluir_E: TdxButton;
    btIncluir_E: TdxButton;
    Panel5: TPanel;
    dxButton12: TdxButton;
    Memo1: TMemo;
    Panel6: TPanel;
    rb2: TRadioButton;
    rb1: TRadioButton;
    rb3: TRadioButton;
    GroupBox22: TGroupBox;
    Label37: TLabel;
    Label49: TLabel;
    DBGrid3: TDBGrid;
    btExcluir: TdxButton;
    btBaixa: TdxButton;
    btCancela: TdxButton;
    DBEdit22: TDBEdit;
    btRecibo: TdxButton;
    DBEdit36: TDBEdit;
    btAcordo: TdxButton;
    btBoleto: TdxButton;
    Memo2: TMemo;
    Memo3: TMemo;
    btCancelaAcordo: TdxButton;
    Panel7: TPanel;
    dxButton1: TdxButton;
    Panel11: TPanel;
    rb_tri2: TRadioButton;
    rb_tri1: TRadioButton;
    rb_tri3: TRadioButton;
    GroupBox4: TGroupBox;
    dxButton24: TdxButton;
    DBGrid5: TDBGrid;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    dxButton14: TdxButton;
    dxButton19: TdxButton;
    dxButton26: TdxButton;
    Panel9: TPanel;
    dxButton4: TdxButton;
    GroupBox2: TGroupBox;
    Label43: TLabel;
    Label51: TLabel;
    dxButton22: TdxButton;
    DBGrid4: TDBGrid;
    dxButton23: TdxButton;
    dxButton27: TdxButton;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    dxButton29: TdxButton;
    dxButton30: TdxButton;
    dxButton31: TdxButton;
    Panel12: TPanel;
    rb_mensal2: TRadioButton;
    rb_mensal1: TRadioButton;
    rb_mensal3: TRadioButton;
    Panel13: TPanel;
    dxButton32: TdxButton;
    GroupBox3: TGroupBox;
    DBComboBox2: TDBComboBox;
    Panel14: TPanel;
    Label46: TLabel;
    SpeedButton9: TSpeedButton;
    Label47: TLabel;
    Label45: TLabel;
    Label44: TLabel;
    Label26: TLabel;
    DBEdit18: TDBEdit;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    SpeedButton8: TSpeedButton;
    DBEdit24: TDBEdit;
    Label33: TLabel;
    Label36: TLabel;
    DBEdit25: TDBEdit;
    SpeedButton6: TSpeedButton;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBLookupComboBox4: TDBLookupComboBox;
    Label28: TLabel;
    DBGrid2: TDBGrid;
    Edit5: TEdit;
    Edit7: TEdit;
    DBNavigator2: TDBNavigator;
    Label30: TLabel;
    Edit6: TEdit;
    Label23: TLabel;
    DBEdit10: TDBEdit;
    Label24: TLabel;
    DBEdit11: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label25: TLabel;
    SpeedButton3: TSpeedButton;
    DBRadioGroup2: TDBRadioGroup;
    DBLookupComboBox2: TDBLookupComboBox;
    Label35: TLabel;
    DBEdit12: TDBEdit;
    Label40: TLabel;
    DBComboBox3: TDBComboBox;
    Label41: TLabel;
    DBGrid1: TDBGrid;
    DBEdit13: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit14: TDBEdit;
    Label62: TLabel;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit17: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label65: TLabel;
    SpeedButton10: TSpeedButton;
    Edit3: TEdit;
    DtSrc_end: TDataSource;
    DtSrc_munic: TDataSource;
    DtSrc_bairro: TDataSource;
    DtSrc_dep: TDataSource;
    DtSrc_Par: TDataSource;
    dtsrc_CR: TDataSource;
    VCLReport1: TVCLReport;
    sds_cr: TSQLDataSet;
    SpdBGerar: TSpeedButton;
    dxButton5: TdxButton;
    dxButton15: TdxButton;
    Panel8: TPanel;
    Label15: TLabel;
    SpeedButton11: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton12: TSpeedButton;
    Panel10: TPanel;
    Label19: TLabel;
    SpeedButton13: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    SpeedButton14: TSpeedButton;
    Label55: TLabel;
    Label57: TLabel;
    VDODmPrinter1: TVDODmPrinter;
    Panel15: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    mdta1: TMaskEdit;
    dxButton17: TdxButton;
    Edit10: TEdit;
    dxButton25: TdxButton;
    sdsacordo: TSQLDataSet;
    sdsacordoID_RECEBIMENTOS: TIntegerField;
    sdsacordoID: TIntegerField;
    sdsacordoVALOR_NF: TFloatField;
    sdsacordoVALOR_RECEBER: TFloatField;
    sdsacordoPARCELA: TIntegerField;
    sdsacordoVENCIMENTO: TDateField;
    sdsacordoDATA_PAG: TDateField;
    sdsacordoSTATUS: TStringField;
    sdsacordoVALOR_PAGO: TFloatField;
    sdsacordoVALOR_DIF: TFloatField;
    sdsacordoJUROS: TFloatField;
    sdsacordoDESCONTO: TFloatField;
    sdsacordoMULTA: TFloatField;
    sdsacordoEMISSAO: TDateField;
    sdsacordoN_DOCUMENTO: TStringField;
    sdsacordoCAIXA: TStringField;
    sdsacordoFORMARECEBIMENTO: TStringField;
    sdsacordoVALOR_A_REC: TFloatField;
    sdsacordoTITULO: TIntegerField;
    sdsacordoVALOR_1VIA: TFloatField;
    sdsacordoID_SOCIO: TIntegerField;
    sdsacordoLOTE: TIntegerField;
    sdsacordoGEROU: TStringField;
    sdsacordoDATA_DOC: TDateField;
    sdsacordoGRUPO: TStringField;
    sdsacordoID_BANCO: TIntegerField;
    sdsacordoSITUACAO: TStringField;
    sdsacordoTIPO_DOC: TStringField;
    sdsacordoSELECIONOU: TStringField;
    sdsacordoSERIE: TStringField;
    sdsacordoPERCENTUALJUROS: TFloatField;
    sdsacordoPERCENTUALMULTA: TFloatField;
    sdsacordoPERCENTUALDESCONTO: TFloatField;
    sdsacordoVALOROUTROSACRESCIMOS: TFloatField;
    sdsacordoCODIGO: TIntegerField;
    sdsacordoOBS: TGraphicField;
    sdsacordoENTRADA: TFloatField;
    sdsacordoCODCCUSTO: TSmallintField;
    sdsacordoID_DEPREC: TIntegerField;
    sdsacordoNOTAFISCAL: TIntegerField;
    sdsacordoID_VENDA: TIntegerField;
    sdsacordoID_ACORDO: TIntegerField;
    sdsacordoN_BOLETO: TStringField;
    dspacordo: TDataSetProvider;
    cdsAcordo: TClientDataSet;
    cdsAcordoID_RECEBIMENTOS: TIntegerField;
    cdsAcordoID: TIntegerField;
    cdsAcordoVALOR_NF: TFloatField;
    cdsAcordoVALOR_RECEBER: TFloatField;
    cdsAcordoPARCELA: TIntegerField;
    cdsAcordoVENCIMENTO: TDateField;
    cdsAcordoDATA_PAG: TDateField;
    cdsAcordoSTATUS: TStringField;
    cdsAcordoVALOR_PAGO: TFloatField;
    cdsAcordoVALOR_DIF: TFloatField;
    cdsAcordoJUROS: TFloatField;
    cdsAcordoDESCONTO: TFloatField;
    cdsAcordoMULTA: TFloatField;
    cdsAcordoEMISSAO: TDateField;
    cdsAcordoN_DOCUMENTO: TStringField;
    cdsAcordoCAIXA: TStringField;
    cdsAcordoFORMARECEBIMENTO: TStringField;
    cdsAcordoVALOR_A_REC: TFloatField;
    cdsAcordoTITULO: TIntegerField;
    cdsAcordoVALOR_1VIA: TFloatField;
    cdsAcordoID_SOCIO: TIntegerField;
    cdsAcordoLOTE: TIntegerField;
    cdsAcordoGEROU: TStringField;
    cdsAcordoDATA_DOC: TDateField;
    cdsAcordoGRUPO: TStringField;
    cdsAcordoID_BANCO: TIntegerField;
    cdsAcordoSITUACAO: TStringField;
    cdsAcordoTIPO_DOC: TStringField;
    cdsAcordoSELECIONOU: TStringField;
    cdsAcordoSERIE: TStringField;
    cdsAcordoPERCENTUALJUROS: TFloatField;
    cdsAcordoPERCENTUALMULTA: TFloatField;
    cdsAcordoPERCENTUALDESCONTO: TFloatField;
    cdsAcordoVALOROUTROSACRESCIMOS: TFloatField;
    cdsAcordoCODIGO: TIntegerField;
    cdsAcordoOBS: TGraphicField;
    cdsAcordoENTRADA: TFloatField;
    cdsAcordoCODCCUSTO: TSmallintField;
    cdsAcordoID_DEPREC: TIntegerField;
    cdsAcordoNOTAFISCAL: TIntegerField;
    cdsAcordoID_VENDA: TIntegerField;
    cdsAcordoID_ACORDO: TIntegerField;
    cdsAcordoN_BOLETO: TStringField;
    ImageList1: TImageList;
    DBEdit37: TDBEdit;
    procEndereco: TSQLDataSet;
    procEnderecoID_ENDERECO: TIntegerField;
    procEnderecoID_SOCIO: TIntegerField;
    procEnderecoENDERECO: TStringField;
    procEnderecoCOMPLEMENTO: TStringField;
    procEnderecoID_BAIRRO: TIntegerField;
    procEnderecoID_MUNICIPIO: TIntegerField;
    procEnderecoESTADO: TStringField;
    procEnderecoCEP: TStringField;
    procEnderecoDDD: TStringField;
    procEnderecoFONE: TStringField;
    procEnderecoFONE1: TStringField;
    procEnderecoFAX: TStringField;
    procEnderecoCXP: TStringField;
    procEnderecoTIPOEND: TSmallintField;
    contarEnd: TSQLDataSet;
    contarEndCOUNT: TIntegerField;
    Edit11: TEdit;
    Label34: TLabel;
    DBEdit47: TDBEdit;
    Label42: TLabel;
    DBEdit48: TDBEdit;
    Label48: TLabel;
    DBEdit49: TDBEdit;
    Label50: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit50: TDBEdit;
    Label54: TLabel;
    sdsDep: TSQLDataSet;
    sdsDepID_DEP: TIntegerField;
    sdsDepID_SOCIO: TIntegerField;
    sdsDepNOME_DEP: TStringField;
    sdsDepFALECIDO: TStringField;
    sdsDepCODPAR: TFloatField;
    sdsDepDTNASC: TDateField;
    sdsDepDTFALEC: TDateField;
    sdsDepID_PAR: TIntegerField;
    sdsDepCARENCIA: TIntegerField;
    sdsDepDTACADASTRO: TDateField;
    sdsDepRG: TStringField;
    sdsDepCPF: TStringField;
    sdsDepSEGSOCIO: TStringField;
    sdsDepTELEFONE: TStringField;
    dtaMensal: TJvDateEdit;
    DBEdit31: TDBEdit;
    mesesMensal: TJvSpinEdit;
    valorMensal: TJvCalcEdit;
    dtaSeteFal: TJvDateEdit;
    DBEdit29: TDBEdit;
    mesesSeteFal: TJvSpinEdit;
    valorSeteFal: TJvCalcEdit;
    dtaTri: TJvDateEdit;
    DBEdit30: TDBEdit;
    mesesTri: TJvSpinEdit;
    valorTri: TJvCalcEdit;
    carSetFal: TJvSpinEdit;
    Label56: TLabel;
    carMensal: TJvSpinEdit;
    Label66: TLabel;
    cartri: TJvSpinEdit;
    Label67: TLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    Label68: TLabel;
    cdsGerar: TClientDataSet;
    cdsGerarID_RECEBIMENTOS: TIntegerField;
    cdsGerarSTATUS: TStringField;
    cdsGerarEMISSAO: TDateField;
    cdsGerarVENCIMENTO: TDateField;
    cdsGerarVALOR_NF: TFloatField;
    cdsGerarLOTE: TIntegerField;
    cdsGerarGRUPO: TStringField;
    cdsGerarNOME_SOCIO: TStringField;
    cdsGerarN_INSCRICAO: TIntegerField;
    cdsGerarCPF_CGC: TStringField;
    cdsGerarNOME: TStringField;
    cdsGerarN_BOLETO: TStringField;
    cdsGerarTITULO: TIntegerField;
    cdsGerarID_SOCIO: TIntegerField;
    cdsGerarID: TIntegerField;
    cdsGerarMESANO: TStringField;
    cdsGerarTOT_PENDENTE: TIntegerField;
    cdsGerarRUA: TStringField;
    cdsGerarCEP: TStringField;
    cdsGerarUF: TStringField;
    cdsGerarBAIRRO: TStringField;
    cdsGerarMUNICIPIO: TStringField;
    dspGerar: TDataSetProvider;
    sdsGerar: TSQLDataSet;
    sdsGerarID_RECEBIMENTOS: TIntegerField;
    sdsGerarSTATUS: TStringField;
    sdsGerarEMISSAO: TDateField;
    sdsGerarVENCIMENTO: TDateField;
    sdsGerarVALOR_NF: TFloatField;
    sdsGerarLOTE: TIntegerField;
    sdsGerarGRUPO: TStringField;
    sdsGerarNOME_SOCIO: TStringField;
    sdsGerarN_INSCRICAO: TIntegerField;
    sdsGerarCPF_CGC: TStringField;
    sdsGerarNOME: TStringField;
    sdsGerarMESANO: TStringField;
    sdsGerarN_BOLETO: TStringField;
    sdsGerarTITULO: TIntegerField;
    sdsGerarID_SOCIO: TIntegerField;
    sdsGerarID: TIntegerField;
    sdsGerarTOT_PENDENTE: TIntegerField;
    sdsGerarRUA: TStringField;
    sdsGerarCEP: TStringField;
    sdsGerarUF: TStringField;
    sdsGerarBAIRRO: TStringField;
    sdsGerarMUNICIPIO: TStringField;
    RadioGroup1: TRadioGroup;
    BitBtn2: TdxButton;
    BitBtn1: TBitBtn;
    dbedtDTA_ULTIMA_PARCELA: TDBEdit;
    dbmmoHISTORICO: TDBMemo;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    dxButton16: TdxButton;
    cdsCk: TClientDataSet;
    dspCK: TDataSetProvider;
    sqlCK: TSQLDataSet;
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
    edt1: TEdit;
    lbl5: TLabel;
    BitBtn3: TBitBtn;
    sds_dep: TSQLDataSet;
    sds_depID_DEP: TIntegerField;
    sds_depID_SOCIO: TIntegerField;
    sds_depNOME_DEP: TStringField;
    sds_depFALECIDO: TStringField;
    sds_depCODPAR: TFloatField;
    sds_depDTNASC: TDateField;
    sds_depDTFALEC: TDateField;
    sds_depID_PAR: TIntegerField;
    sds_depDESCRICAO: TStringField;
    sds_depCARENCIA: TIntegerField;
    sds_depDTACADASTRO: TDateField;
    sds_depRG: TStringField;
    sds_depCPF: TStringField;
    sds_depSEGSOCIO: TStringField;
    sds_depTELEFONE: TStringField;
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
    cds_depDESCRICAO: TStringField;
    cds_depCARENCIA: TIntegerField;
    cds_depDTACADASTRO: TDateField;
    cds_depRG: TStringField;
    cds_depCPF: TStringField;
    cds_depSEGSOCIO: TStringField;
    cds_depTELEFONE: TStringField;
    cdsC: TClientDataSet;
    dspC: TDataSetProvider;
    sdsC: TSQLDataSet;
    sdsCID_DEP: TIntegerField;
    sdsCID_SOCIO: TIntegerField;
    sdsCNOME_DEP: TStringField;
    sdsCFALECIDO: TStringField;
    sdsCCODPAR: TFloatField;
    sdsCDTNASC: TDateField;
    sdsCDTFALEC: TDateField;
    sdsCID_PAR: TIntegerField;
    sdsCCARENCIA: TIntegerField;
    sdsCDTACADASTRO: TDateField;
    sdsCRG: TStringField;
    sdsCCPF: TStringField;
    sdsCSEGSOCIO: TStringField;
    sdsCTELEFONE: TStringField;
    sdsCDESCRICAO: TStringField;
    cdsCID_DEP: TIntegerField;
    cdsCID_SOCIO: TIntegerField;
    cdsCNOME_DEP: TStringField;
    cdsCFALECIDO: TStringField;
    cdsCCODPAR: TFloatField;
    cdsCDTNASC: TDateField;
    cdsCDTFALEC: TDateField;
    cdsCID_PAR: TIntegerField;
    cdsCCARENCIA: TIntegerField;
    cdsCDTACADASTRO: TDateField;
    cdsCRG: TStringField;
    cdsCCPF: TStringField;
    cdsCSEGSOCIO: TStringField;
    cdsCTELEFONE: TStringField;
    cdsCDESCRICAO: TStringField;
    sds_parametro: TSQLDataSet;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroPARAMETRO1: TStringField;
    sds_parametroPARAMETRO2: TStringField;
    sds_parametroPARAMETRO3: TStringField;
    sds_parametroPARAMETRO4: TStringField;
    sds_parametroPARAMETRO5: TStringField;
    sds_parametroPARAMETRO6: TStringField;
    sds_parametroPARAMETRO7: TStringField;
    sds_parametroPARAMETRO8: TStringField;
    sds_parametroPARAMETRO9: TStringField;
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    cds_paramPARAMETRO: TStringField;
    cds_paramDESCRICAO: TStringField;
    cds_paramCONFIGURADO: TStringField;
    cds_paramPARAMETRO1: TStringField;
    cds_paramPARAMETRO2: TStringField;
    cds_paramPARAMETRO3: TStringField;
    cds_paramPARAMETRO4: TStringField;
    cds_paramPARAMETRO5: TStringField;
    cds_paramPARAMETRO6: TStringField;
    cds_paramPARAMETRO7: TStringField;
    cds_paramPARAMETRO8: TStringField;
    cds_paramPARAMETRO9: TStringField;
    DBEdit3x: TJvDBDatePickerEdit;
    Label69: TLabel;
    JvCalcEdit1: TJvCalcEdit;
    Label70: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    Label71: TLabel;
    JvCalcEdit3: TJvCalcEdit;
    DBEdit32: TDBEdit;
    DBEdit38: TDBEdit;
    Label72: TLabel;
    Label73: TLabel;
    TabSheet8: TTabSheet;
    Panel16: TPanel;
    dxButton34: TdxButton;
    dxButton35: TdxButton;
    dxButton36: TdxButton;
    dxButton37: TdxButton;
    dsPos: TDataSource;
    cdsPos: TClientDataSet;
    dspPos: TDataSetProvider;
    sqlPos: TSQLDataSet;
    sqlPosID_POS: TIntegerField;
    sqlPosID_SOCIO: TIntegerField;
    sqlPosA: TStringField;
    sqlPosB: TStringField;
    cdsPosID_POS: TIntegerField;
    cdsPosID_SOCIO: TIntegerField;
    cdsPosA: TStringField;
    cdsPosB: TStringField;
    Label74: TLabel;
    DBEdit39: TDBEdit;
    Label75: TLabel;
    DBEdit40: TDBEdit;
    DBGrid6: TDBGrid;
    dxButton18: TdxButton;
    EvDBNavigator1: TEvDBNavigator;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    dxButton28: TdxButton;
    dxButton33: TdxButton;
    dxButton38: TdxButton;
    sqlCK1: TSQLDataSet;
    dspCK1: TDataSetProvider;
    cdsCK1: TClientDataSet;
    Button1: TButton;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    Button2: TButton;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit51: TDBEdit;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    sqlCKTP0: TIntegerField;
    sqlCKTP1: TIntegerField;
    cdsCkTP0: TIntegerField;
    cdsCkTP1: TIntegerField;
    sqlCK1ID_SOCIO: TIntegerField;
    sqlCK1TP0: TIntegerField;
    sqlCK1TP1: TIntegerField;
    cdsCK1ID_SOCIO: TIntegerField;
    cdsCK1TP0: TIntegerField;
    cdsCK1TP1: TIntegerField;
    BitBtn4: TBitBtn;
    datavenc: TJvDateEdit;
    Label82: TLabel;
    Label83: TLabel;
    datavenM: TJvDateEdit;
    BitBtn5: TBitBtn;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    Panel17: TPanel;
    dxButton39: TdxButton;
    dxButton40: TdxButton;
    dxButton41: TdxButton;
    dxButton42: TdxButton;
    dxButton43: TdxButton;
    dxButton44: TdxButton;
    dxButton45: TdxButton;
    dxButton46: TdxButton;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    SpeedButton7: TSpeedButton;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Label103: TLabel;
    SpeedButton17: TSpeedButton;
    Label104: TLabel;
    Label105: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    ComboBox2: TComboBox;
    DBEdit58: TDBEdit;
    DBRadioGroup7: TDBRadioGroup;
    GroupBox5: TGroupBox;
    DBEdit59: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBMemo2: TDBMemo;
    DBComboBox4: TDBComboBox;
    Edit14: TEdit;
    Edit15: TEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    JvDBSpinEdit2: TJvDBSpinEdit;
    DBEdit66: TDBEdit;
    TabSheet10: TTabSheet;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    SpeedButton18: TSpeedButton;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    SpeedButton19: TSpeedButton;
    Panel18: TPanel;
    dxButton47: TdxButton;
    dxButton48: TdxButton;
    dxButton49: TdxButton;
    dxButton50: TdxButton;
    dxButton51: TdxButton;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBRadioGroup8: TDBRadioGroup;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit69: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBGrid7: TDBGrid;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    TabSheet11: TTabSheet;
    Label117: TLabel;
    Label118: TLabel;
    SpeedButton20: TSpeedButton;
    Label119: TLabel;
    Label120: TLabel;
    SpeedButton21: TSpeedButton;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Panel19: TPanel;
    dxButton52: TdxButton;
    dxButton53: TdxButton;
    dxButton54: TdxButton;
    dxButton55: TdxButton;
    dxButton56: TdxButton;
    dxButton57: TdxButton;
    dxButton58: TdxButton;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBRadioGroup9: TDBRadioGroup;
    DBLookupComboBox6: TDBLookupComboBox;
    DBGrid8: TDBGrid;
    Edit16: TEdit;
    Edit17: TEdit;
    DBNavigator1: TDBNavigator;
    Edit18: TEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBRadioGroup10: TDBRadioGroup;
    DBEdit82: TDBEdit;
    Edit19: TEdit;
    BitBtn6: TBitBtn;
    DBEdit83: TDBEdit;
    DBRadioGroup11: TDBRadioGroup;
    TabSheet12: TTabSheet;
    Panel20: TPanel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel21: TPanel;
    Label130: TLabel;
    SpeedButton22: TSpeedButton;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    SpeedButton23: TSpeedButton;
    Label134: TLabel;
    JvDateEdit1: TJvDateEdit;
    DBEdit84: TDBEdit;
    JvSpinEdit1: TJvSpinEdit;
    JvCalcEdit4: TJvCalcEdit;
    JvSpinEdit2: TJvSpinEdit;
    RadioButton7: TRadioButton;
    GroupBox7: TGroupBox;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    DBGrid9: TDBGrid;
    dxButton59: TdxButton;
    dxButton60: TdxButton;
    dxButton61: TdxButton;
    DBEdit85: TDBEdit;
    dxButton62: TdxButton;
    DBEdit86: TDBEdit;
    dxButton63: TdxButton;
    dxButton64: TdxButton;
    Memo4: TMemo;
    Memo5: TMemo;
    dxButton65: TdxButton;
    BitBtn7: TBitBtn;
    dxButton66: TdxButton;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvCalcEdit5: TJvCalcEdit;
    dxButton67: TdxButton;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    BitBtn8: TBitBtn;
    JvDateEdit2: TJvDateEdit;
    Panel22: TPanel;
    dxButton68: TdxButton;
    TabSheet13: TTabSheet;
    GroupBox8: TGroupBox;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    dxButton69: TdxButton;
    DBGrid10: TDBGrid;
    dxButton70: TdxButton;
    dxButton71: TdxButton;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    dxButton72: TdxButton;
    dxButton73: TdxButton;
    dxButton74: TdxButton;
    GroupBox9: TGroupBox;
    DBComboBox6: TDBComboBox;
    DBEdit91: TDBEdit;
    dxButton75: TdxButton;
    dxButton76: TdxButton;
    dxButton77: TdxButton;
    JvCalcEdit6: TJvCalcEdit;
    dxButton78: TdxButton;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    JvDateEdit3: TJvDateEdit;
    BitBtn9: TBitBtn;
    Panel23: TPanel;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Panel24: TPanel;
    Label148: TLabel;
    SpeedButton24: TSpeedButton;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    SpeedButton25: TSpeedButton;
    Label152: TLabel;
    JvDateEdit4: TJvDateEdit;
    DBEdit94: TDBEdit;
    JvSpinEdit3: TJvSpinEdit;
    JvCalcEdit7: TJvCalcEdit;
    JvSpinEdit4: TJvSpinEdit;
    RadioGroup2: TRadioGroup;
    RadioButton11: TRadioButton;
    Panel25: TPanel;
    dxButton79: TdxButton;
    TabSheet14: TTabSheet;
    Panel26: TPanel;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    Panel27: TPanel;
    Label153: TLabel;
    SpeedButton26: TSpeedButton;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    SpeedButton27: TSpeedButton;
    Label157: TLabel;
    JvDateEdit5: TJvDateEdit;
    DBEdit95: TDBEdit;
    JvSpinEdit5: TJvSpinEdit;
    JvCalcEdit8: TJvCalcEdit;
    JvSpinEdit6: TJvSpinEdit;
    RadioButton15: TRadioButton;
    GroupBox10: TGroupBox;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    dxButton80: TdxButton;
    DBGrid11: TDBGrid;
    dxButton81: TdxButton;
    dxButton82: TdxButton;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    dxButton83: TdxButton;
    dxButton84: TdxButton;
    dxButton85: TdxButton;
    dxButton86: TdxButton;
    dxButton87: TdxButton;
    JvCalcEdit9: TJvCalcEdit;
    dxButton88: TdxButton;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    Panel28: TPanel;
    dxButton89: TdxButton;
    TabSheet15: TTabSheet;
    Panel29: TPanel;
    dxButton90: TdxButton;
    Memo6: TMemo;
    DBMemo3: TDBMemo;
    TabSheet16: TTabSheet;
    Label165: TLabel;
    Label166: TLabel;
    Panel30: TPanel;
    dxButton91: TdxButton;
    dxButton92: TdxButton;
    dxButton93: TdxButton;
    dxButton94: TdxButton;
    dxButton95: TdxButton;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBGrid12: TDBGrid;
    EvDBNavigator2: TEvDBNavigator;
    dspInf: TDataSetProvider;
    sqlInf: TSQLDataSet;
    cdsInf: TClientDataSet;
    sqlInfID_DEP: TIntegerField;
    cdsInfID_DEP: TIntegerField;
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btBoletoClick(Sender: TObject);
    procedure btReciboClick(Sender: TObject);
    procedure btAcordoClick(Sender: TObject);
    procedure dxButton17Click(Sender: TObject);
    procedure dxButton25Click(Sender: TObject);
    procedure btCancelaAcordoClick(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3ColEnter(Sender: TObject);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DtSrc_endStateChange(Sender: TObject);
    procedure DtSrc_depStateChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBRadioGroup4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpdBGerarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btExcluir_EClick(Sender: TObject);
    procedure btIncluir_EClick(Sender: TObject);
    procedure btBaixaClick(Sender: TObject);
    procedure btCancelar_DClick(Sender: TObject);
    procedure btCancelar_EClick(Sender: TObject);
    procedure btExcluir_DClick(Sender: TObject);
    procedure btGravar_DClick(Sender: TObject);
    procedure btGravar_EClick(Sender: TObject);
    procedure btIncluir_DClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
    procedure dxButton13Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure DBRadioGroup5Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid4ColEnter(Sender: TObject);
    procedure DBGrid4ColExit(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid5ColEnter(Sender: TObject);
    procedure DBGrid5ColExit(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    function KillTask(ExeFileName: string): Integer;
    procedure dxButton35Click(Sender: TObject);
    procedure dxButton37Click(Sender: TObject);
    procedure dxButton34Click(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure dxButton18Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure dxButton28Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    { Private declarations }
  public
     procedure varAbrirtabelas;
     procedure novosocio;
     procedure mudaplano;
     procedure baixacompleta;
     procedure baixasimples;
     procedure mostratotais;
     procedure restricoes;
     procedure geramensalidade;
     procedure geraplanoMensal;
     Procedure CalculaJuros;
    { Public declarations }
  end;

var
  fSocios: TfSocios;
  tipo_cr, DTA_ALT_PLANO, AtivoCli, PendCli,  TodosCli , CancCli: string;
  banco, l_pgto, texto, texto1, texto2, texto3 : string;
  baixa, sql, status, varHist, varPlano, tipobaixa, atualizar ,carterinha: string;
  TD: TTransactionDesc;
  valorAReceber, ValorRecebido, desc, juros, perda,
  funrural,outros, valorr, resto: Double;

implementation

uses UDM, uProcurar, udmconsulta, uProcura, uBairro, uMunicipio,
  uSocio_Procura, uMostra_Insc_vazia, uAltera_contrato, uExclusao,
  uReceber, uRecibo, uMuda_Plano, uPrincipal, sCtrlResize, UfRemessaAcordo,
  U_Autoriza ,Tlhelp32;

{$R *.dfm}

procedure TfSocios.PageControl1Change(Sender: TObject);
begin
  inherited;
  if (PageControl1.ActivePage = TabSheet1) then
     Panel1.Align := alBottom
  else
     Panel1.Align := alNone;

  // mostro a aba FINANCEIRO de acordo com o Plano
  if (DBComboBox1.Text = '7 FALECIMENTO') then
  begin
      TabSheet4.TabVisible := True;
      rb3.Checked := True;
  end
  else
  begin
      TabSheet4.TabVisible := False;
      rb3.Checked := False;
  end;

  if (DBComboBox1.Text = 'MENSAL') then
  begin
      TabSheet5.TabVisible := True;
      rb_mensal3.Checked := True;
  end
  else
  begin
      TabSheet5.TabVisible := False;
      rb_mensal3.Checked := True;
  end;

  if (DBComboBox1.Text = 'TRIMESTRAL') then
  begin
      TabSheet6.TabVisible := True;
      rb_tri3.Checked := True;
  end
  else
  begin
      TabSheet6.TabVisible := False;
      rb_tri3.Checked := True;
  end;

end;

procedure TfSocios.FormShow(Sender: TObject);
begin
  inherited;
//  sCtrlResize.CtrlResize(TForm(fSocios));
  PageControl1.ActivePage := TabSheet1;
  Panel1.Align := alBottom;
  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';
  if not dmconsulta.cds_est_civil.Active then
     dmconsulta.cds_est_civil.Open;
  if not dmconsulta.cds_parentesco.Active then
     dmconsulta.cds_parentesco.Open;
  if not dmconsulta.cds_bairro.Active then
     dmconsulta.cds_bairro.Open;
  if not dmconsulta.cds_munic.Active then
     dmconsulta.cds_munic.Open;
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Sócios';
  dm.cdsPermissao.Open;
  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
    Incluir  := 'S';
    IncluirD := 'S';
    IncluirE := 'S';
    Cancelar  := 'S';
    CancelarD := 'S';
    CancelarE := 'S';
    btnIncluir.Enabled   := true;
    btIncluir_D.Enabled  := true;
    btIncluir_E.Enabled  := true;
    btnCancelar.Enabled  := true;
    btCancelar_D.Enabled := true;
    btCancelar_E.Enabled := true;
  end
  else
  begin
    Incluir  := 'N';
    IncluirD := 'N';
    IncluirE := 'N';
    Cancelar  := 'N';
    CancelarD := 'N';
    CancelarE := 'N';
    btnIncluir.Enabled := false;
    btIncluir_D.Enabled := false;
    btIncluir_E.Enabled := false;
    btnCancelar.Enabled  := false;
    btCancelar_D.Enabled := false;
    btCancelar_E.Enabled := false;
  end;
  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
  begin
     Excluir  := 'S';
     ExcluirD := 'S';
     ExcluirE := 'S';
     btnExcluir.Enabled  := true;
     btExcluir_D.Enabled := true;
     btExcluir_E.Enabled := true;
  end
  else
  begin
     Excluir  := 'N';
     ExcluirD := 'N';
     ExcluirE := 'N';
     btnExcluir.Enabled  := false;
     btExcluir_D.Enabled := false;
     btExcluir_E.Enabled := false;
  end;
  if dm.cdsPermissaoALTERAR.AsString = 'S' then
  begin
     Alterar  := 'S';
     AlterarD := 'S';
     AlterarE := 'S';
     btnGravar.Enabled  := true;
     btGravar_D.Enabled := true;
     btGravar_E.Enabled := true;
  end
  else
  begin
     Alterar  := 'N';
     AlterarD := 'N';
     AlterarE := 'N';
     btnGravar.Enabled  := false;
     btGravar_D.Enabled := false;
     btGravar_E.Enabled := false;
  end;

  if dm.cdsPermissaoCONSULTAR.AsString = 'S' then
     Procurar  := 'S'
  else
     Procurar  := 'N';
  mostratotais;
end;

procedure TfSocios.SpeedButton10Click(Sender: TObject);
begin
//  inherited;
  if (not dm.cds_socio.Active) then
    exit;
  if (dm.cds_socio.State in [dsBrowse]) then
    dm.cds_socio.Edit;

  fProcura:=TfProcura.Create(self,dmconsulta.procFaixa);
  try
    fProcura.EditProc.Visible := False;
    fProcura.RxLabel1.Caption := 'Faixas de Pagamento';
    if fProcura.ShowModal=mrOk then
    begin
      if dm.cds_socio.State in [dsBrowse] then
        dm.cds_socio.Edit;
      dm.cds_socioFAIXA.AsInteger := dmconsulta.procFaixaFAIXA.AsInteger;
    end;
  finally
    dmconsulta.procFaixa.Close;
    fProcura.Free;
  end;
end;

procedure TfSocios.SpeedButton1Click(Sender: TObject);
begin
  if (not dm.cds_socio.Active) then
    exit;
  if (dm.cds_socio.State in [dsBrowse]) then
    dm.cds_socio.Edit;

  fProcura := TfProcura.Create(self,dmconsulta.procVendedor);
  try
     fProcura.EditProc.DataField := 'VENDEDOR';
     if fProcura.ShowModal=mrOk then
     begin
       if dm.cds_socio.State in [dsBrowse] then
         dm.cds_socio.Edit;
        dm.cds_socioID_VEN.AsInteger := dmconsulta.procVendedorID_VEN.AsInteger;
        Edit1.Text := dmconsulta.procVendedorVENDEDOR.AsString;
     end;
  finally
      dmconsulta.procVendedor.Close;
      fProcura.Free;
  end;

end;

procedure TfSocios.SpeedButton2Click(Sender: TObject);
begin
  if (not dm.cds_socio.Active) then
    exit;
  if (dm.cds_socio.State in [dsBrowse]) then
    dm.cds_socio.Edit;

  fProcura := TfProcura.Create(self,dmconsulta.procCobrador);
  try
   fProcura.EditProc.DataField := 'NOME';
   if fProcura.ShowModal=mrOk then
    begin
     if dm.cds_socio.State in [dsBrowse] then
       dm.cds_socio.Edit;
      dm.cds_socioID_COB.AsInteger := dmconsulta.procCobradorID_COB.AsInteger;
      Edit2.Text := dmconsulta.procCobradorNOME.AsString;
    end;
   finally
    dmconsulta.procCobrador.Close;
    fProcura.Free;
   end;
end;

procedure TfSocios.SpeedButton5Click(Sender: TObject);
begin
 // inherited;
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
     dm.cds_socioDTNASC.Clear;

  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_socioDTNASC.Clear;
  end;
end;

procedure TfSocios.SpeedButton3Click(Sender: TObject);
begin
  //inherited;
  fBairro := TfBairro.Create(Application);
  try
    if (dmconsulta.cds_bairro.Active) then
        dmconsulta.cds_bairro.Close;
    fBairro.ShowModal;
  finally
    dmconsulta.cds_bairro.Open;
    fBairro.Free;
  end;
end;

procedure TfSocios.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  fMunicipio := TfMunicipio.Create(Application);
  try
    if (dmconsulta.cds_munic.Active) then
        dmconsulta.cds_munic.Close;
    fMunicipio.ShowModal;
  finally
    dmconsulta.cds_munic.Open;
    fMunicipio.Free;
  end;
end;

procedure TfSocios.rb1Click(Sender: TObject);
begin
  inherited;
    //AtivoCli := 'STATUS = ''Pago''';
    AtivoCli := 'STATUS <> ''Pendente''';
    AtivoCli := AtivoCli + ' and STATUS <> ''Acordo''';
    dm.cds_CR.Filter := AtivoCli;
    dm.cds_CR.Filtered := True;
    mostratotais;
end;

procedure TfSocios.rb2Click(Sender: TObject);
begin
  inherited;
    PendCli := 'STATUS <> ''Pago''';
    PendCli := PendCli + ' and STATUS <> ''Renegociado''';
    PendCli := PendCli + ' and Situacao <> ''Cancelado''';
    PendCli := PendCli + ' and (( STATUS = '+ QuotedStr('Pendente') + ')';
    PendCli := PendCli + ' or ( STATUS = '+ QuotedStr('Acordo')+ '))';
    dm.cds_CR.Filter := PendCli;
    dm.cds_CR.Filtered := True;
    mostratotais;
end;

procedure TfSocios.rb3Click(Sender: TObject);
begin
  inherited;
    TodosCli := '';
    TodosCli := 'Situacao <> ''Cancelado''';
    dm.cds_CR.Filter := TodosCli;
    dm.cds_CR.Filtered := True;
    mostratotais;
end;

procedure TfSocios.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     DM.cds_socioDATAINICIO.Clear;
  end;
end;

procedure TfSocios.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var dif :Integer;
begin
  inherited;
    edit7.Text:= fSocio_Procura.DifDias(dm.cds_depDTACADASTRO.AsDateTime,date);
    dif := StrToInt(Edit7.Text);
    if dif < dm.cds_depCARENCIA.AsInteger then
      Edit6.Text := 'Sócio em Carência'
    else
      Edit6.Text := '';
end;

procedure TfSocios.DBGrid2CellClick(Column: TColumn);
var dif :Integer;
begin
  inherited;
    edit7.Text := fSocio_Procura.DifDias(dm.cds_depDTACADASTRO.AsDateTime,date);
    dif := StrToInt(Edit7.Text);
    if dif < dm.cds_depCARENCIA.AsInteger then
      Edit6.Text := 'Sócio em Carência'
    else
      Edit6.Text := '';
end;

procedure TfSocios.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not odd(DtSrc_dep.dataset.RecNo) then // se for impar
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
  if Column.Field = DM.cds_depNOME_DEP then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depFALECIDO then
   if DM.cds_depFALECIDO.AsString = 'N' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depFALECIDO then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depFALECIDO then
   if DM.cds_depFALECIDO.AsString = '' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depDESCRICAO then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depDTNASC then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depDTFALEC then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depSEGSOCIO then
   if DM.cds_depSEGSOCIO.AsString = 'S' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

end;

procedure TfSocios.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var dif :Integer;
begin
  inherited;
    edit7.Text:=fSocio_Procura.DifDias(dm.cds_depDTACADASTRO.AsDateTime,date);
    dif := StrToInt(Edit7.Text);
    if dif < dm.cds_depCARENCIA.AsInteger then
      Edit6.Text := 'Sócio em Carência'
    else
      Edit6.Text := '';
end;

procedure TfSocios.btnIncluirClick(Sender: TObject);
begin
 if btnIncluir.Enabled = false then Exit;
  inherited;
  varPlano := '';// inicializo a Variavel
  dm.cds_socioTIPO_DOC.AsString := 'F'; //F = Fisico, J = Juridico
  dm.cds_socioCPF_CGC.EditMask := '000.000.000-00;1;_';
  dm.cds_socioSTATUS.AsString := 'A'; // A = Ativo, I = Inativo
  dm.cds_socioSITUACAO.AsString := 'Ativo';
  dm.cds_socioCARENCIA.AsInteger := 0; // se o campo ficar nullo o sistema ñ gera mensalidades
  //===========================================================================
  //Para sócio Mensalista "NÃO" = não gero Carne do Banco p/ o Sócio
  dm.cds_socioGEROU.AsString := 'NÃO';
  dm.cds_socioDTACADASTRO.AsDateTime := now; // pego a data do sistema
  //===========================================================================
  //testo se as tabelas "estado civil, Grau de Parentesco, Bairro e Municipio"
  //estão abertas, se não estiverem abro.
  varAbrirtabelas;
  //===========================================================================
  // Fecho as tabelas endereço e dependentes, dessa forma o usuario é forçado
  // a clicar no botão correspondente para incluzãzo dos dados..
  if dm.cds_end.Active then // tabela endereco
     dm.cds_end.Close;
  if dm.cds_dep.Active then // tabela dependentes
    dm.cds_dep.Close;
  //===========================================================================
  // Abilito a aba Dados do sócio
   PageControl1.ActivePage := TabSheet1;
  //===========================================================================
  // Abro formulário para o usuário escolher em qual grupo vai incluir o Sócio
  fMostra_Insc_vazia := TfMostra_Insc_vazia.Create(Application);
  try
    fMostra_Insc_vazia.BitBtn1.Click;
    fMostra_Insc_vazia.ShowModal;
  finally
    fMostra_Insc_vazia.Free;
  end;
  DBEdit2.SetFocus;
end;

procedure TfSocios.varAbrirtabelas;
begin
    if (not dmconsulta.cds_est_civil.Active) then
      dmconsulta.cds_est_civil.Open;
    dmconsulta.cds_est_civil.First;
    ComboBox1.Items.Clear;
    while not dmconsulta.cds_est_civil.Eof do
    begin
      ComboBox1.Items.Add(dmconsulta.cds_est_civilDESCRICAO.AsString);
      dmconsulta.cds_est_civil.Next;
    end;
    if (not dmconsulta.cds_munic.Active) then
        dmconsulta.cds_munic.Open;//Abro a tabela municipios
    if (not dmconsulta.cds_bairro.Active) then
        dmconsulta.cds_bairro.Open;//Abro a tabela bairros
    if (not dmconsulta.cds_parentesco.Active) then
        dmconsulta.cds_parentesco.Open;//Abro a tabela Parentesco
end;

procedure TfSocios.btnGravarClick(Sender: TObject);
begin
   DTA_ALT_PLANO := '';// inicializo a Variavel
   if Alterar = 'N' then
     Exit;//usuário não tem permissão
   //Testo se foi escolhido um cobrador(campo é obrigatório)
   if (Edit2.Text = '') then
   begin
     MessageDlg('Pôr favor escolha um Cobrador para esse Sócio..', mtWarning, [mbCancel], 0);
     exit
   end;
     if (DBEdit37.Text = '') then
     begin
       MessageDlg('Escolha uma Faixa de Pagamento..', mtWarning, [mbCancel], 0);
       exit
     end;
   //===========================================================================
   {** se estiver inserindo um socio novo}
   if (dm.cds_socio.State in [dsInsert]) then
      novosocio;//vejo se o plano foi escolhido e se foi verifico qual é para
                // popular os devidos campos

   //===========================================================================
   {** se estiver alterando dados do Sócio Testo se o plano foi alterado}
   {** se sim executo a SP mudaplano}
   if (dm.cds_socio.State in [dsEdit]) then
     if (dm.cds_socioPLANO.AsString <> dm.cds_socioPLANO_ANT.AsString) then
     begin
        mudaplano;
        dm.cds_socioDTA_CONTRATO.Value := StrToDateTime(DTA_ALT_PLANO);
     end;

   //===========================================================================
   {** Se o campo estado Civil não estiver vaziu busco }
   {** o codigo da tabela estado civil antes de Gravar os dados}
   if ComboBox1.Text <> '' then
   begin
        dmconsulta.cds_est_civil.Locate('DESCRICAO',ComboBox1.Text,[loCaseInsensitive]);
        dm.cds_socioESTCIV.AsInteger := dmconsulta.cds_est_civilID_ESTCIVIL.AsInteger;
   end;
   //===========================================================================
   // Salvo os dados da tabela Socios
     inherited;
     //===========================================================================
     // Mostro a aba financeira de acordo com o plano que ele cadastrou
     if (dm.cds_socioPLANO.AsString = '7 FALECIMENTO') then
       TabSheet4.TabVisible := True;
     if (dm.cds_socioPLANO.AsString = 'MENSAL') then
       TabSheet5.TabVisible := True;
     if (dm.cds_socioPLANO.AsString = 'TRIMESTRAL') then
       TabSheet4.TabVisible := True;

      if dmconsulta.cds_dep.Active then
        dmconsulta.cds_dep.Close;
      dmconsulta.cds_dep.Params[0].Clear;
      dmconsulta.cds_dep.Params[1].Clear;
      dmconsulta.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
      dmconsulta.cds_dep.Params[1].AsString := 'SOCIO';
      dmconsulta.cds_dep.Open;
      {** abro a tabela dependente com parametro nome do sócio se não exitir cadastro}
      if not dmconsulta.cds_dep.IsEmpty then
      begin
         dmconsulta.cds_dep.Edit;
         dmconsulta.cds_depNOME_DEP.AsString := dm.cds_socioNOME_SOCIO.AsString;
         dmconsulta.cds_depDTACADASTRO.AsDateTime := dm.cds_socioDTACADASTRO.AsDateTime;
         dmconsulta.cds_depCARENCIA.AsString := dm.cds_socioCARENCIA.AsString;
         dmconsulta.cds_dep.ApplyUpdates(0);
         dmconsulta.cds_dep.Close;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'Insert into DEPENDENTE (NOME_DEP ,DTACADASTRO )';
   atualizar := atualizar + ' VALUES(';
   atualizar := atualizar + QuotedStr(dm.cds_socioNOME_SOCIO.AsString);
   atualizar := atualizar +  ', ';
   atualizar := atualizar + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(dm.cds_socioDTACADASTRO.AsString)));
   atualizar := atualizar +  ')';
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

         if dm.cds_dep.Active then
            dm.cds_dep.Close;
         dm.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
         dm.cds_dep.Open;
      end
      else
      begin
         if not dm.cds_dep.Active then
           dm.cds_dep.Open;
         dm.cds_dep.Append;
         dm.cds_depNOME_DEP.AsString := dm.cds_socioNOME_SOCIO.AsString;
         dm.cds_depID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
         dm.cds_depDTACADASTRO.AsDateTime := dm.cds_socioDTACADASTRO.AsDateTime;
         dm.cds_depID_PAR.AsInteger := 0;
         dm.cds_depFALECIDO.AsString := 'N';
         if dm.cds_socioDTNASC.AsString <> '' then
           dm.cds_depDTNASC.AsDateTime := dm.cds_socioDTNASC.AsDateTime;

        if (cdsInf.Active) then
        cdsInf.Close;
        cdsInf.Open;
        cdsInfID_DEP.AsInteger;


   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'Insert into DEPENDENTE (NOME_DEP,ID_SOCIO,ID_DEP,ID_PAR,FALECIDO ,DTACADASTRO )';
   atualizar := atualizar + ' VALUES(';
   atualizar := atualizar + QuotedStr(dm.cds_socioNOME_SOCIO.AsString);
   atualizar := atualizar +  ', ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
   atualizar := atualizar +  ', ';
   atualizar := atualizar + IntToStr(cdsInfID_DEP.AsInteger);
   atualizar := atualizar +  ', ';
   atualizar := atualizar + IntToStr(0);
   atualizar := atualizar +  ', ';
   atualizar := atualizar + QuotedStr('N');
   atualizar := atualizar +  ', ';
   atualizar := atualizar + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(dm.cds_socioDTACADASTRO.AsString)));
   atualizar := atualizar +  ')';
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);



             if not DtSrc_dep.DataSet.Active then
       DtSrc_dep.DataSet.open;
    DtSrc_dep.DataSet.Append;
    dm.cds_depFALECIDO.AsString := 'N';
         dm.cds_dep.Close;
         dmconsulta.cds_dep.Close;
         dm.cds_dep.Close;
         dm.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
         dm.cds_dep.Open;
      end;


end;

procedure TfSocios.novosocio;
begin
  //Testo se foi escolhido um Plano(campo é obrigatório)
  if dm.cds_socioPLANO.AsString = '' then
  begin
     MessageDlg('preencha o campo Plano de Pagamento..', mtWarning, [mbOK], 0);
     DBComboBox1.SetFocus;
     exit;
  end
  else
  begin
     dm.cds_socioPLANO_ANT.AsString := dm.cds_socioPLANO.AsString;
  end;
  //===========================================================================
  // Verifico se o plano escolhido é mensal se for o campo GEROU tem que conter
  // o valor NÃO para que seja gerado o Carne do BB, o campo já foi alimentado
  // na inclusão, alimento novamente caso o usuario apague o valor do campo
  if (DM.cds_socioPLANO.AsString = 'MENSAL') then
     dm.cds_socioGEROU.AsString := 'NÃO';
end;

procedure TfSocios.mudaplano;
begin
  //===========================================================================
  {** se o plano mudou para MENSAL, o campo gerou recebe não}
  if (DM.cds_socioPLANO.AsString = 'MENSAL') then
     dm.cds_socioGEROU.AsString := 'NÃO';
  //===========================================================================
  {** Abro um Form para o usuário digitar a data em que o plano mudou}
  faltera_contrato := Tfaltera_contrato.Create(Application);
  try
    faltera_contrato.ShowModal;
  finally
    faltera_contrato.Free;
  end;
  //===========================================================================
  {** Populo o campo Plano_ant(Plano de pgto anterior)}
  if (varPlano = '') then //if dm.cds_socioPLANO.AsString <> '' then
    dm.cds_socioPLANO_ANT.AsString := dm.cds_socioPLANO.AsString
  else
    dm.cds_socioPLANO_ANT.AsString := varPlano;
end;

procedure TfSocios.btnExcluirClick(Sender: TObject);
var
  sql_texto :string;
begin
  //===========================================================================
  {** Se o Usuário não tiver permissão para exclusão cancelo a operação}
  if (Excluir = 'N') then
    Exit;
  //===========================================================================
  {** se o cds estiver fechado cancelo a operação}
  if (DtSrc.DataSet.State in [dsInactive]) then
    Exit;
  //===========================================================================
  {** Abro form para que o usuario digite o motivo da exclusão}
  {** Obs. o Sócio não é excluido apenas o statos dele muda para Inativo}
  fExclusao := TfExclusao.Create(Application);
  try
    if fExclusao.ShowModal = mrCancel then
       exit;
  finally
    fExclusao.Free;
  end;
  //===========================================================================
  {** Mudo o status do Sócio}
  if dm.cds_socio.State in [dsBrowse] then
     dm.cds_socio.Edit;
  dm.cds_socioGRUPO.Clear;
  dm.cds_socioN_INSCRICAO.Clear;
  dm.cds_socioSITUACAO.AsString := 'Inativo';
  dm.cds_socioSTATUS.AsString := 'I'; // A = Ativo, I = Inativo
  dm.cds_socioDATAEXCLUSAO.AsDateTime := Now;
  dm.cds_socio.ApplyUpdates(0);
  //===========================================================================
  {** Mudo o status das parcelas do socio para Inativo}
  sql_texto := '';
  sql_texto := 'UPDATE RECEBIMENTOS SET SITUACAO = ';
  sql_texto := sql_texto + '''' + 'Inativo' + '''';
  sql_texto := sql_texto + ' where ID_SOCIO = ';
  sql_texto := sql_texto + '' + IntToStr(dm.cds_socioID_SOCIO.AsInteger) + '';
  sds_cr.CommandText := sql_texto;
  sds_cr.ExecSQL();
  Edit1.Text := '';
  Edit2.Text := '';
end;

procedure TfSocios.btnCancelarClick(Sender: TObject);
begin
  if Cancelar = 'N' then Exit;
   inherited;

end;

procedure TfSocios.dxButton2Click(Sender: TObject);
begin
  inherited;
   if (not fSocio_Procura.cds_proc.Active) then
     fSocio_Procura.ShowModal
   else
     close;
end;

procedure TfSocios.dxButton10Click(Sender: TObject);
var
MSWord , Doc , Docs: Variant;
finallinha:boolean;
i ,n  :Integer;
numero , caminho: string;
begin
  inherited;
  if (not cds_par.Active) then
  cds_par.Open;

  cds_par.Locate('PARAMETRO','CARTERINHA',[loCaseInsensitive]);
  carterinha := cds_parPARAMETRO1.AsString;
  cds_par.Close;

  if ( carterinha = 'SERRA') then
  begin
    VCLReport1.FileName := '';
    VCLReport1.Title := str_relatorio + 'Carteirinha.rep';
    VCLReport1.FileName := str_relatorio + 'Carteirinha.rep';
    VCLReport1.Report.Params.ParamByName('PID').Value := dm.cds_socioID_SOCIO.Value;
    VCLReport1.Execute;
    exit;
  end;

  if (carterinha = '') then
  begin
    MessageDlg('É preciso rodar o script  ''insert_parametro_carterinha.sql''  !', mtError, [mbOK], 0);
    Exit;
  end;
  
  if (carterinha = 'PIRAMIDE') then
  { Abre o Word }
  MSWord := CreateOleObject('Word.Application');
  {não visualizar Microsoft Word}
  MSWord.Visible:= False;
  Docs:= MSWord.Documents;
  caminho := (ExtractFilePath(Application.ExeName)+ '8099F.doc');
  { Abre documento em anexo junto ao  exe}
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ '8099F.doc');

  CopyFile(Pchar(caminho),Pchar(caminho),True);

  finallinha:=false;{Essa variavel foi criada para controlar o avanço de para cada celula da coluna }

  if(cdsC.Active) then
  cdsC.Close;
  cdsC.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
  cdsC.Open;

 // dm.cds_dep.First;
   cdsC.First;
  if finallinha=false then
  begin
    for i := 0 to (StrToInt(edt1.Text)-1) do
    begin
      MSWord.Selection.MoveRight(12);
    end;
    finallinha:=true;
  end;

  n := 1 ;


 // while not dm.cds_dep.Eof do
  while not cdsC.Eof do
  begin
    MSWord.Selection.Font.Size := 10;
    MSWord.Selection.Font.Bold := True;
    MSWord.Selection.Font.Bold := True;
    { Escreve na  célula }

     MSWord.Selection.TypeText(Text := trim('Nome : ' + cdsCNOME_DEP.AsString ) //dm.cds_depNOME_DEP.AsString )
                                 +#13+trim ('Grupo : ' + dm.cds_socioGRUPO.AsString + ' - ' + ' Codigo : ' + dm.cds_socioN_INSCRICAO.AsString )
                                 +#13+trim ('Parentesco :' + cdsCDESCRICAO.AsString)
                                );

    if finallinha=false then
      begin
        { Pula 1 celula}
        MSWord.Selection.MoveRight(12);
        finallinha:=true;
      end
      else
        begin
          { vai para a proxima celula }
          MSWord.Selection.MoveRight(12);
          finallinha:=false;
        end;
    cdsC.Next;
    n := n + 1;
  end;
  MSWord.Visible:=true;
  Doc := Docs.Open(caminho);
  Doc.SaveAs('C:\home\atsscf\Contratos Gerados\Etiquetas.doc');
end;

procedure TfSocios.dxButton13Click(Sender: TObject);
begin
  //inherited;
    VCLReport1.FileName := '';
    VCLReport1.FileName := str_relatorio + 'lista_dep.rep';
    VCLReport1.Report.Params.ParamByName('PID').Value := dm.cds_socioID_SOCIO.Value;
    VCLReport1.Report.Params.ParamByName('DTA1').Value := StrToDate('01/01/1900');
    VCLReport1.Report.Params.ParamByName('DTA2').Value := Now;
    VCLReport1.Execute;
end;

procedure TfSocios.btIncluir_EClick(Sender: TObject);
begin
    {** se a Tabela Socios estiver fechada cancelo a operação}
    if (dm.cds_socio.State in [dsInactive]) then
       exit;
    {** se o Dbedit referente ao grupo estiver vazio ele não adicionou o sóvio
       então cancelo a operação}
    if (DBEdit26.Text = '') then
    begin
       MessageDlg('Primeiro adicione o Sócio pra depois adicionar o Endereço.', mtWarning, [mbOK], 0);
       exit;
    end;

    //===========================================================================
    {** se a Tabela Socios estiver em modo de Edição ou Inserção}
    {** Forço o usuário a salvá-la antes de incluir o endereço}
    if (dm.cds_socio.State in [dsInsert, dsEdit]) then
    begin
       MessageDlg('é nescessario Salvar os Dados Pessoais do Sócio', mtWarning, [mbOK], 0);
       PageControl1.ActivePage := TabSheet1;// Volta para aba DADOS PESSOAIS
       Panel1.Align := alBottom;       
       btnGravar.SetFocus;//Posiciono no botão Gravar
       exit;
    end;
    //===========================================================================
    {** se a Tabela Socios estiver em modo de Consulta permito a inclusão do endereço}
    if not DtSrc_end.DataSet.Active then
          DtSrc_end.DataSet.open;
    DtSrc_end.DataSet.Append;
    dm.cds_endTIPOEND.AsInteger := 0; //Tipo Endereço Principal
    DBEdit10.SetFocus;
end;

procedure TfSocios.btGravar_EClick(Sender: TObject);
begin
   //===========================================================================
   {** testo se foi digitado a rua caso não cancelo a operação}
   {** a rua é obrigatória devido aos boletos impressos pelo banco}
   if (DBEdit10.Text = '') then
   begin
     MessageDlg('informe o nome da rua', mtWarning, [mbOK], 0);
     exit;
   end;
   //===========================================================================
    {** Salvo a Tabela Endereço}
   DtSrc_end.DataSet.Post;
   (DtSrc_end.DataSet as TClientDataset).ApplyUpdates(0);



   if(cdsCk.Active)then
     cdsCk.Close;
   cdsCk.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   cdsCk.Open;

   if((cdsCkTP0.Value = 0 )and(cdsCkTP1.Value = 1))then
   begin
     MessageDlg('Vc não poder ter Só Endereço do Tipo "Cobrança"  ', mtError, [mbOK], 0);
     exit;
   end;
   
   if(cdsCk.Active)then
     cdsCk.Close;
   cdsCk.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   cdsCk.Open;

   if((cdsCkTP0.Value = 0)and(cdsCkTP1.Value = 0))then
   begin
     MessageDlg('Vc não poder ter Só Endereço do Tipo "Principal"  ', mtError, [mbOK], 0);
     exit;
   end;
  
end;

procedure TfSocios.btCancelar_EClick(Sender: TObject);
begin
  DtSrc_end.DataSet.Cancel;
end;

procedure TfSocios.btExcluir_EClick(Sender: TObject);
begin
  if (contarEnd.Active) then
     contarEnd.Close;
  contarEnd.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
  contarEnd.Open;
  if (contarEndCOUNT.AsInteger = 1) then
  begin
     MessageDlg('Não é permitido a exclusão desse endereço'+#13+#10+'só é permitido a alteração...', mtWarning, [mbOK], 0);
     exit;
  end;
  contarEnd.Close;
  
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_end.DataSet.Delete;
     (DtSrc_end.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfSocios.btIncluir_DClick(Sender: TObject);
begin
  inherited;
    {** se a Tabela Socios estiver fechada cancelo a operação}
    if (dm.cds_socio.State in [dsInactive]) then
       exit;
    {** se o Dbedit referente ao grupo estiver vazio ele não adicionou o sóvio
       então cancelo a operação}
    if (DBEdit26.Text = '') then
    begin
       MessageDlg('Primeiro adicione o Sócio pra depois adicionar os Dependentes.', mtWarning, [mbOK], 0);
       exit;
    end;
    //===========================================================================
    {** se a Tabela Socios estiver em modo de Edição ou Inserção}
    {** Forço o usuário a salvá-la antes de incluir o endereço}
    if (dm.cds_socio.State in [dsInsert, dsEdit]) then
    begin
       MessageDlg('é nescessario Salvar os Dados Pessoais do Sócio', mtWarning, [mbOK], 0);
       PageControl1.ActivePage := TabSheet1;// Volta para aba DADOS PESSOAIS
       Panel1.Align := alBottom;       
       btnGravar.SetFocus;//Posiciono no botão Gravar
       exit;
    end;
    //===========================================================================
    if not DtSrc_dep.DataSet.Active then
       DtSrc_dep.DataSet.open;
    DtSrc_dep.DataSet.Append;
    dm.cds_depFALECIDO.AsString := 'N';
    dm.cds_depDTACADASTRO.AsDateTime := Now;
    DBEdit18.SetFocus;
end;

procedure TfSocios.btGravar_DClick(Sender: TObject);
begin

    //===========================================================================
    {** se a não informar o nome do dependente cancelo a operação}
    if (DBEdit18.Text = '') then
    begin
       MessageDlg('É preciso informar o nome do Dependente', mtWarning, [mbOK], 0);
       exit;
    end;

    //===========================================================================
    {** se a não informar o grau de parentesco cancelo a operação}
    if (DBLookupComboBox4.Text = '') then
    begin
       MessageDlg('É preciso informar o grau de parentesco', mtWarning, [mbOK], 0);
       exit;
    end;
    //===========================================================================
    {** se a não informar a data de Cadastro cancelo a operação}
    {
    if (DBEdit25.Text = '') then
    begin
       MessageDlg('É preciso informar a data do cadastro', mtWarning, [mbOK], 0);
       exit;
    end;
    }

    if (sdsDep.Active) then
      sdsDep.Close;
      sdsDep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
      sdsDep.Open;
    if (sdsDep.IsEmpty) then
    begin
      dm.cds_depDESCRICAO.AsString := DBLookupComboBox4.Text;
      DtSrc_dep.DataSet.Post;
      (DtSrc_dep.DataSet as TClientDataset).ApplyUpdates(0);
      dm.cds_dep.Close;
      dm.cds_dep.Params[0].Clear;
      dm.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
      dm.cds_dep.Open;
    end
    else
    begin
      if (dm.cds_depID_DEP.AsInteger <> sdsDepID_DEP.AsInteger) then
      begin
        dm.cds_depDESCRICAO.AsString := DBLookupComboBox4.Text;
        DtSrc_dep.DataSet.Post;
        (DtSrc_dep.DataSet as TClientDataset).ApplyUpdates(0);
        dm.cds_dep.Close;
        dm.cds_dep.Params[0].Clear;
        dm.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        dm.cds_dep.Open;
      end
      else
      begin
        MessageDlg('Já existe um Segundo Sócio', mtWarning, [mbOK], 0);
        exit;
      end;
    end;


end;

procedure TfSocios.btExcluir_DClick(Sender: TObject);
begin
    //===========================================================================
    {** Não permito a exclusão se for o Sócio}
    if (DM.cds_depID_PAR.AsInteger = 0) then
    begin
       MessageDlg('Não é permitido excluir o Sócio da lista de Dependentes', mtWarning, [mbOK], 0);
       exit;
    end;

    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
    begin
       DtSrc_dep.DataSet.Delete;
       (DtSrc_dep.DataSet as TClientDataSet).ApplyUpdates(0);
    end;
    
end;

procedure TfSocios.btCancelar_DClick(Sender: TObject);
begin
  DtSrc_dep.DataSet.Cancel;
end;

procedure TfSocios.btExcluirClick(Sender: TObject);
var
  deletar : string;
begin
    if (DM.cds_CRSTATUS.AsString = 'Pago') then
    begin
       ShowMessage('Titulo já foi Pago operação não permitida!');
       exit;
    end;
    F_autoriza := TF_autoriza.Create(Application);
    try
      F_autoriza.ShowModal;
    finally
      F_autoriza.Free;
    end;

    if (DM.RESULTADO = 'CANCEL') then
       exit;

    if (DM.RESULTADO = 'FALSE') then
    begin
       ShowMessage('Usuario não tem autorização para executar essa operação!');
       exit;
    end;

   //===========================================================================
   {** Só é permito a exclusão se usuário for administrador, e se as tabelas}
   {** SOCIOS e RECEBIMENTOS não estiverem fechadas}
 //  restricoes;
   //===========================================================================
   {** Mostro no dbgrid todos as mensalidades do sócio, depois baixo as parcelas selecionadas}
   TodosCli := '';
   TodosCli := 'Situacao <> ''Cancelado''';
   rb3.Checked := True;
   dm.cds_CR.Filter := TodosCli;
   dm.cds_CR.Filtered := True;
   //===========================================================================
   {** passando pelas restrições solicito a confirmação da Exclusão}
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   if MessageDlg('Deseja realmente excluir os Lançamentos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin

      dm.SQLObitos.StartTransaction(TD);
      //deletar := 'delete from RECEBIMENTOS ';
      //deletar := deletar + 'WHERE SELECIONOU = ';
      //deletar :=  deletar + '''' + 'S' + '''';
      deletar := 'UPDATE RECEBIMENTOS SET SITUACAO = ';
      deletar := deletar + QuotedStr('Cancelado');
      deletar := deletar + ', STATUS = ';
      deletar := deletar + QuotedStr('Pendente');

      deletar := deletar + ' , AUTORIZADO = ';
      deletar := deletar + QuotedStr(DM.cds_SenhaLOGIN.AsString);
      deletar := deletar + ' WHERE SELECIONOU = ';
      deletar :=  deletar + QuotedStr('S');

      deletar := deletar + ' and ID_SOCIO = ';
      deletar := deletar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);

      dm.SQLObitos.ExecuteDirect(deletar);
      dm.SQLObitos.Commit(TD);
   end;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

    if dm.cds_CR.Active then
      dm.cds_CR.Close;
    dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_CR.Open;


end;

procedure TfSocios.btBaixaClick(Sender: TObject);
begin
    if (DM.cds_CRSITUACAO.AsString = 'Cancelado') then
    begin
       ShowMessage('Titulo Cancelado operação não permitida!');
       exit;
    end;

    baixa := 'sim';
   //===========================================================================
   {** Só é permito a BAIXA se usuário for administrador, e se as tabelas}
   {** SOCIOS e RECEBIMENTOS não estiverem fechadas}
    restricoes;
   //===========================================================================
   {** Abro a tabela Parametro localizo o Parametro tipo baixa}
   if not dmconsulta.cds_par.Active then
     dmconsulta.cds_par.Open;

   //if ( not dmconsulta.cds_par.Locate('PARAMETRO','Banco Lotes', [loPartialKey])) then
   if (dmconsulta.cds_par.Locate('PARAMETRO','TIPO BAIXA',[loCaseInsensitive])) then
     tipobaixa := dmconsulta.cds_parPARAMETRO1.AsString
   else
     MessageDlg('Parametro ''TIPO BAIXA'' não cadastrado.', mtWarning, [mbOK], 0);

   dmconsulta.cds_par.Close;

   if tipobaixa = 'simples' then
      baixasimples;

   if tipobaixa = 'completa' then
      baixacompleta;

    baixa := '';
 {
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);
 }
   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;

  BitBtn1.Click;
end;

procedure TfSocios.baixacompleta;
begin
   if dm.cds_CRSELECIONOU.AsString <> '' then
   begin
     receber := 'SOCIO_CADASTRO';
     codigo_cr := dm.cds_CRID_RECEBIMENTOS.AsInteger;
     fReceber := TfReceber.Create(Application);
     try
       fReceber.Edit1.Text := dm.cds_socioGRUPO.AsString;
       fReceber.Edit2.Text := IntToStr(dm.cds_socioN_INSCRICAO.AsInteger);
       fReceber.Edit3.Text := dm.cds_socioNOME_SOCIO.AsString;
       fReceber.ShowModal;
     finally
       fReceber.Free;
     end;
   end;
   if dm.cds_CR.Active then
     dm.cds_CR.Close;
   dm.cds_cr.Params[0].Clear;
   dm.cds_cr.Params[1].Clear;
   dm.cds_cr.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_cr.Open;
end;

procedure TfSocios.baixasimples;
var cob :string;
begin
   //===========================================================================
   {** Mostro no dbgrid todos as mensalidades do sócio, depois baixo as parcelas selecionadas}
   TodosCli := '';
   TodosCli := 'Situacao <> ''Cancelado''';
   rb3.Checked := True;
   dm.cds_CR.Filter := TodosCli;
   dm.cds_CR.Filtered := True;
   dm.cds_cr.DisableControls;
   dm.cds_cr.First;
   dm.cds_CR.Refresh;
   while not dm.cds_CR.Eof do
   begin

   cob := Copy(Edit2.Text,0,3) ;

     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
       if ((dm.cds_CRSTATUS.AsString = 'Pendente')or(dm.cds_CRSTATUS.AsString = 'Acordo'))  then  // Aqui Gravo o Juros na TABLEA
       begin
    if(cob = 'BOL') then
   begin;
     CalculaJuros;
     juros := dm.cds_crJUROS.AsFloat;
     desc := dm.cds_crDESCONTO.AsFloat;
     resto := dm.cds_CRVALOR_RECEBER.AsFloat;
     ValorRecebido := ( resto + juros );
     if dm.cds_CR.State in [dsBrowse] then
     dm.cds_CR.Edit;
     dm.cds_CRVALOR_A_REC.AsFloat := ValorRecebido;
   end;
  
          if dm.cds_CR.State in [dsInactive] then
             exit;
          if dm.cds_CR.State in [dsBrowse] then
             dm.cds_CR.Edit;
          dm.cds_CRDATA_PAG.AsDateTime := now;
          dm.cds_CRSTATUS.AsString := 'Pago';
          if(cob = 'BOL') then
          dm.cds_CRVALOR_A_REC.AsFloat := ValorRecebido //dm.cds_CRVALOR_RECEBER.AsFloat;
          else dm.cds_CRVALOR_A_REC.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
          if(cob = 'BOL') then
          dm.cds_CRVALOR_PAGO.AsFloat := ValorRecebido //dm.cds_CRVALOR_NF.AsFloat;
          else dm.cds_CRVALOR_PAGO.AsFloat := dm.cds_CRVALOR_NF.AsFloat;
          dm.cds_CR.Post;
       end;
     end;
     dm.cds_cr.Next;
   end;
   dm.cds_CR.ApplyUpdates(0);
   dm.cds_cr.EnableControls;
   //===========================================================================
   {** Mostra totais}
   mostratotais;
   //********************************************************************
   {** Mostro no grid apenas os pendentes}
//   PendCli := 'STATUS = ''Pendente''';
//   rb2.Checked := True;
//   dm.cds_CR.Filter := PendCli;
//   dm.cds_CR.Filtered := True;

end;

procedure TfSocios.mostratotais;
begin
    if dmconsulta.pago.Active then
      dmconsulta.pago.Close;
    dmconsulta.pago.Params[0].Clear;
    dmconsulta.pago.Params[1].Clear;
    dmconsulta.pago.Params[2].Clear;
    dmconsulta.pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dmconsulta.pago.Params[1].AsString := 'Pago';
    dmconsulta.pago.Open;
    if dmconsulta.pendente.Active then
      dmconsulta.pendente.Close;
    dmconsulta.pendente.Params[0].Clear;
    dmconsulta.pendente.Params[1].Clear;
    dmconsulta.pendente.Params[2].Clear;
    dmconsulta.pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dmconsulta.pendente.Params[1].AsString := 'Pendente';
    dmconsulta.pendente.Open;

    if dmconsulta.acordo.Active then
      dmconsulta.acordo.Close;
    dmconsulta.acordo.Params[0].Clear;
    dmconsulta.acordo.Params[1].Clear;
    dmconsulta.acordo.Params[2].Clear;
    dmconsulta.acordo.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dmconsulta.acordo.Params[1].AsString := 'Acordo';
    dmconsulta.acordo.Open;
    
    if dmconsulta.outros.Active then
      dmconsulta.outros.Close;
    dmconsulta.outros.Params[0].Clear;
    dmconsulta.outros.Params[1].Clear;
    dmconsulta.outros.Params[2].Clear;
    dmconsulta.outros.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dmconsulta.outros.Params[1].AsString := 'Outros';
    dmconsulta.outros.Open;

    if dmconsulta.total.Active then
      dmconsulta.total.Close;
    dmconsulta.total.Params[0].Clear;
    dmconsulta.total.Params[1].Clear;
    dmconsulta.total.Params[2].Clear;
    dmconsulta.total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dmconsulta.total.Params[2].AsString := 'todostitulos';
    dmconsulta.total.Open;
end;

procedure TfSocios.restricoes;
begin
   //===========================================================================
  if baixa <> 'sim' then
   {** Só é permito a exclusão se usuário for administrador}
   if perfil <> 'administrador' then
   begin
      MessageDlg('   Somente usuários Administradores tem '+#13+#10+'permição para Executar esta operação', mtInformation, [mbOK], 0);
      baixa := '';
      Abort;
   end;
   //===========================================================================
   {** se a Tabela Socios estiver fechada cancelo a operação}
   if (dm.cds_socio.State in [dsInactive]) then
      Abort;

   //===========================================================================
   {** se a Tabela RECEBIMENTOS estiver fechada cancelo a operação}
   if (dm.cds_CR.State in [dsInactive]) then
      Abort;
      
end;

procedure TfSocios.btCancelaClick(Sender: TObject);
begin
   //===========================================================================
   //** Só é permito a exclusão se usuário for administrador, e se as tabelas
   //** SOCIOS e RECEBIMENTOS não estiverem fechadas
    restricoes;
   //===========================================================================
   //** Mostro no dbgrid todos as mensalidades do sócio, depois baixo as parcelas selecionadas
   TodosCli := '';
   rb3.Checked := True;
   dm.cds_CR.Filter := TodosCli;
   dm.cds_CR.Filtered := True;
   dm.cds_cr.DisableControls;
   dm.cds_cr.First;
   while not dm.cds_CR.Eof do
   begin
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
        if dm.cds_CR.State in [dsBrowse] then
           dm.cds_CR.Edit;
        dm.cds_CRDATA_PAG.AsString := '';
        dm.cds_CRSTATUS.AsString := 'Pendente';
        dm.cds_CRVALOR_A_REC.AsFloat := 0;
        dm.cds_CRVALOR_PAGO.AsFloat := 0;
        dm.cds_CRSELECIONOU.AsString := '';
        dm.cds_CR.ApplyUpdates(0);
     end;
     dm.cds_cr.Next;
   end;
   dm.cds_cr.EnableControls;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);   
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;

 
end;

procedure TfSocios.btBoletoClick(Sender: TObject);
//var banco, l_pgto, texto, texto1, texto2, texto3 : string;
begin
  //===========================================================================
  {** Se o nivel de usuário não for administrador só permito a impressão dos
      titulos PAGOS}
  if (perfil <> 'administrador') then
   {if ((rb1.Checked = False) and (rb_mensal1.Checked = False)  and (rb_tri1.Checked = False)) then
   begin
     MessageDlg('Só é permitido a impressão de BOLETOS "Baixados".'+ #13#10 + 'Selicione a opção PAGO.' , mtWarning, [mbOK], 0);
     exit;
   end; }
   //===========================================================================
   {** se a Tabela Socios estiver fechada cancelo a operação}
   if (dm.cds_socio.State in [dsInactive]) then
      exit;
   //===========================================================================
   {** se a Tabela RECEBIMENTOS estiver fechada cancelo a operação}
   if (dm.cds_CR.State in [dsInactive]) then
      exit;
   //===========================================================================
   {** se a Tabela PARAMETROS não estiver ativa ativo}
   if (not dmconsulta.cds_par.Active) then
     dmconsulta.cds_par.Open;
   //===========================================================================
   {** Pego nos Parametros o Banco que ela usa para impressão de Boleto
       se não houver banco cadastrado na tabela parametro p~eço para cadastrar
       e cancelo a operação}
   if ( not dmconsulta.cds_par.Locate('PARAMETRO','Banco Lotes', [loPartialKey])) then
   begin
     MessageDlg('insira o parâmetro "Banco Lotes"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
     exit;
   end;
   //===========================================================================
   {** se a Tabela BANCO não estiver ativa ativo}
   if (not dmconsulta.cds_banco.Active) then
      dmconsulta.cds_banco.Open;
   //===========================================================================
   {** localizo na Tabela BANCO o banco cadastrado na tabela PARAMETRO}
   if ( not dmconsulta.cds_banco.Locate('BANCO',dmconsulta.cds_parPARAMETRO1.AsString, [loPartialKey])) then
   begin
     MessageDlg('Banco não Cadastrado.', mtWarning, [mbOK], 0);
     exit;
   end
   else
   begin
     banco := dmconsulta.cds_bancoBANCO.AsString;
     l_pgto := dmconsulta.cds_bancoLOCAL_PGTO.AsString;
     texto  := dmconsulta.cds_bancoVENCIMENTO.AsString;
     texto1 := dmconsulta.cds_bancoVENCIMENTO1.AsString;
     texto2 := dmconsulta.cds_bancoVENCIMENTO2.AsString;
     texto3 := dmconsulta.cds_bancoVENCIMENTO3.AsString;
   end;
   //===========================================================================
   {** Posiciono no Primeiro registro das MENSALIDADES do Sócio}
   dm.cds_CR.First;
   dm.cds_CR.DisableControls;
  with VDODmPrinter1 do
  begin
    { Inicia o Documento }
    BeginDoc;
    { Altero o fonte para o tamanho default }
    Font.NLQFont := ntRoman;
    Font.Pitch := fp10cpp;
    Font.Size := fsCondensed;
    {** Pego os dados para impressão}
    while not dm.cds_CR.Eof do
    begin
       {** Pego somente os que forão selecionados}
       if dm.cds_CRSELECIONOU.AsString = 'S' then
       begin
          VDODmPrinter1.LineSpacing := ls6lpp;
          Print(00,'',True);
          Print(00,'',True);
          if (l_pgto <> '') then
          begin
            Font.Size := fsDefault;
            Print(01, l_pgto);
            Font.Size := fsCondensed;
            Print(54, DateToStr(dm.cds_CRVENCIMENTO.AsDateTime));
          end
          else
            Print(108, DateToStr(dm.cds_CRVENCIMENTO.AsDateTime));
          VDODmPrinter1.LineSpacing := lsCustom;
          VDODmPrinter1.LineSpacingCustomValue := 50;
          Print(00,'',True);
          Print(00,'',True);
          Print(01, DateToStr(dm.cds_CREMISSAO.asDatetime));
          Print(25, dm.cds_CRGRUPO.AsString + IntToStr(DM.cds_socioN_INSCRICAO.AsInteger));
          Print(00,'',True);
          VDODmPrinter1.LineSpacing := lsCustom;
          VDODmPrinter1.LineSpacingCustomValue := 20;
          if (l_pgto <> '') then
            Print(89, Format('%12.2F',[dm.cds_CRVALOR_NF.AsFloat]),true)
          else
            Print(104, Format('%12.2F',[dm.cds_CRVALOR_NF.AsFloat]),true);
          VDODmPrinter1.LineSpacing := ls6lpp;
          Print(00,'',True);
          Print(00,'',True);
          Print(01, texto,true);
          Print(01, texto1,true);
          Print(01, texto2,true);
          Print(01, texto3,true);
          Print(00,'',True);
          Print(00,'',True);
          Print(00,'',True);
          Print(01, dm.cds_socioNOME_SOCIO.AsString);
          Print(00,'',True);
          Print(01, DM.cds_endENDERECO.AsString + ' - ' + dmconsulta.cds_bairroBAIRRO.AsString + ' - ' +
          DM.cds_endCEP.AsString  + ' - ' + DM.cds_endESTADO.AsString + ' - ' +
            dmconsulta.cds_municMUNICIPIO.AsString);
          Print(89, 'Cob.: ' + IntToStr(dm.cds_socioID_COB.AsInteger));
          Print(00,'',True);
          Print(00,'',True);
          Print(00,'',True);
          Print(00,'',True);
          Print(00,'',True);
          Print(00,'',True);
          VDODmPrinter1.LineSpacing := lsCustom;
          VDODmPrinter1.LineSpacingCustomValue := 23;
          Print(00,'',True);
          Print(00,'',True);
       end;
       dm.cds_CR.Next;
    end;
    EndDoc;//Finalizo o documento
   end;
   dm.cds_CR.EnableControls;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);   
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;
   
end;

procedure TfSocios.btReciboClick(Sender: TObject);
begin
  //===========================================================================
  {** Se o nivel de usuário não for administrador só permito a impressão dos
      titulos PAGOS}
  if (perfil <> 'administrador') then
   if ((rb1.Checked = False) and (rb_mensal1.Checked = False)  and (rb_tri1.Checked = False)) then
   begin
     MessageDlg('Só é permitido a impressão de recibos "Baixados".'+ #13#10 + 'Selicione a opção PAGO.', mtWarning, [mbOK], 0);
     exit;
   end;
   
   //===========================================================================
   {** se a Tabela Socios estiver fechada cancelo a operação}
   if (dm.cds_socio.State in [dsInactive]) then
      exit;
   //===========================================================================
   {** se a Tabela RECEBIMENTOS estiver fechada cancelo a operação}
   if (dm.cds_CR.State in [dsInactive]) then
      exit;
   //===========================================================================
   {** se a Tabela RECEBIMENTOS estiver em modo de edição ou inserção então SALVO}
   if dm.cds_cr.State in [dsInsert, dsEdit] then
     dm.cds_CR.ApplyUpdates(0);
   //***************************************************************************
   {** vejo se foi selecionado algum item, se foi alimento a variavel "marcou"}
   dm.cds_cr.DisableControls;
   dm.cds_cr.First;
   while not dm.cds_CR.Eof do
   begin
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
       { Manoel 24/03/10 comentei prar poder imprimir Recibo com Status Pendente
        if (dm.cds_CRSTATUS.AsString = 'Pendente') then
        begin
           MessageDlg('Só permitido imprimir os Títulos baixados', mtWarning, [mbOK], 0);
           exit;
        end;
        }
        marcou1 := 'S';
     end;
     dm.cds_cr.Next;
   end;
   dm.cds_cr.EnableControls;
  //***************************************************************************
  {** se ele marcou um dos itens só imprimo os SELECIONADOS}
   if Marcou1 = 'S' then
   begin
     Marcou1 := 'S';
     sql := 'Select * from RECEBIMENTOS Where ID_SOCIO = ';
     sql := sql + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
     //sql := sql + ' and STATUS = ';
     //sql := sql + '''' + status + '''';
     sql := sql + ' and SELECIONOU = ';
     sql := sql +  '''S''';
   end
  //***************************************************************************
  {** se ele Ñ marcou um dos itens imprimo TODOS}
   else
   begin
     sql := 'Select * from RECEBIMENTOS Where ID_SOCIO = ';
     sql := sql + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
     //sql := sql + ' and STATUS = ';
     //sql := sql + '''' + status + '''';
     sql := sql + ' and SELECIONOU <> ';
     sql := sql +  '''S''';
   end;
  //***************************************************************************
  {** Limpo as variaveis de impressão}
   Lote1 := 0;
   Gpo1 := '';
   Insc11 := 0;
   Insc1_1 := 0;
   socio1 := '1';
  //***************************************************************************
  {** Crio o form Para escolha do formulário impressão}
   fRecibo := TfRecibo.Create(Application);
   try
     receber := 'Cliente';
     fRecibo.ShowModal;
   finally
     fRecibo.Free;
   end;
  //***************************************************************************
  {** Limpo o Campo Selecionou da Tabela RECEBIMENTOS}
  if marcou1 = 'S' then
  begin
    if dm.cds_CR.Active then
      dm.cds_CR.Close;
    sql := '';
    sql := 'update RECEBIMENTOS set SELECIONOU = ';
    sql := sql + '''' + '' + '''';
    sql := sql + ' where ID_SOCIO = ';
    sql := sql + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
    dm.SQLObitos.ExecuteDirect(sql);
    sql := '';
    dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_CR.Open;
    marcou1 := '';
  end;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;

end;

procedure TfSocios.btAcordoClick(Sender: TObject);
var
    total_pendente : double;
begin
  dm.cds_cr.DisableControls;
  dm.cds_CR.First;
  total_pendente := 0;
  while not dm.cds_cr.Eof do
  begin
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
       if (dm.cds_CRSTATUS.AsString <> 'Pendente') then
       begin
         MessageDlg('Acordo só pode ser feito com parcelas Pendentes.', mtWarning, [mbOK], 0);
         dm.cds_CR.Edit;
         dm.cds_CRSELECIONOU.AsString := '';
         dm.cds_cr.ApplyUpdates(0);
         dm.cds_cr.EnableControls;
         exit;
       end;
       total_pendente := total_pendente + dm.cds_CRVALOR_NF.AsFloat;
     end;
     dm.cds_cr.Next;
  end;
  dm.cds_cr.EnableControls;
  if total_pendente = 0 then
  begin
    MessageDlg('é preciso selecionar algum título para fazer acordo', mtError, [mbOK], 0);
    exit;
  end;
  Edit10.Text := Format('%-6.2n',[total_pendente]);
  Panel15.Left := 5;
  Panel15.Visible := True;
  mdta1.Text := DateToStr(Now);
  Edit8.Text := '1';
  Edit9.Text := '0';
  Edit11.Text := '0';
end;

procedure TfSocios.dxButton17Click(Sender: TObject);
var
   ano, mes, dia: word;
   lote, I, np, id: integer;
   data, data1 :string;
   Sobra, parcela, desconto : double;
begin
  inherited;
   if (mdta1.Text = '  /  /    ') then
   begin
      MessageDlg('é preciso informar o Vencimento', mtWarning, [mbOK], 0);
      exit;
   end;
   if (Edit8.Text = '') then
   begin
      MessageDlg('é preciso informar o nº de parcelas', mtWarning, [mbOK], 0);
      exit;
   end;
   if (Edit9.Text = '') then
      Edit9.Text := '0';
   if (Edit11.Text = '') then
      Edit11.Text := '0';

   //***************************************************************************
   {** Verifico qual Panel está ativo, possui 3 panels, GRUPOS, MENSAIS E TRIMESTRAIS}
   if TabSheet4.TabVisible = True then // Aba FINANCEIRA PLANO 7 FALECIMENTO
   begin
      TodosCli := '';
      rb3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;
   if TabSheet5.TabVisible = True then // Aba FINANCEIRA PLANO MENSAIS
   begin
      TodosCli := '';
      rb_mensal3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;
   if TabSheet6.TabVisible = True then // Aba FINANCEIRA PLANO TRIMESTRAL
   begin
      TodosCli := '';
      rb_tri3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;
     if Edit11.Text <>'0' then
     desconto := StrToFloat(Edit11.Text)
   else
     desconto := 0;

   id := 0; // Inicializo a variavel id
   //***************************************************************************
   {** Pego o valor da genator da tabela recebimentos e coloco na variavel id
   que uso no While abaixo}
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ACORDO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   id := dm.c_6_genidCODIGO.AsInteger;
   dm.c_6_genid.Close;
   //***************************************************************************
   {** Pego as parcelas que forão selecionadas e mudo o status delas para Renegociado}
   dm.cds_cr.DisableControls;
   dm.cds_CR.First;
   while not dm.cds_cr.Eof do
   begin
     lote := dm.cds_CRLOTE.AsInteger;
     if dm.cds_CRSELECIONOU.AsString = 'S' then
     begin
        dm.cds_cr.Edit;
        dm.cds_CRSTATUS.AsString := 'Renegociado';
        dm.cds_CRID_ACORDO.AsInteger := id;
        dm.cds_CRDESCONTO.AsFloat := desconto;
        dm.cds_CRSELECIONOU.AsString := '';
        dm.cds_CRDATA_DOC.AsDateTime := now; 
        dm.cds_cr.ApplyUpdates(0);
     end;
   dm.cds_cr.Next;
   end;
   dm.cds_CR.First;
   dm.cds_cr.EnableControls;
   data :=mdta1.Text; {** pego a data de vencimento}
   //***************************************************************************
   {** gera as novas parcelas do acordo}
   {** testo se teve entrada}
   {** Verifico se deu desconto}
   if Edit11.Text <>'0' then
     desconto := StrToFloat(Edit11.Text)
   else
     desconto := 0;


   if Edit9.Text <>'0' then
   begin
     Sobra := StrToFloat(Edit10.Text) - StrToFloat(Edit9.Text) - desconto;
     if (StrToInt(Edit8.Text) > 1) then
       np:=StrToInt(Edit8.Text) - 1
     else
       np:=StrToInt(Edit8.Text);
     if Sobra <> 0 then
     parcela := Sobra / np;
   end
   else {** se ñ teve entrada}
   begin
     if (desconto = 0) then
       parcela := StrToFloat(Edit10.Text) / StrToFloat(Edit8.Text)
     else
       parcela := (StrToFloat(Edit10.Text) - desconto) / StrToFloat(Edit8.Text)
   end;
   {** np recebe a quantidade de parcelas}
   np:=StrToInt(Edit8.Text);
   {** abro a tabela Contas a receber e crio nova linha}
   if not dtsrc_CR.DataSet.Active then
      dtsrc_CR.DataSet.Open;
   dtsrc_CR.DataSet.Append;
   {** aqui começa a inserção das parcelas}
   for I:=1 to np do
   begin
      if dm.cds_CR.State <> dsinsert then
         dm.cds_CR.Append;
      dm.cds_CRID_ACORDO.AsInteger := id;
      dm.cds_CRID.AsInteger:= dm.cds_socioID_SOCIO.AsInteger;
      dm.cds_CRID_SOCIO.AsInteger:= dm.cds_socioID_SOCIO.AsInteger;
      dm.cds_CRGRUPO.AsString := dm.cds_socioGRUPO.AsString;
      dm.cds_CRPARCELA.AsInteger:=I;
      dm.cds_CRVALOR_NF.Value:=parcela;
      dm.cds_CRVALOR_A_REC.Value:=parcela;
      dm.cds_CRJUROS.Value:=0;
      dm.cds_CRVALOR_DIF.Value:=0;
      dm.cds_CRDESCONTO.Value:=0;
      dm.cds_CRMULTA.Value:=0;
      dm.cds_CRSITUACAO.AsString := 'Ativo';
      dm.cds_CRDATA_DOC.AsDateTime := now;
      dm.cds_CRTIPO_DOC.Value :='AC';
      if Edit9.Text <> '0' then{** se tiver entrada preencho os dados do pgto}
      begin
        if I=1 then{** se for a primeira Parcela}
        begin
          dm.cds_CRVENCIMENTO.AsDateTime := now;
          dm.cds_CRDATA_PAG.AsDateTime :=now;
          dm.cds_CREMISSAO.AsDateTime :=now;
          dm.cds_CRSTATUS.Value:='Pago';
          dm.cds_CRVALOR_RECEBER.Value:=StrToFloat(Edit9.Text);
          dm.cds_CRVALOR_1VIA.Value:=StrToFloat(Edit9.Text);
          dm.cds_CRVALOR_PAGO.Value:=StrToFloat(Edit9.Text);
          dm.cds_CRTIPO_DOC.Value :='AC';
          dm.cds_CRDATA_DOC.AsDateTime := now;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
          dm.cds_CR.Post;
        end
        else{** se ñ for a primeira parcela}
        begin
          decodedate(StrToDate(data), Ano, mes, dia);
          if I > 1 then
            mes:=mes+1;
          if mes<=12 then
          begin
            dm.cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
          end
          else
          begin
            ano:=ano+1;
            mes:=0;
            mes:=mes+1;
            dm.cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
          end;
            dm.cds_CREMISSAO.AsDateTime :=now;
            dm.cds_CRSTATUS.Value:='Pendente';
            dm.cds_CRTIPO_DOC.Value :='AC';
            dm.cds_CRVALOR_RECEBER.Value:=parcela;
            dm.cds_CRVALOR_1VIA.Value:=parcela;
            dm.cds_CRVALOR_PAGO.Value:=0;
            dm.cds_CRDATA_DOC.AsDateTime := now;
            if dm.c_6_genid.Active then
              dm.c_6_genid.Close;
            dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
            dm.c_6_genid.Open;
            dm.cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
            dm.c_6_genid.Close;
            dm.cds_CR.Post;
            data := DateToStr(dm.cds_CRVENCIMENTO.AsDateTime);
        end;
    end
    else{**  aqui só executo se entrada for maior que zero}
    begin
        decodedate(StrToDate(data), Ano, mes, dia);
        if I > 1 then
          mes:=mes+1;
        if mes<=12 then
        begin
          dm.cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          dm.cds_CRVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          dm.cds_CRSTATUS.Value:='Acordo';
          dm.cds_CRTIPO_DOC.Value :='AC';
          dm.cds_CREMISSAO.AsDateTime :=now;
          dm.cds_CRVALOR_RECEBER.Value:=parcela;
          dm.cds_CRVALOR_1VIA.Value:=parcela;
          dm.cds_CRVALOR_PAGO.Value:=0;
          dm.cds_CRDATA_DOC.AsDateTime := now; 
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
          dm.cds_CR.Post;
          data := DateToStr(dm.cds_CRVENCIMENTO.AsDateTime);
     end;
   end;
   dm.cds_CR.ApplyUpdates(0);{** Salvo a tabela Recebimentos}
   {** Fecho a tabela e abro novamente}
   if (dm.cds_CR.Active) then
     dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;

   mostratotais;

    Panel15.Visible := false;
    Panel15.Left := 115;
    DBGrid3.ReadOnly := false;

    if TabSheet4.TabVisible = True then // Aba FINANCEIRA PLANO 7 FALECIMENTO
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if TabSheet5.TabVisible = True then // Aba FINANCEIRA PLANO MENSAIS
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_mensal2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if TabSheet6.TabVisible = True then // Aba FINANCEIRA PLANO TRIMESTRAL
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_tri2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;


   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);   
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;

   BitBtn2.Enabled := True;
end;


procedure TfSocios.dxButton25Click(Sender: TObject);
begin
    dm.cds_cr.DisableControls;
    dm.cds_CR.First;
    while not dm.cds_cr.Eof do
    begin
       if dm.cds_CRSELECIONOU.AsString <> '' then
      begin
         dm.cds_cr.Edit;
         dm.cds_CRSELECIONOU.AsString := '';
         dm.cds_cr.ApplyUpdates(0);
      end;
      dm.cds_cr.Next;
    end;
    dm.cds_CR.First;
    dm.cds_cr.EnableControls;

    Panel15.Visible := false;
    Panel15.Left := 115;
    DBGrid3.ReadOnly := false;

    if TabSheet4.TabVisible = True then // Aba FINANCEIRA PLANO 7 FALECIMENTO
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if TabSheet5.TabVisible = True then // Aba FINANCEIRA PLANO MENSAIS
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_mensal2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if TabSheet6.TabVisible = True then // Aba FINANCEIRA PLANO TRIMESTRAL
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_tri2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;

    BitBtn2.Enabled := False;

end;

procedure TfSocios.btCancelaAcordoClick(Sender: TObject);
var
  codigo : integer;
  deleta : string;
begin
  codigo := 0;
  dm.cds_cr.DisableControls;
  dm.cds_CR.First;
  while not dm.cds_cr.Eof do
  begin
     {** verifico se a parcela foi selecionada}
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
       {** testo se a percela é diferente de Acordo se for cancelo a operação}
       if (dm.cds_CRSTATUS.AsString <> 'Acordo') then
       begin
         MessageDlg('só pode ser cancelada parcelas com status Acordo.', mtWarning, [mbOK], 0);
         dm.cds_CR.Edit;
         dm.cds_CRSELECIONOU.AsString := '';
         dm.cds_cr.ApplyUpdates(0);
         dm.cds_cr.EnableControls;
         exit;
       end;
       {** se passou peco o codigo do acordo pra deletar as parcelas criadas}
       codigo := dm.cds_CRID_ACORDO.AsInteger;
       if (codigo > 0) then
       begin
         if (cdsAcordo.Active) then
             cdsAcordo.Close;
         cdsAcordo.Params[0].AsInteger := codigo;
         cdsAcordo.Open;
         cdsAcordo.First;
         while not cdsAcordo.Eof do
         begin
           {** se o status da parcela for acordo Deleto}
           if ((cdsAcordoSTATUS.AsString = 'Acordo') or (cdsAcordoSTATUS.AsString = 'Pago')) then
           begin
             deleta := 'delete from recebimentos where ';
             deleta := deleta + ' ID_RECEBIMENTOS = ';
             deleta := deleta +  IntToStr(cdsAcordoID_RECEBIMENTOS.AsInteger);
             DM.SQLObitos.ExecuteDirect(deleta);
           end;
           {** se o status da parcela for Renegociado volto para Pendente}
           if cdsAcordoSTATUS.AsString = 'Renegociado' then
           begin
             cdsAcordo.Edit;
             cdsAcordoSTATUS.AsString := 'Pendente';
             cdsAcordo.ApplyUpdates(0);
           end;
          cdsAcordo.Next;
         end;
         cdsAcordo.Close;
       end;
     end;
     dm.cds_cr.Next;
  end;
  dm.cds_cr.EnableControls;
  codigo := dm.cds_CRID_SOCIO.AsInteger;
  if (dm.cds_CR.Active) then
      dm.cds_CR.Close;
  dm.cds_CR.Params[1].Clear;
  dm.cds_CR.Params[0].AsInteger := codigo;
  dm.cds_Cr.Open;

    if TabSheet4.TabVisible = True then // Aba FINANCEIRA PLANO 7 FALECIMENTO
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if TabSheet5.TabVisible = True then // Aba FINANCEIRA PLANO MENSAIS
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_mensal2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if TabSheet6.TabVisible = True then // Aba FINANCEIRA PLANO TRIMESTRAL
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_tri2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;

  BitBtn2.Enabled := False;

end;


procedure TfSocios.ChkDBGridCellClick(Column: TColumn);
var Field: TField;
begin
    Field := Column.Field;
    if (Field <> nil) and (Field.Name = 'cds_CRSELECIONOU')
        and Field.CanModify and not Column.ReadOnly then
      with Field.Dataset do
      begin
        if State = dsBrowse then
          Edit;
        if (dm.cds_CRSELECIONOU.IsNull = True) then
          dm.cds_CRSELECIONOU.AsString := 'S'
        else
          dm.cds_CRSELECIONOU.Clear;
        Post;
        dm.cds_CR.ApplyUpdates(0);
      end;
end;

procedure TfSocios.ChkDBGridColEnter(DBGrid: TDBGrid);
var Field: TField;
begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'cds_CRSELECIONOU') then
      DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfSocios.ChkDBGridColExit(DBGrid: TDBGrid);
var Field: TField;
begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'cds_CRSELECIONOU') then
      DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfSocios.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cds_CRSELECIONOU') then begin
    DBGrid.Canvas.FillRect(Rect);
    case Column.Alignment of
    taRightJustify:
      X := Rect.Right - 2 - 16;
    taCenter:
      X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
    else // taLeftJustify:
      X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    if dm.cds_CRSELECIONOU.AsString = 'S' then Index := 0 else Index := 1;
      ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
    end
    else // Default drawing
      DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfSocios.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
var
    Field: TField;
begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'cds_CRSELECIONOU') then
      if (Key = ' ') and Field.CanModify and
          not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
       with Field.Dataset do
       begin
          if State = dsBrowse then
            Edit;
          if (dm.cds_CRSELECIONOU.AsString = '') then
            dm.cds_CRSELECIONOU.AsString := 'S'
          else
            dm.cds_CRSELECIONOU.AsString := '';
       end;
end;

procedure TfSocios.DBGrid3CellClick(Column: TColumn);
begin
  inherited;
  ChkDBGridCellClick(Column);
end;

procedure TfSocios.DBGrid3ColEnter(Sender: TObject);
begin
  inherited;
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfSocios.DBGrid3ColExit(Sender: TObject);
begin
  inherited;
  ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfSocios.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if TabSheet4.TabVisible = True then // Aba FINANCEIRA PLANO 7 FALECIMENTO
  begin
    if not odd(dm.cds_CR.RecNo) then // se for impar
    // se a coluna ñ está selecionada
      if not (gdSelected in State) then
      begin
        DBGrid3.Canvas.Brush.Color := $00FFEFDF;
        DBGrid3.Canvas.FillRect(Rect); //Pinta a celula
        DBGrid3.DefaultDrawDataCell(Rect,Column.Field,State);
      end;
    //***************************************************
    // destacando Campos  com status Pendente
    if Column.Field = dm.cds_CRSTATUS then
      if ((dm.cds_CRSTATUS.AsString = 'Pendente') or (dm.cds_CRSTATUS.AsString = 'Acordo'))then
      begin
        DBGrid3.Canvas.Font.Color := clRed;
        DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
    //***************************************************
    // destacando Campos  com status SITUACAO
    if Column.Field = dm.cds_CRSITUACAO then
      if dm.cds_CRSITUACAO.AsString = 'Cancelado' then
      begin
        DBGrid3.Canvas.Font.Color := clRed;
        DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
      end;

    //***************************************************
    // destacando Campos  com status Pago
    if Column.Field = dm.cds_CRSTATUS then
      if dm.cds_CRSTATUS.AsString = 'Pago' then
      begin
        DBGrid3.Canvas.Font.Color := clBlue;
        DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
    //***************************************************
    // destacando Campos  com Valor Pago
    if Column.Field = dm.cds_CRVALOR_PAGO then
      if dm.cds_CRSTATUS.AsString = 'Pago' then
      begin
        DBGrid3.Canvas.Font.Color := clBlue;
        DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
    //***************************************************
    // destacando Campos  com Valor Pendente
    if Column.Field = dm.cds_CRVALOR_RECEBER then
      if dm.cds_CRSTATUS.AsString = 'Pendente' then
      begin
        DBGrid3.Canvas.Font.Color := clRed;
        DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
    ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect, DataCol, Column, State);
  end;  
end;

procedure TfSocios.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfSocios.DBGrid3TitleClick(Column: TColumn);
begin
  inherited;
  dm.cds_CR.IndexFieldNames := Column.FieldName;
end;

procedure TfSocios.DtSrc_endStateChange(Sender: TObject);
begin
 //****************************************************************************
 {** Tratamento dos botões da aba de endereços}
 if IncluirE = 'S' then
  btIncluir_E.Enabled:=DtSrc_end.State in [dsBrowse,dsInactive]
 else
  btIncluir_E.Enabled:=false;
 if AlterarE = 'S' then
  btGravar_E.Enabled:=DtSrc_end.State in [dsInsert,dsEdit]
 else
  btGravar_E.Enabled:=false;
 if CancelarE = 'S' then
  btCancelar_E.Enabled:=DtSrc_end.State in [dsInsert,dsEdit]
 else
  btCancelar_E.Enabled:=false;
 if ExcluirE = 'S' then
  btExcluir_E.Enabled:=DtSrc_end.State in [dsBrowse]
 else
  btExcluir_E.Enabled:=false;

  if DtSrc_end.State in [dsInsert, dsEdit] then
  begin
    btIncluir_E.Top := -100;
    btExcluir_E.Top := -100;
    btGravar_E.Top := 6;
    btCancelar_E.Top := 6;
  end;

  if DtSrc_end.State in [dsBrowse,dsInactive] then
  begin
    btIncluir_E.Top := 6;
    btExcluir_E.Top := 6;
    btGravar_E.Top := -100;
    btCancelar_E.Top := -100;
  end;
end;

procedure TfSocios.DtSrc_depStateChange(Sender: TObject);
begin
  inherited;
 //****************************************************************************
 {** Tratamento dos botões da aba de Dependentes}
 if IncluirD = 'S' then
  btIncluir_D.Enabled:=DtSrc_dep.State in [dsBrowse,dsInactive]
 else
  btIncluir_D.Enabled:=false;
 if AlterarD = 'S' then
  btGravar_D.Enabled:=DtSrc_dep.State in [dsInsert,dsEdit]
 else
  btGravar_D.Enabled:=false;
 if CancelarD = 'S' then
  btCancelar_D.Enabled:=DtSrc_dep.State in [dsInsert,dsEdit]
 else
  btCancelar_D.Enabled:=false;

 if ExcluirD = 'S' then
  btExcluir_D.Enabled:=DtSrc_dep.State in [dsBrowse]
 else
  btExcluir_D.Enabled:=false;

  if DtSrc_dep.State in [dsInsert, dsEdit] then
  begin
    btIncluir_D.Top := -100;
    btExcluir_D.Top := -100;
    btGravar_D.Top := 6;
    btCancelar_D.Top := 6;
  end;

  if DtSrc_dep.State in [dsBrowse,dsInactive] then
  begin
    btIncluir_D.Top := 6;
    btExcluir_D.Top := 6;
    btGravar_D.Top := -100;
    btCancelar_D.Top := -100;
  end;

end;

procedure TfSocios.btnSairClick(Sender: TObject);
begin
  if (dm.cds_socio.State in [dsBrowse]) then
  begin
    if (procEndereco.Active) then
        procEndereco.Close;
    procEndereco.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    procEndereco.Open;
    if (procEndereco.IsEmpty) then
      MessageDlg('SÓCIO NÃO POSSUI ENDEREÇO CADASTRADO'+#13+#10+'Obs... sócios sem endereço, pode haver problemas'+#13+#10+'na validação do arquivo remessa do BANCO        ', mtInformation, [mbOK], 0);
    procEndereco.Close;
  end;


   if(cdsCk.Active)then
     cdsCk.Close;
   cdsCk.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   cdsCk.Open;

   if((cdsCkTP0.Value = 0)and(cdsCkTP1.Value = 1))then
   begin
     MessageDlg('Vc não poder ter Só Endereço do Tipo "Cobrança"  ', mtError, [mbOK], 0);
     exit;
   end;

   if(cdsCk.Active)then
     cdsCk.Close;
   cdsCk.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   cdsCk.Open;

   if((cdsCkTP0.Value = 0)and(cdsCkTP1.Value = 0))then
   begin
     MessageDlg('Vc não poder ter Só Endereço do Tipo "Principal"  ', mtError, [mbOK], 0);
     exit;
   end;


   inherited;

end;

procedure TfSocios.DBRadioGroup4Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_socio.State in [dsBrowse]) then
    dm.cds_socio.Edit;
  if (DBRadioGroup4.ItemIndex = 0) then
  begin
    fMostra_Insc_vazia := TfMostra_Insc_vazia.Create(Application);
    try
      fMostra_Insc_vazia.BitBtn1.Click;
      fMostra_Insc_vazia.ShowModal;
    finally
      fMostra_Insc_vazia.Free;
    end;
  end;
end;

procedure TfSocios.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfSocios.geramensalidade;
var
 a,c1,c2,c3,c4,c5,c6,c7,c8,c9 :String;
 valorMes : double;
begin
  inherited;

     if dm.cds_socio.State in [dsInactive] then
       Exit;
    //===========================================================================
    {** se a Tabela Socios estiver em modo de Edição ou Inserção}
    {** Forço o usuário a salvá-la antes de incluir novas mensalidades}
    if (dm.cds_socio.State in [dsInsert]) then
    begin
       MessageDlg('é nescessario Salvar os Dados Pessoais do Sócio', mtWarning, [mbOK], 0);
       PageControl1.ActivePage := TabSheet1;// Volta para aba DADOS PESSOAIS
       Panel1.Align := alBottom;
       btnGravar.SetFocus;//Posiciono no botão Gravar
       exit;
    end;

     // gera codigo
     if dm.c_6_genid.Active then
       dm.c_6_genid.Close;
     dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODIGO_BANCO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
     dm.c_6_genid.Open;
     c9 := IntToStr(dm.c_6_genidCODIGO.AsInteger);
     dm.c_6_genid.Close;

     a := 'Execute Procedure SP_MENSALIDADE(';
     if (dm.cds_socioPLANO.AsString = '7 FALECIMENTO') then
     begin
       c1 :=  formatDateTime('mm/dd/yyyy',dtaSeteFal.Date);
       c2 := IntToStr (DM.cds_socioDIAPARAPGTO.AsInteger);
       c3 := IntToStr (mesesSeteFal.AsInteger);
       c4 := IntToStr (carSetFal.AsInteger);
       valorMes := valorSeteFal.Value;
       DecimalSeparator := '.';
       c5 := FloatToStr(valorMes);
       DecimalSeparator := ',';
     end;

     if (dm.cds_socioPLANO.AsString = 'TRIMESTRAL') then
     begin
       c1 :=  formatDateTime('mm/dd/yyyy',dtaTri.Date);
       c2 := IntToStr (DM.cds_socioDIAPARAPGTO.AsInteger);
       c3 := IntToStr (mesesTri.AsInteger);
       c4 := IntToStr (cartri.AsInteger);
       valorMes := valorTri.Value;
       DecimalSeparator := '.';
       c5 := FloatToStr(valorMes);
       DecimalSeparator := ',';
     end;

     if (dm.cds_socioPLANO.AsString = 'MENSAL') then
     begin
       c1 :=  formatDateTime('mm/dd/yyyy',dtaMensal.Date);
       c2 := IntToStr (DM.cds_socioDIAPARAPGTO.AsInteger);
       c3 := IntToStr (mesesMensal.AsInteger);
       c4 := IntToStr (carMensal.AsInteger);
       valorMes := valorMensal.Value;
       DecimalSeparator := '.';
       c5 := FloatToStr(valorMes);
       DecimalSeparator := ',';
     end;
     c6 := IntToStr (DM.cds_socioID_SOCIO.AsInteger);
     c7 := IntToStr (DM.cds_socioCODIGO.AsInteger);
     c8 := IntToStr (DM.cds_socioID_COB.AsInteger);

     a := a + '''' + c1 + '''' + ',' + c2 + ',' + c3 + ',' + c4 + ',' + c5 + ',' +
       '''' + c6 + ''','  + '''' + c7 + ''',' + '''' + c8 + ''',' + c9 + ')';

     DM.SQLObitos.ExecuteDirect(a);
     //DecimalSeparator := ',';

     //dm.cds_socio.Refresh;
   //***************************************************************************
   {** Gravando histórico}
    varnovaparc := varnovaparc + ' Venc.: ' + DateToStr(dm.cds_CRVENCIMENTO.AsDateTime);
    varnovaparc := varnovaparc + ' - Status :' + dm.cds_CRSTATUS.AsString;
    varnovaparc := varnovaparc + ' - Valor :' + Format('%-6.2n',[dm.cds_CRVALOR_NF.Value]);
    varnovaparc := varnovaparc + ' - Situação : Parcela à Receber    ';
    Memo3.Lines.Add(varnovaparc);
    varnovaparc := '';
    if dm.cds_pront.Active then
      dm.cds_pront.Close;
    dm.cds_pront.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_pront.Open;
    dm.cds_pront.Append;
    dm.cds_prontID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    Memo1.Clear;
    if Memo3.Text <> '' then
    begin
        varHist := '      NOVAS PARCELAS    ';
        Memo1.Lines.Add(varHist);
        Memo1.Lines.Add(Memo3.Text);
        Memo1.Lines.Add(' ');
    end;
    Memo1.Lines.Add(' ');
    varHist := 'Usúário : ' + varUsuario;
    Memo1.Lines.Add(varHist);
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('-----------------------------------------------------------' +
    '--------------------------------------------------------------------------------------------------------- ');
    dm.cds_prontHISTORICO.Value := Memo1.Text;
    dm.cds_pront.ApplyUpdates(0);
    Memo1.Clear;
    Memo1.Lines.Add(dm.cds_prontHISTORICO.Value);
   //***************************************************************************

     if dm.cds_socio.Active then
       dm.cds_socio.Close;
     dm.cds_socio.Params[0].AsInteger := StrToInt(c6);
     dm.cds_socio.Open;

     if dm.cds_CR.Active then
       dm.cds_CR.Close;
     dm.cds_CR.Params[0].AsInteger := StrToInt(c6);
     dm.cds_CR.Open;
end;


procedure TfSocios.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  geramensalidade;
end;

procedure TfSocios.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  geramensalidade;
end;

procedure TfSocios.SpdBGerarClick(Sender: TObject);
begin
  inherited;
  if (RadioGroup1.ItemIndex = 0) then
    geraplanoMensal
  else
    geramensalidade;
  if dm.cds_CR.Active then
    dm.cds_CR.Close;
  dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
  dm.cds_CR.Open;
end;

procedure TfSocios.DBRadioGroup5Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup5.ItemIndex=0 then
  begin
    dm.cds_socioCPF_CGC.EditMask := '000.000.000-00;1;_';
  //  cds_cliTIPOFIRMA.AsInteger := 0;
  end
  else
  begin
    dm.cds_socioCPF_CGC.EditMask := '00.000.000/0000-00;1;_';
  //  cds_cliTIPOFIRMA.AsInteger := 1;
  end;

//  if (dm.cds_socio.State in [dsBrowse]) then
//    dm.cds_socio.Edit;
end;

procedure TfSocios.geraplanoMensal;
var
   I, Parcela : Integer;
   ano, mes, dia, dia1: word;
   sql_texto, mesano, diaPgto : string;
   TD: TTransactionDesc;
begin
  {** Verifico se os campos referentes a Grupo forão preenchidos se ñ cancelo a operação}
  if dtaMensal.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Inicio.', mtWarning, [mbOK], 0);
    exit;
  end;

  decodedate(StrToDate(dtaMensal.Text), ano, mes, dia);
  diaPgto := IntToStr(DM.cds_socioDIAPARAPGTO.AsInteger);

  Parcela := StrToInt(mesesMensal.Text);
  try
    for I := 1 to  Parcela do
    begin
      mesano := IntToStr(mes) + IntToStr(ano);
      if (cdsGerar.Active) then
      cdsGerar.Close;
      cdsGerar.Params[0].AsString := mesano;
      cdsGerar.Params[1].AsInteger := DM.cds_socioDIAPARAPGTO.AsInteger;
      cdsGerar.Params[2].AsString := DBEdit8.Text;      // Grupo
      cdsGerar.Params[3].AsInteger := StrToInt(DBEdit21.Text); //Inscr
      cdsGerar.Params[4].AsInteger := StrToInt(DBEdit21.Text); //Inscr1
      cdsGerar.Params[5].AsInteger := dm.cds_socioID_COB.AsInteger; //Cobrador
      cdsGerar.Params[6].AsDate := StrToDate(dtaMensal.Text);
      cdsGerar.Open;
      if (cdsGerar.IsEmpty) then
      begin
        dtaMensal.Text := diaPgto + '/' + IntToStr(mes) + '/' + IntToStr(ano);
        sql_texto := '';
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.SQLObitos.StartTransaction(TD);
        sql_texto := 'Execute procedure SPGERATITULOMENSAL(';
        sql_texto := sql_texto + '''' + diaPgto + ''',';
        sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(dtaMensal.Text)) + ''','; //Emissão
        sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(dtaMensal.Text)) + ''','; //Vencimento
        sql_texto := sql_texto + QuotedStr(mesano) + ','; // Mês da Cobrança
        sql_texto := sql_texto + IntToStr(dm.cds_socioID_SOCIO.AsInteger) + ')';  // ID_SOCIO
        DM.SQLObitos.ExecuteDirect(sql_texto);
        dm.SQLObitos.Commit(TD);
        {** Limpo novamente as variaveis}
        sql_texto := '';
      end
      else
      begin
        MessageDlg('Já foi gerada Cobrança para o mês ' + IntToStr(mes) , mtInformation, [mbOK], 0);
        exit;
      end;
      mes := mes + 1;
      if (mes = 13) then
      begin
        mes := 1;
        ano := ano + 1;
      end;
    end;//For
    MessageDlg('Títulos Gerados com Suscesso', mtWarning, [mbOK], 0);    
  except
    dm.SQLObitos.Rollback(TD);
    MessageDlg('Erro ao gerar a cobrança...', mtError, [mbOK], 0);
    exit;
  end;

end;

procedure TfSocios.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if (RadioGroup1.ItemIndex = 1) then
  begin
     valorMensal.Enabled := True;
     carMensal.Enabled := True;
  end
  else
  begin
     valorMensal.Enabled := False;
     carMensal.Enabled := False;
  end;
end;

procedure TfSocios.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if DtSrc_dep.DataSet.State in [dsInsert, dsEdit] then
     DM.cds_depDTNASC.Clear;
  if DtSrc_dep.DataSet.State in [dsBrowse] then
  begin
     DM.cds_dep.Edit;
     DM.cds_depDTNASC.Clear;
  end;

end;

procedure TfSocios.DBGrid4CellClick(Column: TColumn);
begin
  inherited;
  ChkDBGridCellClick(Column);
end;

procedure TfSocios.DBGrid4ColEnter(Sender: TObject);
begin
  inherited;
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfSocios.DBGrid4ColExit(Sender: TObject);
begin
  inherited;
  ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfSocios.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if TabSheet5.TabVisible = True then // Aba FINANCEIRA PLANO MENSAIS
  begin
    // se a coluna ñ está selecionada
    if not odd(dm.cds_CR.RecNo) then // se for impar
     if not (gdSelected in State) then
     begin
        //define uma COR DE FUNDO
          DBGrid4.Canvas.Brush.Color := $00FFEFDF;
          DBGrid4.Canvas.FillRect(Rect); //Pinta a celula
          //Pinta o texto padrão
          DBGrid4.DefaultDrawDataCell(Rect,Column.Field,State);
     end;
     //***************************************************
     // destacando Campos  com status Pendente
    if Column.Field = dm.cds_CRSTATUS then
     if ((dm.cds_CRSTATUS.AsString = 'Pendente') or  (dm.cds_CRSTATUS.AsString = 'Acordo'))then
     begin
          DBGrid4.Canvas.Font.Color := clRed;
          DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
     end;

   //***************************************************
    // destacando Campos  com status SITUACAO
    if Column.Field = dm.cds_CRSITUACAO then
      if dm.cds_CRSITUACAO.AsString = 'Cancelado' then
      begin
        DBGrid4.Canvas.Font.Color := clRed;
        DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
     //***************************************************

     // destacando Campos  com status Pago
    if Column.Field = dm.cds_CRSTATUS then
     if dm.cds_CRSTATUS.AsString = 'Pago' then
     begin
          DBGrid4.Canvas.Font.Color := clBlue;
          DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
     end;
     //***************************************************
     // destacando Campos  com Valor Pago
    if Column.Field = dm.cds_CRVALOR_PAGO then
     if dm.cds_CRSTATUS.AsString = 'Pago' then
     begin
          DBGrid4.Canvas.Font.Color := clBlue;
          DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
     end;
     //***************************************************
     // destacando Campos  com Valor Pendente
    if Column.Field = dm.cds_CRVALOR_RECEBER then
     if dm.cds_CRSTATUS.AsString = 'Pendente' then
     begin
        if TabSheet5.TabVisible = True then // Aba FINANCEIRA PLANO MENSAIS
        begin
          DBGrid4.Canvas.Font.Color := clRed;
          DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
        end;
     end;
     ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect, DataCol, Column, State);
  end;
end;  

procedure TfSocios.DBGrid5CellClick(Column: TColumn);
begin
  inherited;
  ChkDBGridCellClick(Column);
end;

procedure TfSocios.DBGrid5ColEnter(Sender: TObject);
begin
  inherited;
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfSocios.DBGrid5ColExit(Sender: TObject);
begin
  inherited;
  ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfSocios.DBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if TabSheet6.TabVisible = True then // Aba FINANCEIRA PLANO TRIMESTRAL
  begin
    if not odd(dm.cds_CR.RecNo) then // se for impar
      if not (gdSelected in State) then
      begin
        DBGrid5.Canvas.Brush.Color := $00FFEFDF;
        DBGrid5.Canvas.FillRect(Rect); //Pinta a celula
        //Pinta o texto padrão
        DBGrid5.DefaultDrawDataCell(Rect,Column.Field,State);
      end;
    //***************************************************
    // destacando Campos  com status Pendente
    if Column.Field = dm.cds_CRSTATUS then
      if ((dm.cds_CRSTATUS.AsString = 'Pendente') or  (dm.cds_CRSTATUS.AsString = 'Acordo'))then
      begin
        DBGrid5.Canvas.Font.Color := clRed;
        DBGrid5.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
    //***************************************************

    // destacando Campos  com status SITUACAO
    if Column.Field = dm.cds_CRSITUACAO then
      if dm.cds_CRSITUACAO.AsString = 'Cancelado' then
      begin
        DBGrid5.Canvas.Font.Color := clRed;
        DBGrid5.DefaultDrawDataCell(Rect, Column.Field,State);
      end;

     //***************************************************

    // destacando Campos  com status Pago
    if Column.Field = dm.cds_CRSTATUS then
      if dm.cds_CRSTATUS.AsString = 'Pago' then
      begin
        DBGrid5.Canvas.Font.Color := clBlue;
        DBGrid5.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
    //***************************************************
    // destacando Campos  com Valor Pago
    if Column.Field = dm.cds_CRVALOR_PAGO then
      if dm.cds_CRSTATUS.AsString = 'Pago' then
      begin
        DBGrid5.Canvas.Font.Color := clBlue;
        DBGrid5.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
    //***************************************************
    // destacando Campos  com Valor Pendente
    if Column.Field = dm.cds_CRVALOR_RECEBER then
      if dm.cds_CRSTATUS.AsString = 'Pendente' then
      begin
        DBGrid5.Canvas.Font.Color := clRed;
        DBGrid5.DefaultDrawDataCell(Rect, Column.Field,State);
      end;
    ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect, DataCol, Column, State);
  end;  
end;

procedure TfSocios.DBGrid5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfSocios.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfSocios.DBGrid4TitleClick(Column: TColumn);
begin
  inherited;
  dm.cds_CR.IndexFieldNames := Column.FieldName;
end;

procedure TfSocios.DBGrid5TitleClick(Column: TColumn);
begin
  inherited;
  dm.cds_CR.IndexFieldNames := Column.FieldName;
end;

procedure TfSocios.BitBtn2Click(Sender: TObject);
begin
   fRemessaAcordo := TfRemessaAcordo.Create(Application);
   try
     fRemessaAcordo.Edit2.Text := DBEdit26.Text;
     fRemessaAcordo.Edit3.Text := DBEdit33.Text;
     fRemessaAcordo.Edit1.Text := DBEdit33.Text;
     fRemessaAcordo.DateEdit1.Text := dtaMensal.Text;
     fRemessaAcordo.ShowModal;
   finally
     fRemessaAcordo.Free;
   end;

end;

procedure TfSocios.BitBtn1Click(Sender: TObject);
begin
//  inherited;
  //===========================================================================
  {** Se o nivel de usuário não for administrador só permito a impressão dos
      titulos PAGOS}
  {if (perfil <> 'administrador') then
   if ((rb1.Checked = False) and (rb_mensal1.Checked = False)  and (rb_tri1.Checked = False)) then
   begin
     MessageDlg('Só é permitido a impressão de recibos "Baixados".'+ #13#10 + 'Selicione a opção PAGO.', mtWarning, [mbOK], 0);
     exit;
   end;
   }
   //===========================================================================
   {** se a Tabela Socios estiver fechada cancelo a operação}
   if (dm.cds_socio.State in [dsInactive]) then
      exit;
   //===========================================================================
   {** se a Tabela RECEBIMENTOS estiver fechada cancelo a operação}
   if (dm.cds_CR.State in [dsInactive]) then
      exit;
   //===========================================================================
   {** se a Tabela RECEBIMENTOS estiver em modo de edição ou inserção então SALVO}
   if dm.cds_cr.State in [dsInsert, dsEdit] then
     dm.cds_CR.ApplyUpdates(0);
   //***************************************************************************
   {** vejo se foi selecionado algum item, se foi alimento a variavel "marcou"}
   dm.cds_cr.DisableControls;
   dm.cds_cr.First;
   while not dm.cds_CR.Eof do
   begin
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
       { Manoel 24/03/10 comentei prar poder imprimir Recibo com Status Pendente
        if (dm.cds_CRSTATUS.AsString = 'Pendente') then
        begin
           MessageDlg('Só permitido imprimir os Títulos baixados', mtWarning, [mbOK], 0);
           exit;
        end;
        }
        marcou1 := 'S';
     end;
     dm.cds_cr.Next;
   end;
   dm.cds_cr.EnableControls;
  //***************************************************************************
  {** se ele marcou um dos itens só imprimo os SELECIONADOS}
   if Marcou1 = 'S' then
   begin
     Marcou1 := 'S';
     sql := 'Select * from RECEBIMENTOS Where ID_SOCIO = ';
     sql := sql + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
     //sql := sql + ' and STATUS = ';
     //sql := sql + '''' + status + '''';
     sql := sql + ' and SELECIONOU = ';
     sql := sql +  '''S''';
   end
  //***************************************************************************
  {** se ele Ñ marcou um dos itens imprimo TODOS}
   else
   begin
     sql := 'Select * from RECEBIMENTOS Where ID_SOCIO = ';
     sql := sql + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
     //sql := sql + ' and STATUS = ';
     //sql := sql + '''' + status + '''';
     sql := sql + ' and SELECIONOU <> ';
     sql := sql +  '''S''';
   end;
  //***************************************************************************
  {** Limpo as variaveis de impressão}
   Lote1 := 0;
   Gpo1 := '';
   Insc11 := 0;
   Insc1_1 := 0;
   socio1 := '1';
  //***************************************************************************
  {** Crio o form Para escolha do formulário impressão}
   fRecibo := TfRecibo.Create(Application);
   try
     receber := 'Cliente';
     fRecibo.ShowModal;
   finally
     fRecibo.Free;
   end;
  //***************************************************************************
  {** Limpo o Campo Selecionou da Tabela RECEBIMENTOS}
  if marcou1 = 'S' then
  begin
    if dm.cds_CR.Active then
      dm.cds_CR.Close;
  {
    sql := '';
    sql := 'update RECEBIMENTOS set SELECIONOU = ';
    sql := sql + '''' + '' + '''';
    sql := sql + ' where ID_SOCIO = ';
    sql := sql + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
    dm.SQLObitos.ExecuteDirect(sql);
    sql := '';
    dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_CR.Open;
  }
    marcou1 := '';
  end;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;

end;

procedure TfSocios.DBRadioGroup1Change(Sender: TObject);
begin
 // inherited;
//  if (DM.cds_dep.State in [dsBrowse]) then
//     DM.cds_dep.Edit;
end;

procedure TfSocios.dxButton6Click(Sender: TObject);
begin
  while not dm.cds_cr.Eof do
  begin
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
       if (dm.cds_CRSTATUS.AsString = 'Acordo') then
       begin
           dm.cds_CR.Edit;
           DM.cds_CRSTATUS.AsString := 'Pendente';
           dm.cds_CRSELECIONOU.AsString := '';
           dm.cds_cr.ApplyUpdates(0);
           Exit;
       end;
     end;
     dm.cds_cr.Next;
  end;

end;

procedure TfSocios.BitBtn3Click(Sender: TObject);
var
MSWord , Doc, Docs: Variant;
finallinha:boolean;
i ,n  :Integer;
numero , caminho1: string;
begin
  inherited;
  if (not cds_par.Active) then
  cds_par.Open;

  cds_par.Locate('PARAMETRO','CARTERINHA',[loCaseInsensitive]);
  carterinha := cds_parPARAMETRO1.AsString;
  cds_par.Close;

  if (carterinha  = 'SERRA') then
  begin
    MessageDlg('Não Implementado .', mtInformation, [mbOK], 0);
    exit;
  end;

  if (carterinha = '') then
  begin
    MessageDlg('É preciso rodar o script  ''insert_parametro_carterinha.sql''  !', mtError, [mbOK], 0);
    Exit;
  end;

  if (carterinha = 'PIRAMIDE') then
  { Abre o Word }
  MSWord := CreateOleObject('Word.Application');
  {não visualizar Microsoft Word}
 // MSWord.Visible:=false;
  Docs:= MSWord.Documents;
  caminho1 := (ExtractFilePath(Application.ExeName)+ '8099F.doc');
  { Abre documento em anexo junto ao  exe}
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ '8099F.doc');
  CopyFile(Pchar(caminho1),Pchar(caminho1),True);
  finallinha:=false;{Essa variavel foi criada para controlar o avanço de para cada celula da coluna }

  if cds_dep.Active then
  cds_dep.Close;
  cds_dep.Params[0].AsString := dm.cds_depNOME_DEP.AsString;;
  cds_dep.Open;
  if(cds_dep.RecordCount = 0 )then
  begin
    MessageDlg('Socio Falecido !'+#13+#10+'Não pode ser gerado Carterinha.', mtWarning, [mbOK], 0);
  KillTask('Winword.exe');
  exit;
  end;


  if finallinha=false then
  begin
    for i := 0 to (StrToInt(edt1.Text)-1) do
    begin
      MSWord.Selection.MoveRight(12);
    end;
    finallinha:=true;
  end;

  n := 1 ;

  if(DBEdit18.Text <> '')then
  begin
    MSWord.Selection.Font.Size := 10;
    MSWord.Selection.Font.Bold := True;
    MSWord.Selection.Font.Bold := True;
    { Escreve na  célula }

     MSWord.Selection.TypeText(Text := trim('Nome : ' + cds_depNOME_DEP.AsString )
                                 +#13+trim ('Grupo : ' + DM.cds_socioGRUPO.AsString + ' - ' + ' Codigo : ' + DM.cds_socioN_INSCRICAO.AsString )
                                 +#13+trim ('Parentesco :' + cds_depDESCRICAO.AsString)
                                 +#13+trim ('')
                                );

    if finallinha=false then
      begin
        { Pula 1 celula}
        MSWord.Selection.MoveRight(12);
        finallinha:=true;
      end
      else
        begin
          { vai para a proxima celula }
          MSWord.Selection.MoveRight(12);
          finallinha:=false;
        end;
    n := n + 1;
  end;
  MSWord.Visible:=true;
  Doc := Docs.Open(caminho1);
  Doc.SaveAs('C:\home\atsscf\Contratos Gerados\Etiquetas.doc')
  end;

function TfSocios.KillTask(ExeFileName: string): Integer;
const
PROCESS_TERMINATE = $0001;
var
ContinueLoop: BOOL;
FSnapshotHandle: THandle;
FProcessEntry32: TProcessEntry32;
begin
Result := 0;
FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
while Integer(ContinueLoop) <> 0 do
begin
if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase(ExeFileName)) or
(UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),
FProcessEntry32.th32ProcessID), 0));
ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
end;
CloseHandle(FSnapshotHandle);
end;



procedure TfSocios.CalculaJuros;
var juros , carencia , multa: double ;
     mu : Integer;
begin

  if (DBEdit3x.Date > dm.cds_CRVENCIMENTO.AsDateTime) then
  begin
    mu := 2;  // multa 2%
    if (cds_param.Active) then
      cds_param.Close;
    cds_param.Params[0].AsString := 'RECEBERJUROS';
    cds_param.Open;
    if (not cds_param.IsEmpty) then
    begin
      DecimalSeparator := '.';
      // Pego o Juros
      juros := StrToFloat(cds_paramPARAMETRO1.asString);
      if(cds_paramPARAMETRO1.asString <> '') then
      carencia := StrToFloat(cds_paramPARAMETRO2.asString);

      if ((dbEdit3x.Date - dm.cds_CRVENCIMENTO.AsDateTime) < carencia) then
      begin
        if (dm.cds_cr.State in [dsBrowse]) then
        dm.cds_cr.Edit;
        dm.cds_crJUROS.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat * ((juros * (((dbEdit3x.Date - dm.cds_CRVENCIMENTO.AsDateTime))/30))/100);
        dm.cds_crJUROS.AsFloat := dm.cds_crJUROS.AsFloat ;
      end;
      if ((dbEdit3x.Date - dm.cds_CRVENCIMENTO.AsDateTime) >= carencia) then
      begin
        mu := 2; // multa 2%
        multa := (dm.cds_CRVALOR_NF.AsFloat *(mu/100)) ;
        if (dm.cds_cr.State in [dsBrowse]) then
        dm.cds_cr.Edit;
        dm.cds_crJUROS.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat * ((juros * (((dbEdit3x.Date - dm.cds_crVENCIMENTO.AsDateTime))/30))/100);
        dm.cds_crJUROS.AsFloat := dm.cds_crJUROS.AsFloat + multa ;

      end;

    end;
    DecimalSeparator := ',';
  end;

end;

procedure TfSocios.dxButton35Click(Sender: TObject);
begin
 // inherited;
 cdsPos.Append;
 dxButton34.Enabled := True;
 dxButton35.Enabled := False;
  
end;

procedure TfSocios.dxButton37Click(Sender: TObject);
begin
 // inherited;

end;

procedure TfSocios.dxButton34Click(Sender: TObject);
begin
 // inherited;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_POS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdsPosID_POS.AsInteger := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;
  cdsPosID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
  cdsPosA.AsString := DBEdit40.Text;
  cdsPos.ApplyUpdates(0);
  dxButton35.Enabled := True;
  dxButton34.Enabled := False;
  

end;

procedure TfSocios.TabSheet8Show(Sender: TObject);
begin
 // inherited;
// if not(cdsPos.Active)then
// cdsPos.Open;
end;

procedure TfSocios.dxButton18Click(Sender: TObject);
begin
 // inherited;
// cdsPos.Cancel;
end;

procedure TfSocios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   atualizar := atualizar + ' where ID_SOCIO = ';
   atualizar := atualizar + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

  inherited;



end;

procedure TfSocios.RadioButton1Click(Sender: TObject);
begin
  inherited;
    CancCli := 'STATUS <> ''Pago''';
    CancCli := CancCli + ' and Situacao = ''Cancelado''';
    dm.cds_CR.Filter := CancCli;
    dm.cds_CR.Filtered := True;
    mostratotais;
end;

procedure TfSocios.RadioButton2Click(Sender: TObject);
begin
  inherited;
    CancCli := 'STATUS <> ''Pago''';
    CancCli := CancCli + ' and Situacao = ''Cancelado''';
    dm.cds_CR.Filter := CancCli;
    dm.cds_CR.Filtered := True;
end;

procedure TfSocios.RadioButton3Click(Sender: TObject);
begin
  inherited;
    CancCli := 'STATUS <> ''Pago''';
    CancCli := CancCli + ' and Situacao = ''Cancelado''';
    dm.cds_CR.Filter := CancCli;
    dm.cds_CR.Filtered := True;
end;

procedure TfSocios.dxButton28Click(Sender: TObject);
var
  corrigir : string;
begin
 // inherited;
   corrigir := '';
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   if MessageDlg('Deseja realmente Alterar a Situação para Ativo?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin

      dm.SQLObitos.StartTransaction(TD);

      corrigir := 'UPDATE RECEBIMENTOS SET SITUACAO = ';
      corrigir := corrigir + QuotedStr('Ativo');
      
      corrigir := corrigir + ' WHERE SELECIONOU = ';
      corrigir := corrigir + QuotedStr('S');

      corrigir := corrigir + ' and ID_SOCIO = ';
      corrigir := corrigir + IntToStr(dm.cds_socioID_SOCIO.AsInteger);

      dm.SQLObitos.ExecuteDirect(corrigir);
      dm.SQLObitos.Commit(TD);

   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;

   rb2.Checked := True;

end;
end;

procedure TfSocios.SpeedButton6Click(Sender: TObject);
begin
 // inherited;
   if DtSrc_dep.DataSet.State in [dsInsert, dsEdit] then
     DM.cds_depDTFALEC.Clear;
  if DtSrc_dep.DataSet.State in [dsBrowse] then
  begin
     DM.cds_dep.Edit;
     DM.cds_depDTFALEC.Clear;
  end;
end;

procedure TfSocios.Button1Click(Sender: TObject);
 // inherited;
var
  sql_texto :string;
begin
  //===========================================================================
  {** Se o Usuário não tiver permissão para exclusão cancelo a operação}
  if (Excluir = 'N') then
  begin
    Exit;
  end;
  //===========================================================================
  {** se o cds estiver fechado cancelo a operação}
  if (DtSrc.DataSet.State in [dsInactive]) then
  begin
    Exit;
  end;
  //===========================================================================
  {** Abro form para que o usuario digite o motivo da exclusão}
  {** Obs. o Sócio não é excluido apenas o statos dele muda para Inativo}
  fExclusao := TfExclusao.Create(Application);
  try
    if fExclusao.ShowModal = mrCancel then
       exit;
  finally
    fExclusao.Free;
  end;
  //===========================================================================
  {** Mudo o status do Sócio}
  if dm.cds_socio.State in [dsBrowse] then
     dm.cds_socio.Edit;
 // dm.cds_socioGRUPO.Clear;
 // dm.cds_socioN_INSCRICAO.Clear;
  dm.cds_socioSITUACAO.AsString := 'Outros';
  dm.cds_socioSTATUS.AsString := 'O'; // A = Ativo, I = Inativo , O = Outros
  dm.cds_socioDATAEXCLUSAO.AsDateTime := Now;
  dm.cds_socio.ApplyUpdates(0);
  //===========================================================================
  {** Mudo o status das parcelas do socio para Inativo}
  sql_texto := '';
  sql_texto := 'UPDATE RECEBIMENTOS SET SITUACAO = ';
  sql_texto := sql_texto + '''' + 'Outros' + '''';
  sql_texto := sql_texto + ' where ID_SOCIO = ';
  sql_texto := sql_texto + '' + IntToStr(dm.cds_socioID_SOCIO.AsInteger) + '';
  sql_texto := sql_texto + ' and Status = ';
  sql_texto := sql_texto + '''' + 'Pendente' + '''';
  sql_texto := sql_texto + ' and Situacao = ';
  sql_texto := sql_texto + '''' + 'Ativo' + '''';
  sds_cr.CommandText := sql_texto;
  sds_cr.ExecSQL();
 // Edit1.Text := '';
 // Edit2.Text := '';

end;

procedure TfSocios.Button2Click(Sender: TObject);
var
  sql_texto :string;
begin
  //===========================================================================
  {** Se o Usuário não tiver permissão para exclusão cancelo a operação}
  if (Excluir = 'N') then
  begin
    Exit;
  end;
  //===========================================================================
  {** se o cds estiver fechado cancelo a operação}
  if (DtSrc.DataSet.State in [dsInactive]) then
  begin
    Exit;
  end;
  //===========================================================================
  {** Abro form para que o usuario digite o motivo da exclusão}
  {** Obs. o Sócio não é excluido apenas o statos dele muda para Inativo}
  fExclusao := TfExclusao.Create(Application);
  try
    if fExclusao.ShowModal = mrCancel then
       exit;
  finally
    fExclusao.Free;
  end;
  //===========================================================================
  {** Mudo o status do Sócio}
  if dm.cds_socio.State in [dsBrowse] then
     dm.cds_socio.Edit;
 // dm.cds_socioGRUPO.Clear;
 // dm.cds_socioN_INSCRICAO.Clear;
  dm.cds_socioSITUACAO.AsString := 'Ativo';
  dm.cds_socioSTATUS.AsString := 'A'; // A = Ativo, I = Inativo , O = Outros
  dm.cds_socioDATAEXCLUSAO.AsDateTime := Now;
  dm.cds_socio.ApplyUpdates(0);
  //===========================================================================
  {** Mudo o status das parcelas do socio para Inativo}
  sql_texto := '';
  sql_texto := 'UPDATE RECEBIMENTOS SET SITUACAO = ';
  sql_texto := sql_texto + '''' + 'Pendente' + '''';
  sql_texto := sql_texto + ' where ID_SOCIO = ';
  sql_texto := sql_texto + '' + IntToStr(dm.cds_socioID_SOCIO.AsInteger) + '';
  sql_texto := sql_texto + ' and Status = ';
  sql_texto := sql_texto + '''' + 'Pendente' + '''';
  sql_texto := sql_texto + ' and Situacao = ';
  sql_texto := sql_texto + '''' + 'Outros' + '''';
  sds_cr.CommandText := sql_texto;
  sds_cr.ExecSQL();

end;

procedure TfSocios.BitBtn4Click(Sender: TObject);
begin
 // inherited;
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
        if dm.cds_CR.State in [dsBrowse] then
           dm.cds_CR.Edit;
        dm.cds_CRVENCIMENTO.AsString := datavenc.Text;

        dm.cds_CRSELECIONOU.AsString := '';
        dm.cds_CR.ApplyUpdates(0);
     end;
end;

procedure TfSocios.BitBtn5Click(Sender: TObject);
begin
 // inherited;
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
        if dm.cds_CR.State in [dsBrowse] then
           dm.cds_CR.Edit;
        dm.cds_CRVENCIMENTO.AsString := datavenM.Text;

        dm.cds_CRSELECIONOU.AsString := '';
        dm.cds_CR.ApplyUpdates(0);
     end;
end;

end.
