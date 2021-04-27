unit uFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, SqlExpr, Provider, DB, DBClient, StdCtrls, Menus,
  dxCore, dxButton, ExtCtrls, DBCtrls, Mask, FacDbEdit, DBLocal, DBLocalS,
  EDBNav, ComCtrls;

type
  TfFornecedor = class(TfPai)
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    cds_for: TClientDataSet;
    dsp_for: TDataSetProvider;
    sds_for: TSQLDataSet;
    cds_forID_FORNECEDOR: TIntegerField;
    cds_forNOME_FERNECEDOR: TStringField;
    cds_forRAZAO_SOCIAL: TStringField;
    cds_forTIPO: TStringField;
    cds_forCPF_CGC: TStringField;
    cds_forRG_INC_ESTADUAL: TStringField;
    cds_forTELEFONE: TStringField;
    cds_forFAX: TStringField;
    cds_forCELUALR: TStringField;
    cds_forEMAIL: TStringField;
    cds_forRAMAL: TStringField;
    cds_forRAMAL1: TStringField;
    sds_forID_FORNECEDOR: TIntegerField;
    sds_forNOME_FERNECEDOR: TStringField;
    sds_forRAZAO_SOCIAL: TStringField;
    sds_forTIPO: TStringField;
    sds_forCPF_CGC: TStringField;
    sds_forRG_INC_ESTADUAL: TStringField;
    sds_forTELEFONE: TStringField;
    sds_forFAX: TStringField;
    sds_forCELUALR: TStringField;
    sds_forEMAIL: TStringField;
    sds_forRAMAL: TStringField;
    sds_forRAMAL1: TStringField;
    btnProcurar: TdxButton;
    proc_fornecedor: TSQLClientDataSet;
    proc_fornecedorID_FORNECEDOR: TIntegerField;
    proc_fornecedorNOME_FERNECEDOR: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    FacDBEdit2: TFacDBEdit;
    FacDBEdit3: TFacDBEdit;
    RadioGroup1: TDBRadioGroup;
    FacDBEdit4: TFacDBEdit;
    FacDBEdit5: TFacDBEdit;
    FacDBEdit9: TFacDBEdit;
    FacDBEdit6: TFacDBEdit;
    FacDBEdit7: TFacDBEdit;
    FacDBEdit8: TFacDBEdit;
    FacDBEdit1: TFacDBEdit;
    FacDBEdit10: TFacDBEdit;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label17: TLabel;
    DBComboBox3: TDBComboBox;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    EvDBNavigator1: TEvDBNavigator;
    DtSrc_bairro: TDataSource;
    DtSrc_munic: TDataSource;
    cds_munic: TClientDataSet;
    cds_municID_MUNICIPIO: TIntegerField;
    cds_municMUNICIPIO: TStringField;
    cds_bairro: TClientDataSet;
    cds_bairroID_BAIRRO: TIntegerField;
    cds_bairroBAIRRO: TStringField;
    dsp_bairro: TDataSetProvider;
    dsp_munic: TDataSetProvider;
    sds_munic: TSQLDataSet;
    sds_municID_MUNICIPIO: TIntegerField;
    sds_municMUNICIPIO: TStringField;
    sds_bairro: TSQLDataSet;
    sds_bairroID_BAIRRO: TIntegerField;
    sds_bairroBAIRRO: TStringField;
    sds_end: TSQLDataSet;
    dsp_end: TDataSetProvider;
    cds_end: TClientDataSet;
    DtSrc_end: TDataSource;
    cds_endID_FORNECEDOR: TIntegerField;
    cds_endID_ENDFOR: TIntegerField;
    cds_endENDERECO: TStringField;
    cds_endNUMERO: TStringField;
    cds_endCOMPLEMENTO: TStringField;
    cds_endBAIRRO: TStringField;
    cds_endCIDADE: TStringField;
    cds_endUF: TStringField;
    cds_endCEP: TStringField;
    cds_endTIPO: TStringField;
    cds_endID_BAIRRO: TIntegerField;
    cds_endID_MUNICIPIO: TIntegerField;
    sds_endID_FORNECEDOR: TIntegerField;
    sds_endID_ENDFOR: TIntegerField;
    sds_endENDERECO: TStringField;
    sds_endNUMERO: TStringField;
    sds_endCOMPLEMENTO: TStringField;
    sds_endBAIRRO: TStringField;
    sds_endCIDADE: TStringField;
    sds_endUF: TStringField;
    sds_endCEP: TStringField;
    sds_endTIPO: TStringField;
    sds_endID_BAIRRO: TIntegerField;
    sds_endID_MUNICIPIO: TIntegerField;
    Panel4: TPanel;
    btCancelar_E: TdxButton;
    btGravar_E: TdxButton;
    btExcluir_E: TdxButton;
    btIncluir_E: TdxButton;
    dxButton11: TdxButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FacDBEdit2Exit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btIncluir_EClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btGravar_EClick(Sender: TObject);
    procedure btExcluir_EClick(Sender: TObject);
    procedure btCancelar_EClick(Sender: TObject);
    procedure dxButton11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrc_endStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFornecedor: TfFornecedor;

implementation

uses UDM, uProcurar, uPrincipal;

{$R *.dfm}

procedure TfFornecedor.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
   cds_forCPF_CGC.EditMask := '000.000.000-00;1;_';
   FacDBEdit4.SetFocus;
  end
  else
  begin
   cds_forCPF_CGC.EditMask := '00.000.000/0000-00;1;_';
   FacDBEdit4.SetFocus;
  end;
end;

procedure TfFornecedor.FacDBEdit2Exit(Sender: TObject);
begin
  inherited;
  if cds_for.State in [dsInsert, dsEdit] then
  cds_forRAZAO_SOCIAL.AsString := cds_forNOME_FERNECEDOR.AsString;
end;

procedure TfFornecedor.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if cds_end.Active then
    cds_end.Close;
  cds_forTIPO.AsString := 'Físico';
  cds_forCPF_CGC.EditMask := '000.000.000-00;1;_';
   FacDBEdit2.SetFocus;
end;

procedure TfFornecedor.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_fornecedor);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_FERNECEDOR';
   if fProcurar.ShowModal=mrOk then
   begin
    cds_for.Close;
    cds_for.Params[0].Clear;
    cds_for.Params[0].AsInteger:=proc_fornecedorID_FORNECEDOR.AsInteger;
    cds_for.Open;

    cds_end.Close;
    cds_end.Params[0].AsInteger:=proc_fornecedorID_FORNECEDOR.AsInteger;
    cds_end.Open;

   end;
   finally
    proc_fornecedor.Close;
    fProcurar.Free;
   end;
end;

procedure TfFornecedor.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePage = TabSheet1 then
  begin
      Panel4.Visible := false;
      Panel1.Visible := true;
  end;

  if PageControl1.ActivePage = TabSheet2 then
  begin
      Panel1.Visible := false;
      Panel4.Visible := true;
  end;

end;

procedure TfFornecedor.btIncluir_EClick(Sender: TObject);
begin
//  inherited;
   if DtSrc.State in [dsInsert, dsEdit, dsBrowse] then
   begin
    if not DtSrc_end.DataSet.Active then
       DtSrc_end.DataSet.open;
    DtSrc_end.DataSet.Append;
    cds_endID_FORNECEDOR.AsInteger := cds_forID_FORNECEDOR.AsInteger;
    cds_endTIPO.AsString := '0';
    DBEdit10.SetFocus;
   end
   else
   begin
    MessageDlg('Primeiro adicione o Fornecedor pra depois adicionar o Endereço', mtError, [mbOK], 0);
    PageControl1.ActivePage := TabSheet1;
    Panel4.Visible := false;
    Panel1.Visible := true;
    exit;
   end;

end;

procedure TfFornecedor.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_forID_FORNECEDOR.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfFornecedor.btGravar_EClick(Sender: TObject);
begin
// gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_FOR, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_endID_ENDFOR.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    DtSrc_end.DataSet.Post;
   (DtSrc_end.DataSet as TClientDataset).ApplyUpdates(0);
    cds_end.Close;
    cds_end.Params[0].AsInteger:=cds_forID_FORNECEDOR.AsInteger;
    cds_end.Open;
end;

procedure TfFornecedor.btExcluir_EClick(Sender: TObject);
begin
//  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_end.DataSet.Delete;
     (DtSrc_end.DataSet as TClientDataSet).ApplyUpdates(0);
  end;

end;

procedure TfFornecedor.btCancelar_EClick(Sender: TObject);
begin
//  inherited;
  DtSrc_end.DataSet.Cancel;
end;

procedure TfFornecedor.dxButton11Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfFornecedor.FormShow(Sender: TObject);
begin
  inherited;

  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';


  if not cds_bairro.Active then
     cds_bairro.Open;

  if not cds_munic.Active then
     cds_munic.Open;

  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Fornecedor';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
    Incluir  := 'S';
    IncluirE := 'S';
    Cancelar  := 'S';
    CancelarE := 'S';
    btnIncluir.Enabled   := true;
    btIncluir_E.Enabled  := true;
    btnCancelar.Enabled  := true;
    btCancelar_E.Enabled := true;
  end
  else
  begin
    Incluir  := 'N';
    IncluirE := 'N';
    Cancelar  := 'N';
    CancelarE := 'N';
    btnIncluir.Enabled := false;
    btIncluir_E.Enabled := false;
    btnCancelar.Enabled  := false;
    btCancelar_E.Enabled := false;
  end;

  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
  begin
     Excluir  := 'S';
     ExcluirD := 'S';
     ExcluirE := 'S';
     btnExcluir.Enabled  := true;
     btExcluir_E.Enabled := true;
  end
  else
  begin
     Excluir  := 'N';
     ExcluirD := 'N';
     ExcluirE := 'N';
     btnExcluir.Enabled  := false;
     btExcluir_E.Enabled := false;
  end;

  if dm.cdsPermissaoALTERAR.AsString = 'S' then
  begin
     Alterar  := 'S';
     AlterarD := 'S';
     AlterarE := 'S';
     btnGravar.Enabled  := true;
     btGravar_E.Enabled := true;
  end
  else
  begin
     Alterar  := 'N';
     AlterarD := 'N';
     AlterarE := 'N';
     btnGravar.Enabled  := false;
     btGravar_E.Enabled := false;
  end;

  if dm.cdsPermissaoCONSULTAR.AsString = 'S' then
  begin
     Procurar  := 'S';
     ProcurarD := 'S';
     ProcurarE := 'S';
     btnProcurar.Enabled  := true;
  end
  else
  begin
     Procurar  := 'N';
     ProcurarD := 'N';
     ProcurarE := 'N';
     btnProcurar.Enabled  := false;
  end;

end;

procedure TfFornecedor.DtSrc_endStateChange(Sender: TObject);
begin
  inherited;
 if IncluirE = 'S' then
  btIncluir_E.Enabled:=DtSrc_end.State in [dsBrowse,dsInactive]
 else
  btIncluir_E.Enabled:=false;

 if AlterarE = 'S' then
  btGravar_E.Enabled:=DtSrc_end.State in [dsInsert,dsEdit]
 else
  btGravar_E.Enabled:=false;

 if CancelarE = 'S' then
  btCancelar_E.Enabled:=DtSrc_end.State in [dsInsert,dsEdit]
 else
  btCancelar_E.Enabled:=false;

 if ExcluirE = 'S' then
  btExcluir_E.Enabled:=DtSrc_end.State in [dsBrowse]
 else
  btExcluir_E.Enabled:=false;

  if DtSrc_end.State in [dsInsert, dsEdit] then
  begin
    btIncluir_E.Top := -100;
    btExcluir_E.Top := -100;
    btGravar_E.Top := 7;
    btCancelar_E.Top := 7;
  end;

  if DtSrc_end.State in [dsBrowse,dsInactive] then
  begin
    btIncluir_E.Top := 7;
    btExcluir_E.Top := 7;
    btGravar_E.Top := -100;
    btCancelar_E.Top := -100;
  end;

end;

end.
