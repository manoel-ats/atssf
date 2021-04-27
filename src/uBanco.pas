unit uBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, DB, Menus, dxCore, dxButton, ExtCtrls, FMTBcd, DBClient,
  Provider, SqlExpr, XPMenu, StdCtrls, Mask, DBCtrls, EDBFind;

type
  TfBanco = class(TfPai)
    sds_banco: TSQLDataSet;
    dsp_banco: TDataSetProvider;
    cds_banco: TClientDataSet;
    cds_bancoID_BANCO: TIntegerField;
    cds_bancoCONTA: TStringField;
    cds_bancoBANCO: TStringField;
    cds_bancoCIDADE: TStringField;
    cds_bancoSALDO: TFloatField;
    cds_bancoAGENCIA: TStringField;
    cds_bancoDIGAGEN: TStringField;
    cds_bancoCOD_CED: TStringField;
    cds_bancoID_TITULO: TIntegerField;
    cds_bancoN_DOC: TIntegerField;
    cds_bancoJUROS: TFloatField;
    cds_bancoVENCIMENTO: TStringField;
    cds_bancoVENCIMENTO1: TStringField;
    cds_bancoVENCIMENTO2: TStringField;
    cds_bancoLOCAL_PGTO: TStringField;
    sds_bancoID_BANCO: TIntegerField;
    sds_bancoCONTA: TStringField;
    sds_bancoBANCO: TStringField;
    sds_bancoCIDADE: TStringField;
    sds_bancoSALDO: TFloatField;
    sds_bancoAGENCIA: TStringField;
    sds_bancoDIGAGEN: TStringField;
    sds_bancoCOD_CED: TStringField;
    sds_bancoID_TITULO: TIntegerField;
    sds_bancoN_DOC: TIntegerField;
    sds_bancoJUROS: TFloatField;
    sds_bancoVENCIMENTO: TStringField;
    sds_bancoVENCIMENTO1: TStringField;
    sds_bancoVENCIMENTO2: TStringField;
    sds_bancoLOCAL_PGTO: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    XPMenu1: TXPMenu;
    Label16: TLabel;
    EvDBFind1: TEvDBFind;
    DBEdit16: TDBEdit;
    sds_bancoVENCIMENTO3: TStringField;
    cds_bancoVENCIMENTO3: TStringField;
    sds_bancoCADBANCO: TStringField;
    sds_bancoDESCBANCO: TStringField;
    sds_bancoCONTACORRRENTE: TStringField;
    sds_bancoDIGITOCONTACORRENTE: TStringField;
    sds_bancoINICIONOSSONUMERO: TStringField;
    sds_bancoFIMNOSSONUMERO: TStringField;
    sds_bancoPROXIMONOSSONUMERO: TStringField;
    sds_bancoVARIACAO: TStringField;
    sds_bancoNUMEROCONVENIO: TStringField;
    sds_bancoTIPOIMPRESSAOCARNE: TIntegerField;
    sds_bancoTIPOCARNE: TStringField;
    sds_bancoDEMONSTRATIVO: TStringField;
    sds_bancoINSTRUCOESCAIXA: TStringField;
    sds_bancoINSTRUCAO1: TStringField;
    sds_bancoINSTRUCAO2: TStringField;
    sds_bancoACEITEDOCUMENTO: TStringField;
    sds_bancoESPECIEDOCUMENTO: TStringField;
    sds_bancoINSTRUCAO3: TStringField;
    cds_bancoCADBANCO: TStringField;
    cds_bancoDESCBANCO: TStringField;
    cds_bancoCONTACORRRENTE: TStringField;
    cds_bancoDIGITOCONTACORRENTE: TStringField;
    cds_bancoINICIONOSSONUMERO: TStringField;
    cds_bancoFIMNOSSONUMERO: TStringField;
    cds_bancoPROXIMONOSSONUMERO: TStringField;
    cds_bancoVARIACAO: TStringField;
    cds_bancoNUMEROCONVENIO: TStringField;
    cds_bancoTIPOIMPRESSAOCARNE: TIntegerField;
    cds_bancoTIPOCARNE: TStringField;
    cds_bancoDEMONSTRATIVO: TStringField;
    cds_bancoINSTRUCOESCAIXA: TStringField;
    cds_bancoINSTRUCAO1: TStringField;
    cds_bancoINSTRUCAO2: TStringField;
    cds_bancoACEITEDOCUMENTO: TStringField;
    cds_bancoESPECIEDOCUMENTO: TStringField;
    cds_bancoINSTRUCAO3: TStringField;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    sds_bancoCARTEIRA: TStringField;
    cds_bancoCARTEIRA: TStringField;
    DBEdit11: TDBEdit;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    dbedtBANCO: TDBEdit;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit17: TDBEdit;
    Label26: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBanco: TfBanco;

implementation

uses UDM, uPrincipal;

{$R *.dfm}

procedure TfBanco.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_BANCO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_bancoID_BANCO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfBanco.FormShow(Sender: TObject);
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
 //    dxButton2.Enabled := true;
  end
  else
  begin
     Procurar := 'N';
//     dxButton2.Enabled := false;
  end;

end;

procedure TfBanco.FormCreate(Sender: TObject);
begin
  inherited;
  if (not cds_banco.Active) then
    cds_banco.Open;
end;

procedure TfBanco.FormDestroy(Sender: TObject);
begin
  inherited;
  if (cds_banco.Active) then
    cds_banco.Close;

end;

end.
