unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, ExtCtrls, MMJPanel, Menus, Buttons,
  RXCtrls, EOneInst, ImgList, ComCtrls, EAppProt, StdCtrls, jpeg, Provider,
  SqlExpr, DB, DBClient, DBLocal, DBLocalS, FMTBcd, TFlatGaugeUnit, Grids,
  DBGrids, ShellApi, DBXpress, JvExControls, JvLabel, rpcompobase,
  rpvclreport;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistem1: TMenuItem;
    Cadastro1: TMenuItem;
    Sobre1: TMenuItem;
    Backup1: TMenuItem;
    Restaura1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Obito1: TMenuItem;
    Empresa1: TMenuItem;
    Funcionrio1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre2: TMenuItem;
    MMJPanel1: TMMJPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ImageList1: TImageList;
    EvOneInstance1: TEvOneInstance;
    MMJPanel2: TMMJPanel;
    SpeedButton7: TSpeedButton;
    Pesquisa1: TMenuItem;
    Pesqbitos1: TMenuItem;
    Srie1: TMenuItem;
    Clnica1: TMenuItem;
    Grupo1: TMenuItem;
    SpeedButton8: TSpeedButton;
    PesqContasaReceber1: TMenuItem;
    Movimentao1: TMenuItem;
    Consultas1: TMenuItem;
    Senhas1: TMenuItem;
    EvAppProtect1: TEvAppProtect;
    SpeedButton9: TSpeedButton;
    Vendedor1: TMenuItem;
    Cobradores1: TMenuItem;
    Relatrios1: TMenuItem;
    bitos1: TMenuItem;
    SociosDesligados1: TMenuItem;
    Lanamentos1: TMenuItem;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    ReceberLotes1: TMenuItem;
    SpeedButton12: TSpeedButton;
    GerarLotes1: TMenuItem;
    VerLogs1: TMenuItem;
    Parmetros1: TMenuItem;
    Circular1: TMenuItem;
    Mensalidades1: TMenuItem;
    Contrato1: TMenuItem;
    Carteirinha1: TMenuItem;
    Grupos1: TMenuItem;
    Municipio1: TMenuItem;
    Bairro1: TMenuItem;
    Cartrio1: TMenuItem;
    RelScios1: TMenuItem;
    Mdico1: TMenuItem;
    AtualizaLote1: TMenuItem;
    ContasReceber1: TMenuItem;
    Grupos2: TMenuItem;
    Mensais1: TMenuItem;
    rimestrais1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    OutrasReceitas1: TMenuItem;
    SpeedButton15: TSpeedButton;
    AlterarGrupo1: TMenuItem;
    Financeiro1: TMenuItem;
    cds_socios: TSQLDataSet;
    cds_sociosID_SOCIO: TIntegerField;
    cds_sociosNOME_SOCIO: TStringField;
    cds_sociosSOBRENOME: TStringField;
    cds_sociosNAT: TStringField;
    cds_sociosDTNASC: TDateField;
    cds_sociosPROFISSAO: TStringField;
    cds_sociosCPF_CGC: TStringField;
    cds_sociosRG_IE: TStringField;
    cds_sociosID_VEN: TIntegerField;
    cds_sociosID_COB: TIntegerField;
    cds_sociosN_INSCRICAO: TIntegerField;
    cds_sociosGRUPO: TStringField;
    cds_sociosDTACADASTRO: TDateField;
    cds_sociosDTASISTEMA: TDateField;
    cds_sociosSTATUS: TStringField;
    cds_sociosOBS: TGraphicField;
    cds_sociosTIPO_DOC: TStringField;
    cds_sociosESTCIV: TIntegerField;
    cds_sociosPRAZO_PG: TIntegerField;
    cds_sociosVENCIMENTO: TDateField;
    cds_sociosVALOR_SERVICO: TFloatField;
    cds_sociosPARCELA: TFloatField;
    cds_sociosENTRADA: TFloatField;
    cds_sociosCARENCIA: TIntegerField;
    cds_sociosCODIGO: TIntegerField;
    cds_sociosTIPO_SOCIO: TStringField;
    cds_sociosDIAPGTO: TIntegerField;
    cds_sociosMESES: TIntegerField;
    cds_sociosDATAINICIO: TDateField;
    cds_sociosDATAFIM: TDateField;
    cds_sociosPERCENTUALJUROS: TFloatField;
    cds_sociosPERCENTUALMULTA: TFloatField;
    cds_sociosPERCENTUALDESCONTO: TFloatField;
    cds_sociosVALOROUTROSACRESCIMOS: TFloatField;
    cds_sociosDEMONSTRATIVO: TStringField;
    cds_sociosINSTRUCOESCAIXA: TStringField;
    cds_sociosINSTRUCAO1: TStringField;
    cds_sociosINSTRUCAO2: TStringField;
    cds_sociosINSTRUCAO3: TStringField;
    cds_sociosTIPOIMPRESSAOCARNE: TIntegerField;
    cds_sociosACEITEDOCUMENTO: TStringField;
    cds_sociosESPECIEDOCUMENTO: TStringField;
    cds_sociosSELECIONOU: TStringField;
    cds_sociosGEROU: TStringField;
    cds_sociosCODIGO_T: TIntegerField;
    cds_sociosCODIGO_C: TIntegerField;
    cds_sociosPLANO: TStringField;
    cds_sociosHISTORICO: TMemoField;
    cds_sociosPLANO_ANT: TStringField;
    cds_sociosDTA_CONTRATO: TDateField;
    cds_sociosDTA_CONTRATO_ANT: TDateField;
    cds_end: TSQLDataSet;
    cds_endID_ENDERECO: TIntegerField;
    cds_endID_SOCIO: TIntegerField;
    cds_endENDERECO: TStringField;
    cds_endCOMPLEMENTO: TStringField;
    cds_endID_BAIRRO: TIntegerField;
    cds_endID_MUNICIPIO: TIntegerField;
    cds_endESTADO: TStringField;
    cds_endCEP: TStringField;
    cds_endDDD: TStringField;
    cds_endFONE: TStringField;
    cds_endFONE1: TStringField;
    cds_endFAX: TStringField;
    cds_endCXP: TStringField;
    cds_endTIPOEND: TSmallintField;
    cds_mun: TSQLDataSet;
    cds_bair: TSQLDataSet;
    cds_munID_MUNICIPIO: TIntegerField;
    cds_munMUNICIPIO: TStringField;
    cds_bairID_BAIRRO: TIntegerField;
    cds_bairBAIRRO: TStringField;
    cds_fun: TSQLDataSet;
    cds_cob: TSQLDataSet;
    SQLDataSet3: TSQLDataSet;
    cds_funCOD_FUNCIONARIO: TIntegerField;
    cds_funNOME: TStringField;
    cds_funENDERECO: TStringField;
    cds_funNR: TStringField;
    cds_funCOMPL: TStringField;
    cds_funBAIRRO: TStringField;
    cds_funCIDADE: TStringField;
    cds_funUF: TStringField;
    cds_funCEP: TStringField;
    cds_funTELEFONE: TStringField;
    cds_funCELULAR: TStringField;
    cds_funDATANASC: TDateField;
    cds_funCPF: TStringField;
    cds_funRG: TStringField;
    cds_funPAI: TStringField;
    cds_funMAE: TStringField;
    cds_funOBS: TStringField;
    cds_funCOMISSAO: TFloatField;
    cds_funCARGO: TStringField;
    cds_cobID_COB: TIntegerField;
    cds_cobNOME: TStringField;
    cds_cobENDERECO: TStringField;
    cds_cobCOMPLEMENTO: TStringField;
    cds_cobBAIRRO: TStringField;
    cds_cobMUNICIPIO: TStringField;
    cds_cobESTADO: TStringField;
    cds_cobCEP: TStringField;
    cds_cobDDD: TStringField;
    cds_cobFONE: TStringField;
    cds_cobFONE1: TStringField;
    cds_cobFAX: TStringField;
    cds_cobCXP: TStringField;
    cds_cobPORC: TFloatField;
    cds_cobPORCOU: TFloatField;
    cds_cobDTADM: TDateField;
    cds_cobDTRESC: TDateField;
    cds_cr: TSQLDataSet;
    cds_crID_RECEBIMENTOS: TIntegerField;
    cds_crID: TIntegerField;
    cds_crVALOR_NF: TFloatField;
    cds_crVALOR_RECEBER: TFloatField;
    cds_crPARCELA: TIntegerField;
    cds_crVENCIMENTO: TDateField;
    cds_crDATA_PAG: TDateField;
    cds_crSTATUS: TStringField;
    cds_crVALOR_PAGO: TFloatField;
    cds_crVALOR_DIF: TFloatField;
    cds_crJUROS: TFloatField;
    cds_crDESCONTO: TFloatField;
    cds_crMULTA: TFloatField;
    cds_crEMISSAO: TDateField;
    cds_crN_DOCUMENTO: TStringField;
    cds_crCAIXA: TStringField;
    cds_crFORMARECEBIMENTO: TStringField;
    cds_crVALOR_A_REC: TFloatField;
    cds_crTITULO: TIntegerField;
    cds_crVALOR_1VIA: TFloatField;
    cds_crID_SOCIO: TIntegerField;
    cds_crLOTE: TIntegerField;
    cds_crGEROU: TStringField;
    cds_crDATA_DOC: TDateField;
    cds_crGRUPO: TStringField;
    cds_crID_BANCO: TIntegerField;
    cds_crSITUACAO: TStringField;
    cds_crTIPO_DOC: TStringField;
    cds_crSELECIONOU: TStringField;
    cds_crSERIE: TStringField;
    cds_crPERCENTUALJUROS: TFloatField;
    cds_crPERCENTUALMULTA: TFloatField;
    cds_crPERCENTUALDESCONTO: TFloatField;
    cds_crVALOROUTROSACRESCIMOS: TFloatField;
    cds_crCODIGO: TIntegerField;
    cds_crOBS: TGraphicField;
    cds_crENTRADA: TFloatField;
    cds_crCODCCUSTO: TSmallintField;
    cds_crID_DEPREC: TIntegerField;
    cds_crNOTAFISCAL: TIntegerField;
    cds_crID_VENDA: TIntegerField;
    cds_crID_ACORDO: TIntegerField;
    cds_crN_BOLETO: TStringField;
    Etiquetas1: TMenuItem;
    Produtos1: TMenuItem;
    LanarCompras1: TMenuItem;
    ContasPagar1: TMenuItem;
    ListaScios1: TMenuItem;
    tulosAvulso1: TMenuItem;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    ver_campo: TSQLDataSet;
    ArquivoRetorno1: TMenuItem;
    Avisos1: TMenuItem;
    PesqArquivoRetorno1: TMenuItem;
    sdsParametro: TSQLDataSet;
    sdsParametroPARAMETRO: TStringField;
    sdsParametroDESCRICAO: TStringField;
    sdsParametroCONFIGURADO: TStringField;
    sdsParametroPARAMETRO1: TStringField;
    sdsParametroPARAMETRO2: TStringField;
    sdsParametroPARAMETRO3: TStringField;
    sdsParametroPARAMETRO4: TStringField;
    sdsParametroPARAMETRO5: TStringField;
    sdsParametroPARAMETRO6: TStringField;
    sdsParametroPARAMETRO7: TStringField;
    sdsParametroPARAMETRO8: TStringField;
    sdsParametroPARAMETRO9: TStringField;
    Fornecedor1: TMenuItem;
    Label1: TJvLabel;
    Label2: TJvLabel;
    Remessa1: TMenuItem;
    Mensalidades2: TMenuItem;
    Carn1: TMenuItem;
    Recibos1: TMenuItem;
    Remessa2: TMenuItem;
    Cobranas1: TMenuItem;
    RetornoSantander1: TMenuItem;
    RemessaAvulsa1: TMenuItem;
    RemessaAcordo1: TMenuItem;
    ListaSciosDiaPagto1: TMenuItem;
    ListaSciosSemDiaPagto1: TMenuItem;
    VCLReport1: TVCLReport;
    EndereoBoleto1: TMenuItem;
    EndereoMunicipioBairro1: TMenuItem;
    Pendentes1: TMenuItem;
    Pendentes7Falecimentos1: TMenuItem;
    ListaAniversariantes1: TMenuItem;
    lbl1: TLabel;
    lbl2: TLabel;
    RetornoBradesco1: TMenuItem;
    axasnoMes1: TMenuItem;
    IncluidosnoPeriodo1: TMenuItem;
    ExcluidosboPeriodo1: TMenuItem;
    Image2: TImage;
    Seguro1: TMenuItem;
    ContarSocios1: TMenuItem;
    PendentesTrimestral1: TMenuItem;
    VerLotes1: TMenuItem;
    ranferencia1: TMenuItem;
    EstadoCivil1: TMenuItem;
    DataNascimento1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    Label3: TLabel;
    ContarSocios2: TMenuItem;
    ipoEndereo1: TMenuItem;
    VerArquivosRemessaRetorno1: TMenuItem;
    Acordos1: TMenuItem;
    Movimento1: TMenuItem;
    ContagemMensal1: TMenuItem;
    ContagemEconomico1: TMenuItem;
    Contagem71: TMenuItem;
    ContagemTri1: TMenuItem;
    lblMensagemSistema: TLabel;
    ValidarCPF1: TMenuItem;
    AssinaramoM161: TMenuItem;
    SociosContratoM161: TMenuItem;
    CarnII1: TMenuItem;
    rimestrais2: TMenuItem;
    Recibos2: TMenuItem;
    procedure Obito1Click(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure Timer1Timer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Pesqbitos1Click(Sender: TObject);
    procedure Srie1Click(Sender: TObject);
    procedure Clnica1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure PesqContasaReceber1Click(Sender: TObject);
    procedure Consultas1Click(Sender: TObject);
    procedure Senhas1Click(Sender: TObject);
    procedure Vendedor1Click(Sender: TObject);
    procedure Cobradores1Click(Sender: TObject);
    procedure bitos1Click(Sender: TObject);
    procedure SociosDesligados1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ReceberLotes1Click(Sender: TObject);
    procedure VerLogs1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure Circular1Click(Sender: TObject);
    procedure Mensalidades1Click(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure Carteirinha1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Mensalistas1Click(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure Municipio1Click(Sender: TObject);
    procedure Cartrio1Click(Sender: TObject);
    procedure Urnas1Click(Sender: TObject);
    procedure LanarCompras1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure GerarArquivoRemessa1Click(Sender: TObject);
    procedure RelScios1Click(Sender: TObject);
    procedure fGerencia_AcessosBanco1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Mdico1Click(Sender: TObject);
    procedure rimestral1Click(Sender: TObject);
    procedure Grupos2Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure CentrodeCusto1Click(Sender: TObject);
    procedure LanarDespesas1Click(Sender: TObject);
    procedure LanarReceitas1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure AtualizaLote1Click(Sender: TObject);
    procedure AlterarGrupo1Click(Sender: TObject);
    procedure Financeiro1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ContasPagar1Click(Sender: TObject);
    procedure ListaScios1Click(Sender: TObject);
    procedure tulosAvulso1Click(Sender: TObject);
    procedure ArquivoRetorno1Click(Sender: TObject);
    procedure Avisos1Click(Sender: TObject);
    procedure PesqArquivoRetorno1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Remessa1Click(Sender: TObject);
    procedure Mensalidades2Click(Sender: TObject);
    procedure Carn1Click(Sender: TObject);
    procedure Recibos1Click(Sender: TObject);
    procedure Remessa2Click(Sender: TObject);
    procedure Cobranas1Click(Sender: TObject);
    procedure RetornoSantander1Click(Sender: TObject);
    procedure RemessaAvulsa1Click(Sender: TObject);
    procedure RemessaAcordo1Click(Sender: TObject);
    procedure ListaSciosDiaPagto1Click(Sender: TObject);
    procedure ListaSciosSemDiaPagto1Click(Sender: TObject);
    procedure sr1Click(Sender: TObject);
    procedure EndereoBoleto1Click(Sender: TObject);
    procedure EndereoMunicipioBairro1Click(Sender: TObject);
    procedure Pendentes1Click(Sender: TObject);
    procedure Pendentes7Falecimentos1Click(Sender: TObject);
    procedure ListaAniversariantes1Click(Sender: TObject);
    procedure RetornoBradesco1Click(Sender: TObject);
    procedure axasnoMes1Click(Sender: TObject);
    procedure IncluidosnoPeriodo1Click(Sender: TObject);
    procedure ExcluidosboPeriodo1Click(Sender: TObject);
    procedure Seguro1Click(Sender: TObject);
    procedure ContarSocios1Click(Sender: TObject);
    procedure PendentesTrimestral1Click(Sender: TObject);
    procedure VerLotes1Click(Sender: TObject);
    procedure ranferencia1Click(Sender: TObject);
    procedure EstadoCivil1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure ContarSocios2Click(Sender: TObject);
    procedure ipoEndereo1Click(Sender: TObject);
    procedure VerArquivosRemessaRetorno1Click(Sender: TObject);
    procedure Acordos1Click(Sender: TObject);
    procedure Movimento1Click(Sender: TObject);
    procedure ContagemMensal1Click(Sender: TObject);
    procedure ContagemEconomico1Click(Sender: TObject);
    procedure Contagem71Click(Sender: TObject);
    procedure ContagemTri1Click(Sender: TObject);
    procedure ValidarCPF1Click(Sender: TObject);
    procedure AssinaramoM161Click(Sender: TObject);
    procedure SociosContratoM161Click(Sender: TObject);
    procedure CarnII1Click(Sender: TObject);
    procedure Recibos2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    function GetVersion: string;

  end;

var
  Principal: TPrincipal;
  varUsuario: String;
  varAcesso: String;
  usuarioLogado: Integer;
  varform : string;
  tipov : string ;

implementation

uses uCad_Obitos, uSobre, uEmpresa, uFuncionarios, uSplash, uFiltro_Obitos,
  uSeries, uClinicas, uGrupo, uFiltro_CR, uConsulta, UnitCadastroUsuarios,
  ufDlgLogin, uCad_Clientes, uCad_Vendedor, uCobranca, Rel_obitos,
  uSocios_D, uTemas, uFiltro_CR1, uGeraLote, uParametro, uRel_Circular,
  uMensalidades, uContrato, uCarteirinha, UDM, uBairro, uMunicipio,
  uCartorio, uUrnas, uMarcas, uCompra_urna, uFornecedor, uCP,
  uFinaliza_Compra, uGeraArquivo, uRel_socios, uBanco, uFiltroProcura,
  uMedico, uAtualizaLote, uTrimestral_cob, uFluxo_Caixa, uCCusto,
  uDespesas, uReceitas, uVenda_Finalizar, uVendas_Terminal,
  uSocio_Cadastro, uSocio_Procura, uMuda_Plano, uAltera_Grupo, udm_sge,
  uEtiquetas, uLogs, uListaSocios, uGeraTituloAvulso, uAtualiza_Mensais,
  uArquivoRetorno, uAvisos, uSocios, uBaixaretorno, uProcuraCBR,
  uGeraTitulos, sCtrlResize, uContasReceber, uRemessaBanco,
  uGeraTitulosMensais, uGerarCobranca, uArquivoRetorno1, ubaixaretorno1,
  URemessaBanco1, UfRemessaAcordo, uPendente, U_aniversariantes,
  uArquivoRetornoBrad,
  uTaxaMes, uRel_cad_exc, uSeguro, uContar, uVerLotesA, uVendas, uestcivil,
  utipoend, ulerret, uAcordos, uMov,DateUtils, uValCPF, uCarneRec;

Function Saudacao : string;
begin
 result:='Boa-noite!';
 if (time>=0.25) and (time<0.5) then result:='Bom-dia!';
 if (time>=0.5) and (time<0.80) then result:='Boa-tarde!'
end;

{Quando criamos formul?rios, ?s vezes ? ?til escrever um c?digo para que a tela
 e todos os seus objetos sejam mostrados no mesmo tamanho, n?o importando qual
 a resolu??o da tela. Aqui esta um c?digo que mostra como isso ? feito:}

//const
//ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
//ScreenHeight: LongInt = 600;

{$R *.dfm}

procedure TPrincipal.Obito1Click(Sender: TObject);
begin
  varonde := 0;
  Cad_Obitos := TCad_Obitos.Create(Application);
  try
    if perfil <> 'administrador' then
     Cad_Obitos.TabSheet5.Visible := False;
    Cad_Obitos.PageControl1.ActivePage := Cad_Obitos.TabSheet1;
    Cad_Obitos.ShowModal;
  finally
    varonde := 0;
    Cad_Obitos.Free;
  end;
end;

procedure TPrincipal.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 statusBar1.Canvas.Brush.Color:=clSkyBlue;
 StatusBar1.Canvas.FillRect(rect);
 StatusBar1.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);
 ImageList1.Draw(StatusBar.Canvas,rect.Left,rect.Top,Panel.Index+0)
end;

procedure TPrincipal.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TPrincipal.Sair1Click(Sender: TObject);
begin
    if MessageDlg('Voc? realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then Application.Terminate
  else
   abort;

end;

procedure TPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if MessageDlg('Voc? realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then Application.Terminate
  else
   abort;
end;

procedure TPrincipal.FormCreate(Sender: TObject);
var
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;
  tabela,  tipo: string;
  campo : variant;
  TD: TTransactionDesc;
begin
  sCtrlResize.CtrlResize(TForm(Principal));
  lbl2.Caption := ' ATS - SCF  vers?o: ' + GetVersion;
  Label3.Caption := ' ATS - SCF  vers?o: ' + GetVersion;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  if (cds.Active) then
    cds.Close;
  { Tabela : SOCIOS }
  tabela := 'SOCIOS';
  campo := 'DTA_ULTIMA_PARCELA';
  tipo  := 'DATE';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    dm.SQLObitos.StartTransaction(TD);
    dm.SQLObitos.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    dm.SQLObitos.Commit(TD);
    MessageDlg('Campo Dta_Ultima_Parcela adicionado na tabela Socios.', mtWarning, [mbOK], 0);
  end;

  sdsParametro.Open;
  sdsParametro.Locate('PARAMETRO', 'FUNERARIA',[loCaseInsensitive]);
  if (sdsParametroPARAMETRO1.AsString = 'MOGIANA') then
  begin
    MainMenu1.Items[3].Items[0].Items[0].Visible := False;
    MainMenu1.Items[3].Items[0].Items[2].Visible := False;
  end;

  StatusBar1.Panels[2].Text:=Saudacao+' Hoje ? '+formatdatetime('dddddd',date);
  StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TPrincipal.Sobre2Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;
end;

procedure TPrincipal.Funcionrio1Click(Sender: TObject);
begin
  fFuncionarios := TfFuncionarios.Create(Application);
  try
    fFuncionarios.ShowModal;
  finally
    fFuncionarios.Free;
  end;
end;

procedure TPrincipal.Empresa1Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Application);
  try
    fEmpresa.ShowModal;
  finally
    fEmpresa.Free;
  end;
end;

procedure TPrincipal.Pesqbitos1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Pesq. ?bitos';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoCONSULTAR.AsString <> 'S' then
  begin
   MessageDlg('Usu?rio sem acesso a esse item de menu', mtConfirmation, [mbOK], 0);
   exit;
  end;

  Filtro_Obitos := TFiltro_Obitos.Create(Application);
  try
    Filtro_Obitos.ShowModal;
  finally
    Filtro_Obitos.Free;
  end;
end;

procedure TPrincipal.Srie1Click(Sender: TObject);
begin
  fSeries := TfSeries.Create(Application);
  try
    fSeries.ShowModal;
  finally
    fSeries.Free;
  end;
end;

procedure TPrincipal.Clnica1Click(Sender: TObject);
begin
  fClinicas := TfClinicas.Create(Application);
  try
    fClinicas.ShowModal;
  finally
    fClinicas.Free;
  end;
end;

procedure TPrincipal.Grupo1Click(Sender: TObject);
begin
  fGrupo := TfGrupo.Create(Application);
  try
    fGrupo.ShowModal;
  finally
    fGrupo.Free;
  end;
end;

procedure TPrincipal.PesqContasaReceber1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Receber ?bitos';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoCONSULTAR.AsString <> 'S' then
  begin
   MessageDlg('Usu?rio sem acesso a esse item de menu', mtConfirmation, [mbOK], 0);
   exit;
  end;

  Filtro_CR := TFiltro_CR.Create(Application);
  try
    Filtro_CR.ShowModal;
  finally
    Filtro_CR.Free;
    dm.cdsPermissao.Close;
  end;
end;

procedure TPrincipal.Consultas1Click(Sender: TObject);
begin
  fConsulta := TfConsulta.Create(Application);
  try
    varform := 'CONSULTA';
    fConsulta.ShowModal;
  finally
    fConsulta.Free;
    varform := '';
  end;
end;

procedure TPrincipal.Senhas1Click(Sender: TObject);
begin
  if perfil <> 'administrador' then
  begin
   MessageDlg('Usu?rio sem acesso a esse item de menu', mtConfirmation, [mbOK], 0);
   exit;
  end;
    FormCadastroUsuarios:=TFormCadastroUsuarios.create(Application); // cria form
    try
    FormCadastroUsuarios.showModal; // exib form
    finally
    FormCadastroUsuarios.free; // libera o formulario da memoria
    end;
end;

procedure TPrincipal.Vendedor1Click(Sender: TObject);
begin
  fCad_Vendedor := TfCad_Vendedor.Create(Application);
  try
    fCad_Vendedor.ShowModal;
  finally
    fCad_Vendedor.Free;
  end;

end;

procedure TPrincipal.Cobradores1Click(Sender: TObject);
begin
  fCobranca := TfCobranca.Create(Application);
  try
    fCobranca.ShowModal;
  finally
    fCobranca.Free;
  end;
end;

procedure TPrincipal.bitos1Click(Sender: TObject);
begin

  fRel_obitos := TfRel_obitos.Create(Application);
  try
    fRel_obitos.ShowModal;
  finally
    fRel_obitos.Free;
  end;
end;

procedure TPrincipal.SociosDesligados1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'S?cios Cancelados';
  dm.cdsPermissao.Open;

   if dm.cdsPermissaoCONSULTAR.AsString <> 'S' then
  begin
   MessageDlg('Usu?rio sem acesso a esse item de menu', mtConfirmation, [mbOK], 0);
   exit;
  end;
   
  fSocios_D := TfSocios_D.Create(Application);
  try
    fSocios_D.PageControl1.ActivePage := fSocios_D.TabSheet1;
    fSocios_D.ShowModal;
  finally
    fSocios_D.Free;
  end;
end;

procedure TPrincipal.SpeedButton11Click(Sender: TObject);
begin
    fTemas.ShowModal;
end;

procedure TPrincipal.FormShow(Sender: TObject);
var liberado : string;
begin

   if not fTemas.tema.Active then
          fTemas.tema.Open;
   if not fTemas.tema.IsEmpty then
   begin
  //  Label1.Caption := fTemas.temaTEXTO.AsString;
  //  Label2.Caption := fTemas.temaTEXTO1.AsString;
 //   Image1.Picture.LoadFromFile(fTemas.temaCAMINHO.AsString);
    fTemas.tema.Close;
  ///  Label1.Width := Principal.Width;
  //  Label1.Top := 240;
   // Label2.Width := Principal.Width;;
  //  Label2.Top := 340;
   end;
   StatusBar1.Panels[1].Text := TimetoStr(Time);
    if (FileExists('logo.jpg')) then
    begin
      Image2.Picture.LoadFromFile('logo.jpg');
    end;
  {
              // Com Internet
  if(dm.msg_cnx <> 'Socket Error # 11004: ') then
  begin
    DM.SQLObitos.ExecuteDirect('UPDATE PARAMETROS SET PARAMETRO3 = ' +
    QuotedStr(FormatDateTime('dd/mm/yyyy', today))  +
    ' , PARAMETRO2 = ' + QuotedStr('BOLETO') +
    ' , PARAMETRO4 = ' + QuotedStr(dm.memoLic) +
    ' WHERE PARAMETRO = ' + QuotedStr('EMPRESA'));
  end;

               // Sem Internet
  if(dm.msg_cnx = 'Socket Error # 11004: ') then
  begin
    DM.SQLObitos.ExecuteDirect('UPDATE PARAMETROS SET PARAMETRO1 = ' +
    QuotedStr(FormatDateTime('dd/mm/yyyy', today))  +
    ' , PARAMETRO2 = ' + QuotedStr('BOLETO') +
    ' WHERE PARAMETRO = ' + QuotedStr('EMPRESA'));
    lblMensagemSistema.Caption := 'Socket Error # 11004: ';
  end;
   }

  lblMensagemSistema.Caption := Dm.mensagemInicial;
  if (Dm.mensagemInicial = 'A Licen?a de uso expirada.') then
  begin
    lblMensagemSistema.Caption := 'A Licen?a de uso expirada.';
    //if (Dm.mensagemInicial = 'A Licen?a de uso expirada.') then
    MessageDlg('Licen?a do uso expirada, entre em contato com a ATS .', mtWarning, [mbOK], 0);
 //   lblMensagemSistema.Caption := 'A Licen?a de uso expirada.';
    SpeedButton1.Enabled := False;
    SpeedButton7.Enabled := False;
    SpeedButton2.Enabled := False;
    SpeedButton15.Enabled := False;
    SpeedButton8.Enabled := False;
    SpeedButton12.Enabled := False;
    SpeedButton10.Enabled := False;
    SpeedButton9.Enabled := False;
    SpeedButton11.Enabled := False;
    SpeedButton5.Enabled := False;
    Cadastro1.Enabled := False;
    Lanamentos1.Enabled := False;
    Movimentao1.Enabled := False;
    Pesquisa1.Enabled := False;
    Sistem1.Enabled := False;
    Relatrios1.Enabled := False;
  end;

  {
  if (not dm.proc_lic.Active) then
    dm.proc_lic.Open;
  liberado := dm.proc_licPARAMETRO4.AsString;
  dm.proc_lic.Close;


  //if (liberado <> '') then
  if (liberado = 'A Licen?a de uso expirada..') then
  begin
    MessageDlg('Licen?a do uso expirada, entre em contato com a ATS .', mtWarning, [mbOK], 0);
    lblMensagemSistema.Caption := 'A Licen?a de uso expirada..';
    SpeedButton1.Enabled := False;
    SpeedButton7.Enabled := False;
    SpeedButton2.Enabled := False;
    SpeedButton15.Enabled := False;
    SpeedButton8.Enabled := False;
    SpeedButton12.Enabled := False;
    SpeedButton10.Enabled := False;
    SpeedButton9.Enabled := False;
    SpeedButton11.Enabled := False;
    SpeedButton5.Enabled := False;
    Cadastro1.Enabled := False;
    Lanamentos1.Enabled := False;
    Movimentao1.Enabled := False;
    Pesquisa1.Enabled := False;
    Sistem1.Enabled := False;
    Relatrios1.Enabled := False;
  end;
  }

end;

procedure TPrincipal.ReceberLotes1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Receber Mensalidades';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoCONSULTAR.AsString <> 'S' then
  begin
   MessageDlg('Usu?rio sem acesso a esse item de menu', mtConfirmation, [mbOK], 0);
   exit;
  end;
  dm.cdsPermissao.Close;
  Filtro_CR1 := TFiltro_CR1.Create(Application);
  try
    Filtro_CR1.ShowModal;
  finally
    Filtro_CR1.Free;
    dm.cdsPermissao.Close;
  end;
  {
  fContasReceber := TfContasReceber.Create(Application);
  try
    fContasReceber.ShowModal;
  finally
    fContasReceber.Free;
  end;}
end;

procedure TPrincipal.VerLogs1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Ver Logs';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoCONSULTAR.AsString <> 'S' then
  begin
   MessageDlg('Usu?rio sem acesso a esse item de menu', mtConfirmation, [mbOK], 0);
   exit;
  end;

  fLogs := TfLogs.Create(Application);
  try
    fLogs.ShowModal;
  finally
    fLogs.Free;
  end;  
end;

procedure TPrincipal.Parmetros1Click(Sender: TObject);
begin
  fParametro := TfParametro.Create(Application);
  try
    fParametro.ShowModal;
  finally
    fParametro.Free;
  end;    
end;

procedure TPrincipal.Circular1Click(Sender: TObject);
begin
  fRel_Circular := TfRel_Circular.Create(Application);
  try
    fRel_Circular.ShowModal;
  finally
    fRel_Circular.Free;
  end;
end;

procedure TPrincipal.Mensalidades1Click(Sender: TObject);
begin
  fMensalidades := TfMensalidades.Create(Application);
  try
    fMensalidades.ShowModal;
  finally
    fMensalidades.Free;
  end;
end;

procedure TPrincipal.Contrato1Click(Sender: TObject);
begin
  varonde := 6;
  fContrato := TfContrato.Create(Application);
  try
    fContrato.ShowModal;
  finally
    varonde := 0;
    fContrato.Free;
  end;
end;

procedure TPrincipal.Carteirinha1Click(Sender: TObject);
begin
  varonde := 4;
  fCarteirinha := TfCarteirinha.Create(Application);
  try
    fCarteirinha.ShowModal;
  finally
    varonde := 0;
    fCarteirinha.Free;
  end;

end;

procedure TPrincipal.Grupos1Click(Sender: TObject);
begin
    varonde := 0;
    fMuda_Plano := TfMuda_Plano.Create(Application);
    fSocios := TfSocios.Create(Application);
    try
      fSocios.PageControl1.ActivePage := fSocios.TabSheet1;
      fSocios.TabSheet4.TabVisible := False;
      fSocios.TabSheet5.TabVisible := False;
      fSocios.TabSheet6.TabVisible := False;
      fSocios.ShowModal;
    finally
      fMuda_Plano.Free;
      varonde := 0;
      fSocios.Free;
    end;
end;

procedure TPrincipal.Mensalistas1Click(Sender: TObject);
begin
  fCad_Cliente := TfCad_Cliente.Create(Application);
  try
    if perfil <> 'administrador' then
    begin
      fCad_Cliente.btExcluir.Enabled := false;
      fCad_Cliente.btBaixa.Enabled := false;
      fCad_Cliente.btCancela.Enabled := false;
      fCad_Cliente.dxButton1.Enabled := false;
      fCad_Cliente.dxButton4.Enabled := false;
      fCad_Cliente.dxButton5.Enabled := false;
    end;
//     fCad_Cliente.TabSheet4.Visible := False;
    fCad_Cliente.PageControl1.ActivePage := fCad_Cliente.TabSheet1;
    varform := 'SOCIO';
    t_socio := 'M';
    if fCad_Cliente.pnl_mensais.Visible = false then
      fCad_Cliente.pnl_mensais.Visible := true;
    fCad_Cliente.pnl_grupo.Visible := false;
    fCad_Cliente.Label39.Visible := true;
    fCad_Cliente.DBEdit26.Visible := true;
    fCad_Cliente.DBEdit33.Visible := false;
    fCad_Cliente.Label8.Visible := false;
    fCad_Cliente.DBEdit8.Visible := false;
    fCad_Cliente.Label9.Visible := false;
    fCad_Cliente.DBEdit21.Visible := false;
    fCad_Cliente.ShowModal;
  finally
    fCad_Cliente.Free;
    varform := '';
  end;
end;

procedure TPrincipal.Bairro1Click(Sender: TObject);
begin
  fBairro := TfBairro.Create(Application);
  try
    fBairro.ShowModal;
  finally
    fBairro.Free;
  end;
end;

procedure TPrincipal.Municipio1Click(Sender: TObject);
begin
  fMunicipio := TfMunicipio.Create(Application);
  try
    fMunicipio.ShowModal;
  finally
    fMunicipio.Free;
  end;
end;

procedure TPrincipal.Cartrio1Click(Sender: TObject);
begin
  fCartorio:=TfCartorio.Create(Application);
  try
    fCartorio.ShowModal;
  finally
    fCartorio.Free;
  end;
end;

procedure TPrincipal.Urnas1Click(Sender: TObject);
begin
  fUrnas:=TfUrnas.Create(Application);
  try
    fUrnas.ShowModal;
  finally
    fUrnas.Free;
  end;
end;

procedure TPrincipal.LanarCompras1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Compras';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoCONSULTAR.AsString <> 'S' then
  begin
   MessageDlg('Usu?rio sem acesso a esse item de menu', mtConfirmation, [mbOK], 0);
   exit;
  end;

  fCompra_urna := TfCompra_urna.Create(Application);
  fFinaliza_Compra := TfFinaliza_Compra.Create(Application);
  try
    fCompra_urna.ShowModal;
  finally
    fCompra_urna.Free;
    fFinaliza_Compra.Free;
  end;

end;

procedure TPrincipal.Fornecedores1Click(Sender: TObject);
begin
   fFornecedor := TfFornecedor.Create(Application);
   try
    fFornecedor.ShowModal;
   finally
    fFornecedor.Free;
   end
end;

procedure TPrincipal.ContasaPagar1Click(Sender: TObject);
begin
  fCP := TfCP.Create(Application);
  try
    fCP.ShowModal;
  finally
    fCP.Free;
  end;
end;

procedure TPrincipal.GerarArquivoRemessa1Click(Sender: TObject);
begin
  fGeraArquivo := TfGeraArquivo.Create(Application);
  try
   fGeraArquivo.ShowModal;
  finally
   fGeraArquivo.Free;
  end;
end;

procedure TPrincipal.RelScios1Click(Sender: TObject);
begin
  varonde := 5;
  fRel_socios:=TfRel_socios.Create(Application);
  try
    fRel_socios.ShowModal;
  finally
    varonde := 0;
    fRel_socios.Free;
  end;
end;

procedure TPrincipal.fGerencia_AcessosBanco1Click(Sender: TObject);
begin
  fBanco := TfBanco.Create(Application);
  try
    fBanco.ShowModal;
  finally
    fBanco.Free;
  end;  
end;

procedure TPrincipal.Button1Click(Sender: TObject);
begin
  fFiltroProcura.ShowModal;
end;

procedure TPrincipal.Mdico1Click(Sender: TObject);
begin
  fMedico := TfMedico.Create(Application);
  try
    fMedico.ShowModal;
  finally
    fMedico.Free;
  end;
end;

procedure TPrincipal.rimestral1Click(Sender: TObject);
begin
  fCad_Cliente := TfCad_Cliente.Create(Application);
  try
    if perfil <> 'administrador' then
    begin
      fCad_Cliente.btExcluir.Enabled := false;
      fCad_Cliente.btBaixa.Enabled := false;
      fCad_Cliente.btCancela.Enabled := false;
      fCad_Cliente.dxButton1.Enabled := false;
      fCad_Cliente.dxButton4.Enabled := false;
      fCad_Cliente.dxButton5.Enabled := false;
    end;
//     fCad_Cliente.TabSheet4.Visible := False;
    fCad_Cliente.PageControl1.ActivePage := fCad_Cliente.TabSheet1;
    varform := 'SOCIO';
    t_socio := 'T';
    if fCad_Cliente.pln_trimestral.Visible = false then
      fCad_Cliente.pln_trimestral.Visible := true;
    fCad_Cliente.pnl_grupo.Visible := false;
    fCad_Cliente.Label39.Visible := true;
    fCad_Cliente.DBEdit26.Visible := false;
    fCad_Cliente.DBEdit33.Visible := True;
    fCad_Cliente.Label8.Visible := false;
    fCad_Cliente.DBEdit8.Visible := false;
    fCad_Cliente.Label9.Visible := false;
    fCad_Cliente.DBEdit21.Visible := false;
    fCad_Cliente.ShowModal;
  finally
    fCad_Cliente.Free;
    varform := '';
  end;

end;

procedure TPrincipal.Grupos2Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Gerar Lotes';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoCONSULTAR.AsString <> 'S' then
  begin
   MessageDlg('Usu?rio sem acesso a esse item de menu', mtConfirmation, [mbOK], 0);
   exit;
  end;

   fGeraLote := TfGeraLote.Create(Application);
   try
     fGeraLote.ShowModal;
   finally
     fGeraLote.Free;
     dm.cdsPermissao.Close;
   end;
end;

procedure TPrincipal.FluxodeCaixa1Click(Sender: TObject);
begin
  fFluxo_Caixa := TfFluxo_Caixa.Create(Application);
  try
    fFluxo_Caixa.ShowModal;
  finally
    fFluxo_Caixa.Free;
  end;
end;

procedure TPrincipal.CentrodeCusto1Click(Sender: TObject);
begin
   fCCusto := TfCCusto.Create(Application);
   try
     form_usa := 'Principal';
     tipoform := 'Principal';
     fCCusto.ShowModal;
   finally
     fCCusto.Free;
   end;
end;

procedure TPrincipal.LanarDespesas1Click(Sender: TObject);
begin
  fDespesas := TfDespesas.Create(Application);
  try
    fDespesas.ShowModal;
  finally
    fDespesas.Free;
  end;  
end;

procedure TPrincipal.LanarReceitas1Click(Sender: TObject);
begin
  fReceitas := TfReceitas.Create(Application);
  try
    fReceitas.ShowModal;
  finally
    fReceitas.Free;
  end;
end;

procedure TPrincipal.Vendas1Click(Sender: TObject);
begin
  fvendas_Terminal := Tfvendas_Terminal.Create(Application);
  fVenda_Finalizar := TfVenda_Finalizar.Create(Application);
  try
    fvendas_Terminal.ShowModal;
  finally
    fvendas_Terminal.Free;
    fVenda_Finalizar.Free;
  end;
end;

procedure TPrincipal.SpeedButton15Click(Sender: TObject);
begin
  varonde := 1;
  fMuda_Plano := TfMuda_Plano.Create(Application);
  fSocio_Procura.ShowModal;
  varonde := 0;

end;

procedure TPrincipal.AtualizaLote1Click(Sender: TObject);
begin
 fAtualizaLote := TfAtualizaLote.Create(Application);
 try
   fAtualizaLote.ShowModal;
 finally
   fAtualizaLote.Free;
 end;
end;

procedure TPrincipal.AlterarGrupo1Click(Sender: TObject);
begin
  fAltera_Grupo := TfAltera_Grupo.Create(Application);
  try
    fAltera_Grupo.ShowModal;
  finally
    fAltera_Grupo.Free;
  end;
end;

procedure TPrincipal.Financeiro1Click(Sender: TObject);
begin
  WinExec('C:\home\SisAdmin\PrjFinanceiro.exe', SW_SHOWNORMAL);
end;

procedure TPrincipal.Etiquetas1Click(Sender: TObject);
begin
  fEtiquetas := TfEtiquetas.Create(Application);
  try
    fEtiquetas.ShowModal;
  finally
    fEtiquetas.Free;
  end;
end;

procedure TPrincipal.BitBtn3Click(Sender: TObject);
begin
  fArquivoRetorno.ShowModal;
end;

procedure TPrincipal.Produtos1Click(Sender: TObject);
begin
  fUrnas := TfUrnas.Create(Application);
  try
    fUrnas.ShowModal;
  finally
    fUrnas.Free;
  end;
end;

procedure TPrincipal.ContasPagar1Click(Sender: TObject);
begin
  fCp := TfCP.Create(Application);
  try
    fCP.ShowModal;
  finally
    fCP.Free;
  end;  
end;

procedure TPrincipal.ListaScios1Click(Sender: TObject);
begin
   fListaSocios := TfListaSocios.Create(Application);
   try
     fListaSocios.ShowModal;
   finally
     fListaSocios.Free;
   end;  
end;

procedure TPrincipal.tulosAvulso1Click(Sender: TObject);
begin

  fGeraTituloAvulso := TfGeraTituloAvulso.Create(Application);
  try
    fGeraTituloAvulso.ShowModal;
  finally
    fGeraTituloAvulso.Free;
  end;

end;

procedure TPrincipal.ArquivoRetorno1Click(Sender: TObject);
begin                                              
  fArquivoRetorno := TfArquivoRetorno.Create(Application);
  fBaixaretorno   := TfBaixaretorno.Create(Application);
  try
    fArquivoRetorno.ShowModal;
  finally
    fBaixaretorno.Free;
    fArquivoRetorno.Free;
  end;
end;

procedure TPrincipal.Avisos1Click(Sender: TObject);
begin
  fAvisos := TfAvisos.Create(Application);
  try
    fAvisos.ShowModal;
  finally
    fAvisos.Free;
  end;
end;

procedure TPrincipal.PesqArquivoRetorno1Click(Sender: TObject);
begin
  fProcuraCBR := TfProcuraCBR.Create(Application);
  try
    fProcuraCBR.ShowModal;
  finally
    fProcuraCBR.Free;
  end;
end;

procedure TPrincipal.Fornecedor1Click(Sender: TObject);
begin
  fFornecedor := TfFornecedor.Create(Application);
  try
    fFornecedor.ShowModal;
  finally
    fFornecedor.Free;
  end;
end;

procedure TPrincipal.Remessa1Click(Sender: TObject);
begin
   fRemessaBanco := TfRemessaBanco.Create(Application);
   try
     fRemessaBanco.ShowModal;
   finally
     fRemessaBanco.Free;
   end;
end;

procedure TPrincipal.Mensalidades2Click(Sender: TObject);
begin
 fTrimestral_cob := TfTrimestral_cob.Create(Application);
 try
   fTrimestral_cob.ShowModal;
 finally
   fTrimestral_cob.Free;
 end;
end;

procedure TPrincipal.Carn1Click(Sender: TObject);
begin
    fGeraArquivo := TfGeraArquivo.Create(Application);
    try
     fGeraArquivo.ShowModal;
    finally
     fGeraArquivo.Free;
    end;
end;

procedure TPrincipal.Recibos1Click(Sender: TObject);
begin

    fGeraTitulos := TfGeraTitulos.Create(Application);
    try
     fGeraTitulos.rbmensal.Checked := true;
     fGeraTitulos.GroupBox1.Caption := 'GERAR T?TULOS - MENSAL -  GERAR MES a MES ';
     fGeraTitulos.ShowModal;
    finally
     fGeraTitulos.Free;
     varonde := 0;
    end;

end;

procedure TPrincipal.Remessa2Click(Sender: TObject);
begin
  fGeraTitulosMensais := TfGeraTitulosMensais.Create(Application);
  try
    fGeraTitulosMensais.ShowModal;
  finally
    fGeraTitulosMensais.Free;
  end;
end;

procedure TPrincipal.Cobranas1Click(Sender: TObject);
begin
  fGerarCobranca := TfGerarCobranca.Create(Application);
  try
    fGerarCobranca.ShowModal;
  finally
    fGerarCobranca.Free;
  end;
end;

procedure TPrincipal.RetornoSantander1Click(Sender: TObject);
begin
  fArquivoRetorno1 := TfArquivoRetorno1.Create(Application);
  fBaixaretorno1   := TfBaixaretorno1.Create(Application);
  try
    fArquivoRetorno1.ShowModal;
  finally
    fBaixaretorno1.Free;
    fArquivoRetorno1.Free;
  end;
end;

procedure TPrincipal.RemessaAvulsa1Click(Sender: TObject);
begin
   fRemessaBanco1 := TfRemessaBanco1.Create(Application);
   try
     fRemessaBanco1.ShowModal;
   finally
     fRemessaBanco1.Free;
   end;
end;

procedure TPrincipal.RemessaAcordo1Click(Sender: TObject);
begin
   fRemessaAcordo := TfRemessaAcordo.Create(Application);
   try
     fRemessaAcordo.ShowModal;
   finally
     fRemessaAcordo.Free;
   end;
end;

procedure TPrincipal.ListaSciosDiaPagto1Click(Sender: TObject);
begin
    VCLReport1.Title := str_relatorio + 'listadata.rep';
    VCLReport1.FileName := str_relatorio + 'listadata.rep';
    VCLReport1.Execute;
end;

procedure TPrincipal.ListaSciosSemDiaPagto1Click(Sender: TObject);
begin
    VCLReport1.Title := str_relatorio + 'listadatanula.rep';
    VCLReport1.FileName := str_relatorio + 'listadatanula.rep';
    VCLReport1.Execute;
end;

procedure TPrincipal.sr1Click(Sender: TObject);
begin
 //// fArquivoRetorno2 := TfArquivoRetorno2.Create(Application);
//  fBaixaretorno1   := TfBaixaretorno1.Create(Application);
  try
//    fArquivoRetorno2.ShowModal;
  finally
//    fBaixaretorno1.Free;
 //   fArquivoRetorno2.Free;
  end;
end;

procedure TPrincipal.EndereoBoleto1Click(Sender: TObject);
begin
    VCLReport1.Title := str_relatorio + 'endereco.rep';
    VCLReport1.FileName := str_relatorio + 'endereco.rep';
    VCLReport1.Execute;
end;

procedure TPrincipal.EndereoMunicipioBairro1Click(Sender: TObject);
begin
    VCLReport1.Title := str_relatorio + 'endereco_municipio_bairro.rep';
    VCLReport1.FileName := str_relatorio + 'endereco_municipio_bairro.rep';
    VCLReport1.Execute;
end;

procedure TPrincipal.Pendentes1Click(Sender: TObject);
begin
   fPendente := TfPendente.Create(Application);
   try
     fPendente.lbl7.Caption := 'Mensal' ;
     fPendente.dxButton1.Visible := False;
     fPendente.dxButton3.Visible := False;
     fPendente.dxButton4.Visible := False;
     fPendente.dxButton5.Visible := False;
     fPendente.ShowModal;
   finally
     fPendente.Free;
   end;
end;

procedure TPrincipal.Pendentes7Falecimentos1Click(Sender: TObject);
begin
   fPendente := TfPendente.Create(Application);
   try
     fPendente.lbl4.Visible := False;
     fPendente.edt4.Visible := False;
     fPendente.dxButton13.Visible := False;
     fPendente.dxButton4.Visible := False;
     fPendente.dxButton5.Visible := False;
     fPendente.edt5.Left := 79;
     fPendente.lbl5.Left := 79;
     fPendente.lbl7.Caption := '7 Falecimentos' ;
     fPendente.ShowModal;
   finally
     fPendente.Free;
   end;
end;

procedure TPrincipal.ListaAniversariantes1Click(Sender: TObject);
begin
   F_aniversariantes := TF_aniversariantes.Create(Application);
   try
     F_aniversariantes.ShowModal;
   finally
     F_aniversariantes.Free;
   end;  
end;

function TPrincipal.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);

end;

procedure TPrincipal.RetornoBradesco1Click(Sender: TObject);
begin
  fArquivoRetornoBrad := TfArquivoRetornoBrad.Create(Application);
  fBaixaretorno1   := TfBaixaretorno1.Create(Application);
  try
    fArquivoRetornoBrad.ShowModal;
  finally
    fBaixaretorno1.Free;
    fArquivoRetornoBrad.Free;
  end;
end;

procedure TPrincipal.axasnoMes1Click(Sender: TObject);
begin
  fTaxaMes := TfTaxaMes.Create(Application);
  try
    fTaxaMes.ShowModal;
  finally
    fTaxaMes.Free;
  end;
end;

procedure TPrincipal.IncluidosnoPeriodo1Click(Sender: TObject);
begin
  fRel_cad_exc:=TfRel_cad_exc.Create(Application);
  try
    fRel_cad_exc.btnexcluidos.Visible := False;
    fRel_cad_exc.Label2.Caption := 'Incluidos';
    fRel_cad_exc.Label3.Caption := 'Incluidos';
    fRel_cad_exc.ShowModal;
  finally
    fRel_cad_exc.Free;
  end;
end;

procedure TPrincipal.ExcluidosboPeriodo1Click(Sender: TObject);
begin
  fRel_cad_exc:=TfRel_cad_exc.Create(Application);
  try
    fRel_cad_exc.btnIncluidos.Visible := False;
    fRel_cad_exc.Label2.Caption := 'Excluidos';
    fRel_cad_exc.Label3.Caption := 'Excluidos';
    fRel_cad_exc.ShowModal;
  finally
    fRel_cad_exc.Free;
  end;
end;

procedure TPrincipal.Seguro1Click(Sender: TObject);
begin
 // VCLReport1.FileName := str_relatorio + 'seguro.rep';
 // VCLReport1.Execute;
   fSeguro:=TfSeguro.Create(Application);
  try
    fSeguro.ShowModal;
  finally
    fSeguro.Free;
  end;

end;

procedure TPrincipal.ContarSocios1Click(Sender: TObject);
begin
  fContar := TfContar.Create(Application);
  try
    fContar.ShowModal;
  finally
    fContar.Free;
  end;
end;

procedure TPrincipal.PendentesTrimestral1Click(Sender: TObject);
begin
   fPendente := TfPendente.Create(Application);
   try
     fPendente.lbl7.Caption := 'Trimestral' ;
     fPendente.dxButton1.Visible := False;
     fPendente.dxButton3.Visible := False;
     fPendente.dxButton2.Visible := False;
     fPendente.dxButton13.Visible := False;

     fPendente.ShowModal;
   finally
     fPendente.Free;
end;     
end;

procedure TPrincipal.VerLotes1Click(Sender: TObject);
begin
   fVerLotesA := TfVerLotesA.Create(Application);
   try
     fVerLotesA.ShowModal;
   finally
     fVerLotesA.Free;
end;
end;
procedure TPrincipal.ranferencia1Click(Sender: TObject);
begin
    tipov := 'TR';
  fvendas := Tfvendas.Create(Application);
  try
    fvendas.Label1.Caption := 'Transferencia';
    fvendas.Label2.Caption := 'Transferencia';
    fvendas.btnIncluir.Enabled   := true;
    fvendas.btnGravar.Enabled  := true;
    fvendas.btnExcluir.Visible  := False;
    fvendas.btnCancelar.Enabled  := true;
    fvendas.btnSair.Enabled  := true;
    fvendas.ShowModal;
  finally
    fvendas.Free;
  end;
end;

procedure TPrincipal.EstadoCivil1Click(Sender: TObject);
begin
  fEstcivil := TfEstcivil.Create(Application);
  try
    fEstcivil.ShowModal;
  finally
    fEstcivil.Free;
  end;
end;

procedure TPrincipal.N11Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'contar_por_idade.rep';
  VCLReport1.Title := str_relatorio + 'contar_por_idade.rep';
  VCLReport1.Execute;
end;

procedure TPrincipal.N21Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'socios_com_dtnasc.rep';
  VCLReport1.Title := str_relatorio + 'socios_com_dtnasc.rep';
  VCLReport1.Execute;
end;

procedure TPrincipal.N31Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'socios_dtnasc_dif.rep';
  VCLReport1.Title := str_relatorio + 'socios_dtnasc_dif.rep';
  VCLReport1.Execute;
end;

procedure TPrincipal.N41Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'socios_sem_dtnasc.rep';
  VCLReport1.Title := str_relatorio + 'socios_sem_dtnasc.rep';
  VCLReport1.Execute;
end;

procedure TPrincipal.N51Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'socios_sem_dtnasc_dep.rep';
  VCLReport1.Title := str_relatorio + 'socios_sem_dtnasc_dep.rep';
  VCLReport1.Execute;
end;

procedure TPrincipal.ContarSocios2Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'contar_socios.rep';
  VCLReport1.Title := str_relatorio +  'contar_socios.rep';
  VCLReport1.Execute;
end;

procedure TPrincipal.ipoEndereo1Click(Sender: TObject);
begin
  ftipoend := Tftipoend.Create(Application);
  try
    ftipoend.ShowModal;
  finally
    ftipoend.Free;
  end;
end;

procedure TPrincipal.VerArquivosRemessaRetorno1Click(Sender: TObject);
begin
  flerRet := TflerRet.Create(Application);
  try
    flerRet.ShowModal;
  finally
    flerRet.Free;
  end;
end;

procedure TPrincipal.Acordos1Click(Sender: TObject);
begin
   facordos:=Tfacordos.Create(Application);
  try
    facordos.ShowModal;
  finally
    facordos.Free;
  end;
end;

procedure TPrincipal.Movimento1Click(Sender: TObject);
begin
   fMov:=TfMov.Create(Application);
  try
    fMov.btnEcon.Visible := False;
    fMov.btnMensal.Visible := False;
    fMov.btnTri.Visible := False;
    fMov.btnSete.Visible := False;
    fMov.ShowModal;
  finally
    fMov.Free;
  end;
end;

procedure TPrincipal.ContagemMensal1Click(Sender: TObject);
begin
   fMov:=TfMov.Create(Application);
  try
    fMov.BitBtn2.Visible := False;
    fMov.dataini.Visible := False;
    fMov.Label5.Visible := False;
    fMov.Label2.Visible := False;
    fMov.Label1.Visible := False;
    fMov.Label9.Caption := 'Com Vencimento at? o Dia';
    fMov.ShowModal;
  finally
    fMov.Free;
  end;
end;

procedure TPrincipal.ContagemEconomico1Click(Sender: TObject);
begin
   fMov:=TfMov.Create(Application);
  try
    fMov.BitBtn2.Visible := False;
    fMov.btnMensal.Visible := False;
    fMov.btnTri.Visible := False;
    fMov.btnSete.Visible := False;
    fMov.dataini.Visible := False;
    fMov.Label5.Visible := False;
    fMov.Label2.Visible := False;
    fMov.Label1.Visible := False;
    fMov.Label9.Caption := 'Com Vencimento at? o Dia';
    fMov.ShowModal;
  finally
    fMov.Free;
  end;
end;

procedure TPrincipal.Contagem71Click(Sender: TObject);
begin
   fMov:=TfMov.Create(Application);
  try
    fMov.BitBtn2.Visible := False;
    fMov.btnEcon.Visible := False;
    fMov.btnMensal.Visible := False;
    fMov.btnTri.Visible := False;
    fMov.dataini.Visible := False;
    fMov.Label2.Visible := False;
    fMov.Label1.Visible := False;
    fMov.Label5.Visible := False;
    fMov.Label9.Caption := 'Com Vencimento at? o Dia';
    fMov.ShowModal;
  finally
    fMov.Free;
  end;
end;

procedure TPrincipal.ContagemTri1Click(Sender: TObject);
begin
   fMov:=TfMov.Create(Application);
  try
    fMov.BitBtn2.Visible := False;
    fMov.btnMensal.Visible := False;
    fMov.btnEcon.Visible := False;
    fMov.btnSete.Visible := False;
    fMov.dataini.Visible := False;
    fMov.Label5.Visible := False;
    fMov.Label2.Visible := False;
    fMov.Label1.Visible := False;
    fMov.Label9.Caption := 'Com Vencimento at? o Dia';
    fMov.ShowModal;
  finally
    fMov.Free;
  end;
end;

procedure TPrincipal.ValidarCPF1Click(Sender: TObject);
begin
   fValCPF:=TfValCPF.Create(Application);
  try
    fValCPF.ShowModal;
  finally
    fValCPF.Free;
  end;
end;

procedure TPrincipal.AssinaramoM161Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'contar_socios_assinou.rep';
  VCLReport1.Title := str_relatorio +  'contar_socios_assinou.rep';
  VCLReport1.Execute;
end;

procedure TPrincipal.SociosContratoM161Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'socios_assinou.rep';
  VCLReport1.Title := str_relatorio +  'socios_assinou.rep';
  VCLReport1.Execute;

end;

procedure TPrincipal.CarnII1Click(Sender: TObject);
begin
  fCarneRec:=TfCarneRec.Create(Application);
  try
    fCarneRec.ShowModal;
  finally
    fCarneRec.Free;
  end;
end;

procedure TPrincipal.Recibos2Click(Sender: TObject);
begin
    fGeraTitulos := TfGeraTitulos.Create(Application);
    try
     fGeraTitulos.rbtrimestral.Checked := true;
     fGeraTitulos.GroupBox1.Caption := 'GERAR T?TULOS - TRIMESTRAL -  GERAR MES a MES ';
     fGeraTitulos.ShowModal;
    finally
     fGeraTitulos.Free;
     varonde := 0;
    end;

end;

end.
