unit uContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, dxCore, dxButton, ExtCtrls, ComOBj, Provider,
  SqlExpr, DB, Mask, DBCtrls, DBClient, DBLocal, DBLocalS, EExtenso,
  rpcompobase, rpvclreport, rplabelitem, FMTBcd;


type
  TfContrato = class(TForm)
    Panel1: TPanel;
    dxButton1: TdxButton;
    dxButton3: TdxButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    cdsValor: TSQLClientDataSet;
    DataSource1: TDataSource;
    cdsValorMAX: TFloatField;
    EvExtenso1: TEvExtenso;
    Edit6: TEdit;
    SaveDialog1: TSaveDialog;
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
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    sdsSocio: TSQLDataSet;
    sdsSocioID_SOCIO: TIntegerField;
    sdsSocioNOME_SOCIO: TStringField;
    sdsSocioSOBRENOME: TStringField;
    sdsSocioNAT: TStringField;
    sdsSocioDTNASC: TDateField;
    sdsSocioPROFISSAO: TStringField;
    sdsSocioCPF_CGC: TStringField;
    sdsSocioRG_IE: TStringField;
    sdsSocioID_VEN: TIntegerField;
    sdsSocioID_COB: TIntegerField;
    sdsSocioN_INSCRICAO: TIntegerField;
    sdsSocioGRUPO: TStringField;
    sdsSocioDTACADASTRO: TDateField;
    sdsSocioDTASISTEMA: TDateField;
    sdsSocioSTATUS: TStringField;
    sdsSocioOBS: TGraphicField;
    sdsSocioTIPO_DOC: TStringField;
    sdsSocioESTCIV: TIntegerField;
    sdsSocioPRAZO_PG: TIntegerField;
    sdsSocioVENCIMENTO: TDateField;
    sdsSocioVALOR_SERVICO: TFloatField;
    sdsSocioPARCELA: TFloatField;
    sdsSocioENTRADA: TFloatField;
    sdsSocioCARENCIA: TIntegerField;
    sdsSocioCODIGO: TIntegerField;
    sdsSocioTIPO_SOCIO: TStringField;
    sdsSocioDIAPGTO: TIntegerField;
    sdsSocioMESES: TIntegerField;
    sdsSocioDATAINICIO: TDateField;
    sdsSocioDATAFIM: TDateField;
    sdsSocioPERCENTUALJUROS: TFloatField;
    sdsSocioPERCENTUALMULTA: TFloatField;
    sdsSocioPERCENTUALDESCONTO: TFloatField;
    sdsSocioVALOROUTROSACRESCIMOS: TFloatField;
    sdsSocioDEMONSTRATIVO: TStringField;
    sdsSocioINSTRUCOESCAIXA: TStringField;
    sdsSocioINSTRUCAO1: TStringField;
    sdsSocioINSTRUCAO2: TStringField;
    sdsSocioINSTRUCAO3: TStringField;
    sdsSocioTIPOIMPRESSAOCARNE: TIntegerField;
    sdsSocioACEITEDOCUMENTO: TStringField;
    sdsSocioESPECIEDOCUMENTO: TStringField;
    sdsSocioSELECIONOU: TStringField;
    sdsSocioGEROU: TStringField;
    sdsSocioCODIGO_T: TIntegerField;
    sdsSocioCODIGO_C: TIntegerField;
    sdsSocioPLANO: TStringField;
    sdsSocioHISTORICO: TMemoField;
    sdsSocioPLANO_ANT: TStringField;
    sdsSocioDTA_CONTRATO: TDateField;
    sdsSocioDTA_CONTRATO_ANT: TDateField;
    sdsSocioSITUACAO: TStringField;
    sdsSocioDATAEXCLUSAO: TDateField;
    sdsSocioEMAIL: TStringField;
    sdsSocioDTA_ULTIMA_PARCELA: TDateField;
    sdsSocioFAIXA: TIntegerField;
    sdsSocioDIAPARAPGTO: TIntegerField;
    sdsSocioQUTDE: TIntegerField;
    Edit11: TEdit;
    DBEdit1: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fContrato: TfContrato;

implementation

uses UDM, uProc_socio, uProcurar, uFiltroProcura, uProcGrupo,
  uProcura_Trimestral, uSocio_Procura;

{$R *.dfm}

procedure TfContrato.SpeedButton1Click(Sender: TObject);
begin
  fSocio_Procura.ShowModal;
  if (cdsValor.Active) then
    cdsValor.Close;
  cdsValor.Params[0].AsInteger := StrToInt(Edit9.Text);
  cdsValor.Open;
  //Edit10.Text := FloatToStr(cdsValorMAX.AsFloat);
  Edit10.Text := EvExtenso1.GetExtenso(cdsValorMAX.AsFloat);
  if (sdsSocio.Active) then
     sdsSocio.Close;
  sdsSocio.Params[0].AsInteger := StrToInt(Edit2.Text);
  sdsSocio.Open;
end;

procedure TfContrato.dxButton1Click(Sender: TObject);
var
 WinWord, Docs, Doc: Variant;
 socio2, cpf2, rg2 : string;
 ano, mes, dia : word;
begin
    DecodeDate(now, ano, mes, dia);
    if (Edit2.Text <> '') then
    begin
      if sdsDep.Active then
        sdsDep.Close;
      sdsDep.Params[0].AsInteger := StrToInt(Edit2.Text);
      sdsDep.Open;
      if (not sdsDep.IsEmpty) then
      begin
         socio2 := sdsDepNOME_DEP.AsString;
         cpf2 := sdsDepCPF.AsString;
         rg2 := sdsDepRG.AsString;
      end;
      sdsDep.Close;
    end;

    if Edit3.Text = '' then
    Application.MessageBox('Você não informou o Documento', 'Erro')
    else
    begin
        // cria objeto principal de controle
      WinWord:=CreateOleObject('Word.Application');
      // Mostra o WORD
       WinWord.Visible:=True;
      // Pega uma interface para o objeto que manipula documentos
      Docs:=WinWord.Documents;
      //Abre um documento
      Doc:=Docs.Open(Edit3.Text);
      //Substitui texto via (name parameters)
      //=======================================================================================================
      // Testa se o documento exclolhido é  Contrato.doc
      //=======================================================================================================
      //if Edit3.Text = 'C:\Arquivos de programas\meta\Doc\CONTRATO.DOC' then
      //begin
        //=======================================================================================================
        // Adiciona os dados do Sócio
        //=======================================================================================================
          Doc.Content.Find.Execute(FindText:='@NOME_SOCIO',ReplaceWith := Edit1.Text);
          Doc.Content.Find.Execute(FindText:='@GRUPO',ReplaceWith := Edit4.Text);
          Doc.Content.Find.Execute(FindText:='@INSCRICAO',ReplaceWith := Edit5.Text);
          Doc.Content.Find.Execute(FindText:='@VALOR',ReplaceWith := DBEdit1.Text);
          Doc.Content.Find.Execute(FindText:='@VALOR_EXTENCO',ReplaceWith := Edit10.Text);
          Doc.Content.Find.Execute(FindText:='@CPF',ReplaceWith :=
            Edit7.Text);
          Doc.Content.Find.Execute(FindText:='@RG',ReplaceWith :=
            Edit8.Text);
          if (socio2 <> '') then
            Doc.Content.Find.Execute(FindText:='@NOME_SOCIO2',ReplaceWith := socio2);
          if (rg2 <> '') then
            Doc.Content.Find.Execute(FindText:='@RG2',ReplaceWith := rg2);
          if (cpf2 <> '') then
            Doc.Content.Find.Execute(FindText:='@CPF2',ReplaceWith := cpf2);
          Doc.Content.Find.Execute(FindText:='@DIA',ReplaceWith := IntToStr(sdsSocioDIAPARAPGTO.AsInteger));
          Doc.Content.Find.Execute(FindText:='@ANO',ReplaceWith := IntToStr(ano));
      // end;
    end;

end;

procedure TfContrato.dxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfContrato.SpeedButton2Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  Edit3.Text := SaveDialog1.FileName;
end;

end.
