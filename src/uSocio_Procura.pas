unit uSocio_Procura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Grids, DBGrids, SqlExpr, Provider, DB,
  DBClient,  ComCtrls, dxCore, dxButton, ExtCtrls, RXCtrls,
  rpcompobase, rpvclreport, Menus, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, JvExDBGrids,
  JvDBGrid;

type
  TfSocio_Procura = class(TForm)
    Panel1: TPanel;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    DtSrc: TDataSource;
    cds_proc: TClientDataSet;
    dsp_proc: TDataSetProvider;
    sds_proc: TSQLDataSet;
    Panel3: TPanel;
    CheckBox3: TCheckBox;
    sds_est_civil: TSQLDataSet;
    sds_est_civilID_ESTCIVIL: TIntegerField;
    sds_est_civilDESCRICAO: TStringField;
    sds_procNOME_DEP: TStringField;
    sds_procDESCRICAO: TStringField;
    sds_procNOME_SOCIO: TStringField;
    sds_procPLANO: TStringField;
    sds_procGRUPO: TStringField;
    sds_procN_INSCRICAO: TIntegerField;
    sds_procENDERECO: TStringField;
    sds_procBAIRRO: TStringField;
    sds_procMUNICIPIO: TStringField;
    sds_procNOME: TStringField;
    cds_procNOME_DEP: TStringField;
    cds_procDESCRICAO: TStringField;
    cds_procNOME_SOCIO: TStringField;
    cds_procPLANO: TStringField;
    cds_procGRUPO: TStringField;
    cds_procN_INSCRICAO: TIntegerField;
    cds_procENDERECO: TStringField;
    cds_procBAIRRO: TStringField;
    cds_procMUNICIPIO: TStringField;
    cds_procNOME: TStringField;
    sds_procID_SOCIO: TIntegerField;
    cds_procID_SOCIO: TIntegerField;
    sds_procSOBRENOME: TStringField;
    sds_procNAT: TStringField;
    sds_procDTNASC: TDateField;
    sds_procPROFISSAO: TStringField;
    sds_procCPF_CGC: TStringField;
    sds_procRG_IE: TStringField;
    sds_procID_VEN: TIntegerField;
    sds_procID_COB: TIntegerField;
    sds_procDTACADASTRO: TDateField;
    sds_procDTASISTEMA: TDateField;
    sds_procSTATUS: TStringField;
    sds_procOBS: TGraphicField;
    sds_procTIPO_DOC: TStringField;
    sds_procESTCIV: TIntegerField;
    sds_procPRAZO_PG: TIntegerField;
    sds_procVENCIMENTO: TDateField;
    sds_procVALOR_SERVICO: TFloatField;
    sds_procPARCELA: TFloatField;
    sds_procENTRADA: TFloatField;
    sds_procCARENCIA: TIntegerField;
    sds_procCODIGO: TIntegerField;
    sds_procTIPO_SOCIO: TStringField;
    sds_procDIAPGTO: TIntegerField;
    sds_procMESES: TIntegerField;
    sds_procDATAINICIO: TDateField;
    sds_procDATAFIM: TDateField;
    sds_procPERCENTUALJUROS: TFloatField;
    sds_procPERCENTUALMULTA: TFloatField;
    sds_procPERCENTUALDESCONTO: TFloatField;
    sds_procVALOROUTROSACRESCIMOS: TFloatField;
    sds_procDEMONSTRATIVO: TStringField;
    sds_procINSTRUCOESCAIXA: TStringField;
    sds_procINSTRUCAO1: TStringField;
    sds_procINSTRUCAO2: TStringField;
    sds_procINSTRUCAO3: TStringField;
    sds_procTIPOIMPRESSAOCARNE: TIntegerField;
    sds_procACEITEDOCUMENTO: TStringField;
    sds_procESPECIEDOCUMENTO: TStringField;
    sds_procSELECIONOU: TStringField;
    sds_procGEROU: TStringField;
    sds_procCODIGO_T: TIntegerField;
    sds_procCODIGO_C: TIntegerField;
    sds_procHISTORICO: TMemoField;
    sds_procPLANO_ANT: TStringField;
    sds_procDTA_CONTRATO: TDateField;
    sds_procDTA_CONTRATO_ANT: TDateField;
    cds_procSOBRENOME: TStringField;
    cds_procNAT: TStringField;
    cds_procDTNASC: TDateField;
    cds_procPROFISSAO: TStringField;
    cds_procCPF_CGC: TStringField;
    cds_procRG_IE: TStringField;
    cds_procID_VEN: TIntegerField;
    cds_procID_COB: TIntegerField;
    cds_procDTACADASTRO: TDateField;
    cds_procDTASISTEMA: TDateField;
    cds_procSTATUS: TStringField;
    cds_procOBS: TGraphicField;
    cds_procTIPO_DOC: TStringField;
    cds_procESTCIV: TIntegerField;
    cds_procPRAZO_PG: TIntegerField;
    cds_procVENCIMENTO: TDateField;
    cds_procVALOR_SERVICO: TFloatField;
    cds_procPARCELA: TFloatField;
    cds_procENTRADA: TFloatField;
    cds_procCARENCIA: TIntegerField;
    cds_procCODIGO: TIntegerField;
    cds_procTIPO_SOCIO: TStringField;
    cds_procDIAPGTO: TIntegerField;
    cds_procMESES: TIntegerField;
    cds_procDATAINICIO: TDateField;
    cds_procDATAFIM: TDateField;
    cds_procPERCENTUALJUROS: TFloatField;
    cds_procPERCENTUALMULTA: TFloatField;
    cds_procPERCENTUALDESCONTO: TFloatField;
    cds_procVALOROUTROSACRESCIMOS: TFloatField;
    cds_procDEMONSTRATIVO: TStringField;
    cds_procINSTRUCOESCAIXA: TStringField;
    cds_procINSTRUCAO1: TStringField;
    cds_procINSTRUCAO2: TStringField;
    cds_procINSTRUCAO3: TStringField;
    cds_procTIPOIMPRESSAOCARNE: TIntegerField;
    cds_procACEITEDOCUMENTO: TStringField;
    cds_procESPECIEDOCUMENTO: TStringField;
    cds_procSELECIONOU: TStringField;
    cds_procGEROU: TStringField;
    cds_procCODIGO_T: TIntegerField;
    cds_procCODIGO_C: TIntegerField;
    cds_procHISTORICO: TMemoField;
    cds_procPLANO_ANT: TStringField;
    cds_procDTA_CONTRATO: TDateField;
    cds_procDTA_CONTRATO_ANT: TDateField;
    sds_procID_DEP: TIntegerField;
    sds_procFALECIDO: TStringField;
    sds_procCODPAR: TFloatField;
    sds_procDTFALEC: TDateField;
    sds_procID_PAR: TIntegerField;
    sds_procID_SOCIO_1: TIntegerField;
    sds_procDTNASC_1: TDateField;
    sds_procDTACADASTRO_1: TDateField;
    sds_procCARENCIA_1: TIntegerField;
    cds_procID_DEP: TIntegerField;
    cds_procFALECIDO: TStringField;
    cds_procCODPAR: TFloatField;
    cds_procDTFALEC: TDateField;
    cds_procID_PAR: TIntegerField;
    cds_procID_SOCIO_1: TIntegerField;
    cds_procDTNASC_1: TDateField;
    cds_procDTACADASTRO_1: TDateField;
    cds_procCARENCIA_1: TIntegerField;
    PopupMenu1: TPopupMenu;
    dxButton1: TdxButton;
    Procura1: TMenuItem;
    Confirma1: TMenuItem;
    Sair1: TMenuItem;
    sds_procSITUACAO: TStringField;
    cds_procSITUACAO: TStringField;
    Panel6: TPanel;
    RxLabel1: TRxLabel;
    ComboBox1: TComboBox;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    RxLabel4: TRxLabel;
    RxLabel3: TRxLabel;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    rbtodos: TRadioButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    CheckBox4: TCheckBox;
    JvDBGrid1: TJvDBGrid;
    sds_procRG: TStringField;
    sds_procCPF: TStringField;
    sds_procSEGSOCIO: TStringField;
    sds_procTELEFONE: TStringField;
    sds_procDATAEXCLUSAO: TDateField;
    sds_procEMAIL: TStringField;
    sds_procDTA_ULTIMA_PARCELA: TDateField;
    sds_procFAIXA: TIntegerField;
    sds_procDIAPARAPGTO: TIntegerField;
    sds_procQUTDE: TIntegerField;
    cds_procRG: TStringField;
    cds_procCPF: TStringField;
    cds_procSEGSOCIO: TStringField;
    cds_procTELEFONE: TStringField;
    cds_procDATAEXCLUSAO: TDateField;
    cds_procEMAIL: TStringField;
    cds_procDTA_ULTIMA_PARCELA: TDateField;
    cds_procFAIXA: TIntegerField;
    cds_procDIAPARAPGTO: TIntegerField;
    cds_procQUTDE: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton3: TRadioButton;
    Button1: TButton;
    procedure dxButton4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rbtodosClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure dxButton1Click(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
     function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
     procedure varform0;
     procedure varform1;
     procedure varform2;
     procedure varform3;
     procedure varform4;
     procedure varform5;
     procedure varform6;
     procedure varform7;
     procedure varform8;
     procedure varform9;
     procedure abreTabelas;
      { Public declarations }
  end;

var
  fSocio_Procura: TfSocio_Procura;
  varonde : integer;
  dif, dif1: integer;
  dif_str:string;
  t_socio:string;


implementation

uses uCad_Clientes, ufDlgLogin, uPrincipal, UDM, uSocio_Cadastro, uObs,
  uCad_Obitos, uFiltro_CR1, uCarteirinha, uRel_socios, uContrato, uAcordo,
  uAltera_Grupo, uSocios, udmconsulta, uGeraTitulos, uGeraTitulosMensais,
  sCtrlResize, uCarneRec;

{$R *.dfm}

procedure TfSocio_Procura.dxButton4Click(Sender: TObject);
var
  SqlTexto : String;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try

   if cds_proc.Active then
     cds_proc.Close;
   cds_proc.CommandText := '';
  {
   cds_proc.CommandText:='select d.*, p.DESCRICAO, s.*, s.GRUPO, ' +
     'e.ENDERECO, b.BAIRRO, m.MUNICIPIO, c.NOME ' +
     'from DEPENDENTE d left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
     'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO ' +
     'left outer join ENDERECO e on e.ID_SOCIO=s.ID_SOCIO ' +
     'left outer join BAIRRO b on b.ID_BAIRRO=e.ID_BAIRRO ' +
     'left outer join MUNICIPIO m on m.ID_MUNICIPIO=e.ID_MUNICIPIO ' +
     'left outer join COBRANCA c on c.ID_COB=s.ID_COB ' +

  }
     if(RadioButton3.Checked = True) then
     begin
     cds_proc.CommandText:='select d.*, p.DESCRICAO, s.*, s.GRUPO, ' +
     'e.ENDERECO, b.BAIRRO, m.MUNICIPIO, c.NOME ' +
     'from DEPENDENTE d left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
     'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO ' +
     'left outer join ENDERECO e on e.ID_SOCIO=s.ID_SOCIO ' +
     'left outer join BAIRRO b on b.ID_BAIRRO=e.ID_BAIRRO ' +
     'left outer join MUNICIPIO m on m.ID_MUNICIPIO=e.ID_MUNICIPIO ' +
     'left outer join COBRANCA c on c.ID_COB=s.ID_COB ' +

     'where (e.TIPOEND = 1)';
     end;

     if(RadioButton3.Checked = False) then
     begin
      cds_proc.CommandText:='select d.*, p.DESCRICAO, s.*, s.GRUPO, ' +
     'e.ENDERECO, b.BAIRRO, m.MUNICIPIO, c.NOME ' +
     'from DEPENDENTE d left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
     'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO ' +
     'left outer join ENDERECO e on e.ID_SOCIO=s.ID_SOCIO ' +
     'left outer join BAIRRO b on b.ID_BAIRRO=e.ID_BAIRRO ' +
     'left outer join MUNICIPIO m on m.ID_MUNICIPIO=e.ID_MUNICIPIO ' +
     'left outer join COBRANCA c on c.ID_COB=s.ID_COB ' +

     'where ((e.TIPOEND = 0) or (e.TIPOEND is null))';
     end;

    // 'where ((e.TIPOEND = 0) or (e.TIPOEND = 1) or (e.TIPOEND is null))';
    // ' where e.TIPOEND = 0 ';
  //==============================================================================
  //------------------------------------------------------------------------------
  //Grupo
  //------------------------------------------------------------------------------
  if Edit2.Text<>'' then
  begin
      sqlTexto := sqlTexto + ' and s.GRUPO = ';
      sqlTexto := sqlTexto + '''' + Edit2.Text + '''';
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Inscri??o
  //------------------------------------------------------------------------------
  if Edit1.Text<>'' then
  begin
      sqlTexto := sqlTexto + ' and s.N_INSCRICAO = ';
      sqlTexto := sqlTexto +  Edit1.Text ;
  end;

  //********************************************************************************************
  {if NomeVen.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(usu.NOMEUSUARIO) containing ' + '''' + nomeVen.Text +  ''''
   else
     varCondicao := 'where UDF_COLLATEBR(usu.NOMEUSUARIO) containing ' + '''' + nomeVen.Text + '''';

   }
  //------------------------------------------------------------------------------
  //Nome
  //------------------------------------------------------------------------------
  if Edit3.Text <> '' then
  begin
      //sqlTexto := sqlTexto + ' and d.NOME_DEP Like ';
      //sqlTexto := sqlTexto + '''' + Edit3.Text + '%''';
      sqlTexto := sqlTexto + ' and UDF_COLLATEBR(d.NOME_DEP) containing ' + '''' + Edit3.Text +  '''';
  end;
  //------------------------------------------------------------------------------
  //Bairro
  //------------------------------------------------------------------------------
  if CheckBox3.Checked = true then
  if Edit4.Text <> '' then
  begin
      //sqlTexto := sqlTexto + ' and b.BAIRRO Like ';
      //sqlTexto := sqlTexto + '''' + Edit4.Text + '%''';
      sqlTexto := sqlTexto + ' and UDF_COLLATEBR(b.BAIRRO) containing ' + '''' + Edit4.Text +  '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Munic?pio
  //------------------------------------------------------------------------------
  if CheckBox4.Checked = true then
  if Edit4.Text <> '' then
  begin
      //sqlTexto := sqlTexto + ' and m.MUNICIPIO Like ';
      //sqlTexto := sqlTexto + '''' + Edit4.Text + '%''';
      sqlTexto := sqlTexto + ' and UDF_COLLATEBR(m.MUNICIPIO) containing ' + '''' + Edit4.Text +  '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Plano
  //------------------------------------------------------------------------------
  if ComboBox1.Text <> '' then
  begin
      sqlTexto := sqlTexto + ' and s.PLANO = ';
      sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Plano
  //------------------------------------------------------------------------------
  {
  if RadioGroup1.ItemIndex = 0 then
  begin
      sqlTexto := sqlTexto + ' and s.SITUACAO = ';
      sqlTexto := sqlTexto + '''' + 'Ativo' + '''';
  end
  else
  begin
      sqlTexto := sqlTexto + ' and s.SITUACAO = ';
      sqlTexto := sqlTexto + '''' + 'Inativo' + '''';
  end;

  }

  if RadioGroup1.ItemIndex = 0 then
  begin
      sqlTexto := sqlTexto + ' and s.SITUACAO = ';
      sqlTexto := sqlTexto + '''' + 'Ativo' + '''';
  end;

  if RadioGroup1.ItemIndex = 1 then
  begin
      sqlTexto := sqlTexto + ' and s.SITUACAO = ';
      sqlTexto := sqlTexto + '''' + 'Inativo' + '''';
  end;

  if RadioGroup1.ItemIndex = 2 then
  begin
      sqlTexto := sqlTexto + ' and s.SITUACAO = ';
      sqlTexto := sqlTexto + '''' + 'Outros' + '''';
  end;
  
  cds_proc.CommandText := cds_proc.CommandText + sqlTexto;
  cds_proc.Open;

  // Retorna o Mouse
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
  Label2.Caption :=  IntToStr( cds_proc.RecordCount);
  
end;

procedure TfSocio_Procura.CheckBox3Click(Sender: TObject);
begin
  if CheckBox4.Checked = True then
     CheckBox4.Checked := False;
  cds_proc.IndexFieldNames := 'BAIRRO';
end;

procedure TfSocio_Procura.CheckBox4Click(Sender: TObject);
begin
  if CheckBox3.Checked = True then
     CheckBox3.Checked := False;
  cds_proc.IndexFieldNames := 'MUNICIPIO';
end;

procedure TfSocio_Procura.RadioButton2Click(Sender: TObject);
var
   socio : String;
begin
    socio := 'DESCRICAO = ''SOCIO''';

    if RadioButton2.Checked then
    begin
       cds_proc.Filter := socio;
       cds_proc.Filtered := True;
    end;

    if RadioButton1.Checked = True then
      RadioButton1.Checked := False;
    Label2.Caption :=  IntToStr( cds_proc.RecordCount);      
end;

procedure TfSocio_Procura.RadioButton1Click(Sender: TObject);
var
   dep : String;
begin
    dep := 'DESCRICAO <> ''SOCIO''';
    if RadioButton1.Checked then
    begin
       cds_proc.Filter := dep;
       cds_proc.Filtered := True;
    end;
    if RadioButton2.Checked = True then
      RadioButton2.Checked := False;
    Label2.Caption :=  IntToStr( cds_proc.RecordCount);       
end;

procedure TfSocio_Procura.dxButton3Click(Sender: TObject);
begin
    //***************************************************************************
    if (varonde = 0) then //abri o Procura pelo form fSocios (Cadastro de S?cios)
        varform0;

    if (varonde = 1) then //abri o Procura pelo form PRINCIPAL
        varform1;

    if (varonde = 2) then //estou vindo do cadastro de ?bitos
        varform2;

    if (varonde = 3) then
        varform3;

    if (varonde = 4) then
        varform4;

    if (varonde = 5) then
        varform5;

    if (varonde = 6) then
        varform6;

    if (varonde = 7) then 
        varform7;

    if (varonde = 8) then
        varform8;

    if (varonde = 9) then
        varform9;

    if (varonde <> 1) then
    begin
      cds_proc.Close;
      close;
    end;
    //***************************************************************************
end;

function TfSocio_Procura.DifDias(DataVenc, DataAtual: TDateTime): String;
{Retorna a diferenca de dias entre duas datas}
Var Data: TDateTime;
    dia, mes, ano: Word;
begin
  if DataAtual < DataVenc then
  begin
   Result := 'A data data atual n?o pode ser menor que a data inicial';
  end
  else
  begin
   Data := DataAtual - DataVenc;
   DecodeDate( Data, ano, mes, dia);
//   Result := FloatToStr(Data)+' Dias';
   Result := FloatToStr(Data);
  end;
end;

procedure TfSocio_Procura.FormShow(Sender: TObject);
var
   socio : String;
begin
    if varonde = 1 then
    begin
      socio := 'DESCRICAO = ''SOCIO''';
      RadioButton2.Checked := true;
      cds_proc.Filter := socio;
      cds_proc.Filtered := True;
    end;
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    ComboBox1.Text := '';    
    Edit3.SetFocus;
end;

procedure TfSocio_Procura.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfSocio_Procura.rbtodosClick(Sender: TObject);
var
   TodosCli : String;
begin
    TodosCli := '';
    if rbtodos.Checked then
    begin
       cds_proc.Filter := TodosCli;
       cds_proc.Filtered := True;
    end;
    Label2.Caption :=  IntToStr( cds_proc.RecordCount); 
end;

procedure TfSocio_Procura.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
//var
// R: TRect;
begin
  inherited;
  if not odd(DtSrc.dataset.RecNo) then // se for impar
  // se a coluna ? est? selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    jvDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    jvDBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padr?o
    jvDBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = cds_procDESCRICAO then
   if cds_procDESCRICAO.AsString = 'SOCIO' then
   begin
     jvDBGrid1.Canvas.Font.Color := clBlue;
     jvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_procNOME_DEP then
   if cds_procFALECIDO.AsString = 'S' then
   begin
     jvDBGrid1.Canvas.Font.Color := clRed;
     jvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfSocio_Procura.DBGrid1TitleClick(Column: TColumn);
begin
 cds_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfSocio_Procura.dxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSocio_Procura.varform0;
begin
      if (dm.cds_socio.Active) then
        dm.cds_socio.Close;
      dm.cds_socio.Params[0].Clear;
      dm.cds_socio.Params[0].AsInteger := cds_procID_SOCIO.AsInteger;
      dm.cds_socio.Open;
      if (not dmconsulta.cds_est_civil.Active) then
        dmconsulta.cds_est_civil.Open;
      dmconsulta.cds_est_civil.First;
      fSocios.ComboBox1.Items.Clear;
      while not dmconsulta.cds_est_civil.Eof do
      begin
        fSocios.ComboBox1.Items.Add(dmconsulta.cds_est_civilDESCRICAO.AsString);
        dmconsulta.cds_est_civil.Next;
      end;
      dmconsulta.cds_est_civil.Locate('ID_ESTCIVIL',dm.cds_socioESTCIV.AsInteger,[loCaseInsensitive]);
      fSocios.ComboBox1.Text := dmconsulta.cds_est_civilDESCRICAO.AsString;
      abreTabelas;//Vejo se o Socio est? em car?ncia, abro tabelas dependentes, endere?o etc...
end;

procedure TfSocio_Procura.varform1;
begin
      fSocios := TfSocios.Create(Application);
      try
        fSocios.PageControl1.ActivePage := fSocios.TabSheet1;
        if (dm.cds_socio.Active) then
          dm.cds_socio.Close;
        dm.cds_socio.Params[0].Clear;
        dm.cds_socio.Params[0].AsInteger := cds_procID_SOCIO.AsInteger;
        dm.cds_socio.Open;
        if (not dmconsulta.cds_est_civil.Active) then
          dmconsulta.cds_est_civil.Open;
        dmconsulta.cds_est_civil.First;
        fSocios.ComboBox1.Items.Clear;
        while not dmconsulta.cds_est_civil.Eof do
        begin
          fSocios.ComboBox1.Items.Add(dmconsulta.cds_est_civilDESCRICAO.AsString);
          dmconsulta.cds_est_civil.Next;
        end;
        dmconsulta.cds_est_civil.Locate('ID_ESTCIVIL',dm.cds_socioESTCIV.AsInteger,[loCaseInsensitive]);
        fSocios.ComboBox1.Text := dmconsulta.cds_est_civilDESCRICAO.AsString;

        abreTabelas;//Vejo se o Socio est? em car?ncia, abro tabelas dependentes, endere?o etc...

        fSocios.btnIncluir.Enabled := False;

        fSocios.ShowModal;
      finally
        dm.cds_socio.Close;
        fSocios.Free;
      end;
end;

procedure TfSocio_Procura.varform2;
begin
if dm.cds_Obitos.State in [dsBrowse] then
         dm.cds_Obitos.Edit;
       // se for s?cio busco o endere?o..
       if (cds_procDESCRICAO.AsString = 'SOCIO') then
       begin
         // Abro o endere?o do s?cio
         if (dm.cds_end.Active) then
             dm.cds_end.Close;
         dm.cds_end.Params[0].AsInteger := cds_procID_SOCIO.AsInteger;
         dm.cds_end.Open;
         if (not dm.cds_end.IsEmpty) then
         begin
           dm.cds_ObitosENDERECO_FAL.AsString := dm.cds_endENDERECO.AsString;
           dm.cds_ObitosBAIRRO.AsString := dm.cds_endBAIRRO.AsString;
           dm.cds_ObitosCIDADE.AsString := dm.cds_endMUNICIPIO.AsString;
           dm.cds_ObitosUF.AsString := dm.cds_endESTADO.AsString;
           dm.cds_ObitosPROFISSAO.AsString:=cds_procPROFISSAO.AsString;
           dm.cds_ObitosNATURALIDADE.AsString:=cds_procNAT.AsString;
           dm.cds_ObitosCPF_FALECIDO.AsString:=cds_procCPF_CGC.AsString;
           dm.cds_ObitosRG_FALECIDO.AsString:=cds_procRG_IE.AsString;
           // Pego o Estado Civil
           if sds_est_civil.Active then
              sds_est_civil.Close;
           sds_est_civil.Params[0].AsInteger := cds_procESTCIV.AsInteger;
           sds_est_civil.Open;
           dm.cds_ObitosESTADO_CIVIL.AsString:=sds_est_civilDESCRICAO.AsString;
           sds_est_civil.Close;
         end;
       end;
       dm.cds_ObitosID_SOCIO.AsInteger:=cds_procID_SOCIO.AsInteger;
       dm.cds_ObitosID_DEP.AsInteger:=cds_procID_DEP.AsInteger;
       dm.cds_ObitosFALECIDO.AsString:=cds_procNOME_DEP.AsString;
  //     dm.cds_ObitosDATA_NASC.Value:=cds_procDTNASC.Value;
       dm.cds_ObitosGRUPO.AsString:=cds_procGRUPO.AsString;
       dm.cds_ObitosGRUPO_LOTE.AsString:=cds_procGRUPO.AsString;
       grupo := cds_procGRUPO.AsString;
       tip_plano := cds_procPLANO.AsString;
       dm.cds_ObitosINSCRICAO.AsInteger:=cds_procN_INSCRICAO.AsInteger;
       dif_str:=DifDias(cds_procDTACADASTRO.AsDateTime,date);
       dif := StrToInt(dif_str);
       if dif < cds_procCARENCIA.AsInteger then
       begin
          if cds_procDESCRICAO.AsString = 'SOCIO' then
            MessageDlg('S?cio em Car?ncia', mtWarning, [mbOK], 0);
          if cds_procDESCRICAO.AsString <> 'SOCIO' then
            MessageDlg('Dependente em Car?ncia', mtWarning, [mbOK], 0);
       end;
       cds_proc.Close;
       Close;
end;

procedure TfSocio_Procura.varform3;
begin
    // aqui venho do Filtro de Contas a Receber
       Filtro_CR1.edCodCliente.Text := cds_procNOME_DEP.AsString;
end;

procedure TfSocio_Procura.abreTabelas;
var cob :string;
    tot : Double ;
begin
       {------------- aqui vejo se o S?cio est? em car?ncia -----------------}
          fSocios.edit3.Text:=DifDias(dm.cds_socioDTACADASTRO.AsDateTime,date);
          dif := StrToInt(fSocios.Edit3.Text);
          if dif < dm.cds_socioCARENCIA.AsInteger then
             fSocios.Edit4.Text := 'S?cio em Car?ncia'
          else
             fSocios.Edit4.Text := '';

          varPlano := dm.cds_socioPLANO.AsString;
       {---------------------------------------------------------------------}
         // pego o Vendedor
          if DM.cds_vend.Active then
            dm.cds_vend.Close;
          dm.cds_vend.Params[0].AsInteger := dm.cds_socioID_VEN.AsInteger;
          dm.cds_vend.Open;
          fSocios.Edit1.Text := dm.cds_vendVENDEDOR.AsString;
          dm.cds_vend.Close;

         // pego o Cobrador
          if DM.cds_cob.Active then
            dm.cds_cob.Close;
          dm.cds_cob.Params[0].AsInteger := dm.cds_socioID_COB.AsInteger;
          dm.cds_cob.Open;
          fSocios.Edit2.Text := dm.cds_cobNOME.AsString;
          dm.cds_cob.Close;

          //Abro a tabela municipios
          if (not dmconsulta.cds_munic.Active) then
              dmconsulta.cds_munic.Open;
          //Abro a tabela bairros
          if (not dmconsulta.cds_bairro.Active) then
              dmconsulta.cds_bairro.Open;
          //Abro a tabela Parentesco
          if (not dmconsulta.cds_parentesco.Active) then
              dmconsulta.cds_parentesco.Open;
          // pego os endere?os
          if dm.cds_end.Active then
             dm.cds_end.Close;
          dm.cds_end.Params[0].Clear;
          dm.cds_end.Params[0].AsInteger := cds_procID_SOCIO.AsInteger;
          dm.cds_end.Open;

          // pego os dependentes
          if DM.cds_dep.Active then
            dm.cds_dep.Close;
          dm.cds_dep.Params[1].Clear;
          dm.cds_dep.Params[2].Clear;
          dm.cds_dep.Params[0].AsInteger := cds_procID_SOCIO.AsInteger;
          dm.cds_dep.Open;

          //aqui mostro as mensalidade ***************************************

          if dm.cds_CR.Active then
            dm.cds_CR.Close;
          dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
          dm.cds_CR.Params[1].Clear;
          dm.cds_CR.Open;

   cob := Copy(fSocios.Edit2.Text,0,3) ;
   tot := 0;
   //if(cob = 'BOL') then    antes foi testado so com cobrador Boleto
   if(cob <> '') then   // todos cobradores
   begin
     while not dm.cds_CR.Eof do
     begin
       if (dm.cds_CRSTATUS.AsString = 'Pendente') then   // Aqui so Mostro o juros sem Gravar na TABELA
       begin
         dm.cds_cr.Edit;
         fSocios.CalculaJuros;
         juros := dm.cds_crJUROS.AsFloat;
         desc := dm.cds_crDESCONTO.AsFloat;
         resto := dm.cds_CRVALOR_RECEBER.AsFloat;
         ValorRecebido := ( resto + juros );
         tot := tot + ValorRecebido;
         fSocios.Label69.Visible := True;
         fSocios.JvCalcEdit1.Visible := True;
         fSocios.Label70.Visible := True;
         fSocios.JvCalcEdit2.Visible  := True;
         fSocios.Label71.Visible := True;
         fSocios.JvCalcEdit3.Visible  := True;
         dm.cds_cr.Post;
       end;
     dm.cds_cr.Next;
     end;
   end;

   fSocios.JvCalcEdit1.Value := tot;
   fSocios.JvCalcEdit2.Value := tot;
   fSocios.JvCalcEdit3.Value := tot;
          fSocios.rb_mensal3.Checked := true;
          // Mostra totais ******************************************************
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
          if dmconsulta.total.Active then
            dmconsulta.total.Close;
          dmconsulta.total.Params[0].Clear;
          dmconsulta.total.Params[1].Clear;
          dmconsulta.total.Params[2].Clear;
          dmconsulta.total.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
          dmconsulta.total.Params[1].AsString := 'todostitulos';
          dmconsulta.total.Open;
          //********************************************************************
          if (not dm.cds_socioOBS.IsNull) then
          begin
            fObs := TfObs.Create(Application);
            try
              fObs.Memo1.Lines.Clear;
              fObs.Memo1.Lines.Add(dm.cds_socioOBS.Value);
              fObs.ShowModal;
            finally
              fObs.Free;
            end;
          end;
          // Mostro o Hist?rico
          if dm.cds_pront.Active then
            dm.cds_pront.Close;
          dm.cds_pront.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
          dm.cds_pront.Open;
          fSocios.Memo1.Clear;
          fSocios.Memo1.Lines.Add(dm.cds_prontHISTORICO.Value);
          dm.cds_pront.Close;
          // mostro a aba FINANCEIRO de acordo com o Plano
          if (dm.cds_socioPLANO.AsString = '7 FALECIMENTO') then
              fSocios.TabSheet4.TabVisible := True
          else
              fSocios.TabSheet4.TabVisible := False;

          if (dm.cds_socioPLANO.AsString = 'MENSAL') then
              fSocios.TabSheet5.TabVisible := True
          else
              fSocios.TabSheet5.TabVisible := False;

          if (dm.cds_socioPLANO.AsString = 'TRIMESTRAL') then
              fSocios.TabSheet6.TabVisible := True
          else
              fSocios.TabSheet6.TabVisible := False;

end;

procedure TfSocio_Procura.varform4;
begin
     fCarteirinha.Edit2.Text:=IntToStr(cds_procID_SOCIO.AsInteger);
     fCarteirinha.Edit1.Text:=cds_procNOME_DEP.AsString;
end;

procedure TfSocio_Procura.varform5;
begin

     fRel_socios.Edit2.Text:=IntToStr(cds_procID_SOCIO.AsInteger);
     fRel_socios.Edit1.Text:=cds_procNOME_DEP.AsString;

end;

procedure TfSocio_Procura.varform6;
begin
     fContrato.Edit4.Text:=cds_procGRUPO.AsString;
     fContrato.Edit5.Text:=IntToStr(cds_procN_INSCRICAO.AsInteger);
     fContrato.Edit1.Text:=cds_procNOME_SOCIO.AsString;
     fContrato.Edit2.Text:=IntToStr(cds_procID_SOCIO.AsInteger);
     fContrato.Edit7.Text:=cds_procCPF_CGC.AsString;
     fContrato.Edit8.Text:=cds_procRG_IE.AsString;
     fContrato.Edit9.Text:=IntToStr(cds_procFAIXA.AsInteger);     
end;

procedure TfSocio_Procura.varform7;
begin
     fAltera_Grupo.Edit1.Text:=cds_procGRUPO.AsString;
     fAltera_Grupo.Edit2.Text:=IntToStr(cds_procN_INSCRICAO.AsInteger);
     fAltera_Grupo.Edit3.Text:=cds_procNOME_DEP.AsString;
     fAltera_Grupo.Edit4.Text:=IntToStr(cds_procID_SOCIO.AsInteger);
end;

procedure TfSocio_Procura.varform8;
begin
     fGeraTitulos.Edit2.Text:=cds_procGRUPO.AsString;
     fGeraTitulos.Edit4.Text:=IntToStr(cds_procN_INSCRICAO.AsInteger);
     fGeraTitulos.edCodCliente.Text:=cds_procNOME_DEP.AsString;
end;

procedure TfSocio_Procura.varform9;
begin
     fCarneRec.Edit2.Text:=cds_procGRUPO.AsString;
     fCarneRec.Edit4.Text:=IntToStr(cds_procN_INSCRICAO.AsInteger);
     fCarneRec.edCodCliente.Text:=cds_procNOME_DEP.AsString;
     fCarneRec.Edit1.Text:=IntToStr(cds_procN_INSCRICAO.AsInteger);
     fCarneRec.Edit3.Text:=IntToStr(cds_procN_INSCRICAO.AsInteger);
     fCarneRec.BitBtn6.Click;
end;

procedure TfSocio_Procura.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.Field = cds_procDESCRICAO then
   if cds_procDESCRICAO.AsString = 'SOCIO' then
   begin
     jvDBGrid1.Canvas.Font.Color := clBlue;
     jvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_procNOME_DEP then
   if cds_procFALECIDO.AsString = 'S' then
   begin
     jvDBGrid1.Canvas.Font.Color := clRed;
     jvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfSocio_Procura.JvDBGrid1TitleClick(Column: TColumn);
begin
 cds_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfSocio_Procura.FormCreate(Sender: TObject);
begin
    sCtrlResize.CtrlResize(TForm(fSocio_Procura));
end;

procedure TfSocio_Procura.Button1Click(Sender: TObject);
begin
 RadioButton3.Checked := False ;
end;

end.
