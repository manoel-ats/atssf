unit uCad_Clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, DB, Menus, dxCore, dxButton, ExtCtrls, Buttons,
  DBCtrls, Mask, XPMenu, ComCtrls, EDBNav, FMTBcd, DBClient, Provider,
  SqlExpr, Grids, DBGrids, DBLocal, DBLocalS, gbCobranca;

type
  TfCad_Cliente = class(TfPai)
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    dxButton2: TdxButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    GroupBox11: TGroupBox;
    DBEdit46: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBMemo1: TDBMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    XPMenu1: TXPMenu;
    DtSrc_end: TDataSource;
    SpeedButton2: TSpeedButton;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    Label17: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DtSrc_bairro: TDataSource;
    DtSrc_munic: TDataSource;
    Label18: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    EvDBNavigator1: TEvDBNavigator;
    sds_bairro: TSQLDataSet;
    sds_bairroID_BAIRRO: TIntegerField;
    sds_bairroBAIRRO: TStringField;
    dsp_bairro: TDataSetProvider;
    cds_bairro: TClientDataSet;
    cds_bairroID_BAIRRO: TIntegerField;
    cds_bairroBAIRRO: TStringField;
    sds_munic: TSQLDataSet;
    sds_municID_MUNICIPIO: TIntegerField;
    sds_municMUNICIPIO: TStringField;
    dsp_munic: TDataSetProvider;
    cds_munic: TClientDataSet;
    cds_municID_MUNICIPIO: TIntegerField;
    cds_municMUNICIPIO: TStringField;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    DBGrid1: TDBGrid;
    sds_est_civil: TSQLDataSet;
    DBLookupComboBox3: TDBLookupComboBox;
    DataSource1: TDataSource;
    sds_est_civilID_ESTCIVIL: TIntegerField;
    sds_est_civilDESCRICAO: TStringField;
    sds_parentesco: TSQLDataSet;
    DataSource2: TDataSource;
    sds_parentescoID_PAR: TIntegerField;
    sds_parentescoDESCRICAO: TStringField;
    Label28: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DataSetProvider1: TDataSetProvider;
    DataSetProvider2: TDataSetProvider;
    cds_est_civil: TClientDataSet;
    cds_parentesco: TClientDataSet;
    cds_est_civilID_ESTCIVIL: TIntegerField;
    cds_est_civilDESCRICAO: TStringField;
    cds_parentescoID_PAR: TIntegerField;
    cds_parentescoDESCRICAO: TStringField;
    DtSrc_dep: TDataSource;
    DBEdit8: TDBEdit;
    DBEdit21: TDBEdit;
    DataSetProvider3: TDataSetProvider;
    cds_socio: TClientDataSet;
    cds_socioID_SOCIO: TIntegerField;
    cds_socioGRUPO: TStringField;
    cds_socioN_INSCRICAO: TIntegerField;
    DataSource3: TDataSource;
    sds_socio: TSQLDataSet;
    sds_socioID_SOCIO: TIntegerField;
    sds_socioGRUPO: TStringField;
    sds_socioN_INSCRICAO: TIntegerField;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider4: TDataSetProvider;
    grupo: TClientDataSet;
    grupoID_GRUPO: TIntegerField;
    grupoINSCRICAO: TIntegerField;
    grupoQTDE: TIntegerField;
    grupoGRUPO: TStringField;
    grupoN_FALEC: TIntegerField;
    SQLDataSet1ID_GRUPO: TIntegerField;
    SQLDataSet1INSCRICAO: TIntegerField;
    SQLDataSet1QTDE: TIntegerField;
    SQLDataSet1GRUPO: TStringField;
    SQLDataSet1N_FALEC: TIntegerField;
    TabSheet4: TTabSheet;
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
    sds_cr: TSQLDataSet;
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
    DBEdit23: TDBEdit;
    Label32: TLabel;
    DBEdit24: TDBEdit;
    Label33: TLabel;
    sds_depCARENCIA: TIntegerField;
    cds_depCARENCIA: TIntegerField;
    DBEdit25: TDBEdit;
    Label36: TLabel;
    Edit3: TEdit;
    Panel7: TPanel;
    Label35: TLabel;
    Label34: TLabel;
    Panel8: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Edit4: TEdit;
    DBEdit26: TDBEdit;
    Label39: TLabel;
    pnl_grupo: TPanel;
    GroupBox22: TGroupBox;
    Label31: TLabel;
    Label30: TLabel;
    Label1: TLabel;
    Label29: TLabel;
    DBGrid2: TDBGrid;
    btExcluir: TdxButton;
    btBaixa: TdxButton;
    btCancela: TdxButton;
    DBEdit1: TDBEdit;
    DBEdit22: TDBEdit;
    Panel6: TPanel;
    rb2: TRadioButton;
    rb1: TRadioButton;
    rb3: TRadioButton;
    pnl_mensais: TPanel;
    GroupBox2: TGroupBox;
    DBGrid3: TDBGrid;
    Panel10: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label44: TLabel;
    DBEdit29: TDBEdit;
    Label45: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label46: TLabel;
    DBEdit32: TDBEdit;
    Label47: TLabel;
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
    dxButton7: TdxButton;
    dxButton5: TdxButton;
    dxButton4: TdxButton;
    dxButton1: TdxButton;
    dxButton6: TdxButton;
    GroupBox3: TGroupBox;
    DBComboBox1: TDBComboBox;
    DBEdit33: TDBEdit;
    pln_trimestral: TPanel;
    GroupBox4: TGroupBox;
    DBGrid4: TDBGrid;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    dxButton10: TdxButton;
    dxButton13: TdxButton;
    Panel11: TPanel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    proc_bairro: TSQLClientDataSet;
    proc_bairroID_BAIRRO: TIntegerField;
    proc_bairroBAIRRO: TStringField;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    proc_cidade: TSQLClientDataSet;
    proc_cidadeID_MUNICIPIO: TIntegerField;
    proc_cidadeMUNICIPIO: TStringField;
    pendente: TSQLDataSet;
    pago: TSQLDataSet;
    pagoPAGO: TFloatField;
    pendentePENDENTE: TFloatField;
    ds_pendente: TDataSource;
    ds_pago: TDataSource;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit36: TDBEdit;
    total: TSQLDataSet;
    ds_total: TDataSource;
    totalTITULOS: TFloatField;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit37: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit38: TDBEdit;
    procedure dxButton2Click(Sender: TObject);
    procedure DBRadioGroup5Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExcluirClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCarneClick(Sender: TObject);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure DtSrc_depStateChange(Sender: TObject);
    procedure btIncluir_DClick(Sender: TObject);
    procedure btGravar_DClick(Sender: TObject);
    procedure btExcluir_DClick(Sender: TObject);
    procedure btCancelar_DClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btIncluir_EClick(Sender: TObject);
    procedure DtSrc_endStateChange(Sender: TObject);
    procedure dxButton11Click(Sender: TObject);
    procedure btGravar_EClick(Sender: TObject);
    procedure btExcluir_EClick(Sender: TObject);
    procedure btCancelar_EClick(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton12Click(Sender: TObject);
    procedure btBaixaClick(Sender: TObject);
    procedure dtsrc_CRStateChange(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dxButton6Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
  private
    { Private declarations }
    function CalcularDigitoNossoNumero(NossoNumero,Carteira: String) : string;
    procedure  RegistroHeader(Tipo:String);
    procedure RegistroTrailerFinal;
    procedure RegistroTrailerLote;
  public
    { Public declarations }
  end;

var
   fCad_Cliente: TfCad_Cliente;
   t_socio, tipo_cr : string;
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro, Inscricao, Instrucao1, Instrucao2, Instrucao3 : string;
   NumeroRegistro,NumeroDetalhe, NumeroLote,
   NumeroParcelas, LinhaDetalhe, IncLinha,ToLinha,
   NumeroInstrucao, NumeroDaParcela,NumeroDeParcelas: integer;
   AParcela1,AParcela2,AParcela3,AParcela4,AParcela5,AParcela6,
   AVencimento1,AVencimento2,AVencimento3,AVencimento4,AVencimento5,AVencimento6,
   ANossoNumero1,ANossoNumero2,ANossoNumero3,ANossoNumero4,ANossoNumero5,ANossoNumero6,
   AValor1,AValor2,AValor3,AValor4,AValor5,AValor6, Path, NomArquivo: string;
   arquivo: TextFile;
   numeroremessa: integer;

implementation

uses UDM, uProcurar, uProc_socio, uExclusao, uRel_parcelas, uPrincipal,
  uReceber_MS, uRel_Carne, uRecibo, uReceber, ufDlgLogin, uFiltroProcura,
  uProcGrupo, uProcura_Trimestral;

{$R *.dfm}

{ Declare Windows no uses }

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


procedure TfCad_Cliente.dxButton2Click(Sender: TObject);
var
  dif: integer;
begin
  inherited;
   if t_socio = 'M' then
   begin
     fFiltroProcura := TfFiltroProcura.Create(Application);
     try
        if not fFiltroProcura.cds_mensal.Active then
          fFiltroProcura.cds_mensal.Open;
        if fFiltroProcura.ShowModal=mrOk then
        begin
          DM.cds_socio.Close;
          DM.cds_socio.Params[0].Clear;
          DM.cds_socio.Params[0].AsInteger:= fFiltroProcura.cds_mensalID_SOCIO.AsInteger;
          Dm.cds_socio.Open;
         {------------- aqui vejo se o Sócio está em carência -----------------}
          edit3.Text:=DifDias(dm.cds_socioDTACADASTRO.AsDateTime,date);
          dif := StrToInt(Edit3.Text);
          if dif < dm.cds_socioCARENCIA.AsInteger then
          begin
            panel7.Visible := true;
            Label34.Caption := 'Sócio em Carência';
            Label35.Caption := 'Sócio em Carência';
          end
          else
          begin
            panel7.Visible := false;
          end;
         {---------------------------------------------------------------------}
        end;
        if dm.cds_end.Active then
           dm.cds_end.Close;
        dm.cds_end.Params[0].Clear;
        dm.cds_end.Params[0].AsInteger := fFiltroProcura.cds_mensalID_SOCIO.AsInteger;
        dm.cds_end.Open;

        if not cds_bairro.Active then
           cds_bairro.Open;
        if not cds_munic.Active then
           cds_munic.Open;

        if DM.cds_vend.Active then
          dm.cds_vend.Close;
        dm.cds_vend.Params[0].AsInteger := dm.cds_socioID_VEN.AsInteger;
        dm.cds_vend.Open;
        Edit1.Text := dm.cds_vendVENDEDOR.AsString;
        dm.cds_vend.Close;

        if DM.cds_cob.Active then
          dm.cds_cob.Close;
        dm.cds_cob.Params[0].AsInteger := dm.cds_socioID_COB.AsInteger;
        dm.cds_cob.Open;
        Edit2.Text := dm.cds_cobNOME.AsString;
        dm.cds_cob.Close;

        if DM.cds_dep.Active then
          dm.cds_dep.Close;
        dm.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        dm.cds_dep.Open;

        if DM.cds_CR.Active then
          dm.cds_CR.Close;
        dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        dm.cds_CR.Params[1].AsString := 'MS';
        dm.cds_CR.Open;
        RadioButton3.Checked := true;
        // Mostra totais ******************************************************
        if pago.Active then
          pago.Close;
        pago.Params[0].Clear;
        pago.Params[1].Clear;
        pago.Params[2].Clear;
        pago.Params[3].Clear;
        pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        pago.Params[1].AsString := 'MS';
        pago.Params[3].AsString := 'Pago';
        pago.Open;
        if pendente.Active then
          pendente.Close;
        pendente.Params[0].Clear;
        pendente.Params[1].Clear;
        pendente.Params[2].Clear;
        pendente.Params[3].Clear;
        pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        pendente.Params[1].AsString := 'MS';
        pendente.Params[3].AsString := 'Pendente';
        pendente.Open;
        if total.Active then
          total.Close;
        total.Params[0].Clear;
        total.Params[1].Clear;
        total.Params[2].Clear;
        total.Params[3].Clear;
        total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        total.Params[1].AsString := 'MS';
        total.Params[3].AsString := 'todostitulos';
        total.Open;
        //********************************************************************
     finally
       fFiltroProcura.cds_mensal.Close;
       fFiltroProcura.Free;
     end;
   end;
   if t_socio = 'G' then
   begin
     fProcGrupo := TfProcGrupo.Create(Application);
     try
        if fProcGrupo.cds_mensal.Active then
           fProcGrupo.cds_mensal.Close;
        fProcGrupo.BitBtn2.Click;
        if fProcGrupo.ShowModal=mrOk then
        begin
          DM.cds_socio.Close;
          DM.cds_socio.Params[0].Clear;
          DM.cds_socio.Params[0].AsInteger:= fProcGrupo.cds_mensalID_SOCIO.AsInteger;
          Dm.cds_socio.Open;
         {------------- aqui vejo se o Sócio está em carência -----------------}
          edit3.Text:=DifDias(dm.cds_socioDTACADASTRO.AsDateTime,date);
          dif := StrToInt(Edit3.Text);
          if dif < dm.cds_socioCARENCIA.AsInteger then
          begin
            panel7.Visible := true;
            Label34.Caption := 'Sócio em Carência';
            Label35.Caption := 'Sócio em Carência';
          end
          else
          begin
            panel7.Visible := false;
          end;
         {---------------------------------------------------------------------}
        end;
        if dm.cds_end.Active then
           dm.cds_end.Close;
        dm.cds_end.Params[0].Clear;
        dm.cds_end.Params[0].AsInteger := fProcGrupo.cds_mensalID_SOCIO.AsInteger;
        dm.cds_end.Open;

        if not cds_bairro.Active then
           cds_bairro.Open;
        if not cds_munic.Active then
           cds_munic.Open;

        if DM.cds_vend.Active then
          dm.cds_vend.Close;
        dm.cds_vend.Params[0].AsInteger := dm.cds_socioID_VEN.AsInteger;
        dm.cds_vend.Open;
        Edit1.Text := dm.cds_vendVENDEDOR.AsString;
        dm.cds_vend.Close;

        if DM.cds_cob.Active then
          dm.cds_cob.Close;
        dm.cds_cob.Params[0].AsInteger := dm.cds_socioID_COB.AsInteger;
        dm.cds_cob.Open;
        Edit2.Text := dm.cds_cobNOME.AsString;
        dm.cds_cob.Close;

        if DM.cds_dep.Active then
          dm.cds_dep.Close;
        dm.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        dm.cds_dep.Open;

        if DM.cds_CR.Active then
          dm.cds_CR.Close;
        dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        dm.cds_CR.Params[1].AsString := 'GM';
        dm.cds_CR.Open;
        rb2.Checked := true;
        // Mostra totais ******************************************************
        if pago.Active then
          pago.Close;
        pago.Params[0].Clear;
        pago.Params[1].Clear;
        pago.Params[2].Clear;
        pago.Params[3].Clear;
        pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        pago.Params[1].AsString := 'GM';
        pago.Params[3].AsString := 'Pago';
        pago.Open;
        if pendente.Active then
          pendente.Close;
        pendente.Params[0].Clear;
        pendente.Params[1].Clear;
        pendente.Params[2].Clear;
        pendente.Params[3].Clear;
        pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        pendente.Params[1].AsString := 'GM';
        pendente.Params[3].AsString := 'Pendente';
        pendente.Open;
        if total.Active then
          total.Close;
        total.Params[0].Clear;
        total.Params[1].Clear;
        total.Params[2].Clear;
        total.Params[3].Clear;
        total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        total.Params[1].AsString := 'GM';
        total.Params[3].AsString := 'todostitulos';
        total.Open;
        //********************************************************************
     finally
       fProcGrupo.cds_mensal.Close;
       fProcGrupo.Free;
     end;
   end;

   if t_socio = 'T' then
   begin
     fProcura_Trimestral := TfProcura_Trimestral.Create(Application);
     try
        if not fProcura_Trimestral.cds_mensal.Active then
          fProcura_Trimestral.cds_mensal.Open;
        if fProcura_Trimestral.ShowModal=mrOk then
        begin
          DM.cds_socio.Close;
          DM.cds_socio.Params[0].Clear;
          DM.cds_socio.Params[0].AsInteger:= fProcura_Trimestral.cds_mensalID_SOCIO.AsInteger;
          Dm.cds_socio.Open;
         {---------------------------------------------------------------------}
        end;
        if dm.cds_end.Active then
           dm.cds_end.Close;
        dm.cds_end.Params[0].Clear;
        dm.cds_end.Params[0].AsInteger := fProcura_Trimestral.cds_mensalID_SOCIO.AsInteger;
        dm.cds_end.Open;

        if not cds_bairro.Active then
           cds_bairro.Open;
        if not cds_munic.Active then
           cds_munic.Open;

        if DM.cds_vend.Active then
          dm.cds_vend.Close;
        dm.cds_vend.Params[0].AsInteger := dm.cds_socioID_VEN.AsInteger;
        dm.cds_vend.Open;
        Edit1.Text := dm.cds_vendVENDEDOR.AsString;
        dm.cds_vend.Close;

        if DM.cds_cob.Active then
          dm.cds_cob.Close;
        dm.cds_cob.Params[0].AsInteger := dm.cds_socioID_COB.AsInteger;
        dm.cds_cob.Open;
        Edit2.Text := dm.cds_cobNOME.AsString;
        dm.cds_cob.Close;

        if DM.cds_dep.Active then
          dm.cds_dep.Close;
        dm.cds_dep.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        dm.cds_dep.Open;

        if DM.cds_CR.Active then
          dm.cds_CR.Close;
        dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        dm.cds_CR.Params[1].AsString := 'TM';
        dm.cds_CR.Open;
        RadioButton3.Checked := true;
        // Mostra totais ******************************************************
        if pago.Active then
          pago.Close;
        pago.Params[0].Clear;
        pago.Params[1].Clear;
        pago.Params[2].Clear;
        pago.Params[3].Clear;
        pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        pago.Params[1].AsString := 'TM';
        pago.Params[3].AsString := 'Pago';
        pago.Open;
        if pendente.Active then
          pendente.Close;
        pendente.Params[0].Clear;
        pendente.Params[1].Clear;
        pendente.Params[2].Clear;
        pendente.Params[3].Clear;
        pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        pendente.Params[1].AsString := 'TM';
        pendente.Params[3].AsString := 'Pendente';
        pendente.Open;
        if total.Active then
          total.Close;
        total.Params[0].Clear;
        total.Params[1].Clear;
        total.Params[2].Clear;
        total.Params[3].Clear;
        total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
        total.Params[1].AsString := 'TM';
        total.Params[3].AsString := 'todostitulos';
        total.Open;
        //********************************************************************
     finally
       fProcura_Trimestral.cds_mensal.Close;
       fProcura_Trimestral.Free;
     end;
   end;
end;

procedure TfCad_Cliente.DBRadioGroup5Click(Sender: TObject);
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
  DBEdit46.Enabled:=True;

end;

procedure TfCad_Cliente.btnIncluirClick(Sender: TObject);
var
 I, codigo : Integer;
begin
 if btnIncluir.Enabled = false then Exit;
 if Panel1.Visible = true then
 begin
  inherited;
  dm.cds_socioTIPO_DOC.AsString := 'F';
  dm.cds_socioSTATUS.AsString := 'A';
  //se o socio é de grupo
  if t_socio = 'G' then
    dm.cds_socioTIPO_SOCIO.AsString := 'G';
  //se o socio é Mensalista
  if t_socio = 'M' then
  begin
    dm.cds_socioTIPO_SOCIO.AsString := 'M';
    dm.cds_socioGEROU.AsString := 'NÃO';
  end;
  //se o socio é Trimestral
  if t_socio = 'T' then
    dm.cds_socioTIPO_SOCIO.AsString := 'T';

  dm.cds_socioDTACADASTRO.AsDateTime := now;
  if not cds_est_civil.Active then
     cds_est_civil.Open;

  if not cds_parentesco.Active then
     cds_parentesco.Open;

  if not cds_bairro.Active then
     cds_bairro.Open;

  if not cds_munic.Active then
     cds_munic.Open;

   PageControl1.ActivePage := TabSheet1;

 //*************************************
 // aqui é para o socio de Grupos
 if t_socio = 'G' then
 begin
//*********************************************************************
// pega grupo vaziu
   if not grupo.Active then
     grupo.Open;
   grupo.First;

   if not cds_socio.Active then
     cds_socio.Open;
     cds_socio.First;

   while not grupo.Eof do
   begin
     if cds_socio.Active then
       cds_socio.Close;
     cds_socio.Params[0].AsString := grupoGRUPO.AsString;
     cds_socio.Open;
     for I := 1 to 500 do
     begin
        codigo := cds_socioN_INSCRICAO.AsInteger;
        cds_socio.Next;
        while codigo > I do
        begin
          dm.cds_socioGRUPO.AsString := cds_socioGRUPO.AsString;
          dm.cds_socioN_INSCRICAO.AsInteger := I;
          DBEdit2.SetFocus;
          exit;
        end;
     end;
    grupo.Next;
   end;

   if not grupo.Active then
     grupo.Open;
   grupo.Last;

   if grupoQTDE.AsInteger < grupoINSCRICAO.AsInteger then
   begin
     dm.cds_socioGRUPO.AsString := grupoGRUPO.AsString;
     dm.cds_socioN_INSCRICAO.AsInteger := grupoQTDE.AsInteger + 1;
     if grupo.State in [dsBrowse] then
       grupo.Edit;
     grupoQTDE.AsInteger := grupoQTDE.AsInteger + 1;
     grupo.ApplyUpdates(0);
     DBEdit2.SetFocus;
   end
   else
   begin
    MessageDlg('É preciso criar um novo grupo......', mtWarning, [mbOK], 0);
    exit;
   end;
 end;
 // end do if t_socio = 'G' then
 end;

 if DtSrc_dep.DataSet.Active then
    DtSrc_dep.DataSet.Close;

 // adiciona dependentes
 if Panel2.Visible = true then
 begin
   if DtSrc.State in [dsInsert, dsEdit, dsBrowse] then
   begin
    if not DtSrc_dep.DataSet.Active then
       DtSrc_dep.DataSet.open;
    DtSrc_dep.DataSet.Append;
    DBEdit18.SetFocus;
   end
   else
   begin
    MessageDlg('Primeiro adicione o Sócio pra depois adicionar os dependentes', mtError, [mbOK], 0);
    PageControl1.ActivePage := TabSheet1;
    Panel2.Visible := false;
    Panel4.Visible := false;
    Panel1.Visible := true;
    exit;
   end;
 end;
// adiciona endereços
 if Panel4.Visible = true then
 begin
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
    MessageDlg('Primeiro adicione o Sócio pra depois adicionar o Endereço', mtError, [mbOK], 0);
    PageControl1.ActivePage := TabSheet1;
    Panel4.Visible := false;
    Panel2.Visible := false;
    Panel1.Visible := true;
    exit;
   end;
 end;
 DBEdit2.SetFocus;
end;

procedure TfCad_Cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    if cds_bairro.Active then
       cds_bairro.Close;
    if cds_munic.Active then
       cds_munic.Close;
    if dm.cds_end.Active then
       dm.cds_end.Close;
    if dm.cds_end.Active then
       dm.cds_end.Close;
    if DM.cds_dep.Active then
      dm.cds_dep.Close;
    if DM.cds_CR.Active then
      dm.cds_CR.Close;

    if DM.cds_empresa.Active then
      dm.cds_empresa.Close;


end;

procedure TfCad_Cliente.SpeedButton1Click(Sender: TObject);
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
      dm.cds_socioID_VEN.AsInteger :=
        dm.proc_vendID_VEN.AsInteger;
      Edit1.Text := dm.proc_vendVENDEDOR.AsString;
    end;
   finally
    dm.proc_vend.Close;
    fProcurar.Free;
   end;

end;

procedure TfCad_Cliente.SpeedButton2Click(Sender: TObject);
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
      dm.cds_socioID_COB.AsInteger :=
        dm.proc_cobID_COB.AsInteger;
      Edit2.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;

end;

procedure TfCad_Cliente.FormShow(Sender: TObject);
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
  begin
     Procurar  := 'S';
     ProcurarD := 'S';
     ProcurarE := 'S';
     dxButton2.Enabled  := true;
     dxButton3.Enabled  := true;
     dxButton11.Enabled := true;
  end
  else
  begin
     Procurar  := 'N';
     ProcurarD := 'N';
     ProcurarE := 'N';
     dxButton2.Enabled  := false;
     dxButton3.Enabled  := false;
     dxButton11.Enabled := false;
  end;


end;

procedure TfCad_Cliente.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not odd(DtSrc_dep.dataset.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = DM.cds_depNOME_DEP then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depFALECIDO then
   if DM.cds_depFALECIDO.AsString = 'N' then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depFALECIDO then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depFALECIDO then
   if DM.cds_depFALECIDO.AsString = '' then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depDESCRICAO then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depDTNASC then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = DM.cds_depDTFALEC then
   if DM.cds_depFALECIDO.AsString = 'S' then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfCad_Cliente.btnExcluirClick(Sender: TObject);
var
 deleta, sql_texto :string;
begin
   if Excluir = 'N' then Exit;
  if Panel1.Visible = true then
  begin
     fExclusao := TfExclusao.Create(Application);
     try
       fExclusao.ShowModal;
     finally
       fExclusao.Free;
     end;

     if dm.cds_socio.State in [dsInsert, dsEdit] then
       dm.cds_socio.ApplyUpdates(0);

     if not dm.cds_socio_desl.Active then
       dm.cds_socio_desl.Open;
     dm.cds_socio_desl.Append;
     dm.cds_socio_deslID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
     dm.cds_socio_deslID_SOCIO_CANCEL.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
     dm.cds_socio_deslNOME_SOCIO.AsString := dm.cds_socioNOME_SOCIO.AsString;
     dm.cds_socio_deslSOBRENOME.AsString  := dm.cds_socioSOBRENOME.AsString;
     dm.cds_socio_deslNAT.AsString := dm.cds_socioNAT.AsString;
     dm.cds_socio_deslDTNASC.AsString := dm.cds_socioDTNASC.AsString;
     dm.cds_socio_deslPROFISSAO.AsString := dm.cds_socioPROFISSAO.AsString;
     dm.cds_socio_deslCPF_CGC.AsString := dm.cds_socioCPF_CGC.AsString;
     dm.cds_socio_deslRG_IE.AsString := dm.cds_socioRG_IE.AsString;
     dm.cds_socio_deslID_VEN.AsInteger := dm.cds_socioID_VEN.AsInteger;
     dm.cds_socio_deslID_COB.AsInteger := dm.cds_socioID_COB.AsInteger;
     dm.cds_socio_deslN_INSCRICAO.AsInteger := dm.cds_socioN_INSCRICAO.AsInteger;
     dm.cds_socio_deslGRUPO.AsString := dm.cds_socioGRUPO.AsString;
     dm.cds_socio_deslDTACADASTRO.AsString := dm.cds_socioDTACADASTRO.AsString;
     dm.cds_socio_deslDTASISTEMA.AsString := dm.cds_socioDTASISTEMA.AsString;
     dm.cds_socio_deslSTATUS.AsString := 'I';
     dm.cds_socio_deslOBS.Value := dm.cds_socioOBS.Value;
     dm.cds_socio_deslESTCIV.AsInteger := dm.cds_socioESTCIV.AsInteger;
     if t_socio = 'G' then
       dm.cds_socio_deslTIPO_SOCIO.AsString := 'G';
     if t_socio = 'M' then
       dm.cds_socio_deslTIPO_SOCIO.AsString := 'M';

     dm.cds_socio_desl.ApplyUpdates(0);
     //*******************************************
     // endereço do socio
     dm.cds_end.First;
     while not dm.cds_end.Eof do
     begin
       if not dm.cds_end_D.Active then
              dm.cds_end_D.Open;
       dm.cds_end_D.Append;
       dm.cds_end_DID_SOCIO_DESL.AsInteger := dm.cds_socio_deslID_SOCIO_DESL.AsInteger;
       dm.cds_end_DENDERECO.AsString := dm.cds_endENDERECO.AsString;
       dm.cds_end_DCOMPLEMENTO.AsString := dm.cds_endCOMPLEMENTO.AsString;
       dm.cds_end_DID_BAIRRO.AsInteger := dm.cds_endID_BAIRRO.AsInteger;
       dm.cds_end_DID_MUNICIPIO.AsInteger := dm.cds_endID_MUNICIPIO.AsInteger;
       dm.cds_end_DESTADO.AsString := dm.cds_endESTADO.AsString;
       dm.cds_end_DCEP.AsString := dm.cds_endCEP.AsString;
       dm.cds_end_DDDD.AsString := dm.cds_endDDD.AsString;
       dm.cds_end_DFONE.AsString := dm.cds_endFONE.AsString;
       dm.cds_end_DFONE1.AsString := dm.cds_endFONE1.AsString;
       dm.cds_end_DFAX.AsString := dm.cds_endFAX.AsString;
       dm.cds_end_DCXP.AsString := dm.cds_endCXP.AsString;
       dm.cds_end_DTIPOEND.AsInteger := dm.cds_endTIPOEND.AsInteger;
       dm.cds_end_D.Post;
       dm.cds_end.Next;
     end;
       dm.cds_end_D.ApplyUpdates(0);
       dm.cds_end_D.Close;
     //*******************************************
     // Dependentes do socio
     dm.cds_dep.First;
     while not dm.cds_dep.Eof do
     begin
       if not dm.cds_dep_D.Active then
              dm.cds_dep_D.Open;
       dm.cds_dep_D.Append;
       dm.cds_dep_DID_SOCIO.AsInteger := dm.cds_socio_deslID_SOCIO_DESL.AsInteger;
       dm.cds_dep_DNOME_DEP.AsString := dm.cds_depNOME_DEP.AsString;
       dm.cds_dep_DFALECIDO.AsString := dm.cds_depFALECIDO.AsString;
       dm.cds_dep_DCODPAR.AsFloat := dm.cds_depCODPAR.AsFloat;
       dm.cds_dep_DDTNASC.AsString := dm.cds_depDTNASC.AsString;
       dm.cds_dep_DDTFALEC.AsString := dm.cds_depDTFALEC.AsString;
       dm.cds_dep_DID_PAR.AsInteger := dm.cds_depID_PAR.AsInteger;
    //   dm.cds_dep_DDESCRICAO.AsString := dm.cds_depDESCRICAO.AsString;
       dm.cds_dep_D.Post;
       dm.cds_dep.Next;
     end;
      dm.cds_dep_D.ApplyUpdates(0);
      dm.cds_dep_D.Close;
      dm.cds_socio_desl.Close;
    //  inherited;
      sql_texto := 'UPDATE RECEBIMENTOS SET SITUACAO = ';
      sql_texto := sql_texto + '''' + 'Inativo' + '''';
      sql_texto := sql_texto + ' where ID_SOCIO = ';
      sql_texto := sql_texto + '' + IntToStr(dm.cds_socioID_SOCIO.AsInteger) + '';
      sds_cr.CommandText := sql_texto;
      sds_cr.ExecSQL();


      deleta := 'delete from DEPENDENTE ';
      deleta := deleta + 'WHERE ID_SOCIO = ';
      deleta :=  deleta + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
      dm.SQLObitos.ExecuteDirect(deleta);

      deleta := '';

      deleta := 'delete from ENDERECO ';
      deleta := deleta + 'WHERE ID_SOCIO = ';
      deleta :=  deleta + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
      dm.SQLObitos.ExecuteDirect(deleta);

      deleta := '';

      deleta := 'delete from SOCIOS ';
      deleta := deleta + 'WHERE ID_SOCIO = ';
      deleta :=  deleta + IntToStr(dm.cds_socioID_SOCIO.AsInteger);
      dm.SQLObitos.ExecuteDirect(deleta);

     Edit1.Text := '';
     Edit2.Text := '';

     dm.cds_end.Close;
     dm.cds_dep.Close;
     dm.cds_socio.Close;
  end;
//botão excluir do Dependente
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

procedure TfCad_Cliente.btExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     dtsrc_CR.DataSet.Delete;
     (dtsrc_CR.DataSet as TClientDataSet).ApplyUpdates(0);
  end;

end;

procedure TfCad_Cliente.btSalvarClick(Sender: TObject);
begin
  inherited;
  dm.cds_cr.ApplyUpdates(0);
end;

procedure TfCad_Cliente.btCarneClick(Sender: TObject);
begin
  inherited;
  Rel_parcelas := TRel_parcelas.Create(Application);
  try
    if Rel_parcelas.cds_parcela.Active then
       Rel_parcelas.cds_parcela.Close;
    Rel_parcelas.cds_parcela.Params[0].AsInteger := dm.cds_CRID.AsInteger;
       Rel_parcelas.cds_parcela.Open;
    Rel_parcelas.QuickRep1.Preview;
  finally
    Rel_parcelas.Free;
  end;
end;

procedure TfCad_Cliente.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varUsuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TfCad_Cliente.DSPGetProproperties(Sender: TObject;
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

procedure TfCad_Cliente.DSPUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
const
  DirLog = 'Logs\';
begin
  if not(DirectoryExists(DirLog)) then
    CreateDir(DirLog);
  with DataSet do
  begin
    SetOptionalParam('DATA',Date,True);
    SetOptionalParam('HORA',Time,True);
    SaveToFile(Format(
      DirLog + '%s,%s,%s,%s,%s,log.xml',[
      GetOptionalParam('USUARIO'),
      GetOptionalParam('MICRO'),
      GetOptionalParam('TABELA'),
      FormatDateTime('ddmmyyyy',Date),
      FormatDateTime('hhnnss',Time)]));
  end;

end;

procedure TfCad_Cliente.PageControl1Change(Sender: TObject);
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
  end;

  if PageControl1.ActivePage = TabSheet4 then
  begin
      Panel1.Visible := false;
      Panel2.Visible := false;
      Panel4.Visible := false;
      Panel5.Visible := true;
  end;


end;

procedure TfCad_Cliente.DtSrc_depStateChange(Sender: TObject);
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

procedure TfCad_Cliente.btIncluir_DClick(Sender: TObject);
begin
  inherited;
   if DtSrc.State in [dsInsert, dsEdit, dsBrowse] then
   begin
    if not DtSrc_dep.DataSet.Active then
       DtSrc_dep.DataSet.open;
    DtSrc_dep.DataSet.Append;
    dm.cds_depFALECIDO.AsString := 'N';
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

procedure TfCad_Cliente.btGravar_DClick(Sender: TObject);
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

procedure TfCad_Cliente.btExcluir_DClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_dep.DataSet.Delete;
     (DtSrc_dep.DataSet as TClientDataSet).ApplyUpdates(0);
  end;

end;

procedure TfCad_Cliente.btCancelar_DClick(Sender: TObject);
begin
  inherited;
  DtSrc_dep.DataSet.Cancel;
end;

procedure TfCad_Cliente.btnGravarClick(Sender: TObject);
begin
  if Alterar = 'N' then Exit;
  if Panel1.Visible = true then
  begin
   //*************************************
   // aqui é para o socio mensalista
   if t_socio = 'M' then
   begin
   // gera codigo para tab. Socios mensalistas
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_SOCIO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      dm.cds_socioCODIGO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
   //********************************************************************
      DBEdit2.SetFocus;
   end;

   //*************************************
   // aqui é para o socio mensalista
   if t_socio = 'T' then
   begin
   // gera codigo para tab. Socios trimestral
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_TRIMESTRAL, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      dm.cds_socioCODIGO_T.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
   //********************************************************************
      DBEdit2.SetFocus;
   end;

   inherited;
    if cds_dep.Active then
      cds_dep.Close;
    cds_dep.Params[0].Clear;
    cds_dep.Params[1].Clear;
    cds_dep.Params[0].AsInteger :=
      dm.cds_socioID_SOCIO.AsInteger;
    cds_dep.Params[1].AsString := 'SOCIO';
    cds_dep.Open;
    if not cds_dep.IsEmpty then
    begin
     cds_dep.Edit;
     cds_depNOME_DEP.AsString := dm.cds_socioNOME_SOCIO.AsString;
     cds_depCARENCIA.AsString := dm.cds_socioCARENCIA.AsString;
     cds_dep.ApplyUpdates(0);
     cds_dep.Close;
     if dm.cds_dep.Active then
        dm.cds_dep.Close;
     dm.cds_dep.Params[0].AsInteger :=
       dm.cds_socioID_SOCIO.AsInteger;
     dm.cds_dep.Open;
    end
    else
    begin
     if not dm.cds_dep.Active then
       dm.cds_dep.Open;
     dm.cds_dep.Append;
     dm.cds_depNOME_DEP.AsString := dm.cds_socioNOME_SOCIO.AsString;
     dm.cds_depID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;
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

//  PageControl1.ActivePage := TabSheet2;

end;

procedure TfCad_Cliente.btnCancelarClick(Sender: TObject);
begin
  if Cancelar = 'N' then Exit;
  if Panel1.Visible = true then
   inherited;

  if Panel2.Visible = true then
    DtSrc_dep.DataSet.Cancel;

  if Panel4.Visible = true then
    DtSrc_end.DataSet.Cancel;

end;

procedure TfCad_Cliente.btIncluir_EClick(Sender: TObject);
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

procedure TfCad_Cliente.DtSrc_endStateChange(Sender: TObject);
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

procedure TfCad_Cliente.dxButton11Click(Sender: TObject);
begin
  inherited;
   close;
end;

procedure TfCad_Cliente.btGravar_EClick(Sender: TObject);
begin
  inherited;
    DtSrc_end.DataSet.Post;
    (DtSrc_end.DataSet as TClientDataset).ApplyUpdates(0);

end;

procedure TfCad_Cliente.btExcluir_EClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_end.DataSet.Delete;
     (DtSrc_end.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfCad_Cliente.btCancelar_EClick(Sender: TObject);
begin
  inherited;
  DtSrc_end.DataSet.Cancel;
end;

procedure TfCad_Cliente.dxButton3Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfCad_Cliente.dxButton12Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfCad_Cliente.btBaixaClick(Sender: TObject);
begin
  inherited;
  if dm.cds_CR.State in [dsBrowse] then
     dm.cds_CR.Edit
  else
     exit;
  dm.cds_CRDATA_PAG.AsDateTime := now;
  dm.cds_CRSTATUS.AsString := 'Pago';
  dm.cds_CRVALOR_A_REC.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
  dm.cds_CRVALOR_PAGO.AsFloat := dm.cds_CRVALOR_NF.AsFloat;
  dm.cds_CR.ApplyUpdates(0);

    // Mostra totais ******************************************************
    if pago.Active then
      pago.Close;
    pago.Params[0].Clear;
    pago.Params[1].Clear;
    pago.Params[2].Clear;
    pago.Params[3].Clear;
    pago.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    pago.Params[1].AsString := 'GM';
    pago.Params[3].AsString := 'Pago';
    pago.Open;
    if pendente.Active then
      pendente.Close;
    pendente.Params[0].Clear;
    pendente.Params[1].Clear;
    pendente.Params[2].Clear;
    pendente.Params[3].Clear;
    pendente.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    pendente.Params[1].AsString := 'GM';
    pendente.Params[3].AsString := 'Pendente';
    pendente.Open;
    if total.Active then
      total.Close;
    total.Params[0].Clear;
    total.Params[1].Clear;
    total.Params[2].Clear;
    total.Params[3].Clear;
    total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    total.Params[1].AsString := 'GM';
    total.Params[3].AsString := 'todostitulos';
    total.Open;
    //********************************************************************

end;

procedure TfCad_Cliente.dtsrc_CRStateChange(Sender: TObject);
begin
  inherited;
 if perfil = 'administrador' then
 begin
   btExcluir.Enabled:=dtsrc_CR.State in [dsBrowse];
   btBaixa.Enabled:=dtsrc_CR.State in [dsBrowse];
   btCancela.Enabled:=dtsrc_CR.State in [dsBrowse];
 end;

end;

procedure TfCad_Cliente.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not odd(dm.cds_CR.RecNo) then // se for impar
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
  if Column.Field = dm.cds_CRSTATUS then
   if dm.cds_CRSTATUS.AsString = 'Pendente' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRSTATUS then
   if dm.cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRVALOR_RECEBER then
   if dm.cds_CRSTATUS.AsString = 'Pago' then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = dm.cds_CRVALOR_RECEBER then
   if dm.cds_CRSTATUS.AsString = 'Pendente' then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfCad_Cliente.rb1Click(Sender: TObject);
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

procedure TfCad_Cliente.rb2Click(Sender: TObject);
var
   PendCli : String;
begin
  inherited;
    PendCli := 'STATUS = ''Pendente''';
    if rb2.Checked then
    begin
       dm.cds_CR.Filter := PendCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfCad_Cliente.rb3Click(Sender: TObject);
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

procedure TfCad_Cliente.btCancelaClick(Sender: TObject);
begin
  inherited;
  if dm.cds_CR.State in [dsBrowse] then
     dm.cds_CR.Edit
  else
     exit;
  dm.cds_CRDATA_PAG.AsString := '';
  dm.cds_CRSTATUS.AsString := 'Pendente';
  dm.cds_CRVALOR_A_REC.AsFloat := 0;
  dm.cds_CRVALOR_PAGO.AsFloat := 0;
  dm.cds_CR.ApplyUpdates(0);
end;



procedure TfCad_Cliente.DBGrid1CellClick(Column: TColumn);
var dif :Integer;
begin
  inherited;
    edit4.Text:=DifDias(dm.cds_depDTACADASTRO.AsDateTime,date);
    dif := StrToInt(Edit4.Text);
    if dif < dm.cds_depCARENCIA.AsInteger then
      panel8.Visible := True
    else
      panel8.Visible := false;
end;

procedure TfCad_Cliente.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var dif :Integer;
begin
  inherited;
    edit4.Text:=DifDias(dm.cds_depDTACADASTRO.AsDateTime,date);
    dif := StrToInt(Edit4.Text);
    if dif < dm.cds_depCARENCIA.AsInteger then
      panel8.Visible := True
    else
      panel8.Visible := false;
end;

procedure TfCad_Cliente.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var dif :Integer;
begin
  inherited;
    edit4.Text:=DifDias(dm.cds_depDTACADASTRO.AsDateTime,date);
    dif := StrToInt(Edit4.Text);
    if dif < dm.cds_depCARENCIA.AsInteger then
      panel8.Visible := True
    else
      panel8.Visible := false;
end;

procedure TfCad_Cliente.dxButton4Click(Sender: TObject);
var
 deleta : string;
begin
  if MessageDlg('Aviso, se prosseguir todas as parcelas desse Sócio serão '+#13+#10+'excluidas '
  , mtConfirmation, [mbYes,mbNo], 0) = mrNo then exit;
   deleta := 'delete from recebimentos where ';
   deleta := deleta + ' ID_SOCIO = ';
   deleta := deleta +  IntToStr(dm.cds_socioID_SOCIO.AsInteger);
   DM.SQLObitos.ExecuteDirect(deleta);

   if DM.cds_CR.Active then
      dm.cds_CR.Close;
   dm.cds_CR.Params[0].AsInteger :=
     dm.cds_socioID_SOCIO.AsInteger;
   dm.cds_CR.Params[1].AsString := 'MS';
   dm.cds_CR.Open;
   RadioButton3.Checked := true;
end;

procedure TfCad_Cliente.dxButton1Click(Sender: TObject);
var
 a,c1,c2,c3,c4,c5,c6,c7,c8 :String;
begin

 if dm.cds_socio.State in [dsInactive] then
   Exit;

 if dm.cds_socio.State in [dsInsert, dsEdit] then
   dm.cds_socio.ApplyUpdates(0);

    //*****************************************************************************
    //testa se o campo inquilino foi preenchido
{       if dm.cds_imo_aluguelNOME_INQUILINO.AsString='' then
          Application.MessageBox('Você não informou o inquilino', 'Erro');
 }
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

       a := a + '''' + c1 + '''' + ',' + c2 + ',' + c3 + ',' + c4 + ',' + c5 + ',' + '''' + c6 + ''','  + '''' + c7 + ''',' + c8 + ')';

       DM.SQLObitos.ExecuteDirect(a);
       DecimalSeparator := ',';

    dm.cds_socio.Refresh;

    if dm.cds_socio.Active then
      dm.cds_socio.Close;
    dm.cds_socio.Params[0].AsInteger := StrToInt(c6);
    dm.cds_socio.Open;

    if DM.cds_CR.Active then
      dm.cds_CR.Close;
    dm.cds_CR.Params[0].AsInteger := StrToInt(c6);
    dm.cds_CR.Params[1].AsString := 'MS';
    dm.cds_CR.Open;
 //   RadioButton3.Checked := true;

end;

procedure TfCad_Cliente.RadioButton2Click(Sender: TObject);
var
   AtivoCli1 : String;
begin
  inherited;
    AtivoCli1 := 'STATUS = ''Pago''';
    if RadioButton2.Checked then
    begin
       dm.cds_CR.Filter := AtivoCli1;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfCad_Cliente.RadioButton1Click(Sender: TObject);
var
   PendCli1 : String;
begin
  inherited;
    PendCli1 := 'STATUS = ''Pendente''';
    if RadioButton1.Checked then
    begin
       dm.cds_CR.Filter := PendCli1;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfCad_Cliente.RadioButton3Click(Sender: TObject);
var
   TodosCli1 : String;
begin
  inherited;
    TodosCli1 := '';
    if RadioButton3.Checked then
    begin
       dm.cds_CR.Filter := TodosCli1;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfCad_Cliente.dxButton5Click(Sender: TObject);
begin
 tipo_cr := 'MS';
 if dm.cds_socio.State = dsInactive then
   exit;
 fReceber_MS := TfReceber_MS.Create(Application);
 try
   fReceber_MS.ShowModal;
 finally
   fReceber_MS.Free;
 end;
end;

procedure TfCad_Cliente.dxButton7Click(Sender: TObject);
begin
   fRecibo := TfRecibo.Create(Application);
   try
     receber := 'Cliente';
     fRecibo.ShowModal;
   finally
     fRecibo.Free;
   end;
end;

function TfCad_Cliente.CalcularDigitoNossoNumero(NossoNumero,
  Carteira: String): string;
var
   ACarteira,
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';
   ACarteira := Formatar(Carteira,2,false,'0');
   ANossoNumero := Formatar(NossoNumero,11,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9,true);
   Case StrToInt(ADigitoNossoNumero) of
      0: ADigitoNossoNumero := '0';
      1: ADigitoNossoNumero := 'X';
   else
      ADigitoNossoNumero := IntToStr(11-StrToInt(ADigitoNossoNumero));
   end;

   Result := ADigitoNossoNumero;
end;

procedure TfCad_Cliente.RegistroHeader(Tipo: String);
begin
   { GERAR REGISTRO-HEADER DO ARQUIVO }
  with dm, cds_empresa do
   begin
      ACedenteTipoInscricao := '2';  //pessoa jurídica

      Registro := Tipo; //1 a 2 00 ou 01 Tipo de registro
      Registro := Registro + Formatar(FieldbyName('AGENCIACEDENTE').asString,4,false,'0'); //3 a 6 - Código da agência do cedente
      Registro := Registro + Formatar(FieldbyName('DIGITOAGENCIA').asString,1,false,'0'); //7 - Dígito da agência do cedente
      Registro := Registro + Formatar(FieldbyName('CONTACORRENTECEDENTE').asString,9,false,'0'); //8 a 16 - Número da conta do cedente
      Registro := Registro + Formatar(FieldbyName('DIGITOCONTA').asString,1,false,'0'); //9 - Dígito da conta do cedente
      Registro := Registro + Formatar(FieldbyName('CODIGOCEDENTE').asString,3,false,'0');//18 a 20 carteira
      Registro := Registro + Formatar(FieldbyName('VARIACAO').asString,3,false,'0');//21 a 23 variação
      Registro := Registro + Formatar('0',6,false,'0'); //24 a 29 - Código do convênio no banco
      Registro := Registro + Formatar(cds_empresaRAZAO_EMPRESA.asString,45,true,' '); //30 a 74 - Nome do cedente
      Registro := Registro + Formatar('',10); //75 a 84  sigla do cedente
      Registro := Registro + Formatar(IntTOSTR(FieldbyName('TipoImpressaoCarne').AsInteger),2,false,'0');//85 a 86 Tipo de impressão( tipo de carnê)
      Registro := Registro + Formatar(Concat(cds_empresaENDERECO.asString,' ',cds_empresaNr.asString,' ',cds_empresaBairro.asString),60,true,' ');//87 a 146 Endereço para devolução

      Registro := Registro + Formatar(cds_empresa.FieldbyName('CEP').asString,8,true,'0');//147 a 154 CEP para devolução
      Registro := Registro + Formatar(Concat(cds_empresa.FieldbyName('Cidade').asString,' ',cds_empresa.FieldbyName('ESTADO').asString),20,true,' ');//155 a 174 Praça para devolução

      dm.cds_empresa.Edit;
      NumeroRemessa := StrToInt(dm.cds_empresaPROXIMONOSSONUMERO.AsString) + 1;
      dm.cds_empresaPROXIMONOSSONUMERO.AsString := IntToStr(NumeroRemessa);
      dm.cds_empresa.ApplyUpdates(0);

      Registro := Registro + Formatar(IntToStr(NumeroRemessa),7,false,'0');//175 a 181 Sequencial da remessa   {falta implementar}
      Registro := Registro + 'S';//182  Indicador de comferencia do sequencial de remessa
      Case FieldbyName('TipoImpressaoCarne').asInteger of
        6,7,8,9,10,11 :
                 begin
                   Registro := Registro + Formatar(IntToStr(cds_empresa.RecordCount),2,false,'0');//183 a 184 Números de parcelas para carnes tipos 05 a 11
                   Registro := Registro + Formatar(' ',2);//185 a 186 espaços
                 end;
        1,2,3,4,5 :Registro := Registro + Formatar(' ',4);//183 a 186 espaços
      end;

      Registro := Registro + Formatar('CBR454',8,true,' ');//187 a 194 Identificador do arquivo CBR454
      Registro := Registro + Formatar(' ',3);//195 a 197 Reservado para o banco
      Registro := Registro + Formatar(' ',38);//198 a 235 espaços
      Registro := Registro + Formatar(' ',5);//236 a 240 espaços
      Registro := Registro + Formatar(FieldbyName('NUMEROCONVENIO').asString,7,false,'0');//241 a 247
      Registro := Registro + Formatar(' ',3);//248 a 250 espaços
      writeln(Arquivo, Registro);
      //Remessa.Add(Registro);
      Inc(NumeroRegistro);
      Registro := '';
  end;
end;

procedure TfCad_Cliente.RegistroTrailerFinal;
begin
   {GERAR REGISTRO TRAILER DO ARQUIVO}
   Registro := '99'; //1 a 2 Tipo de resistro
   Registro := Registro + Formatar(IntToStr(NumeroRegistro),15,false,'0'); {Quantidade de registros do arquivo}
   Registro := Registro + Formatar('',233); {Espaços em braco}
   Registro := Registro + #13#10;
   write(Arquivo, Registro);
   //Remessa.Add(Registro);
   NumeroRegistro := 0;
end;

procedure TfCad_Cliente.RegistroTrailerLote;
begin
   {GERAR REGISTRO TRAILER DO LOTE}
   Registro := '98'; //1 a 2 Tipo de resistro
   Registro := Registro + Formatar(IntToStr(NumeroRegistro),15,false,'0'); {Quantidade de registros do arquivo}
   Registro := Registro + Formatar('',233); {Espaços em braco}

   write(Arquivo, Registro);
   //Remessa.Add(Registro);
   NumeroRegistro := 0;
end;

procedure TfCad_Cliente.DBGrid3DrawColumnCell(Sender: TObject;
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
   if dm.cds_CRSTATUS.AsString = 'Pendente' then
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
  if Column.Field = dm.cds_CRVALOR_RECEBER then
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

end;

procedure TfCad_Cliente.dxButton6Click(Sender: TObject);
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

procedure TfCad_Cliente.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
  if dm.cds_socio.State in [dsEdit] then
     dm.cds_socio.ApplyUpdates(0);
end;

procedure TfCad_Cliente.SpeedButton3Click(Sender: TObject);
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

procedure TfCad_Cliente.SpeedButton4Click(Sender: TObject);
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

procedure TfCad_Cliente.RadioButton5Click(Sender: TObject);
var
   AtivoCli : String;
begin
  inherited;
    AtivoCli := 'STATUS = ''Pago''';
    if RadioButton5.Checked then
    begin
       dm.cds_CR.Filter := AtivoCli;
       dm.cds_CR.Filtered := True;
    end;

end;

procedure TfCad_Cliente.RadioButton4Click(Sender: TObject);
var
   PendCli : String;

begin
  inherited;
    PendCli := 'STATUS = ''Pendente''';
    if RadioButton4.Checked then
    begin
       dm.cds_CR.Filter := PendCli;
       dm.cds_CR.Filtered := True;
    end;

end;

procedure TfCad_Cliente.RadioButton6Click(Sender: TObject);
var
   TodosCli : String;
begin
  inherited;
    TodosCli := '';
    if RadioButton6.Checked then
    begin
       dm.cds_CR.Filter := TodosCli;
       dm.cds_CR.Filtered := True;
    end;
end;

procedure TfCad_Cliente.dxButton9Click(Sender: TObject);
begin
 tipo_cr := 'TM';
 if dm.cds_socio.State = dsInactive then
   exit;
 fReceber_MS := TfReceber_MS.Create(Application);
 try
   fReceber_MS.ShowModal;
 finally
   fReceber_MS.Free;
 end;
end;

procedure TfCad_Cliente.DBGrid3TitleClick(Column: TColumn);
begin
  inherited;
 dm.cds_CR.IndexFieldNames := Column.FieldName;
end;

procedure TfCad_Cliente.DBGrid4TitleClick(Column: TColumn);
begin
  inherited;
 dm.cds_CR.IndexFieldNames := Column.FieldName;
end;

procedure TfCad_Cliente.DBGrid2TitleClick(Column: TColumn);
begin
  inherited;
 dm.cds_CR.IndexFieldNames := Column.FieldName;
end;

end.
