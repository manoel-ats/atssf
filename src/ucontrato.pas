unit uContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, dxCore, dxButton, ExtCtrls, ComOBj, Provider,
  SqlExpr, DB, Mask, DBCtrls, DBClient, DBLocal, DBLocalS, EExtenso,
  rpcompobase, rpvclreport, rplabelitem, FMTBcd, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

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
    n: TFloatField;
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
    cdsC: TClientDataSet;
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
    sds_end: TSQLDataSet;
    sds_endID_ENDERECO: TIntegerField;
    sds_endID_SOCIO: TIntegerField;
    sds_endENDERECO: TStringField;
    sds_endCOMPLEMENTO: TStringField;
    sds_endID_BAIRRO: TIntegerField;
    sds_endID_MUNICIPIO: TIntegerField;
    sds_endESTADO: TStringField;
    sds_endCEP: TStringField;
    sds_endDDD: TStringField;
    sds_endFONE: TStringField;
    sds_endFONE1: TStringField;
    sds_endFAX: TStringField;
    sds_endCXP: TStringField;
    sds_endTIPOEND: TSmallintField;
    sds_endMUNICIPIO: TStringField;
    sds_endBAIRRO: TStringField;
    dsp_end: TDataSetProvider;
    cds_end: TClientDataSet;
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
    cds_endMUNICIPIO: TStringField;
    cds_endBAIRRO: TStringField;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsC1: TClientDataSet;
    SQLDataSet1ID_DEP: TIntegerField;
    SQLDataSet1ID_SOCIO: TIntegerField;
    SQLDataSet1NOME_DEP: TStringField;
    SQLDataSet1FALECIDO: TStringField;
    SQLDataSet1CODPAR: TFloatField;
    SQLDataSet1DTNASC: TDateField;
    SQLDataSet1DTFALEC: TDateField;
    SQLDataSet1ID_PAR: TIntegerField;
    SQLDataSet1CARENCIA: TIntegerField;
    SQLDataSet1DTACADASTRO: TDateField;
    SQLDataSet1RG: TStringField;
    SQLDataSet1CPF: TStringField;
    SQLDataSet1SEGSOCIO: TStringField;
    SQLDataSet1TELEFONE: TStringField;
    SQLDataSet1DESCRICAO: TStringField;
    cdsC1ID_DEP: TIntegerField;
    cdsC1ID_SOCIO: TIntegerField;
    cdsC1NOME_DEP: TStringField;
    cdsC1FALECIDO: TStringField;
    cdsC1CODPAR: TFloatField;
    cdsC1DTNASC: TDateField;
    cdsC1DTFALEC: TDateField;
    cdsC1ID_PAR: TIntegerField;
    cdsC1CARENCIA: TIntegerField;
    cdsC1DTACADASTRO: TDateField;
    cdsC1RG: TStringField;
    cdsC1CPF: TStringField;
    cdsC1SEGSOCIO: TStringField;
    cdsC1TELEFONE: TStringField;
    cdsC1DESCRICAO: TStringField;
    jdata: TJvDatePickerEdit;
    sqlEmpresa: TSQLDataSet;
    sqlEmpresaCIDADE: TStringField;
    Label5: TLabel;
    sqlCivil: TSQLDataSet;
    sqlCivilID_ESTCIVIL: TIntegerField;
    sqlCivilDESCRICAO: TStringField;
    DBEdit2: TDBEdit;
    DataSource2: TDataSource;
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

  if (sqlCivil.Active) then
    sqlCivil.Close;
  sqlCivil.Params[0].AsInteger := sdsSocioESTCIV.Value;
  sqlCivil.Open;

  if (cdsC.Active) then
     cdsC.Close;
  cdsC.Params[0].AsInteger := StrToInt(Edit2.Text);
  cdsC.Open;

  if (cdsC1.Active) then
     cdsC1.Close;
  cdsC1.Params[0].AsInteger := StrToInt(Edit2.Text);
  cdsC1.Open;

  if (cds_end.Active) then
     cds_end.Close;
  cds_end.Params[0].AsInteger := StrToInt(Edit2.Text);
  cds_end.Open;

  if (sqlEmpresa.Active) then
     sqlEmpresa.Close;
  sqlEmpresa.Open;


end;

procedure TfContrato.dxButton1Click(Sender: TObject);
var
 WinWord, Docs, Doc: Variant;
 socio2, cpf2, rg2 , dep , dep1 : string;
 ano, mes, dia : word;
 n ,x :Integer;
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
      CopyFile(Pchar(Edit3.Text),Pchar(Edit3.Text),True);
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
          Doc.Content.Find.Execute(FindText:='@NATURALIDADE',ReplaceWith := sdsSocioNAT.AsString);
          Doc.Content.Find.Execute(FindText:='@ESTCIVEL',ReplaceWith := DBEdit2.Text);
          Doc.Content.Find.Execute(FindText:='@PROFISSAO',ReplaceWith := sdsSocioPROFISSAO.AsString);
          Doc.Content.Find.Execute(FindText:='@DATANASC',ReplaceWith := sdsSocioDTNASC.AsString);
          Doc.Content.Find.Execute(FindText:='@FONE',ReplaceWith := cds_endFONE.AsString);
          Doc.Content.Find.Execute(FindText:='@FONE1',ReplaceWith := cds_endFONE1.AsString);
          Doc.Content.Find.Execute(FindText:='@FONE2',ReplaceWith := cds_endFAX.AsString);
          Doc.Content.Find.Execute(FindText:='@NOME_SOCIO1',ReplaceWith := Edit1.Text);
          Doc.Content.Find.Execute(FindText:='@GRUPO',ReplaceWith := Edit4.Text);
          Doc.Content.Find.Execute(FindText:='@INSCRICAO',ReplaceWith := Edit5.Text);
          Doc.Content.Find.Execute(FindText:='@VALOR',ReplaceWith := DBEdit1.Text);
          Doc.Content.Find.Execute(FindText:='@VALOR_EXTENCO',ReplaceWith := Edit10.Text);
          Doc.Content.Find.Execute(FindText:='@CPF',ReplaceWith := Edit7.Text);
          Doc.Content.Find.Execute(FindText:='@CPF1',ReplaceWith := Edit7.Text);
          Doc.Content.Find.Execute(FindText:='@RG',ReplaceWith := Edit8.Text);
          Doc.Content.Find.Execute(FindText:='@RG1',ReplaceWith := Edit8.Text);
          Doc.Content.Find.Execute(FindText:='@BAIRRO',ReplaceWith := cds_endBAIRRO.AsString);
          Doc.Content.Find.Execute(FindText:='@ENDERECO',ReplaceWith := cds_endENDERECO.AsString);
          Doc.Content.Find.Execute(FindText:='@ENDERECO1',ReplaceWith := cds_endENDERECO.AsString);
          Doc.Content.Find.Execute(FindText:='@CIDADE',ReplaceWith := cds_endMUNICIPIO.AsString);
          Doc.Content.Find.Execute(FindText:='@CIDADE1',ReplaceWith := cds_endMUNICIPIO.AsString);
          Doc.Content.Find.Execute(FindText:='@ESTADO',ReplaceWith := cds_endESTADO.AsString);
          Doc.Content.Find.Execute(FindText:='@ESTADO1',ReplaceWith := cds_endESTADO.AsString);
          Doc.Content.Find.Execute(FindText:='@COD',ReplaceWith := sdsSocioGRUPO.AsString + '-' + sdsSocioN_INSCRICAO.AsString );
          Doc.Content.Find.Execute(FindText:='@COD1',ReplaceWith := sdsSocioGRUPO.AsString + '-' + sdsSocioN_INSCRICAO.AsString );
          Doc.Content.Find.Execute(FindText:='@diad', ReplaceWith := Formatdatetime('DD',StrToDate(jdata.Text)));
          Doc.Content.Find.Execute(FindText:='@mesd', ReplaceWith := uppercase(Formatdatetime('MMMM',StrToDate(jdata.Text))));
          Doc.Content.Find.Execute(FindText:='@anod', ReplaceWith := Formatdatetime('yyyy',StrToDate(jdata.Text)));
          Doc.Content.Find.Execute(FindText:='@diad1', ReplaceWith := Formatdatetime('DD',StrToDate(jdata.Text)));
          Doc.Content.Find.Execute(FindText:='@mesd1', ReplaceWith := uppercase(Formatdatetime('MMMM',StrToDate(jdata.Text))));
          Doc.Content.Find.Execute(FindText:='@anod1', ReplaceWith := Formatdatetime('yyyy',StrToDate(jdata.Text)));
          Doc.Content.Find.Execute(FindText:='@CIDADEC',ReplaceWith := sqlEmpresaCIDADE.AsString);
          Doc.Content.Find.Execute(FindText:='@CIDADEC1',ReplaceWith := sqlEmpresaCIDADE.AsString);
          if (socio2 <> '') then
            Doc.Content.Find.Execute(FindText:='@NOME_SOCIO2',ReplaceWith := socio2);
          if (rg2 <> '') then
            Doc.Content.Find.Execute(FindText:='@RG2',ReplaceWith := rg2);
          if (cpf2 <> '') then
            Doc.Content.Find.Execute(FindText:='@CPF2',ReplaceWith := cpf2);
          Doc.Content.Find.Execute(FindText:='@DIA',ReplaceWith := IntToStr(sdsSocioDIAPARAPGTO.AsInteger));
          Doc.Content.Find.Execute(FindText:='@ANO',ReplaceWith := IntToStr(ano));

          n := 1 ;
          dep := ('@dependente'+IntToStr(n)+'@');
          while not cdsC.Eof do
          begin
            WinWord.Selection.Font.Size := 6;
            WinWord.Selection.Font.Bold := True;
            WinWord.Selection.Font.Bold := True;
            Doc.Content.Find.Execute(FindText:= (dep),ReplaceWith :=  IntToStr(n) + '.'+ cdsCNOME_DEP.AsString);
            cdsC.Next;
            n := n + 1;
            dep := ('@dependente'+IntToStr(n)+'@');
          end;

          x := 1 ;
          dep1 := ('@dependente'+IntToStr(x)+'@');
          while not cdsC1.Eof do
          begin
            WinWord.Selection.Font.Size := 6;
            WinWord.Selection.Font.Bold := True;
            WinWord.Selection.Font.Bold := True;
            Doc.Content.Find.Execute(FindText:=(dep1),ReplaceWith :=  IntToStr(x) + '.'+ cdsC1NOME_DEP.AsString);
            cdsC1.Next;
            x := x + 1;
            dep1 := ('@dependente'+IntToStr(x)+'@');
          end;

          Doc.Content.Find.Execute(FindText:=('@dependente1@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente2@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente3@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente4@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente5@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente6@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente7@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente8@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente9@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente10@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente11@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente12@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente13@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente14@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente15@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente16@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente17@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente18@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente19@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente20@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente21@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente22@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente23@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente24@'),ReplaceWith := '');

          ///
          Doc.Content.Find.Execute(FindText:=('@dependente1@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente2@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente3@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente4@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente5@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente6@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente7@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente8@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente9@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente10@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente11@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente12@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente13@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente14@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente15@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente16@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente17@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente18@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente19@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente20@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente21@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente22@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente23@'),ReplaceWith := '');
          Doc.Content.Find.Execute(FindText:=('@dependente24@'),ReplaceWith := '');
    end;


  Doc.SaveAs('C:\home\atsscf\Contratos Gerados\' + Formatdatetime('ddmmyyyy',StrToDate(jdata.Text)) + '-' + Edit1.Text +'-'+ Edit4.Text +'-' + Edit5.Text +'.DOC');

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
