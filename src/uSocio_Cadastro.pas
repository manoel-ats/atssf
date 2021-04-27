unit uSocio_Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, StdCtrls, DBCtrls, ExtCtrls, Mask, Buttons, ComCtrls, DB,
  Menus, dxCore, dxButton, Grids, DBGrids, FMTBcd, SqlExpr, Provider,
  XPMenu, DBLocal, DBLocalS, DBClient, rpcompobase, rpvclreport, ImgList,
  VDOBasePrinter, VDODmPrinter;

type
  TfSocio_Cadastro = class(TfPai)
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Edit2: TEdit;
    Label13: TLabel;
    Edit3: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label12: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox11: TGroupBox;
    DBEdit46: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit21: TDBEdit;
    Label9: TLabel;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    Edit4: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    DBRadioGroup2: TDBRadioGroup;
    DBLookupComboBox2: TDBLookupComboBox;
    Label18: TLabel;
    DBComboBox3: TDBComboBox;
    Label19: TLabel;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label25: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label26: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label27: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label28: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    DBEdit25: TDBEdit;
    Label36: TLabel;
    DBEdit24: TDBEdit;
    Label33: TLabel;
    DBGrid2: TDBGrid;
    Edit5: TEdit;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1ID_GRUPO: TIntegerField;
    SQLDataSet1INSCRICAO: TIntegerField;
    SQLDataSet1QTDE: TIntegerField;
    SQLDataSet1GRUPO: TStringField;
    SQLDataSet1N_FALEC: TIntegerField;
    DataSetProvider4: TDataSetProvider;
    grupo: TClientDataSet;
    grupoID_GRUPO: TIntegerField;
    grupoINSCRICAO: TIntegerField;
    grupoQTDE: TIntegerField;
    grupoGRUPO: TStringField;
    grupoN_FALEC: TIntegerField;
    DataSource3: TDataSource;
    cds_socio: TClientDataSet;
    cds_socioID_SOCIO: TIntegerField;
    cds_socioGRUPO: TStringField;
    cds_socioN_INSCRICAO: TIntegerField;
    DataSetProvider3: TDataSetProvider;
    sds_socio: TSQLDataSet;
    sds_socioID_SOCIO: TIntegerField;
    sds_socioGRUPO: TStringField;
    sds_socioN_INSCRICAO: TIntegerField;
    cds_bairro: TClientDataSet;
    cds_bairroID_BAIRRO: TIntegerField;
    cds_bairroBAIRRO: TStringField;
    cds_munic: TClientDataSet;
    cds_municID_MUNICIPIO: TIntegerField;
    cds_municMUNICIPIO: TStringField;
    dsp_munic: TDataSetProvider;
    dsp_bairro: TDataSetProvider;
    sds_bairro: TSQLDataSet;
    sds_bairroID_BAIRRO: TIntegerField;
    sds_bairroBAIRRO: TStringField;
    sds_munic: TSQLDataSet;
    sds_municID_MUNICIPIO: TIntegerField;
    sds_municMUNICIPIO: TStringField;
    DtSrc_munic: TDataSource;
    DtSrc_bairro: TDataSource;
    sds_est_civil: TSQLDataSet;
    sds_est_civilID_ESTCIVIL: TIntegerField;
    sds_est_civilDESCRICAO: TStringField;
    sds_parentesco: TSQLDataSet;
    sds_parentescoID_PAR: TIntegerField;
    sds_parentescoDESCRICAO: TStringField;
    DataSetProvider2: TDataSetProvider;
    DataSetProvider1: TDataSetProvider;
    cds_est_civil: TClientDataSet;
    cds_est_civilID_ESTCIVIL: TIntegerField;
    cds_est_civilDESCRICAO: TStringField;
    cds_parentesco: TClientDataSet;
    cds_parentescoID_PAR: TIntegerField;
    cds_parentescoDESCRICAO: TStringField;
    DataSource2: TDataSource;
    DtSrc_estCivil: TDataSource;
    DtSrc_end: TDataSource;
    DtSrc_dep: TDataSource;
    sds_cr: TSQLDataSet;
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
    dsp_dep: TDataSetProvider;
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
    dtsrc_CR: TDataSource;
    total: TSQLDataSet;
    totalTITULOS: TFloatField;
    ds_total: TDataSource;
    pendente: TSQLDataSet;
    pendentePENDENTE: TFloatField;
    ds_pendente: TDataSource;
    pago: TSQLDataSet;
    pagoPAGO: TFloatField;
    ds_pago: TDataSource;
    proc_bairro: TSQLClientDataSet;
    proc_bairroID_BAIRRO: TIntegerField;
    proc_bairroBAIRRO: TStringField;
    proc_cidade: TSQLClientDataSet;
    proc_cidadeID_MUNICIPIO: TIntegerField;
    proc_cidadeMUNICIPIO: TStringField;
    XPMenu1: TXPMenu;
    dxButton2: TdxButton;
    Panel2: TPanel;
    btCancelar_D: TdxButton;
    btGravar_D: TdxButton;
    btExcluir_D: TdxButton;
    btIncluir_D: TdxButton;
    dxButton3: TdxButton;
    Panel4: TPanel;
    btCancelar_E: TdxButton;
    btGravar_E: TdxButton;
    btExcluir_E: TdxButton;
    btIncluir_E: TdxButton;
    dxButton11: TdxButton;
    Panel5: TPanel;
    dxButton12: TdxButton;
    DBNavigator2: TDBNavigator;
    Edit6: TEdit;
    Label30: TLabel;
    Edit7: TEdit;
    pnl_mensais: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    GroupBox2: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBGrid4: TDBGrid;
    dxButton5: TdxButton;
    dxButton4: TdxButton;
    dxButton1: TdxButton;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Panel10: TPanel;
    rb_mensal2: TRadioButton;
    rb_mensal1: TRadioButton;
    rb_mensal3: TRadioButton;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox3: TGroupBox;
    DBComboBox2: TDBComboBox;
    pln_trimestral: TPanel;
    GroupBox4: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBGrid5: TDBGrid;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Panel11: TPanel;
    rb_tri2: TRadioButton;
    rb_tri1: TRadioButton;
    rb_tri3: TRadioButton;
    Memo1: TMemo;
    dxButton10: TdxButton;
    dxButton13: TdxButton;
    VCLReport1: TVCLReport;
    VCLReport2: TVCLReport;
    sds_depDTACADASTRO: TDateField;
    cds_depDTACADASTRO: TDateField;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    ImageList1: TImageList;
    Panel7: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    mdta1: TMaskEdit;
    dxButton15: TdxButton;
    Edit10: TEdit;
    dxButton14: TdxButton;
    dxButton17: TdxButton;
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
    dsp_banco: TDataSetProvider;
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
    VDODmPrinter1: TVDODmPrinter;
    dxButton19: TdxButton;
    Label60: TLabel;
    DBEdit26: TDBEdit;
    DBEdit33: TDBEdit;
    Label61: TLabel;
    dxButton20: TdxButton;
    dxButton21: TdxButton;
    dxButton22: TdxButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ComboBox1: TComboBox;
    dxButton23: TdxButton;
    dxButton24: TdxButton;
    dxButton25: TdxButton;
    dxButton26: TdxButton;
    dxButton27: TdxButton;
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
    DBRadioGroup4: TDBRadioGroup;
    DBEdit1: TDBEdit;
    Label31: TLabel;
    pnl_grupo: TPanel;
    GroupBox22: TGroupBox;
    Label34: TLabel;
    Label37: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBGrid3: TDBGrid;
    btExcluir: TdxButton;
    btBaixa: TdxButton;
    btCancela: TdxButton;
    DBEdit22: TDBEdit;
    dxButton6: TdxButton;
    DBEdit36: TDBEdit;
    dxButton7: TdxButton;
    dxButton18: TdxButton;
    Memo2: TMemo;
    Memo3: TMemo;
    dxButton16: TdxButton;
    Panel6: TPanel;
    rb2: TRadioButton;
    rb1: TRadioButton;
    rb3: TRadioButton;
    DtSrcValor: TDataSource;
    procfaixa: TSQLClientDataSet;
    procfaixaVALOR: TFloatField;
    procfaixaDATA: TDateField;
    procfaixaFAIXA: TIntegerField;
    DBEdit37: TDBEdit;
    Label35: TLabel;
    SpeedButton10: TSpeedButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btIncluir_DClick(Sender: TObject);
    procedure btGravar_DClick(Sender: TObject);
    procedure btExcluir_DClick(Sender: TObject);
    procedure btCancelar_DClick(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure btIncluir_EClick(Sender: TObject);
    procedure btGravar_EClick(Sender: TObject);
    procedure btExcluir_EClick(Sender: TObject);
    procedure btCancelar_EClick(Sender: TObject);
    procedure dxButton11Click(Sender: TObject);
    procedure dxButton12Click(Sender: TObject);
    procedure DtSrc_endStateChange(Sender: TObject);
    procedure DtSrc_depStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBRadioGroup5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure btExcluirClick(Sender: TObject);
    procedure btBaixaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rb_tri1Click(Sender: TObject);
    procedure rb_tri2Click(Sender: TObject);
    procedure rb_tri3Click(Sender: TObject);
    procedure rb_mensal1Click(Sender: TObject);
    procedure rb_mensal2Click(Sender: TObject);
    procedure rb_mensal3Click(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
    procedure dxButton13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3ColEnter(Sender: TObject);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure dxButton15Click(Sender: TObject);
    procedure dxButton14Click(Sender: TObject);
    procedure dxButton17Click(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid5ColEnter(Sender: TObject);
    procedure DBGrid4ColEnter(Sender: TObject);
    procedure DBGrid5ColExit(Sender: TObject);
    procedure DBGrid4ColExit(Sender: TObject);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure dxButton18Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure dxButton23Click(Sender: TObject);
    procedure dxButton25Click(Sender: TObject);
    procedure dxButton16Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
  public
     procedure mudaplano;
     procedure novosocio;
     procedure baixacompleta;
     procedure baixasimples;
    { Public declarations }
  end;

var
  fSocio_Cadastro: TfSocio_Cadastro;
  tipo_cr, DTA_ALT_PLANO : string;
  banco, l_pgto, texto, texto1, texto2, texto3 : string;
  sql, status, varHist, varPlano, tipobaixa : string;

implementation

uses UDM, uSocio_Procura, uPrincipal, uExclusao, uProcurar, uRecibo,
  uReceber_MS, uMuda_Plano, uCarteirinha, uRel_socios, uMostra_Insc_vazia,
  uReceber, uAltera_contrato, ufDlgLogin, uNumero_Boleto, Math;

{$R *.dfm}

procedure TfSocio_Cadastro.btnIncluirClick(Sender: TObject);
begin
 if btnIncluir.Enabled = false then Exit;
  inherited;

  varPlano := '';

  dm.cds_socioTIPO_DOC.AsString := 'F'; //F = Fisico, J = Juridico
  dm.cds_socioCPF_CGC.EditMask := '000.000.000-00;1;_';
  dm.cds_socioSTATUS.AsString := 'A'; // A = Ativo, I = Inativo
  dm.cds_socioSITUACAO.AsString := 'Ativo'; 
  dm.cds_socioCARENCIA.AsInteger := 0; // se o campo ficar nullo o sistema ñ gera mensalidades

  //===========================================================================
  //Para sócio Mensalista "NÃO" = não gerou Carne do Banco p/ o Sócio
  dm.cds_socioGEROU.AsString := 'NÃO';

  dm.cds_socioDTACADASTRO.AsDateTime := now; // pego a data do sistema

  //===========================================================================
  //testo se as tabelas "estado civil, Grau de Parentesco, Bairro e Municipio"
  // não estão abertas, se não estiverem abro.
  if not cds_est_civil.Active then
     cds_est_civil.Open;
  cds_est_civil.First;
  while not cds_est_civil.Eof do
  begin
    ComboBox1.Items.Add(cds_est_civilDESCRICAO.AsString);
    cds_est_civil.Next;
  end;
  if not cds_parentesco.Active then
     cds_parentesco.Open;

  if not cds_bairro.Active then
     cds_bairro.Open;

  if not cds_munic.Active then
     cds_munic.Open;

  // pego os endereços
  if dm.cds_end.Active then
     dm.cds_end.Close;

  // pego os dependentes
  if DM.cds_dep.Active then
    dm.cds_dep.Close;
  // --------------------------------------------------------------------------
  //===========================================================================

  //===========================================================================
  // Abilito a aba Dados do sócio
   PageControl1.ActivePage := TabSheet1;
  // --------------------------------------------------------------------------

  fMostra_Insc_vazia := TfMostra_Insc_vazia.Create(Application);
  try
    fMostra_Insc_vazia.BitBtn1.Click;
    fMostra_Insc_vazia.ShowModal;
  finally
    fMostra_Insc_vazia.Free;
  end;

end;

procedure TfSocio_Cadastro.dxButton2Click(Sender: TObject);
begin
  inherited;
   if (not fSocio_Procura.cds_proc.Active) then
     fSocio_Procura.ShowModal
   else
     close;
end;

procedure TfSocio_Cadastro.FormShow(Sender: TObject);
begin
  inherited;

  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';

  if not cds_est_civil.Active then
     cds_est_civil.Open;

  if not cds_parentesco.Active then
     cds_parentesco.Open;

  if not cds_bairro.Active then
     cds_bairro.Open;

  if not cds_munic.Active then
     cds_munic.Open;

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

end;

procedure TfSocio_Cadastro.btnExcluirClick(Sender: TObject);
var
 deleta, sql_texto :string;
begin
  {** Se o Usuário não tiver permissão para exclusão cancelo a operação}
  if (Excluir = 'N') then
    Exit;
  {** se o cds estiver em fechado cancelo a operação}
  if (DtSrc.DataSet.State in [dsInactive]) then
    Exit;
  {** se o Panel com os botões de inclusão de sócio está visivel}
  if Panel1.Visible = true then
  begin
     {** esse form entra com o motivo da exclusão}
     fExclusao := TfExclusao.Create(Application);
     try
       if fExclusao.ShowModal = mrCancel then
          exit;
     finally
       fExclusao.Free;
     end;
     {** Gravando histórico}
     if dm.cds_pront.Active then
       dm.cds_pront.Close;
     dm.cds_pront.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
     dm.cds_pront.Open;
     dm.cds_pront.Append;
     dm.cds_prontID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
     Memo1.Clear;
     Memo1.Lines.Add('-----------------------------------------------------------' +
     '--------------------------------------------------------------------------------------------------------- ');
     varHist := '-------------- EXCLUSÃO DE SOCIO --------------';
     Memo1.Lines.Add(' ');
     varHist := ' Data da Exclusão do Sócio: ' + DateTimeToSTr(Now);
     Memo1.Lines.Add(varHist);
     varHist := 'Sócio: ' + dm.cds_socioNOME_SOCIO.AsString;
     Memo1.Lines.Add(varHist);
     varHist := 'Grupo : ' + dm.cds_socioGRUPO.Value + ' - ' + 'Inscrição : ' +
       IntToStr(dm.cds_socioN_INSCRICAO.AsInteger);
     Memo1.Lines.Add(varHist);
     Memo1.Lines.Add(' ');
     varHist := 'Usúário : ' + varUsuario;
     Memo1.Lines.Add(varHist);
     Memo1.Lines.Add(' ');
     Memo1.Lines.Add('-----------------------------------------------------------' +
     '--------------------------------------------------------------------------------------------------------- ');
     dm.cds_prontHISTORICO.Value := Memo1.Text;
     dm.cds_pront.Post;
     Memo1.Clear;
     {** aqui salvo o Histórico}
     if (dm.cds_pront.State in [dsInsert, dsEdit, dsBrowse]) then
         dm.cds_pront.ApplyUpdates(0);

     {** Mudo o status do Sócio}
     if dm.cds_socio.State in [dsBrowse] then
        dm.cds_socio.Edit;
     dm.cds_socioGRUPO.Clear;
     dm.cds_socioN_INSCRICAO.Clear;
     dm.cds_socioSITUACAO.AsString := 'Inativo';
     dm.cds_socioDATAEXCLUSAO.AsDateTime := Now;
     dm.cds_socio.ApplyUpdates(0);
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
     //dm.cds_socio.Close;
  end;

  {** botão excluir do Dependente}
  if Panel2.Visible = true then
  begin
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
    begin
       DtSrc_dep.DataSet.Delete;
       (DtSrc_dep.DataSet as TClientDataSet).ApplyUpdates(0);
    end;
  end;

//botão excluir do endereço
  if Panel4.Visible = true then
  begin
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
    begin
       DtSrc_end.DataSet.Delete;
       (DtSrc_end.DataSet as TClientDataSet).ApplyUpdates(0);
    end;
  end;
end;

procedure TfSocio_Cadastro.btnGravarClick(Sender: TObject);
Var  vartexto : String;
begin
  DTA_ALT_PLANO := '';
  if Alterar = 'N' then Exit;
  {** Panel1 = onde está os botões herdados do form Pai. debaixo dele tenho outros
  panels com botões que visualizo de acordo com o TabSheet selecionado }
  if Panel1.Visible = true then
  begin
     if (Edit2.Text = '') then
     begin
       MessageDlg('Pôr favor escolha um Cobrador para esse Sócio..', mtWarning, [mbCancel], 0);
       exit
     end;

     {** se estiver inserindo um socio novo}
     if (dm.cds_socio.State in [dsInsert]) then
       novosocio;
     {** se estiver alterando}
     if (dm.cds_socio.State in [dsEdit]) then
     begin
       {** Testo se o plano foi alterado se sim executo a SP mudaplano}
       if (dm.cds_socioPLANO.AsString <> dm.cds_socioPLANO_ANT.AsString) then
          mudaplano;
     end;
     {** antes de gravar busco o codigo da tabela estado civil}
     if ComboBox1.Text <> '' then
     begin
        cds_est_civil.Locate('DESCRICAO',ComboBox1.Text,[loCaseInsensitive]);
        dm.cds_socioESTCIV.AsInteger := cds_est_civilID_ESTCIVIL.AsInteger;
     end;
     // Salvo
     inherited;
      {** aqui salvo o Histórico}
      if (dm.cds_pront.State in [dsInsert, dsEdit, dsBrowse]) then
          dm.cds_pront.ApplyUpdates(0);

      if cds_dep.Active then
        cds_dep.Close;
      cds_dep.Params[0].Clear;
      cds_dep.Params[1].Clear;
      cds_dep.Params[0].AsInteger :=
        dm.cds_socioID_SOCIO.AsInteger;
      cds_dep.Params[1].AsString := 'SOCIO';
      cds_dep.Open;
      {** abro a tabela dependente com parametro nome do sócio se não exitir cadastro}
      if not cds_dep.IsEmpty then
      begin
         cds_dep.Edit;
         cds_depNOME_DEP.AsString := dm.cds_socioNOME_SOCIO.AsString;
         cds_depDTACADASTRO.AsDateTime := dm.cds_socioDTACADASTRO.AsDateTime;
         cds_depCARENCIA.AsString := dm.cds_socioCARENCIA.AsString;
         cds_dep.ApplyUpdates(0);
         cds_dep.Close;
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
         dm.cds_dep.ApplyUpdates(0);
         dm.cds_dep.Close;
         cds_dep.Close;
         dm.cds_dep.Close;
         dm.cds_dep.Params[0].AsInteger :=
           dm.cds_socioID_SOCIO.AsInteger;
         dm.cds_dep.Open;
      end;
  end;
  if Panel2.Visible = true then
  begin
    DtSrc_dep.DataSet.Post;
    (DtSrc_dep.DataSet as TClientDataset).ApplyUpdates(0);
  end;
  if Panel4.Visible = true then
  begin
    DtSrc_end.DataSet.Post;
    (DtSrc_end.DataSet as TClientDataset).ApplyUpdates(0);
  end;

end;

procedure TfSocio_Cadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if Cancelar = 'N' then Exit;
  if Panel1.Visible = true then
   inherited;

  if Panel2.Visible = true then
    DtSrc_dep.DataSet.Cancel;

  if Panel4.Visible = true then
    DtSrc_end.DataSet.Cancel;
end;

procedure TfSocio_Cadastro.btIncluir_DClick(Sender: TObject);
begin
  inherited;
   if DtSrc.State in [dsInsert, dsEdit, dsBrowse] then
   begin
    if not DtSrc_dep.DataSet.Active then
       DtSrc_dep.DataSet.open;
    DtSrc_dep.DataSet.Append;
    dm.cds_depFALECIDO.AsString := 'N';
    dm.cds_depDTACADASTRO.AsDateTime := Now;
    DBEdit18.SetFocus;
   end
   else
   begin
    MessageDlg('Primeiro adicione o Sócio pra depois adicionar os dependentes', mtError, [mbOK], 0);
    PageControl1.ActivePage := TabSheet1;
    Panel2.Visible := false;
    Panel1.Visible := true;
    exit;
   end;
end;

procedure TfSocio_Cadastro.btGravar_DClick(Sender: TObject);
begin
  inherited;
    dm.cds_depDESCRICAO.AsString := DBLookupComboBox4.Text;
    DtSrc_dep.DataSet.Post;
    (DtSrc_dep.DataSet as TClientDataset).ApplyUpdates(0);
    dm.cds_dep.Close;
    dm.cds_dep.Params[0].Clear;
    dm.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_dep.Open;
end;

procedure TfSocio_Cadastro.btExcluir_DClick(Sender: TObject);
begin
  inherited;
 if (DM.cds_depID_PAR.AsInteger = 0) then
   MessageDlg('Você está excluindo o Sócio dessa familia, depois de fazer isso vc precisa nomear outro '+#13+#10+'depende como Sócio, e mudar o nome do Sócio na aba de "DADOS DO SÓCIO". ', mtWarning, [mbOK], 0);

  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_dep.DataSet.Delete;
     (DtSrc_dep.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfSocio_Cadastro.btCancelar_DClick(Sender: TObject);
begin
  inherited;
  DtSrc_dep.DataSet.Cancel;
end;

procedure TfSocio_Cadastro.dxButton3Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfSocio_Cadastro.btIncluir_EClick(Sender: TObject);
begin
  inherited;
   if DtSrc.State in [dsInsert, dsEdit, dsBrowse] then
   begin
    if not DtSrc_end.DataSet.Active then
       DtSrc_end.DataSet.open;
    DtSrc_end.DataSet.Append;
    dm.cds_endTIPOEND.AsInteger := 0;
    DBEdit10.SetFocus;
   end
   else
   begin
    MessageDlg('Primeiro adicione o Sócio pra depois adicionar o endereço', mtError, [mbOK], 0);
    PageControl1.ActivePage := TabSheet1;
    Panel4.Visible := false;
    Panel1.Visible := true;
    exit;
   end;
end;

procedure TfSocio_Cadastro.btGravar_EClick(Sender: TObject);
begin
  inherited;
    DtSrc_end.DataSet.Post;
    (DtSrc_end.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfSocio_Cadastro.btExcluir_EClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_end.DataSet.Delete;
     (DtSrc_end.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfSocio_Cadastro.btCancelar_EClick(Sender: TObject);
begin
  inherited;
  DtSrc_end.DataSet.Cancel;
end;

procedure TfSocio_Cadastro.dxButton11Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfSocio_Cadastro.dxButton12Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfSocio_Cadastro.DtSrc_endStateChange(Sender: TObject);
begin
  inherited;
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
    btGravar_E.Top := 7;
    btCancelar_E.Top := 7;
  end;

  if DtSrc_end.State in [dsBrowse,dsInactive] then
  begin
    btIncluir_E.Top := 7;
    btExcluir_E.Top := 7;
    btGravar_E.Top := -100;
    btCancelar_E.Top := -100;
  end;


end;

procedure TfSocio_Cadastro.DtSrc_depStateChange(Sender: TObject);
begin
  inherited;
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
    btGravar_D.Top := 7;
    btCancelar_D.Top := 7;
  end;

  if DtSrc_dep.State in [dsBrowse,dsInactive] then
  begin
    btIncluir_D.Top := 7;
    btExcluir_D.Top := 7;
    btGravar_D.Top := -100;
    btCancelar_D.Top := -100;
  end;
end;

procedure TfSocio_Cadastro.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
     if dm.cds_socio.State in [dsBrowse] then
       dm.cds_socio.Edit;
      dm.cds_socioID_COB.AsInteger := dm.proc_cobID_COB.AsInteger;
      Edit2.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;
end;

procedure TfSocio_Cadastro.PageControl1Change(Sender: TObject);
var dif :Integer;
    PendCli : String;
begin
  inherited;
  if PageControl1.ActivePage = TabSheet1 then
  begin
      Panel2.Visible := false;
      Panel4.Visible := false;
      Panel5.Visible := false;
      Panel1.Visible := true;
  end;

  if PageControl1.ActivePage = TabSheet2 then
  begin
      Panel1.Visible := false;
      Panel2.Visible := false;
      Panel5.Visible := false;
      Panel4.Visible := true;
  end;

  if PageControl1.ActivePage = TabSheet3 then
  begin
      Panel1.Visible := false;
      Panel4.Visible := false;
      Panel5.Visible := false;
      Panel2.Visible := true;
      edit7.Text := fSocio_Procura.DifDias(dm.cds_depDTACADASTRO.AsDateTime,date);
      dif := StrToInt(Edit7.Text);
      if dif < dm.cds_depCARENCIA.AsInteger then
        Edit6.Text := 'Sócio em Carência'
      else
      Edit6.Text := '';
  end;

  if PageControl1.ActivePage = TabSheet4 then
  begin
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
      Panel1.Visible := True;
      Panel2.Visible := false;
      Panel4.Visible := false;
      Panel5.Visible := false;
      if (DM.cds_socioPLANO.AsString = '7 FALECIMENTO') then
      begin
         pnl_grupo.Visible := true;
         pnl_mensais.Visible := false;
         pln_trimestral.Visible := false;
      end;
      if (DM.cds_socioPLANO.AsString = 'MENSAL') then
      begin
         pnl_mensais.Visible := true;
         pnl_grupo.Visible := false;
         pln_trimestral.Visible := false;
      end;
      if (DM.cds_socioPLANO.AsString = 'TRIMESTRAL') then
      begin
         pln_trimestral.Visible := true;
         pnl_grupo.Visible := false;
         pnl_mensais.Visible := false;
      end;
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      if pnl_grupo.Visible = True then
        rb2.Checked := true;
      if pnl_mensais.Visible = True then
        rb_mensal2.Checked := true;
      if pln_trimestral.Visible = True then
        rb_tri2.Checked := true;
       dm.cds_CR.Filter := PendCli;
       dm.cds_CR.Filtered := True;        
        // Mostra totais ******************************************************
      if (not dm.cds_socio.IsEmpty) then
      begin
        if pago.Active then
          pago.Close;
        pago.Params[0].Clear;
        pago.Params[1].Clear;
        pago.Params[2].Clear;
        pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        pago.Params[1].AsString := 'Pago';
        pago.Open;
        if pendente.Active then
          pendente.Close;
        pendente.Params[0].Clear;
        pendente.Params[1].Clear;
        pendente.Params[2].Clear;
        pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        pendente.Params[1].AsString := 'Pendente';
        pendente.Open;
        if total.Active then
          total.Close;
        total.Params[0].Clear;
        total.Params[1].Clear;
        total.Params[2].Clear;
        total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        total.Params[1].AsString := 'todostitulos';
        total.Open;
        //********************************************************************
      end;
  end;

  if PageControl1.ActivePage = TabSheet5 then
  begin
      Panel1.Visible := false;
      Panel2.Visible := false;
      Panel4.Visible := false;
      Panel5.Visible := true;
      // -------------------------------------------------------------------
      // Insere os dados do Prontuário na tabela Paciente.
      // -------------------------------------------------------------------
       if dm.cds_pront.Active then
         dm.cds_pront.Close;
       dm.cds_pront.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
       dm.cds_pront.Open;
       If not dm.cds_pront.IsEmpty then
       begin
         Memo1.Clear;
         While not dm.cds_pront.Eof Do
         begin
           Memo1.Lines.Add(dm.cds_prontHISTORICO.Value);
           dm.cds_pront.Next;
         end;
       end;
       dm.cds_pront.Close;
      //********************************************************************
  end;

end;

procedure TfSocio_Cadastro.DBRadioGroup5Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup5.ItemIndex=0 then
  begin
    dm.cds_socioCPF_CGC.EditMask := '000.000.000-00;1;_';
    dm.cds_socioTIPO_DOC.AsString := 'F';
  end
  else
  begin
    dm.cds_socioCPF_CGC.EditMask := '00.000.000/0000-00;1;_';
    dm.cds_socioTIPO_DOC.AsString := 'J';
  end;

end;

procedure TfSocio_Cadastro.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_bairro);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'BAIRRO';
   if fProcurar.ShowModal=mrOk then
   begin
    if dm.cds_end.State in [dsBrowse] then
     DM.cds_end.Edit;
    DM.cds_endID_BAIRRO.AsInteger := proc_bairroID_BAIRRO.AsInteger;
   end;
  finally
    proc_bairro.Close;
    fProcurar.Free;
  end;
end;

procedure TfSocio_Cadastro.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_cidade);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'MUNICIPIO';
   if fProcurar.ShowModal=mrOk then
   begin
    if dm.cds_end.State in [dsBrowse] then
     DM.cds_end.Edit;
    DM.cds_endID_MUNICIPIO.AsInteger := proc_cidadeID_MUNICIPIO.AsInteger;
   end;
  finally
    proc_bairro.Close;
    fProcurar.Free;
  end;
end;

procedure TfSocio_Cadastro.DBGrid2DrawColumnCell(Sender: TObject;
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
end;

procedure TfSocio_Cadastro.DBGrid2CellClick(Column: TColumn);
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

procedure TfSocio_Cadastro.DBGrid2KeyDown(Sender: TObject; var Key: Word;
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

procedure TfSocio_Cadastro.DBGrid2KeyUp(Sender: TObject; var Key: Word;
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

procedure TfSocio_Cadastro.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
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

procedure TfSocio_Cadastro.rb1Click(Sender: TObject);
var
   AtivoCli : String;
begin
  inherited;
    AtivoCli := 'STATUS = ''Pago''';
    if rb1.Checked then
    begin
       dm.cds_CR.Filter := AtivoCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.rb2Click(Sender: TObject);
var
   PendCli : String;
begin
  inherited;
    PendCli := 'STATUS <> ''Pago''';
    PendCli := PendCli + ' and STATUS <> ''Renegociado''';
    if rb2.Checked then
    begin
       dm.cds_CR.Filter := PendCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.rb3Click(Sender: TObject);
var
   TodosCli : String;
begin
  inherited;
    TodosCli := '';
    if rb3.Checked then
    begin
       dm.cds_CR.Filter := TodosCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not odd(dm.cds_CR.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid3.Canvas.Brush.Color := $00FFEFDF;
    DBGrid3.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid3.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = dm.cds_CRSTATUS then
   if ((dm.cds_CRSTATUS.AsString = 'Pendente') or  (dm.cds_CRSTATUS.AsString = 'Acordo'))then
   begin
     DBGrid3.Canvas.Font.Color := clRed;
     DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRSTATUS then
   if dm.cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid3.Canvas.Font.Color := clBlue;
     DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRVALOR_PAGO then
   if dm.cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid3.Canvas.Font.Color := clBlue;
     DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRVALOR_RECEBER then
   if dm.cds_CRSTATUS.AsString = 'Pendente' then
   begin
     DBGrid3.Canvas.Font.Color := clRed;
     DBGrid3.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
    ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);
    
end;

procedure TfSocio_Cadastro.DBGrid3TitleClick(Column: TColumn);
begin
  inherited;
  dm.cds_CR.IndexFieldNames := Column.FieldName;
end;

procedure TfSocio_Cadastro.btExcluirClick(Sender: TObject);
begin
  inherited;
 if perfil <> 'administrador' then
 begin
  MessageDlg('   Somente usuários Administradores tem '+#13+#10+'permição para Excluir parcelas', mtInformation, [mbOK], 0);
  exit;
 end;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     dtsrc_CR.DataSet.Delete;
     (dtsrc_CR.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfSocio_Cadastro.btBaixaClick(Sender: TObject);
var
   PendCli, TodosCli : String;
begin
  inherited;
 if not cds_par.Active then
   cds_par.Open;

 cds_par.Locate('PARAMETRO','TIPO BAIXA',[loCaseInsensitive]);
 tipobaixa := cds_parPARAMETRO1.AsString;
 cds_par.Close;

 if tipobaixa = 'simples' then
    baixasimples;

 if tipobaixa = 'completa' then
    baixacompleta;

end;

procedure TfSocio_Cadastro.btCancelaClick(Sender: TObject);
begin
  inherited;
 if perfil <> 'administrador' then
 begin
  MessageDlg('   Somente usuários Administradores tem '+#13+#10+'permição para cancelar parcelas recebidas', mtInformation, [mbOK], 0);
  exit;
 end;
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
end;

procedure TfSocio_Cadastro.dxButton6Click(Sender: TObject);
begin
  inherited;
   fRecibo := TfRecibo.Create(Application);
   try
     receber := 'Cliente';
     fRecibo.ShowModal;
   finally
     fRecibo.Free;
   end;
end;

procedure TfSocio_Cadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if grupo.Active then
    grupo.Close;


 if cds_parentesco.Active then
   cds_parentesco.Close;

  if cds_est_civil.Active then
    cds_est_civil.Close;

  if cds_dep.Active then
    cds_dep.Close;

  if cds_munic.Active then
    cds_munic.Close;

  if cds_bairro.Active then
    cds_bairro.Close;

  if dm.cds_CR.Active then
    dm.cds_CR.Close;

  if cds_socio.Active then
    cds_socio.Close;

  if dm.cds_socio.Active then
    dm.cds_socio.Close;

end;

procedure TfSocio_Cadastro.dxButton1Click(Sender: TObject);
var
 a,c1,c2,c3,c4,c5,c6,c7,c8,c9 :String;
begin
  inherited;
     if dm.cds_socio.State in [dsInactive] then
       Exit;

     if dm.cds_socio.State in [dsInsert, dsEdit] then
       dm.cds_socio.ApplyUpdates(0);


     // gera codigo
     if dm.c_6_genid.Active then
       dm.c_6_genid.Close;
     dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODIGO_BANCO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
     dm.c_6_genid.Open;
     c9 := IntToStr(dm.c_6_genidCODIGO.AsInteger);
     dm.c_6_genid.Close;

     DecimalSeparator := '.';
     a := 'Execute Procedure SP_MENSALIDADE(';
     c1 :=  formatDateTime('mm/dd/yyyy',DM.cds_socioDATAINICIO.AsDateTime);
     c2 := IntToStr (DM.cds_socioDIAPGTO.AsInteger);
     c3 := IntToStr (DM.cds_socioMESES.AsInteger);
     c4 := IntToStr (DM.cds_socioCARENCIA.AsInteger);
     c5 := FloatToStr(DM.cds_socioVALOR_SERVICO.AsFloat);
     c6 := IntToStr (DM.cds_socioID_SOCIO.AsInteger);
     c7 := IntToStr (DM.cds_socioCODIGO.AsInteger);
     c8 := IntToStr (DM.cds_socioID_COB.AsInteger);

     a := a + '''' + c1 + '''' + ',' + c2 + ',' + c3 + ',' + c4 + ',' + c5 + ',' +
       '''' + c6 + ''','  + '''' + c7 + ''',' + '''' + c8 + ''',' + c9 + ')';

     DM.SQLObitos.ExecuteDirect(a);
     DecimalSeparator := ',';

     dm.cds_socio.Refresh;

     if dm.cds_socio.Active then
       dm.cds_socio.Close;
     dm.cds_socio.Params[0].AsInteger := StrToInt(c6);
     dm.cds_socio.Open;

     if dm.cds_CR.Active then
       dm.cds_CR.Close;
     dm.cds_CR.Params[0].AsInteger := StrToInt(c6);
     dm.cds_CR.Open;
end;

procedure TfSocio_Cadastro.dxButton4Click(Sender: TObject);
var
 deleta : string;
begin
 if perfil <> 'administrador' then
 begin
  MessageDlg('   Somente usuários Administradores tem '+#13+#10+'permição para excluir parcelas', mtInformation, [mbOK], 0);
  exit;
 end;
  if MessageDlg('Aviso, se prosseguir as parcelas selecionadas serão '+#13+#10+'excluidas '
  , mtConfirmation, [mbYes,mbNo], 0) = mrNo then exit;
   deleta := 'delete from recebimentos where ';
   deleta := deleta + ' ID_RECEBIMENTOS = ';
   deleta := deleta +  IntToStr(DM.cds_CRID_RECEBIMENTOS.AsInteger);
   DM.SQLObitos.ExecuteDirect(deleta);

   if dm.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger :=  dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;
   dm.cds_CR.First;
   rb_mensal3.Checked := true;
end;

procedure TfSocio_Cadastro.dxButton7Click(Sender: TObject);
var
    total_pendente : double;
begin
  inherited;
  dm.cds_cr.DisableControls;
  dm.cds_CR.First;
  total_pendente := 0;
  while not dm.cds_cr.Eof do
  begin
     if (dm.cds_CRSELECIONOU.AsString <> '') then
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
  Panel7.Left := 5;
  Panel7.Visible := True;
  mdta1.Text := DateToStr(Now);
  Edit8.Text := '1';
  Edit9.Text := '0';
end;

procedure TfSocio_Cadastro.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not odd(dm.cds_CR.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid4.Canvas.Brush.Color := $00FFEFDF;
    DBGrid4.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid4.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = dm.cds_CRSTATUS then
   if ((dm.cds_CRSTATUS.AsString = 'Pendente') or (dm.cds_CRSTATUS.AsString = 'Acordo')) then
   begin
     DBGrid4.Canvas.Font.Color := clRed;
     DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRSTATUS then
   if dm.cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid4.Canvas.Font.Color := clBlue;
     DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRVALOR_PAGO then
   if dm.cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid4.Canvas.Font.Color := clBlue;
     DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRVALOR_RECEBER then
   if dm.cds_CRSTATUS.AsString = 'Pendente' then
   begin
     DBGrid4.Canvas.Font.Color := clRed;
     DBGrid4.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
    ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);
end;

procedure TfSocio_Cadastro.rb_tri1Click(Sender: TObject);
var
   AtivoCli : String;
begin
  inherited;
    AtivoCli := 'STATUS = ''Pago''';
    if rb_tri1.Checked then
    begin
       dm.cds_CR.Filter := AtivoCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.rb_tri2Click(Sender: TObject);
var
   PendCli : String;
begin
  inherited;
    PendCli := 'STATUS = ''Pendente''';
    if rb_tri2.Checked then
    begin
       dm.cds_CR.Filter := PendCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.rb_tri3Click(Sender: TObject);
var
   TodosCli : String;
begin
  inherited;
    TodosCli := '';
    if rb_tri3.Checked then
    begin
       dm.cds_CR.Filter := TodosCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.rb_mensal1Click(Sender: TObject);
var
   AtivoCli : String;
begin
  inherited;
    AtivoCli := 'STATUS = ''Pago''';
    if rb_mensal1.Checked then
    begin
       dm.cds_CR.Filter := AtivoCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.rb_mensal2Click(Sender: TObject);
var
   PendCli : String;
begin
  inherited;
    PendCli := 'STATUS = ''Pendente''';
    if rb_mensal2.Checked then
    begin
       dm.cds_CR.Filter := PendCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.rb_mensal3Click(Sender: TObject);
var
   TodosCli : String;
begin
  inherited;
    TodosCli := '';
    if rb_mensal3.Checked then
    begin
       dm.cds_CR.Filter := TodosCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.dxButton10Click(Sender: TObject);
begin
  inherited;
    VCLReport1.FileName := str_relatorio + 'Carteirinha.rep';
    VCLReport1.Report.Params.ParamByName('PID').Value := dm.cds_socioID_SOCIO.Value;
    VCLReport1.Execute;
end;

procedure TfSocio_Cadastro.dxButton13Click(Sender: TObject);
begin
  inherited;
    VCLReport2.FileName := str_relatorio + 'lista_dep.rep';
    VCLReport2.Report.Params.ParamByName('PID').Value := dm.cds_socioID_SOCIO.Value;
    VCLReport2.Report.Params.ParamByName('DTA1').Value := StrToDate('01/01/1900');
    VCLReport2.Report.Params.ParamByName('DTA2').Value := Now;
    VCLReport2.Execute;
end;

procedure TfSocio_Cadastro.Button1Click(Sender: TObject);
begin
  inherited;
  fMostra_Insc_vazia := TfMostra_Insc_vazia.Create(Application);
  try
    fMostra_Insc_vazia.ShowModal;
  finally
    fMostra_Insc_vazia.Free;
  end;  
end;

procedure TfSocio_Cadastro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_vend);
  try
     fProcurar.BtnProcurar.Click;
     fProcurar.EvDBFind1.DataField := 'VENDEDOR';
     if fProcurar.ShowModal=mrOk then
     begin
       if dm.cds_socio.State in [dsBrowse] then
         dm.cds_socio.Edit;
        dm.cds_socioID_VEN.AsInteger := dm.proc_vendID_VEN.AsInteger;
        Edit1.Text := dm.proc_vendVENDEDOR.AsString;
     end;
  finally
      dm.proc_vend.Close;
      fProcurar.Free;
  end;
end;

procedure TfSocio_Cadastro.ChkDBGridCellClick(Column: TColumn);
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

procedure TfSocio_Cadastro.ChkDBGridColEnter(DBGrid: TDBGrid);
var Field: TField;
begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'cds_CRSELECIONOU') then
      DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfSocio_Cadastro.ChkDBGridColExit(DBGrid: TDBGrid);
var Field: TField;
begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'cds_CRSELECIONOU') then
      DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfSocio_Cadastro.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
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
      fSocio_Cadastro.ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
    end
    else // Default drawing
      DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfSocio_Cadastro.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
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

procedure TfSocio_Cadastro.DBGrid3CellClick(Column: TColumn);
begin
  inherited;
  ChkDBGridCellClick(Column);
end;

procedure TfSocio_Cadastro.DBGrid3ColEnter(Sender: TObject);
begin
  inherited;
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfSocio_Cadastro.DBGrid3ColExit(Sender: TObject);
begin
  inherited;
  ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfSocio_Cadastro.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfSocio_Cadastro.dxButton15Click(Sender: TObject);
var
   ano, mes, dia: word;
   lote, I, np, id: integer;
   data, data1 :string;
   Sobra, parcela : double;
   PendCli, TodosCli : String;
begin
  inherited;
    Memo1.Lines.Clear;
    Memo2.Lines.Clear;
    Memo3.Lines.Clear;
    varparcelas := '';
    varrenegiciada := '';
    varnovaparc := '';

   {** Verifico qual Panel está ativo, possui 3 panels, GRUPOS, MENSAIS E TRIMESTRAIS}
   if pnl_grupo.Visible = True then
   begin
      TodosCli := '';
      rb3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;

   if pln_trimestral.Visible = True then
   begin
      TodosCli := '';
      rb_tri3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;

   if pnl_mensais.Visible = True then
   begin
      TodosCli := '';
      rb_mensal3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;

   id := 0;
   {** Pego o valor da genator da tabela recebimentos e coloco na variavel id
   que uso no While abaixo}
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ACORDO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   id := dm.c_6_genidCODIGO.AsInteger;
   dm.c_6_genid.Close;
   {** Pego as parcelas que forão selecionadas e mudo o status delas para Acordo}
   dm.cds_cr.DisableControls;
   dm.cds_CR.First;
   while not dm.cds_cr.Eof do
   begin
     lote := dm.cds_CRLOTE.AsInteger;
     if dm.cds_CRSELECIONOU.AsString <> '' then
     begin
        dm.cds_cr.Edit;
        dm.cds_CRSTATUS.AsString := 'Renegociado';
        dm.cds_CRID_ACORDO.AsInteger := id;
        dm.cds_CRSELECIONOU.AsString := '';
        varrenegiciada := varrenegiciada + ' Venc.: ' + DateToStr(dm.cds_CRVENCIMENTO.AsDateTime);
        varrenegiciada := varrenegiciada + ' - Status :' + dm.cds_CRSTATUS.AsString;
        varrenegiciada := varrenegiciada + ' - Valor :' + Format('%-6.2n',[dm.cds_CRVALOR_NF.Value]);
        varrenegiciada := varrenegiciada + ' - Situação : RENEGICIADO  ';
        Memo2.Lines.Add(varrenegiciada);
        varrenegiciada := '';
        dm.cds_cr.ApplyUpdates(0);
     end;
   dm.cds_cr.Next;
   end;
   dm.cds_CR.First;
   dm.cds_cr.EnableControls;
   data :=mdta1.Text; {** pego a data de vencimento}
   {** gera as novas parcelas do acordo}
   {** testo se teve entrada}
   if Edit9.Text <>'0' then
   begin
     Sobra := StrToFloat(Edit10.Text) - StrToFloat(Edit9.Text);
     if (StrToInt(Edit8.Text) > 1) then
       np:=StrToInt(Edit8.Text) - 1;
     if Sobra <> 0 then
     parcela := Sobra / np;
   end
   else {** se ñ teve entrada}
    parcela := StrToFloat(Edit10.Text) / StrToFloat(Edit8.Text);
   np:=StrToInt(Edit8.Text);  {** np recebe a quantidade de parcelas}
   {** abro a tabela Contas a receber e para inserir nova linha}
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
            dm.cds_CRSTATUS.Value:='Acordo';
            dm.cds_CRVALOR_RECEBER.Value:=parcela;
            dm.cds_CRVALOR_1VIA.Value:=parcela;
            dm.cds_CRVALOR_PAGO.Value:=0;
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
          dm.cds_CREMISSAO.AsDateTime :=now;
          dm.cds_CRVALOR_RECEBER.Value:=parcela;
          dm.cds_CRVALOR_1VIA.Value:=parcela;
          dm.cds_CRVALOR_PAGO.Value:=0;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
          dm.cds_CR.Post;
          data := DateToStr(dm.cds_CRVENCIMENTO.AsDateTime);
     end;
        varnovaparc := varnovaparc + ' Venc.: ' + DateToStr(dm.cds_CRVENCIMENTO.AsDateTime);
        varnovaparc := varnovaparc + ' - Status :' + dm.cds_CRSTATUS.AsString;
        varnovaparc := varnovaparc + ' - Valor :' + Format('%-6.2n',[dm.cds_CRVALOR_NF.Value]);
        varnovaparc := varnovaparc + ' - Situação : Parcela à Receber    ';
        Memo3.Lines.Add(varnovaparc);
        varnovaparc := '';
   end;
   dm.cds_CR.ApplyUpdates(0);{** Salvo a tabela Recebimentos}
   {** Fecho a tabela e abro novamente}
   if (dm.cds_CR.Active) then
     dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Open;
   {** Gravando histórico}
    if dm.cds_pront.Active then
      dm.cds_pront.Close;
    dm.cds_pront.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_pront.Open;
    dm.cds_pront.Append;
    dm.cds_prontID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    Memo1.Clear;
    if Memo2.Text <> '' then
    begin
        varHist := '      PARCELAS RENEGOCIADAS    ';
        Memo1.Lines.Add(varHist);
        Memo1.Lines.Add(Memo2.Text);
        Memo1.Lines.Add(' ');
    end;
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
    {** Mostra totais }
    if pago.Active then
      pago.Close;
    pago.Params[0].Clear;
    pago.Params[1].Clear;
    pago.Params[2].Clear;
    pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    pago.Params[1].AsString := 'Pago';
    pago.Open;
    if pendente.Active then
      pendente.Close;
    pendente.Params[0].Clear;
    pendente.Params[1].Clear;
    pendente.Params[2].Clear;
    pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    pendente.Params[1].AsString := 'Pendente';
    pendente.Open;
    if total.Active then
      total.Close;
    total.Params[0].Clear;
    total.Params[1].Clear;
    total.Params[2].Clear;
    total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    total.Params[1].AsString := 'todostitulos';
    total.Open;

    Panel7.Visible := false;
    Panel7.Left := 115;
    DBGrid3.ReadOnly := false;

    if pnl_grupo.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if pnl_mensais.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_mensal2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if pln_trimestral.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_tri2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.dxButton14Click(Sender: TObject);
var
    total_pendente : double;
begin
  inherited;
  dm.cds_CR.First;
  total_pendente := 0;
  while not dm.cds_cr.Eof do
  begin
     if (dm.cds_CRSELECIONOU.AsString <> '') then
     begin
       total_pendente := total_pendente + dm.cds_CRVALOR_NF.AsFloat;
     end;
  dm.cds_cr.Next;
  end;
  dm.cds_cr.First;
  Edit10.Text := Format('%-6.2n',[total_pendente]);
  Panel7.Left := 3;
  Panel7.Visible := true;
  mdta1.Text := DateToStr(Now);
  Edit8.Text := '1';
  Edit9.Text := '0';
end;

procedure TfSocio_Cadastro.dxButton17Click(Sender: TObject);
var
    total_pendente : double;
begin
  inherited;
  dm.cds_CR.First;
  total_pendente := 0;
  while not dm.cds_cr.Eof do
  begin
     if (dm.cds_CRSELECIONOU.AsString <> '') then
     begin
       total_pendente := total_pendente + dm.cds_CRVALOR_NF.AsFloat;
     end;
  dm.cds_cr.Next;
  end;
  Edit10.Text := Format('%-6.2n',[total_pendente]);
  Panel7.Left := 8;
  Panel7.Visible := true;
  mdta1.Text := DateToStr(Now);
  Edit8.Text := '1';
  Edit9.Text := '0';
end;

procedure TfSocio_Cadastro.DBGrid5CellClick(Column: TColumn);
begin
  inherited;
  ChkDBGridCellClick(Column);
end;

procedure TfSocio_Cadastro.DBGrid4CellClick(Column: TColumn);
begin
  inherited;
  ChkDBGridCellClick(Column);
end;

procedure TfSocio_Cadastro.DBGrid5ColEnter(Sender: TObject);
begin
  inherited;
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfSocio_Cadastro.DBGrid4ColEnter(Sender: TObject);
begin
  inherited;
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfSocio_Cadastro.DBGrid5ColExit(Sender: TObject);
begin
  inherited;
  ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfSocio_Cadastro.DBGrid4ColExit(Sender: TObject);
begin
  inherited;
  ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfSocio_Cadastro.DBGrid5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfSocio_Cadastro.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfSocio_Cadastro.dxButton18Click(Sender: TObject);
var banco, l_pgto, texto, texto1, texto2, texto3 : string;
begin
  inherited;
   if (perfil <> 'administrador') then
   if ((rb1.Checked = False) and (rb_mensal1.Checked = False)  and (rb_tri1.Checked = False)) then
   begin
     MessageDlg('Só é permitido a impressão de BOLETOS "Baixados".'+ #13#10 + 'Selicione a opção PAGO.' , mtWarning, [mbOK], 0);
     exit;
   end;

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
    MessageDlg('Banco não Cadastrado.', mtWarning, [mbOK], 0);
    exit;
   end
   else
   begin
     banco := cds_bancoBANCO.AsString;
     l_pgto := cds_bancoLOCAL_PGTO.AsString;
     texto  := cds_bancoVENCIMENTO.AsString;
     texto1 := cds_bancoVENCIMENTO1.AsString;
     texto2 := cds_bancoVENCIMENTO2.AsString;
     texto3 := cds_bancoVENCIMENTO3.AsString;
   end;

   dm.cds_CR.First;

  with VDODmPrinter1 do
  begin
      { Inicia o Documento }
    BeginDoc;
      { Altero o fonte para o tamanho default }
    Font.NLQFont := ntRoman;
    Font.Pitch := fp10cpp;
    Font.Size := fsCondensed;

     while not dm.cds_CR.Eof do
     begin
       if dm.cds_CRSELECIONOU.AsString <> '' then
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
        Print(01, DM.cds_endENDERECO.AsString + ' - ' + cds_bairroBAIRRO.AsString + ' - ' +
          DM.cds_endCEP.AsString  + ' - ' + DM.cds_endESTADO.AsString + ' - ' +
            cds_municMUNICIPIO.AsString);

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
    EndDoc;
   end;

end;

procedure TfSocio_Cadastro.dxButton9Click(Sender: TObject);
var
   PendCli, TodosCli : String;
begin
  inherited;
   if pnl_grupo.Visible = True then
   begin
    TodosCli := '';
    rb3.Checked := True;
    dm.cds_CR.Filter := TodosCli;
    dm.cds_CR.Filtered := True;
   end;

   if pln_trimestral.Visible = True then
   begin
    TodosCli := '';
    rb_tri3.Checked := True;
    dm.cds_CR.Filter := TodosCli;
    dm.cds_CR.Filtered := True;
   end;

   if pnl_mensais.Visible = True then
   begin
    TodosCli := '';
    rb_mensal3.Checked := True;
    dm.cds_CR.Filter := TodosCli;
    dm.cds_CR.Filtered := True;
   end;

   if not cds_par.Active then
     cds_par.Open;

   cds_par.Locate('PARAMETRO','TIPO BAIXA',[loCaseInsensitive]);
   tipobaixa := cds_parPARAMETRO1.AsString;
   cds_par.Close;

   if tipobaixa = 'simples' then
      baixasimples;

   if tipobaixa = 'completa' then
      baixacompleta;
 {  dm.cds_cr.DisableControls;
   dm.cds_cr.First;
   while not dm.cds_CR.Eof do
   begin
     if dm.cds_CRSELECIONOU.AsString <> '' then
     begin
       if dm.cds_CRSTATUS.AsString = 'Pendente' then
       begin
        if dm.cds_CR.State in [dsInactive] then
           exit;
        if dm.cds_CR.State in [dsBrowse] then
           dm.cds_CR.Edit;
        dm.cds_CRDATA_PAG.AsDateTime := now;
        dm.cds_CRSTATUS.AsString := 'Pago';
        dm.cds_CRVALOR_A_REC.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
        dm.cds_CRVALOR_PAGO.AsFloat := dm.cds_CRVALOR_NF.AsFloat;
        dm.cds_CRSELECIONOU.AsString := '';
        dm.cds_CR.Post;
       end;
     end;
     dm.cds_cr.Next;
   end;
   dm.cds_CR.ApplyUpdates(0);
   dm.cds_cr.EnableControls;}

    // Mostra totais ******************************************************
    if pago.Active then
      pago.Close;
    pago.Params[0].Clear;
    pago.Params[1].Clear;
    pago.Params[2].Clear;
    pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    pago.Params[1].AsString := 'Pago';
    pago.Open;
    if pendente.Active then
      pendente.Close;
    pendente.Params[0].Clear;
    pendente.Params[1].Clear;
    pendente.Params[2].Clear;
    pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    pendente.Params[1].AsString := 'Pendente';
    pendente.Open;
    if total.Active then
      total.Close;
    total.Params[0].Clear;
    total.Params[1].Clear;
    total.Params[2].Clear;
    total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    total.Params[2].AsString := 'todostitulos';
    total.Open;
    //********************************************************************
     if pnl_grupo.Visible = true then
     begin
      PendCli := 'STATUS = ''Pendente''';
      rb2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
     end;
     if pnl_mensais.Visible = true then
     begin
      PendCli := 'STATUS = ''Pendente''';
      rb_mensal2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
     end;
     if pln_trimestral.Visible = true then
     begin
      PendCli := 'STATUS = ''Pendente''';
      rb_tri2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
     end;

end;

procedure TfSocio_Cadastro.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     dm.cds_socioDTNASC.Clear;
  end;
end;

procedure TfSocio_Cadastro.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if DtSrc_dep.DataSet.State in [dsBrowse] then
  begin
     DtSrc_dep.DataSet.Edit;
     DM.cds_depDTFALEC.Clear;
  end;
end;

procedure TfSocio_Cadastro.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if DtSrc_dep.DataSet.State in [dsBrowse] then
  begin
     DtSrc_dep.DataSet.Edit;
     DM.cds_depDTACADASTRO.Clear;
  end;
end;

procedure TfSocio_Cadastro.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if DtSrc_dep.DataSet.State in [dsBrowse] then
  begin
     DtSrc_dep.DataSet.Edit;
     DM.cds_depDTNASC.Clear;
  end;
end;

procedure TfSocio_Cadastro.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     DM.cds_socioDATAINICIO.Clear;
  end;
end;

procedure TfSocio_Cadastro.dxButton23Click(Sender: TObject);
begin
  inherited;
   if (perfil <> 'administrador') then
   if ((rb1.Checked = False) and (rb_mensal1.Checked = False)  and (rb_tri1.Checked = False)) then
   begin
     MessageDlg('Só é permitido a impressão de recibos "Baixados".'+ #13#10 + 'Selicione a opção PAGO.', mtWarning, [mbOK], 0);
     exit;
   end;
   if dm.cds_cr.State in [dsInsert, dsEdit] then
     dm.cds_CR.ApplyUpdates(0);
   //***************************************************************************
   // vejo se foi selecionado algum item, se foi alimento a variavel
   dm.cds_cr.DisableControls;
   dm.cds_cr.First;
   while not dm.cds_CR.Eof do
   begin
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
        marcou1 := 'S';
     dm.cds_cr.Next;
   end;
   dm.cds_cr.EnableControls;

   //***************************************************************************
   // vejo se ele escolheu status (5-) ou (7-)
   if pnl_mensais.Visible = True then
   begin
     if rb_mensal1.Checked = True then
       status := 'Pago'; // Pago
     if rb_mensal2.Checked = True then
       status := 'Pendente'; // Pendente
   end;
   if pnl_grupo.Visible = True then
   begin
     if rb1.Checked = True then
       status := 'Pago'; // Pago
     if rb2.Checked = True then
       status := 'Pendente'; // Pendente
   end;
   if pln_trimestral.Visible = True then
   begin
     if rb_tri1.Checked = True then
       status := 'Pago'; // Pago
     if rb_tri2.Checked = True then
       status := 'Pendente'; // Pendente
   end;
  //***************************************************************************
  // se ele marcou um dos itens só imprimo os SELECIONADOS
   if Marcou1 = 'S' then
   begin
     Marcou1 := 'S';
     sql := 'Select * from RECEBIMENTOS Where ID_SOCIO = ';
     sql := sql + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
     sql := sql + ' and STATUS = ';
     sql := sql + '''' + status + '''';
     sql := sql + ' and SELECIONOU = ';
     sql := sql +  '''S''';
   end
  //***************************************************************************
  // se ele Ñ marcou um dos itens imprimo TODOS
   else
   begin
     sql := 'Select * from RECEBIMENTOS Where ID_SOCIO = ';
     sql := sql + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
     sql := sql + ' and STATUS = ';
     sql := sql + '''' + status + '''';
     sql := sql + ' and SELECIONOU <> ';
     sql := sql +  '''S''';
   end;
  //***************************************************************************
  // Limpo as variaveis de impressão
   Lote1 := 0;
   Gpo1 := '';
   Insc11 := 0;
   Insc1_1 := 0;
   socio1 := '1';

   fRecibo := TfRecibo.Create(Application);
   try
     receber := 'Cliente';
     fRecibo.ShowModal;
   finally
     fRecibo.Free;
   end;

  //***************************************************************************
  // Atualiza Campo Selecionou
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

end;

procedure TfSocio_Cadastro.mudaplano;
begin
  {** se o plano mudou para MENSAL, o campo gerou recebe não}
  if (DM.cds_socioPLANO.AsString = 'MENSAL') then
     dm.cds_socioGEROU.AsString := 'NÃO';
  {** Gravo a data em que o plano mudou}
  faltera_contrato := Tfaltera_contrato.Create(Application);
  try
    faltera_contrato.ShowModal;
  finally
    faltera_contrato.Free;
  end;
  {** Gravando histórico}
  if dm.cds_pront.Active then
    dm.cds_pront.Close;
  dm.cds_pront.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
  dm.cds_pront.Open;
  dm.cds_pront.Append;
  dm.cds_prontID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
  if (DTA_ALT_PLANO <> '') then
    dm.cds_prontDTA_ALT_PLANO.AsDateTime := StrToDateTime(DTA_ALT_PLANO);
  Memo1.Clear;
  varHist := ' Data de Cadastro do Sócio: ' + DateTimeToSTr(Now);
  Memo1.Lines.Add(varHist);
  varHist := 'Sócio: ' + dm.cds_socioNOME_SOCIO.AsString;
  Memo1.Lines.Add(varHist);
  varHist := 'Plano Pgto: ' + dm.cds_socioPLANO_ANT.Value;
  Memo1.Lines.Add(varHist);
  Memo1.Lines.Add(' ');
  varHist := ' Data de Inicio do Novo Contrato: ' + DTA_ALT_PLANO;
  Memo1.Lines.Add(varHist);
  varHist := 'Plano Pgto Atual: ' + dm.cds_socioPLANO.Value;
  Memo1.Lines.Add(varHist);
  Memo1.Lines.Add(' ');
  varHist := 'Usúário : ' + varUsuario;
  Memo1.Lines.Add(varHist);
  Memo1.Lines.Add(' ');
  Memo1.Lines.Add('-----------------------------------------------------------' +
  '--------------------------------------------------------------------------------------------------------- ');
  dm.cds_prontHISTORICO.Value := Memo1.Text;
  dm.cds_pront.Post;
  Memo1.Clear;
  if (varPlano = '') then //if dm.cds_socioPLANO.AsString <> '' then
    dm.cds_socioPLANO_ANT.AsString := dm.cds_socioPLANO.AsString
  else
    dm.cds_socioPLANO_ANT.AsString := varPlano;

end;

procedure TfSocio_Cadastro.novosocio;
begin

     if (DBComboBox1.Text = '') then
     begin
       MessageDlg('Escolha uma Plano de Pagamento..', mtWarning, [mbCancel], 0);
       exit
     end;
       if dm.cds_socioPLANO.AsString = '' then
      begin
         MessageDlg('preencha o campo Plano de Pagamento..', mtWarning, [mbOK], 0);
         exit;
      end
      else
         dm.cds_socioPLANO_ANT.AsString := dm.cds_socioPLANO.AsString;
      if (DM.cds_socioPLANO.AsString = 'MENSAL') then
         dm.cds_socioGEROU.AsString := 'NÃO';
      // Gravando histórico
      if dm.cds_pront.Active then
        dm.cds_pront.Close;
      dm.cds_pront.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
      dm.cds_pront.Open;
      dm.cds_pront.Append;
      dm.cds_prontID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
      Memo1.Clear;
      varHist := ' Data: ' + DateTimeToSTr(Now);
      Memo1.Lines.Add(varHist);
      varHist := 'Sócio: ' + dm.cds_socioNOME_SOCIO.AsString;
      Memo1.Lines.Add(varHist);
      varHist := 'Plano Pgto: ' + dm.cds_socioPLANO.Value;
      Memo1.Lines.Add(varHist);
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add(' ');
      varHist := 'Usúário : ' + varUsuario;
      Memo1.Lines.Add(varHist);
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('-----------------------------------------------------------' +
      '--------------------------------------------------------------------------------------------------------- ');
      dm.cds_prontHISTORICO.Value := Memo1.Text;
      dm.cds_pront.Post;
      Memo1.Clear;
end;

procedure TfSocio_Cadastro.dxButton25Click(Sender: TObject);
var
   PendCli, TodosCli : String;
begin
  inherited;

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

    Panel7.Visible := false;
    Panel7.Left := 115;
    DBGrid3.ReadOnly := false;

    if pnl_grupo.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if pnl_mensais.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_mensal2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if pln_trimestral.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_tri2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.dxButton16Click(Sender: TObject);
var
  codigo : integer;
   PendCli : String;  
begin
  inherited;
  codigo := 0;
  dm.cds_cr.DisableControls;
  dm.cds_CR.First;
  while not dm.cds_cr.Eof do
  begin
     {** verifico se a parcela foi selecionada}
     if (dm.cds_CRSELECIONOU.AsString <> '') then
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
           if cdsAcordoSTATUS.AsString = 'Acordo' then
           begin
             cdsAcordo.Delete;
             cdsAcordo.ApplyUpdates(0);
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

    if pnl_grupo.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if pnl_mensais.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_mensal2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
    if pln_trimestral.Visible = true then
    begin
      PendCli := 'STATUS <> ''Pago''';
      PendCli := PendCli + ' and STATUS <> ''Renegociado''';
      rb_tri2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
    end;
end;

procedure TfSocio_Cadastro.baixacompleta;
begin
   if dm.cds_socio.State = dsInactive then
     exit;
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

procedure TfSocio_Cadastro.baixasimples;
var
   PendCli, TodosCli : String;
begin
   if pnl_grupo.Visible = True then
   begin
      TodosCli := '';
      rb3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;

   if pln_trimestral.Visible = True then
   begin
      TodosCli := '';
      rb_tri3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;

   if pnl_mensais.Visible = True then
   begin
      TodosCli := '';
      rb_mensal3.Checked := True;
      dm.cds_CR.Filter := TodosCli;
      dm.cds_CR.Filtered := True;
   end;
   dm.cds_cr.DisableControls;
   dm.cds_cr.First;
   while not dm.cds_CR.Eof do
   begin
     if (dm.cds_CRSELECIONOU.AsString = 'S') then
     begin
       if dm.cds_CRSTATUS.AsString = 'Pendente' then
       begin
          if dm.cds_CR.State in [dsInactive] then
             exit;
          if dm.cds_CR.State in [dsBrowse] then
             dm.cds_CR.Edit;
          dm.cds_CRDATA_PAG.AsDateTime := now;
          dm.cds_CRSTATUS.AsString := 'Pago';
          dm.cds_CRVALOR_A_REC.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
          dm.cds_CRVALOR_PAGO.AsFloat := dm.cds_CRVALOR_NF.AsFloat;
          dm.cds_CRSELECIONOU.AsString := '';
          dm.cds_CR.Post;
       end;
     end;
     dm.cds_cr.Next;
   end;
   dm.cds_CR.ApplyUpdates(0);
   dm.cds_cr.EnableControls;
    // Mostra totais ******************************************************
    if pago.Active then
      pago.Close;
    pago.Params[0].Clear;
    pago.Params[1].Clear;
    pago.Params[2].Clear;
    pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    pago.Params[1].AsString := 'Pago';
    pago.Open;
    if pendente.Active then
      pendente.Close;
    pendente.Params[0].Clear;
    pendente.Params[1].Clear;
    pendente.Params[2].Clear;
    pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    pendente.Params[1].AsString := 'Pendente';
    pendente.Open;
    if total.Active then
      total.Close;
    total.Params[0].Clear;
    total.Params[1].Clear;
    total.Params[2].Clear;
    total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    total.Params[2].AsString := 'todostitulos';
    total.Open;
    //********************************************************************

   if pnl_grupo.Visible = true then
   begin
      PendCli := 'STATUS = ''Pendente''';
      rb2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
   end;
   if pnl_mensais.Visible = true then
   begin
      PendCli := 'STATUS = ''Pendente''';
      rb_mensal2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
   end;
   if pln_trimestral.Visible = true then
   begin
      PendCli := 'STATUS = ''Pendente''';
      rb_tri2.Checked := True;
      dm.cds_CR.Filter := PendCli;
      dm.cds_CR.Filtered := True;
   end;

end;

procedure TfSocio_Cadastro.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,procfaixa);
  try
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'VALOR';
    fProcurar.RxLabel1.Caption := 'Digite o valor da Faixa que deseja Localizar';
    if fProcurar.ShowModal=mrOk then
    begin
      if dm.cds_socio.State in [dsBrowse] then
        dm.cds_socio.Edit;
      dm.cds_socioFAIXA.AsInteger := procfaixaFAIXA.AsInteger;
    end;
  finally
    procfaixa.Close;
    fProcurar.Free;
  end;
end;

end.




