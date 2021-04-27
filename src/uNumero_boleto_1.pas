unit uNumero_boleto_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, DB, SqlExpr, rpcompobase,
  rpvclreport, dxCore, dxButton, StdCtrls, TFlatGaugeUnit, ExtCtrls,
  MMJPanel, rplabelitem;

type
  TfNumero_boleto_1 = class(TForm)
    MMJPanel2: TMMJPanel;
    Label1: TLabel;
    Label8: TLabel;
    FlatGauge1: TFlatGauge;
    Edit1: TEdit;
    MMJPanel1: TMMJPanel;
    OK: TdxButton;
    CANCELAR: TdxButton;
    VCLReport1: TVCLReport;
    N_boleto: TSQLDataSet;
    N_boletoMAX: TIntegerField;
    cds_numero: TClientDataSet;
    cds_numeroCODRECEBIMENTO: TIntegerField;
    cds_numeroTITULO: TStringField;
    dsp_numero: TDataSetProvider;
    sds_numero: TSQLDataSet;
    sds_numeroCODRECEBIMENTO: TIntegerField;
    sds_numeroTITULO: TStringField;
    procedure OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNumero_boleto_1: TfNumero_boleto_1;
  Lote, Insc, Insc_1, Cobr : Integer;
  Gpo, socio, marcou : String;  

implementation

uses uTrimestral_cob, udm_sge, UDM;

{$R *.dfm}

procedure TfNumero_boleto_1.OKClick(Sender: TObject);
var
  contador : integer;
begin
   contador := 0;

  //===========================================================================
  //   Aqui altero o Número do Boleto
   if MessageDlg('Alterar numero desses Boletos ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
      Label8.Caption := '';
      Label8.Caption := 'Atualizando Nº do Boleto...';
      Refresh;
      FlatGauge1.MaxValue := fTrimestral_cob.cds.RecordCount;
      contador := StrToInt(Edit1.Text);
      fTrimestral_cob.cds.First;
      while not fTrimestral_cob.cds.Eof do
      begin
        if cds_numero.Active then
         cds_numero.Close;
        cds_numero.Params[0].Clear;
        cds_numero.Params[1].Clear;
        cds_numero.Params[0].AsInteger := fTrimestral_cob.cdsID_SOCIO.AsInteger;
        cds_numero.Params[1].AsDateTime := fTrimestral_cob.cdsULTIMOTRIM.AsDateTime;
        cds_numero.Open;
        cds_numero.Edit;
        cds_numeroTITULO.AsString := IntToStr(contador);
        contador := contador + 1;
        cds_numero.ApplyUpdates(0);
        FlatGauge1.Progress := FlatGauge1.Progress + 1;
        fTrimestral_cob.cds.Next;
      end;
      FlatGauge1.Progress := 0;
      Label8.Caption := '';
      Label8.Caption := 'Nº do Boleto atualizados com SUCESSO...';
      Refresh;
   end;
   //***************************************************************************
   //Imprimo o Boleto
   VCLReport1.FileName := str_relatorio + 'boleto_TM.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM_SGE.sge;
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

   VCLReport1.Report.Params.ParamByName('DATA_DOC').Value := StrToDate(fTrimestral_cob.DateEdit1.Text); //Cobrador
   if fTrimestral_cob.Edit2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(fTrimestral_cob.Edit2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSC').Value := 1; //inscrição
   if fTrimestral_cob.Edit3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(fTrimestral_cob.Edit3.Text) //inscrição
   else
     VCLReport1.Report.Params.ParamByName('INSC1').Value := 500; //inscrição

  if fTrimestral_cob.ComboBox1.Text <> '' then
  begin
    if fTrimestral_cob.ComboBox1.Text <> 'Todos' then
      if (fTrimestral_cob.cdscob.Locate('NOME',fTrimestral_cob.ComboBox1.Text, [loCaseInsensitive])) then
        VCLReport1.Report.Params.ParamByName('COB').Value := fTrimestral_cob.cdscobID_COB.asInteger;
    if fTrimestral_cob.ComboBox1.Text = 'Todos' then
      VCLReport1.Report.Params.ParamByName('COB').Value := 9999999;
  end
  else
    VCLReport1.Report.Params.ParamByName('COB').Value := 9999999;

  VCLReport1.Execute;
end;

end.
