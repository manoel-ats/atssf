unit uNumero_Boleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, dxCore, dxButton, StdCtrls, ExtCtrls, MMJPanel, DB,
  SqlExpr, VDOBasePrinter, VDODmPrinter, TFlatGaugeUnit, DBClient, Provider,
  rpcompobase, rpvclreport, rplabelitem;

type
  TfNumero_Boleto = class(TForm)
    N_boleto: TSQLDataSet;
    N_boletoMAX: TIntegerField;
    MMJPanel2: TMMJPanel;
    Label1: TLabel;
    Edit1: TEdit;
    MMJPanel1: TMMJPanel;
    OK: TdxButton;
    CANCELAR: TdxButton;
    VDODmPrinter1: TVDODmPrinter;
    Label8: TLabel;
    FlatGauge1: TFlatGauge;
    sds_numero: TSQLDataSet;
    dsp_numero: TDataSetProvider;
    cds_numero: TClientDataSet;
    VCLReport1: TVCLReport;
    cds_numeroCODRECEBIMENTO: TIntegerField;
    sds_numeroCODRECEBIMENTO: TIntegerField;
    sds_N: TSQLDataSet;
    dsp_N: TDataSetProvider;
    cds_N: TClientDataSet;
    cds_CR: TClientDataSet;
    dsp_CR: TDataSetProvider;
    sdsCR: TSQLDataSet;
    sdsCRID_RECEBIMENTOS: TIntegerField;
    sdsCRID: TIntegerField;
    sdsCRVALOR_NF: TFloatField;
    sdsCRVALOR_RECEBER: TFloatField;
    sdsCRPARCELA: TIntegerField;
    sdsCRVENCIMENTO: TDateField;
    sdsCRDATA_PAG: TDateField;
    sdsCRSTATUS: TStringField;
    sdsCRVALOR_PAGO: TFloatField;
    sdsCRVALOR_DIF: TFloatField;
    sdsCRJUROS: TFloatField;
    sdsCRDESCONTO: TFloatField;
    sdsCRMULTA: TFloatField;
    sdsCREMISSAO: TDateField;
    sdsCRN_DOCUMENTO: TStringField;
    sdsCRCAIXA: TStringField;
    sdsCRFORMARECEBIMENTO: TStringField;
    sdsCRVALOR_A_REC: TFloatField;
    sdsCRTITULO: TIntegerField;
    sdsCRVALOR_1VIA: TFloatField;
    sdsCRID_SOCIO: TIntegerField;
    sdsCRLOTE: TIntegerField;
    sdsCRGEROU: TStringField;
    sdsCRDATA_DOC: TDateField;
    sdsCRGRUPO: TStringField;
    sdsCRID_BANCO: TIntegerField;
    sdsCRSITUACAO: TStringField;
    sdsCRTIPO_DOC: TStringField;
    sdsCRSELECIONOU: TStringField;
    sdsCRSERIE: TStringField;
    sdsCRPERCENTUALJUROS: TFloatField;
    sdsCRPERCENTUALMULTA: TFloatField;
    sdsCRPERCENTUALDESCONTO: TFloatField;
    sdsCRVALOROUTROSACRESCIMOS: TFloatField;
    sdsCRCODIGO: TIntegerField;
    sdsCROBS: TGraphicField;
    sdsCRENTRADA: TFloatField;
    sdsCRCODCCUSTO: TSmallintField;
    sdsCRID_DEPREC: TIntegerField;
    sdsCRNOTAFISCAL: TIntegerField;
    sdsCRID_VENDA: TIntegerField;
    sdsCRID_ACORDO: TIntegerField;
    sdsCRN_BOLETO: TStringField;
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
    cds_CRTITULO: TIntegerField;
    cds_CRVALOR_1VIA: TFloatField;
    cds_CRID_SOCIO: TIntegerField;
    cds_CRLOTE: TIntegerField;
    cds_CRGEROU: TStringField;
    cds_CRDATA_DOC: TDateField;
    cds_CRGRUPO: TStringField;
    cds_CRID_BANCO: TIntegerField;
    cds_CRSITUACAO: TStringField;
    cds_CRTIPO_DOC: TStringField;
    cds_CRSELECIONOU: TStringField;
    cds_CRSERIE: TStringField;
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRCODIGO: TIntegerField;
    cds_CROBS: TGraphicField;
    cds_CRENTRADA: TFloatField;
    cds_CRCODCCUSTO: TSmallintField;
    cds_CRID_DEPREC: TIntegerField;
    cds_CRNOTAFISCAL: TIntegerField;
    cds_CRID_VENDA: TIntegerField;
    cds_CRID_ACORDO: TIntegerField;
    cds_CRN_BOLETO: TStringField;
    cds_NID_RECEBIMENTOS: TIntegerField;
    cds_NTITULO: TIntegerField;
    sds_NID_RECEBIMENTOS: TIntegerField;
    sds_NTITULO: TIntegerField;
    sds_numeroTITULO: TIntegerField;
    cds_numeroTITULO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNumero_Boleto: TfNumero_Boleto;
  Lote, Insc, Insc_1, Cobr : Integer;
  Gpo, socio, marcou : String;

implementation

uses UDM, uGeraLote, udm_sge, uSocio_Cadastro;

{$R *.dfm}

procedure TfNumero_Boleto.FormShow(Sender: TObject);
begin
 if (socio = 'diversos') then
 begin
   if (N_boleto.Active) then
     N_boleto.Close;
   N_boleto.Params[0].AsString := Gpo;
   N_boleto.Params[1].AsInteger := Lote;
   N_boleto.Open;
   if N_boletoMAX.AsInteger > 0 then
     Edit1.Text := IntToStr(N_boletoMAX.AsInteger)
   else
     Edit1.Text := '1';
 end;
end;

procedure TfNumero_Boleto.OKClick(Sender: TObject);
var
  contador : integer;
  label_pgto,label_text,label_text1,label_text2,label_text3:TRpLabel;
begin
   contador := 0;
  //.........................................................................\\
  //       estou vindo do form que gera Cobrança p/ 7 falecimentos           \\
   if MessageDlg('Alterar numero desses Boletos ?',mtConfirmation,
              [mbYes,mbNo],0) = mrYes then
   begin
     if (socio = 'diversos') then
     begin
       // Altero o Número do Título
       if cds_numero.Active then
         cds_numero.Close;
        cds_numero.Params[0].Clear;
        cds_numero.Params[1].Clear;
        cds_numero.Params[2].Clear;
        cds_numero.Params[3].Clear;
        cds_numero.Params[4].Clear;
        cds_numero.Params[5].Clear;
        cds_numero.Params[0].AsInteger := Lote;
        cds_numero.Params[1].AsString := Gpo;
        cds_numero.Params[2].AsInteger := Insc;
        cds_numero.Params[3].AsInteger := Insc_1;
        cds_numero.Params[4].AsInteger := Cobr;
        cds_numero.Open;
        Label8.Caption := '';
        Label8.Caption := 'Atualizando Nº do Boleto...';
        Refresh;
        FlatGauge1.MaxValue := cds_numero.RecordCount;
        contador := StrToInt(Edit1.Text);
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
        Label8.Caption := 'Nº do Boleto atualizados com SUCESSO...';
        Refresh;
     end;
   end;
   //***************************************************************************
   //Imprimo o Boleto
   if (socio = 'diversos') then
   begin
     if (banco_lote = 'HSBC') then
       VCLReport1.FileName := str_relatorio + 'boleto_hsbc.rep';

     if (banco_lote = 'BANESPA') then
       VCLReport1.FileName := str_relatorio + 'boleto_banespa.rep';
   end;
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
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

   if (socio = 'diversos') then
   begin
     VCLReport1.Report.Params.ParamByName('LOTE').Value := Lote; //lote
     VCLReport1.Report.Params.ParamByName('GP').Value := Gpo; //grupo
     VCLReport1.Report.Params.ParamByName('INSC').Value := Insc; //inscrição
     VCLReport1.Report.Params.ParamByName('INSC1').Value := Insc_1; //inscrição
     VCLReport1.Report.Params.ParamByName('COB').Value := Cobr; //Cobrador
   end;
   VCLReport1.Execute;

end;

procedure TfNumero_Boleto.FormCreate(Sender: TObject);
var
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;
begin
   ScreenWidth := 800;
   ScreenHeight := 600;
   scaled := true;
   height := longint(height) * longint(screen.height) DIV ScreenHeight;
   width := longint(width) * longint(screen.width) DIV ScreenWidth;
   scaleBy(screen.width, ScreenWidth);
end;

end.
