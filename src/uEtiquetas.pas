unit uEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, dxCore, dxButton, ExtCtrls, rpcompobase, rpvclreport,
  XPMenu, DBClient, Provider, DB, SqlExpr, Buttons, StdCtrls, Mask, DBCtrls, COMOBJ;

type
  TfEtiquetas = class(TForm)
    sql_etiq: TSQLDataSet;
    sql_etiqID_DEP: TIntegerField;
    sql_etiqID_SOCIO: TIntegerField;
    sql_etiqNOME_DEP: TStringField;
    sql_etiqFALECIDO: TStringField;
    sql_etiqCODPAR: TFloatField;
    sql_etiqDTNASC: TDateField;
    sql_etiqDTFALEC: TDateField;
    sql_etiqID_PAR: TIntegerField;
    sql_etiqCARENCIA: TIntegerField;
    sql_etiqDTACADASTRO: TDateField;
    sql_etiqDESCRICAO: TStringField;
    sql_etiqID_SOCIO_1: TIntegerField;
    sql_etiqNOME_SOCIO: TStringField;
    sql_etiqSOBRENOME: TStringField;
    sql_etiqNAT: TStringField;
    sql_etiqDTNASC_1: TDateField;
    sql_etiqPROFISSAO: TStringField;
    sql_etiqCPF_CGC: TStringField;
    sql_etiqRG_IE: TStringField;
    sql_etiqID_VEN: TIntegerField;
    sql_etiqID_COB: TIntegerField;
    sql_etiqN_INSCRICAO: TIntegerField;
    sql_etiqGRUPO: TStringField;
    sql_etiqDTACADASTRO_1: TDateField;
    sql_etiqDTASISTEMA: TDateField;
    sql_etiqSTATUS: TStringField;
    sql_etiqOBS: TGraphicField;
    sql_etiqTIPO_DOC: TStringField;
    sql_etiqESTCIV: TIntegerField;
    sql_etiqPRAZO_PG: TIntegerField;
    sql_etiqVENCIMENTO: TDateField;
    sql_etiqVALOR_SERVICO: TFloatField;
    sql_etiqPARCELA: TFloatField;
    sql_etiqENTRADA: TFloatField;
    sql_etiqCARENCIA_1: TIntegerField;
    sql_etiqCODIGO: TIntegerField;
    sql_etiqTIPO_SOCIO: TStringField;
    sql_etiqDIAPGTO: TIntegerField;
    sql_etiqMESES: TIntegerField;
    sql_etiqDATAINICIO: TDateField;
    sql_etiqDATAFIM: TDateField;
    sql_etiqPERCENTUALJUROS: TFloatField;
    sql_etiqPERCENTUALMULTA: TFloatField;
    sql_etiqPERCENTUALDESCONTO: TFloatField;
    sql_etiqVALOROUTROSACRESCIMOS: TFloatField;
    sql_etiqDEMONSTRATIVO: TStringField;
    sql_etiqINSTRUCOESCAIXA: TStringField;
    sql_etiqINSTRUCAO1: TStringField;
    sql_etiqINSTRUCAO2: TStringField;
    sql_etiqINSTRUCAO3: TStringField;
    sql_etiqTIPOIMPRESSAOCARNE: TIntegerField;
    sql_etiqACEITEDOCUMENTO: TStringField;
    sql_etiqESPECIEDOCUMENTO: TStringField;
    sql_etiqSELECIONOU: TStringField;
    sql_etiqGEROU: TStringField;
    sql_etiqCODIGO_T: TIntegerField;
    sql_etiqCODIGO_C: TIntegerField;
    sql_etiqPLANO: TStringField;
    sql_etiqHISTORICO: TMemoField;
    sql_etiqPLANO_ANT: TStringField;
    sql_etiqDTA_CONTRATO: TDateField;
    sql_etiqDTA_CONTRATO_ANT: TDateField;
    sql_etiqENDERECO: TStringField;
    sql_etiqBAIRRO: TStringField;
    sql_etiqMUNICIPIO: TStringField;
    sql_etiqNOME: TStringField;
    dsp_etiq: TDataSetProvider;
    cds_etiq: TClientDataSet;
    cds_etiqID_DEP: TIntegerField;
    cds_etiqID_SOCIO: TIntegerField;
    cds_etiqNOME_DEP: TStringField;
    cds_etiqFALECIDO: TStringField;
    cds_etiqCODPAR: TFloatField;
    cds_etiqDTNASC: TDateField;
    cds_etiqDTFALEC: TDateField;
    cds_etiqID_PAR: TIntegerField;
    cds_etiqCARENCIA: TIntegerField;
    cds_etiqDTACADASTRO: TDateField;
    cds_etiqDESCRICAO: TStringField;
    cds_etiqID_SOCIO_1: TIntegerField;
    cds_etiqNOME_SOCIO: TStringField;
    cds_etiqSOBRENOME: TStringField;
    cds_etiqNAT: TStringField;
    cds_etiqDTNASC_1: TDateField;
    cds_etiqPROFISSAO: TStringField;
    cds_etiqCPF_CGC: TStringField;
    cds_etiqRG_IE: TStringField;
    cds_etiqID_VEN: TIntegerField;
    cds_etiqID_COB: TIntegerField;
    cds_etiqN_INSCRICAO: TIntegerField;
    cds_etiqGRUPO: TStringField;
    cds_etiqDTACADASTRO_1: TDateField;
    cds_etiqDTASISTEMA: TDateField;
    cds_etiqSTATUS: TStringField;
    cds_etiqOBS: TGraphicField;
    cds_etiqTIPO_DOC: TStringField;
    cds_etiqESTCIV: TIntegerField;
    cds_etiqPRAZO_PG: TIntegerField;
    cds_etiqVENCIMENTO: TDateField;
    cds_etiqVALOR_SERVICO: TFloatField;
    cds_etiqPARCELA: TFloatField;
    cds_etiqENTRADA: TFloatField;
    cds_etiqCARENCIA_1: TIntegerField;
    cds_etiqCODIGO: TIntegerField;
    cds_etiqTIPO_SOCIO: TStringField;
    cds_etiqDIAPGTO: TIntegerField;
    cds_etiqMESES: TIntegerField;
    cds_etiqDATAINICIO: TDateField;
    cds_etiqDATAFIM: TDateField;
    cds_etiqPERCENTUALJUROS: TFloatField;
    cds_etiqPERCENTUALMULTA: TFloatField;
    cds_etiqPERCENTUALDESCONTO: TFloatField;
    cds_etiqVALOROUTROSACRESCIMOS: TFloatField;
    cds_etiqDEMONSTRATIVO: TStringField;
    cds_etiqINSTRUCOESCAIXA: TStringField;
    cds_etiqINSTRUCAO1: TStringField;
    cds_etiqINSTRUCAO2: TStringField;
    cds_etiqINSTRUCAO3: TStringField;
    cds_etiqTIPOIMPRESSAOCARNE: TIntegerField;
    cds_etiqACEITEDOCUMENTO: TStringField;
    cds_etiqESPECIEDOCUMENTO: TStringField;
    cds_etiqSELECIONOU: TStringField;
    cds_etiqGEROU: TStringField;
    cds_etiqCODIGO_T: TIntegerField;
    cds_etiqCODIGO_C: TIntegerField;
    cds_etiqPLANO: TStringField;
    cds_etiqHISTORICO: TMemoField;
    cds_etiqPLANO_ANT: TStringField;
    cds_etiqDTA_CONTRATO: TDateField;
    cds_etiqDTA_CONTRATO_ANT: TDateField;
    cds_etiqENDERECO: TStringField;
    cds_etiqBAIRRO: TStringField;
    cds_etiqMUNICIPIO: TStringField;
    cds_etiqNOME: TStringField;
    XPMenu1: TXPMenu;
    VCLReport1: TVCLReport;
    Panel1: TPanel;
    dxButton2: TdxButton;
    dxButton1: TdxButton;
    Edit6: TEdit;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    sds_munic: TSQLDataSet;
    sds_municID_MUNICIPIO: TIntegerField;
    sds_municMUNICIPIO: TStringField;
    sds_bairro: TSQLDataSet;
    sds_bairroID_BAIRRO: TIntegerField;
    sds_bairroBAIRRO: TStringField;
    dsp_bairro: TDataSetProvider;
    dsp_munic: TDataSetProvider;
    cds_munic: TClientDataSet;
    cds_municID_MUNICIPIO: TIntegerField;
    cds_municMUNICIPIO: TStringField;
    cds_bairro: TClientDataSet;
    cds_bairroID_BAIRRO: TIntegerField;
    cds_bairroBAIRRO: TStringField;
    Edit4: TEdit;
    Label3: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    dxButton3: TdxButton;
    edt1: TEdit;
    lbl5: TLabel;
    sql: TSQLDataSet;
    sqlNOME_SOCIO: TStringField;
    sqlID_ENDERECO: TIntegerField;
    sqlID_SOCIO: TIntegerField;
    sqlENDERECO: TStringField;
    sqlCOMPLEMENTO: TStringField;
    sqlID_BAIRRO: TIntegerField;
    sqlID_MUNICIPIO: TIntegerField;
    sqlESTADO: TStringField;
    sqlCEP: TStringField;
    sqlDDD: TStringField;
    sqlFONE: TStringField;
    sqlFONE1: TStringField;
    sqlFAX: TStringField;
    sqlCXP: TStringField;
    sqlTIPOEND: TSmallintField;
    sqlBAIRRO: TStringField;
    sqlMUNICIPIO: TStringField;
    procedure dxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEtiquetas: TfEtiquetas;
  SqlTexto : String;  

implementation

uses UDM, uProcurar, uProcGrupo;

{$R *.dfm}

procedure TfEtiquetas.dxButton1Click(Sender: TObject);
begin

   VCLReport1.FileName := str_relatorio + 'EtiquetaUnica.rep';

   // Numero de Cópias
   if Edit5.Text = '' then
     VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := 1
   else
     VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := StrToInt(Edit5.Text);

   // Sócio
   if Edit1.Text = '' then
     VCLReport1.Report.Params.ParamByName('CODCLI').Value := 9999999
   else
     VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(Edit1.Text);

   // vendedor
   if Edit4.Text = '' then
     VCLReport1.Report.Params.ParamByName('CODVEND').Value := 9999999
   else
     VCLReport1.Report.Params.ParamByName('CODVEND').Value := StrToInt(Edit4.Text);

   // Bairro
   if ComboBox1.Text = '' then
      VCLReport1.Report.Params.ParamByName('BAI').Value := 'TODOS OS BAIRROS CADASTRADOS NO SISTEMA'
   else
      VCLReport1.Report.Params.ParamByName('BAI').Value := ComboBox1.Text;

   //Cidade
   if ComboBox2.Text = '' then
      VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA'
   else
      VCLReport1.Report.Params.ParamByName('CID').Value := ComboBox2.Text;

   VCLReport1.Execute;

end;

procedure TfEtiquetas.FormShow(Sender: TObject);
begin
  if not cds_bairro.Active then
     cds_bairro.Open;
  cds_bairro.First;
  while not cds_bairro.Eof do
  begin
    ComboBox1.Items.Add(cds_bairroBAIRRO.AsString);
    cds_bairro.Next;
  end;
  cds_bairro.Close;

  if not cds_munic.Active then
     cds_munic.Open;
  cds_munic.First;
  while not cds_munic.Eof do
  begin
    ComboBox2.Items.Add(cds_municMUNICIPIO.AsString);
    cds_munic.Next;
  end;
  cds_munic.Close;
end;

procedure TfEtiquetas.SpeedButton2Click(Sender: TObject);
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
   end;
end;

procedure TfEtiquetas.dxButton2Click(Sender: TObject);
begin
   close;
end;

procedure TfEtiquetas.SpeedButton1Click(Sender: TObject);
begin
     fProcGrupo := TfProcGrupo.Create(Application);
     try
        if fProcGrupo.cds_mensal.Active then
           fProcGrupo.cds_mensal.Close;
        fProcGrupo.BitBtn2.Click;
        fProcGrupo.RadioButton2.Checked := true;
        if fProcGrupo.ShowModal=mrOk then
        begin
          Edit1.Text := IntToStr(fProcGrupo.cds_mensalID_SOCIO.AsInteger);
          Edit2.Text := fProcGrupo.cds_mensalNOME_DEP.AsString;
        end;
     finally
       fProcGrupo.cds_mensal.Close;
       fProcGrupo.Free;
     end;
end;

procedure TfEtiquetas.dxButton3Click(Sender: TObject);
var
MSWord: Variant;
finallinha:boolean;
i ,n  :Integer;
begin

  if(sql.Active)then
  sql.Close;
  sql.Open;

  {sera usada a uses COMOBJ}
  { Abre o Word }
  MSWord := CreateOleObject('Word.Application');
  {não visualizar Microsoft Word}
  MSWord.Visible:=false;

  { Abre documento em anexo junto ao  exe}
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ '6080.doc' ); //'a5.doc');//'Doc1.doc') ;//'Etiqueta_Pimaco_6181.doc');
  finallinha:=false;{Essa variavel foi criada para controlar o avanço de para cada celula da coluna }
  sql.First;

  if finallinha=false then
  begin
    for i := 0 to (StrToInt(edt1.Text)-1) do
    begin
      MSWord.Selection.MoveRight(12);
    end;
    finallinha:=true;
  end;

  n := 1 ;
  while not sql.Eof do
  begin

   // else
   // /begin
   //   { vai para a proxima celula }
   //   MSWord.Selection.MoveRight(12);
   //   finallinha:=false;
   // end;

    { Escreve na  célula }
    MSWord.Selection.Font.Name := 'Times New Roman';
    MSWord.Selection.Font.Size := 8;
    MSWord.Selection.Font.Bold := True;

    MSWord.Selection.TypeText(Text :=trim(sqlNOME_SOCIO.AsString)
                                      +#13+trim (sqlENDERECO.AsString )
                                   //   +#13+trim ('CX.POSTAL  :' + ds2COMPLEMENTO.AsString)
                                      +#13+trim ('BAIRRO  :' + sqlBAIRRO.AsString)
                                      +#13+trim (sqlMUNICIPIO.AsString +'-' + sqlESTADO.AsString  + ' - ' + sqlCEP.AsString)
                                    //  +#13+trim (IntToStr(n))
                                       );
    // MSWord.Selection.MoveRight(12);
    if finallinha=false then
      begin
        // Pula 1 celula
        MSWord.Selection.MoveRight(12);
        finallinha:=true;
      end
    else

    begin
      // vai para a proxima celula
      MSWord.Selection.MoveRight(12);
      finallinha:=false;
    end;


    sql.Next;

    n := n + 1;
  end;
  {visualizar Microsoft word }
  MSWord.Visible:=true;
end;
end.
