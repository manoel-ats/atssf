unit uProc_socio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMenu, DB, EDBFind, StdCtrls, Buttons, Grids, DBGrids, RXCtrls,
  ExtCtrls, DBLocalS, ComCtrls, Provider, SqlExpr, DBClient, DBLocal;

type
  TfProc_socio = class(TForm)
    Panel2: TPanel;
    RxLabel1: TRxLabel;
    DBGrid1: TDBGrid;
    EvDBFind1: TEvDBFind;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancel: TBitBtn;
    DtSrc: TDataSource;
    XPMenu1: TXPMenu;
    ComboBox1: TComboBox;
    RxLabel2: TRxLabel;
    StsBr: TStatusBar;
    BitBtn1: TBitBtn;
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
    Panel3: TPanel;
    RxLabel3: TRxLabel;
    EditProc: TEdit;
    Edit1: TEdit;
    RxLabel4: TRxLabel;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    scdsCp_proc: TSQLClientDataSet;
    scdsCp_procID_DEP: TIntegerField;
    scdsCp_procID_SOCIO: TIntegerField;
    scdsCp_procNOME_DEP: TStringField;
    scdsCp_procFALECIDO: TStringField;
    scdsCp_procCODPAR: TFloatField;
    scdsCp_procDTNASC: TDateField;
    scdsCp_procDTFALEC: TDateField;
    scdsCp_procID_PAR: TIntegerField;
    scdsCp_procCARENCIA: TIntegerField;
    scdsCp_procDTACADASTRO: TDateField;
    scdsCp_procDESCRICAO: TStringField;
    scdsCp_procGRUPO: TStringField;
    scdsCp_procN_INSCRICAO: TIntegerField;
    scdsCp_procSOBRENOME: TStringField;
    BtnProcurar: TBitBtn;
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
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure BtnProcurarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EvDBFind1Enter(Sender: TObject);
  private
    { Private declarations }
  public
  constructor Create (AOWner : TComponent; DataSet : TSQLClientDataset); reintroduce;
    { Public declarations }
  end;

var
  fProc_socio: TfProc_socio;
  varsql : String;

implementation

uses UDM, uCad_Clientes, uPrincipal, uConsulta;

{$R *.dfm}

procedure TfProc_socio.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TSQLClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProc_socio.BitBtn1Click(Sender: TObject);
begin
 with DtSrc.dataset as TSQLClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //opção de flag para usar % ou não
       Params[0].AsString:=EditProc.Text+'%'
    else
       Params[0].AsString:=EditProc.Text;
    Params[1].AsInteger:=dm.cds_consultaID_SOCIO.AsInteger;
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end;
end;

procedure TfProc_socio.FormShow(Sender: TObject);
begin
  if varform = 'SOCIO' then
  begin
    DtSrc.DataSet := fCad_Cliente.proc_dep;
    BtnProcurar.Click;
  end;
  if varform = 'CONSULTA' then
  begin
    DtSrc.DataSet := fConsulta.proc_dep;
    BitBtn1.Click;
  end;
  EvDBFind1.SetFocus;
end;

procedure TfProc_socio.ComboBox1Click(Sender: TObject);
begin
  if ComboBox1.Text = 'Nome' then
    EvDBFind1.DataField := 'NOME_DEP';

  if ComboBox1.Text = 'Sobrenome' then
    EvDBFind1.DataField := 'SOBRENOME';

  if ComboBox1.Text = 'Grupo' then
    EvDBFind1.DataField := 'GRUPO';

  if ComboBox1.Text = 'Inscrição' then
    EvDBFind1.DataField := 'N_INSCRICAO';

  if ComboBox1.Text = 'Parentesco' then
    EvDBFind1.DataField := 'DESCRICAO';

end;

constructor TfProc_socio.Create(AOWner: TComponent;
  DataSet: TSQLClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
end;

procedure TfProc_socio.BtnProcurarClick(Sender: TObject);
begin
 with DtSrc.dataset as TSQLClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //opção de flag para usar % ou não
      Params[0].AsString:=EditProc.Text+'%'
    else
       Params[0].AsString:=EditProc.Text+'%';
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end;

end;

procedure TfProc_socio.BitBtn2Click(Sender: TObject);
Var
 SqlTexto : String;
begin
  proc_dep.Close;
  if scdsCp_proc.Active then
     scdsCp_proc.Close;
   scdsCp_proc.CommandText:='select d.*, p.DESCRICAO, s.GRUPO, s.N_INSCRICAO ' +
                            ', s.SOBRENOME from DEPENDENTE d ' +
                            'left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR '+
                            'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO ';
  //==============================================================================
  //Grupo
  //------------------------------------------------------------------------------
  if Edit2.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where s.GRUPO = '
    else
      sqlTexto := sqlTexto + ' and s.GRUPO = ';
      sqlTexto := sqlTexto + '''' + Edit2.Text + '''';
  end;

  //==============================================================================
  //Inscrição
  //------------------------------------------------------------------------------
  if Edit1.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where s.N_INSCRICAO = '
    else
      sqlTexto := sqlTexto + ' and s.N_INSCRICAO = ';
      sqlTexto := sqlTexto +  Edit1.Text ;
  end;
    scdsCp_proc.CommandText := scdsCp_proc.CommandText + sqlTexto;
    DtSrc.DataSet := scdsCp_proc;
    varsql := 'scdsCp_proc';
    scdsCp_proc.Open;

end;

procedure TfProc_socio.EvDBFind1Enter(Sender: TObject);
begin
  if scdsCp_proc.Active then
     scdsCp_proc.Close;
  if varform = 'SOCIO' then
  begin
    DtSrc.DataSet := fCad_Cliente.proc_dep;
    BtnProcurar.Click;
  end;
  if varform = 'CONSULTA' then
  begin
    DtSrc.DataSet := fConsulta.proc_dep;
    BitBtn1.Click;
  end;
   varsql := '';

end;

end.
