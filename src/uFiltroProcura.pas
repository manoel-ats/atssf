unit uFiltroProcura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, DB, DBClient, DBLocal, DBLocalS, RXCtrls,
  StdCtrls, EDBFind, XPMenu, Grids, DBGrids, ExtCtrls, dxCore, dxButton,
  ComCtrls, FMTBcd;

type
  TfFiltroProcura = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    XPMenu1: TXPMenu;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    DtSrc: TDataSource;
    dxButton1: TdxButton;
    StsBr: TStatusBar;
    sds_mensal: TSQLDataSet;
    dsp_mensal: TDataSetProvider;
    cds_mensal: TClientDataSet;
    cds_mensalID_DEP: TIntegerField;
    cds_mensalID_SOCIO: TIntegerField;
    cds_mensalNOME_DEP: TStringField;
    cds_mensalFALECIDO: TStringField;
    cds_mensalCODPAR: TFloatField;
    cds_mensalDTNASC: TDateField;
    cds_mensalDTFALEC: TDateField;
    cds_mensalID_PAR: TIntegerField;
    cds_mensalCARENCIA: TIntegerField;
    cds_mensalDTACADASTRO: TDateField;
    cds_mensalDESCRICAO: TStringField;
    cds_mensalGRUPO: TStringField;
    cds_mensalN_INSCRICAO: TIntegerField;
    cds_mensalSOBRENOME: TStringField;
    cds_mensalTIPO_SOCIO: TStringField;
    cds_mensalBAIRRO: TStringField;
    cds_mensalMUNICIPIO: TStringField;
    cds_mensalNOME: TStringField;
    sds_mensalID_DEP: TIntegerField;
    sds_mensalID_SOCIO: TIntegerField;
    sds_mensalNOME_DEP: TStringField;
    sds_mensalFALECIDO: TStringField;
    sds_mensalCODPAR: TFloatField;
    sds_mensalDTNASC: TDateField;
    sds_mensalDTFALEC: TDateField;
    sds_mensalID_PAR: TIntegerField;
    sds_mensalCARENCIA: TIntegerField;
    sds_mensalDTACADASTRO: TDateField;
    sds_mensalDESCRICAO: TStringField;
    sds_mensalGRUPO: TStringField;
    sds_mensalN_INSCRICAO: TIntegerField;
    sds_mensalSOBRENOME: TStringField;
    sds_mensalTIPO_SOCIO: TStringField;
    sds_mensalBAIRRO: TStringField;
    sds_mensalMUNICIPIO: TStringField;
    sds_mensalNOME: TStringField;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Panel1: TPanel;
    dxButton3: TdxButton;
    dxButton2: TdxButton;
    sds_mensalCODIGO: TIntegerField;
    cds_mensalCODIGO: TIntegerField;
    dxButton4: TdxButton;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure dxButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltroProcura: TfFiltroProcura;

implementation

uses UDM;

{$R *.dfm}

procedure TfFiltroProcura.dxButton1Click(Sender: TObject);
Var
 SqlTexto : String;
begin
   if sds_mensal.Active then
     sds_mensal.Close;
   sds_mensal.CommandText := '';
   sds_mensal.CommandText:='select d.*, p.DESCRICAO, s.GRUPO, s.N_INSCRICAO ' +
     ', s.SOBRENOME, s.TIPO_SOCIO, s.CODIGO, b.BAIRRO, m.MUNICIPIO, c.NOME ' +
     'from DEPENDENTE d left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
     'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO ' +
     'left outer join ENDERECO e on e.ID_SOCIO=s.ID_SOCIO ' +
     'left outer join BAIRRO b on b.ID_BAIRRO=e.ID_BAIRRO ' +
     'left outer join MUNICIPIO m on m.ID_MUNICIPIO=e.ID_MUNICIPIO ' +
     'left outer join COBRANCA c on c.ID_COB=s.ID_COB ' +
     'where s.TIPO_SOCIO = ''M'''+ 
     ' and ((e.TIPOEND = 0) or (e.TIPOEND is null))';
  //==============================================================================
  //------------------------------------------------------------------------------
  //Nome
  //------------------------------------------------------------------------------
  if CheckBox1.Checked = true then
  if Edit3.Text <> '' then
  begin
      sqlTexto := sqlTexto + ' and d.NOME_DEP Like ';
      sqlTexto := sqlTexto + '''' + Edit3.Text + '%''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Sobrenome
  //------------------------------------------------------------------------------
  if CheckBox2.Checked = true then
  if Edit3.Text <> '' then
  begin
      sqlTexto := sqlTexto + ' and s.SOBRENOME Like ';
      sqlTexto := sqlTexto + '''' + Edit3.Text + '%''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Bairro
  //------------------------------------------------------------------------------
  if CheckBox3.Checked = true then
  if Edit4.Text <> '' then
  begin
      sqlTexto := sqlTexto + ' and b.BAIRRO Like ';
      sqlTexto := sqlTexto + '''' + Edit4.Text + '%''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Município
  //------------------------------------------------------------------------------
  if CheckBox4.Checked = true then
  if Edit4.Text <> '' then
  begin
      sqlTexto := sqlTexto + ' and m.MUNICIPIO Like ';
      sqlTexto := sqlTexto + '''' + Edit4.Text + '%''';
  end;
  sds_mensal.CommandText := sds_mensal.CommandText + sqlTexto;

  if cds_mensal.Active then
    cds_mensal.Close;
  cds_mensal.Open;

end;

procedure TfFiltroProcura.CheckBox1Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then
     CheckBox2.Checked := False;
  cds_mensal.IndexFieldNames := 'NOME_DEP';
end;

procedure TfFiltroProcura.CheckBox2Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
     CheckBox1.Checked := False;
  cds_mensal.IndexFieldNames := 'SOBRENOME';
end;

procedure TfFiltroProcura.RadioButton2Click(Sender: TObject);
var
   socio : String;
begin
    socio := 'DESCRICAO = ''SOCIO''';
    if RadioButton2.Checked then
    begin
       cds_mensal.Filter := socio;
       cds_mensal.Filtered := True;
    end;

    if RadioButton1.Checked = True then
      RadioButton1.Checked := False;
end;

procedure TfFiltroProcura.RadioButton1Click(Sender: TObject);
var
   dep : String;
begin
    dep := 'DESCRICAO <> ''SOCIO''';
    if RadioButton1.Checked then
    begin
       cds_mensal.Filter := dep;
       cds_mensal.Filtered := True;
    end;
    if RadioButton2.Checked = True then
      RadioButton2.Checked := False;
end;

procedure TfFiltroProcura.CheckBox3Click(Sender: TObject);
begin
  if CheckBox4.Checked = True then
     CheckBox4.Checked := False;
  cds_mensal.IndexFieldNames := 'BAIRRO';
end;

procedure TfFiltroProcura.CheckBox4Click(Sender: TObject);
begin
  if CheckBox3.Checked = True then
     CheckBox3.Checked := False;
  cds_mensal.IndexFieldNames := 'MUNICIPIO';
end;

procedure TfFiltroProcura.FormShow(Sender: TObject);
begin
  RadioButton2.Checked := True;
end;

procedure TfFiltroProcura.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(DtSrc.dataset.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfFiltroProcura.DBGrid1TitleClick(Column: TColumn);
begin
  cds_mensal.IndexFieldNames := Column.FieldName;
end;

end.
