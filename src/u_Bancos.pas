unit u_Bancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, FMTBcd, DB, DBClient, Provider, SqlExpr, DBCtrls, Grids,
  DBGrids, JvExMask, JvSpin, JvDBSpinEdit, StdCtrls, Mask, Menus, dxCore,
  dxButton, ExtCtrls, uPrincipal;

type
  Tf_Bancos = class(TfPai)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    dbedtINSTRUCAO4: TDBEdit;
    dbedtINSTRUCAO3: TDBEdit;
    dbedtINSTRUCAO2: TDBEdit;
    lbl30: TLabel;
    dbedtINSTRUCAO1: TDBEdit;
    lbl24: TLabel;
    dbedtPASTA_RETORNO: TDBEdit;
    lbl26: TLabel;
    dbedtPASTA_RETORNO1: TDBEdit;
    lbl25: TLabel;
    dbedtPASTA_REMESSA: TDBEdit;
    lbl29: TLabel;
    dbcbbPROTESTO: TDBComboBox;
    lbl28: TLabel;
    lbl27: TLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    dbedtCODIGO_CEDENTE: TDBEdit;
    lbl19: TLabel;
    dbedtCODIGO_CEDENTE1: TDBEdit;
    lbl20: TLabel;
    dbedtCODIGO_AGENCIA: TDBEdit;
    lbl21: TLabel;
    dbcbbLAYOUT_BL: TDBComboBox;
    lbl8: TLabel;
    dbcbbLAYOUT_RM: TDBComboBox;
    lbl14: TLabel;
    dbcbbRESP_EMISSAO: TDBComboBox;
    lbl9: TLabel;
    dbcbbIMP_COMPROVANTE: TDBComboBox;
    lbl12: TLabel;
    dbcbbRESP_EMISSAO2: TDBComboBox;
    lbl13: TLabel;
    dbedtCODIGOBOLETO: TDBEdit;
    lbl22: TLabel;
    lbl11: TLabel;
    dbedtCODIGO_CEDENTE2: TDBEdit;
    dbedtDIGITO_CONTA: TDBEdit;
    lbl18: TLabel;
    dbedtNUMERO_CONTA: TDBEdit;
    lbl17: TLabel;
    dbedtDIGITO_AGENCIA: TDBEdit;
    lbl16: TLabel;
    dbedtCODIGO_AGENCIA1: TDBEdit;
    lbl15: TLabel;
    dbedtCARTEIRA: TDBEdit;
    lbl23: TLabel;
    dbedtCARTEIRA1: TDBEdit;
    lbl10: TLabel;
    dbedtCODBANCO: TDBEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtN_BANCO: TDBEdit;
    dbedtDIGITOBANCO: TDBEdit;
    lbl7: TLabel;
    lbl3: TLabel;
    dbedtBANCO: TDBEdit;
    dbgrd1: TDBGrid;
    dbnvgr1: TDBNavigator;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    dsBanco: TClientDataSet;
    SQLDataSet1ID_BANCO: TIntegerField;
    SQLDataSet1CONTA: TStringField;
    SQLDataSet1BANCO: TStringField;
    SQLDataSet1CIDADE: TStringField;
    SQLDataSet1SALDO: TFloatField;
    SQLDataSet1AGENCIA: TStringField;
    SQLDataSet1DIGAGEN: TStringField;
    SQLDataSet1COD_CED: TStringField;
    SQLDataSet1ID_TITULO: TIntegerField;
    SQLDataSet1N_DOC: TIntegerField;
    SQLDataSet1JUROS: TFloatField;
    SQLDataSet1VENCIMENTO: TStringField;
    SQLDataSet1VENCIMENTO1: TStringField;
    SQLDataSet1VENCIMENTO2: TStringField;
    SQLDataSet1LOCAL_PGTO: TStringField;
    SQLDataSet1VENCIMENTO3: TStringField;
    SQLDataSet1CARTEIRA: TStringField;
    SQLDataSet1CADBANCO: TStringField;
    SQLDataSet1DESCBANCO: TStringField;
    SQLDataSet1CONTACORRRENTE: TStringField;
    SQLDataSet1DIGITOCONTACORRENTE: TStringField;
    SQLDataSet1INICIONOSSONUMERO: TStringField;
    SQLDataSet1FIMNOSSONUMERO: TStringField;
    SQLDataSet1PROXIMONOSSONUMERO: TStringField;
    SQLDataSet1VARIACAO: TStringField;
    SQLDataSet1NUMEROCONVENIO: TStringField;
    SQLDataSet1TIPOIMPRESSAOCARNE: TIntegerField;
    SQLDataSet1TIPOCARNE: TStringField;
    SQLDataSet1DEMONSTRATIVO: TStringField;
    SQLDataSet1INSTRUCOESCAIXA: TStringField;
    SQLDataSet1INSTRUCAO1: TStringField;
    SQLDataSet1INSTRUCAO2: TStringField;
    SQLDataSet1ACEITEDOCUMENTO: TStringField;
    SQLDataSet1ESPECIEDOCUMENTO: TStringField;
    SQLDataSet1INSTRUCAO3: TStringField;
    SQLDataSet1ESPECIEDOC: TStringField;
    SQLDataSet1ACEITE: TStringField;
    SQLDataSet1CONVENIO: TStringField;
    SQLDataSet1LOCALPGTO: TStringField;
    SQLDataSet1N_BANCO: TStringField;
    SQLDataSet1DIGITOBANCO: TIntegerField;
    SQLDataSet1LAYOUT_BL: TStringField;
    SQLDataSet1LAYOUT_RM: TStringField;
    SQLDataSet1RESP_EMISSAO: TStringField;
    SQLDataSet1IMP_COMPROVANTE: TStringField;
    SQLDataSet1PASTA_REMESSA: TStringField;
    SQLDataSet1PASTA_RETORNO: TStringField;
    SQLDataSet1NOME_ARQUIVO: TStringField;
    SQLDataSet1C_BANCO: TIntegerField;
    SQLDataSet1MORAJUROS: TStringField;
    SQLDataSet1PERCMULTA: TFloatField;
    SQLDataSet1CODIGOBOLETO: TStringField;
    SQLDataSet1PROTESTO: TStringField;
    dsBancoID_BANCO: TIntegerField;
    dsBancoCONTA: TStringField;
    dsBancoBANCO: TStringField;
    dsBancoCIDADE: TStringField;
    dsBancoSALDO: TFloatField;
    dsBancoAGENCIA: TStringField;
    dsBancoDIGAGEN: TStringField;
    dsBancoCOD_CED: TStringField;
    dsBancoID_TITULO: TIntegerField;
    dsBancoN_DOC: TIntegerField;
    dsBancoJUROS: TFloatField;
    dsBancoVENCIMENTO: TStringField;
    dsBancoVENCIMENTO1: TStringField;
    dsBancoVENCIMENTO2: TStringField;
    dsBancoLOCAL_PGTO: TStringField;
    dsBancoVENCIMENTO3: TStringField;
    dsBancoCARTEIRA: TStringField;
    dsBancoCADBANCO: TStringField;
    dsBancoDESCBANCO: TStringField;
    dsBancoCONTACORRRENTE: TStringField;
    dsBancoDIGITOCONTACORRENTE: TStringField;
    dsBancoINICIONOSSONUMERO: TStringField;
    dsBancoFIMNOSSONUMERO: TStringField;
    dsBancoPROXIMONOSSONUMERO: TStringField;
    dsBancoVARIACAO: TStringField;
    dsBancoNUMEROCONVENIO: TStringField;
    dsBancoTIPOIMPRESSAOCARNE: TIntegerField;
    dsBancoTIPOCARNE: TStringField;
    dsBancoDEMONSTRATIVO: TStringField;
    dsBancoINSTRUCOESCAIXA: TStringField;
    dsBancoINSTRUCAO1: TStringField;
    dsBancoINSTRUCAO2: TStringField;
    dsBancoACEITEDOCUMENTO: TStringField;
    dsBancoESPECIEDOCUMENTO: TStringField;
    dsBancoINSTRUCAO3: TStringField;
    dsBancoESPECIEDOC: TStringField;
    dsBancoACEITE: TStringField;
    dsBancoCONVENIO: TStringField;
    dsBancoLOCALPGTO: TStringField;
    dsBancoN_BANCO: TStringField;
    dsBancoDIGITOBANCO: TIntegerField;
    dsBancoLAYOUT_BL: TStringField;
    dsBancoLAYOUT_RM: TStringField;
    dsBancoRESP_EMISSAO: TStringField;
    dsBancoIMP_COMPROVANTE: TStringField;
    dsBancoPASTA_REMESSA: TStringField;
    dsBancoPASTA_RETORNO: TStringField;
    dsBancoNOME_ARQUIVO: TStringField;
    dsBancoC_BANCO: TIntegerField;
    dsBancoMORAJUROS: TStringField;
    dsBancoPERCMULTA: TFloatField;
    dsBancoCODIGOBOLETO: TStringField;
    dsBancoPROTESTO: TStringField;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Bancos: Tf_Bancos;

implementation

uses UDM;

{$R *.dfm}

procedure Tf_Bancos.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
  IF (DtSrc.DataSet.State in [dsInsert]) THEN
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_BANCO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dsBancoID_BANCO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure Tf_Bancos.FormShow(Sender: TObject);
begin
  inherited;
  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';

  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'banco';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
     Incluir  := 'S';
     Cancelar := 'S';
     btnIncluir.Enabled := true;
     btnCancelar.Enabled := true;
  end
  else
  begin
     Incluir  := 'N';
     Cancelar := 'N';
     btnIncluir.Enabled := false;
     btnCancelar.Enabled := false;
  end;

  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
  begin
     Excluir := 'S';
     btnExcluir.Enabled := true;
  end
  else
  begin
     Excluir := 'N';
     btnExcluir.Enabled := false;
  end;

  if dm.cdsPermissaoALTERAR.AsString = 'S' then
  begin
     Alterar := 'S';
     btnGravar.Enabled := true;
  end
  else
  begin
     Alterar := 'N';
     btnGravar.Enabled := false;
  end;

  if dm.cdsPermissaoCONSULTAR.AsString = 'S' then
  begin
     Procurar := 'S';
  end
  else
  begin
     Procurar := 'N';
  end;
end;

procedure Tf_Bancos.FormDestroy(Sender: TObject);
begin
  inherited;
  if (dsBanco.Active) then
    dsBanco.Close;
end;

procedure Tf_Bancos.FormCreate(Sender: TObject);
begin
  inherited;
  if (not dsBanco.Active) then
    dsBanco.Open;
end;

end.
