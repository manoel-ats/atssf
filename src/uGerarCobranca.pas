unit uGerarCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvToolEdit, StdCtrls, ExtCtrls, Mask, JvExMask, JvSpin, Buttons,
  RXCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, dxCore, dxButton, FMTBcd,
  Provider, SqlExpr, DB, DBClient, DBXpress, ToolEdit;

type
  TfGerarCobranca = class(TForm)
    Panel6: TPanel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel1: TRxLabel;
    cbPlano: TComboBox;
    Edit2: TEdit;
    RxLabel2: TRxLabel;
    BitBtn1: TBitBtn;
    JvSpinEdit1: TJvSpinEdit;
    JvSpinEdit2: TJvSpinEdit;
    JvSpinEdit3: TJvSpinEdit;
    RxLabel5: TRxLabel;
    BitBtn2: TBitBtn;
    Edit8: TEdit;
    RxLabel6: TRxLabel;
    BitBtn3: TBitBtn;
    RadioGroup1: TRadioGroup;
    Edit9: TEdit;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    JvSpinEdit4: TJvSpinEdit;
    Edit5: TEdit;
    RxLabel10: TRxLabel;
    BitBtn4: TBitBtn;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel13: TRxLabel;
    edtParcelas: TJvSpinEdit;
    RxLabel14: TRxLabel;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    dxButton2: TdxButton;
    dxButton4: TdxButton;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    dxButton3: TdxButton;
    dxButton1: TdxButton;
    JvDBGrid1: TJvDBGrid;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    dsr: TDataSource;
    cds: TClientDataSet;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cdsID_RECEBIMENTOS: TIntegerField;
    cdsSTATUS: TStringField;
    cdsEMISSAO: TDateField;
    cdsVENCIMENTO: TDateField;
    cdsVALOR_NF: TFloatField;
    cdsLOTE: TIntegerField;
    cdsGRUPO: TStringField;
    cdsNOME_SOCIO: TStringField;
    cdsN_INSCRICAO: TIntegerField;
    cdsCPF_CGC: TStringField;
    cdsNOME: TStringField;
    cdsMESANO: TStringField;
    cdsN_BOLETO: TStringField;
    cdsTITULO: TIntegerField;
    cdsID_SOCIO: TIntegerField;
    cdsID: TIntegerField;
    cdsTOT_PENDENTE: TIntegerField;
    cdsRUA: TStringField;
    cdsCEP: TStringField;
    cdsUF: TStringField;
    cdsBAIRRO: TStringField;
    cdsMUNICIPIO: TStringField;
    sdsID_RECEBIMENTOS: TIntegerField;
    sdsSTATUS: TStringField;
    sdsEMISSAO: TDateField;
    sdsVENCIMENTO: TDateField;
    sdsVALOR_NF: TFloatField;
    sdsLOTE: TIntegerField;
    sdsGRUPO: TStringField;
    sdsNOME_SOCIO: TStringField;
    sdsN_INSCRICAO: TIntegerField;
    sdsCPF_CGC: TStringField;
    sdsNOME: TStringField;
    sdsMESANO: TStringField;
    sdsN_BOLETO: TStringField;
    sdsTITULO: TIntegerField;
    sdsID_SOCIO: TIntegerField;
    sdsID: TIntegerField;
    sdsTOT_PENDENTE: TIntegerField;
    sdsRUA: TStringField;
    sdsCEP: TStringField;
    sdsUF: TStringField;
    sdsBAIRRO: TStringField;
    sdsMUNICIPIO: TStringField;
    Edit4: TEdit;
    BitBtn6: TBitBtn;
    DateEdit2: TDateEdit;
    DateEdit1: TDateEdit;
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure spFalecimento;
    procedure spMensal;
    procedure spTrimestral;
  public
    { Public declarations }
  end;

var
  fGerarCobranca: TfGerarCobranca;

implementation

uses UDM;

{$R *.dfm}

procedure TfGerarCobranca.dxButton4Click(Sender: TObject);
var
   ano, mes, dia, dia1: word;
   sql_texto, mesano : string;
   TD: TTransactionDesc;
begin
  {** Verifico se os campos referentes a Lote e Grupo forão preenchidos se ñ cancelo a operação}
  if DateEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Vencimento do Títilo que deseja Localizar.', mtWarning, [mbOK], 0);
    exit;
  end
  else
    decodedate(StrToDate(DateEdit2.Text), ano, mes, dia);

  mesano := IntToStr(mes);
  mesano := mesano + IntToStr(ano);

  if (JvSpinEdit2.Text = '') then
  begin
      MessageDlg('Informe a Inscrição.', mtWarning, [mbOK], 0);
      JvSpinEdit2.SetFocus;
      exit;
  end;

  if (JvSpinEdit3.Text = '') then
  begin
      MessageDlg('Informe a Inscrição.', mtWarning, [mbOK], 0);
      JvSpinEdit3.SetFocus;
      exit;
  end;

  if (cds.Active) then
    cds.Close;
  cds.Params[0].AsString := cbPlano.Text; // Plano
  cds.Params[1].AsString := 'todosmeses';
  cds.Params[2].AsInteger := 9999999;
  if (cbPlano.Text = 'MENSAL') then
  begin
    cds.Params[1].AsString := mesano;
    cds.Params[2].AsInteger := dia;
  end;
  // Lote
  if (JvSpinEdit1.AsInteger > 0) then
    cds.Params[3].AsInteger := JvSpinEdit1.AsInteger
  else
    cds.Params[3].AsInteger := 9999999;
  //Grupo
  if (Edit2.Text <> '') then
    cds.Params[4].AsString := Edit2.Text
  else
    cds.Params[4].AsString := 't';

  cds.Params[5].AsInteger := JvSpinEdit2.AsInteger; //Inscrição
  cds.Params[6].AsInteger := JvSpinEdit3.AsInteger; //Inscrição
  // Cobrador
  if (Edit4.Text <> '') then
    cds.Params[7].AsInteger := StrToInt(Edit4.Text)
  else
    cds.Params[7].AsInteger := 9999999;
  cds.Params[8].AsInteger := JvSpinEdit4.AsInteger;
  cds.Params[9].AsDate := StrToDate(DateEdit2.Text);
  cds.Open;

end;

procedure TfGerarCobranca.dxButton3Click(Sender: TObject);
begin
  if (cbPlano.Text = '7 FALECIMENTO') then
    //spFalecimento;
  if (cbPlano.Text = 'MENSAL') then
    //spMensal;
  if (cbPlano.Text = 'TRIMESTRAL') then
    //spTrimestral;
end;

procedure TfGerarCobranca.spFalecimento;
begin

end;

procedure TfGerarCobranca.spMensal;
begin

end;

procedure TfGerarCobranca.spTrimestral;
begin

end;

end.
