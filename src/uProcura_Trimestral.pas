unit uProcura_Trimestral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, XPMenu, DB, DBClient, Provider, SqlExpr,
  Grids, DBGrids, dxCore, dxButton, ExtCtrls, ComCtrls;

type
  TfProcura_Trimestral = class(TForm)
    StsBr: TStatusBar;
    Panel1: TPanel;
    dxButton3: TdxButton;
    dxButton2: TdxButton;
    dxButton4: TdxButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    sds_mensal: TSQLDataSet;
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
    DtSrc: TDataSource;
    XPMenu1: TXPMenu;
    Panel4: TPanel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    sds_mensalCODIGO_T: TIntegerField;
    cds_mensalCODIGO_T: TIntegerField;
    procedure dxButton4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcura_Trimestral: TfProcura_Trimestral;

implementation

{$R *.dfm}

procedure TfProcura_Trimestral.dxButton4Click(Sender: TObject);
Var
 SqlTexto : String;
begin
   if sds_mensal.Active then
     sds_mensal.Close;
   sds_mensal.CommandText := '';
   sds_mensal.CommandText:='select d.*, p.DESCRICAO, s.GRUPO, s.N_INSCRICAO ' +
     ', s.SOBRENOME, s.TIPO_SOCIO, s.CODIGO_T, b.BAIRRO, m.MUNICIPIO, c.NOME ' +
     'from DEPENDENTE d left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
     'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO ' +
     'left outer join ENDERECO e on e.ID_SOCIO=s.ID_SOCIO ' +
     'left outer join BAIRRO b on b.ID_BAIRRO=e.ID_BAIRRO ' +
     'left outer join MUNICIPIO m on m.ID_MUNICIPIO=e.ID_MUNICIPIO ' +
     'left outer join COBRANCA c on c.ID_COB=s.ID_COB ' +
     'where s.TIPO_SOCIO = ''T'''+
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

procedure TfProcura_Trimestral.CheckBox1Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then
     CheckBox2.Checked := False;
  cds_mensal.IndexFieldNames := 'NOME_DEP';
end;

procedure TfProcura_Trimestral.CheckBox2Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
     CheckBox1.Checked := False;
  cds_mensal.IndexFieldNames := 'SOBRENOME';
end;

procedure TfProcura_Trimestral.CheckBox3Click(Sender: TObject);
begin
  if CheckBox4.Checked = True then
     CheckBox4.Checked := False;
  cds_mensal.IndexFieldNames := 'BAIRRO';
end;

procedure TfProcura_Trimestral.CheckBox4Click(Sender: TObject);
begin
  if CheckBox3.Checked = True then
     CheckBox3.Checked := False;
  cds_mensal.IndexFieldNames := 'MUNICIPIO';
end;

procedure TfProcura_Trimestral.RadioButton2Click(Sender: TObject);
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

procedure TfProcura_Trimestral.RadioButton1Click(Sender: TObject);
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

end.
