unit uCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, DB, Menus, dxCore, dxButton, ExtCtrls, FMTBcd, XPMenu,
  DBClient, Provider, SqlExpr, StdCtrls, Grids, DBGrids, DBCtrls, Mask;

type
  TfCheques = class(TfPai)
    Panel3: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    sds_cheq: TSQLDataSet;
    dsp_cheq: TDataSetProvider;
    cds_cheq: TClientDataSet;
    XPMenu1: TXPMenu;
    cds_cheqID_CHEQ: TIntegerField;
    cds_cheqCOD_ORIGEM: TIntegerField;
    cds_cheqTIPO_ORIGEM: TStringField;
    cds_cheqNUMERO_DOC: TIntegerField;
    cds_cheqCODCLI_FORN: TIntegerField;
    cds_cheqCLI_OU_FORN: TStringField;
    cds_cheqCONTACORRENTE: TStringField;
    cds_cheqDATAEMISSAO: TDateField;
    cds_cheqDATALANCAMENTO: TDateField;
    cds_cheqDATADEPOSITO: TDateField;
    cds_cheqVALORCHEQUE: TFloatField;
    cds_cheqDESCRICAO: TStringField;
    cds_cheqAGENCIA: TStringField;
    cds_cheqTIPO_DOC: TSmallintField;
    sds_cheqID_CHEQ: TIntegerField;
    sds_cheqCOD_ORIGEM: TIntegerField;
    sds_cheqTIPO_ORIGEM: TStringField;
    sds_cheqNUMERO_DOC: TIntegerField;
    sds_cheqCODCLI_FORN: TIntegerField;
    sds_cheqCLI_OU_FORN: TStringField;
    sds_cheqCONTACORRENTE: TStringField;
    sds_cheqDATAEMISSAO: TDateField;
    sds_cheqDATALANCAMENTO: TDateField;
    sds_cheqDATADEPOSITO: TDateField;
    sds_cheqVALORCHEQUE: TFloatField;
    sds_cheqDESCRICAO: TStringField;
    sds_cheqAGENCIA: TStringField;
    sds_cheqTIPO_DOC: TSmallintField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBCbx: TDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    sds_banco: TSQLDataSet;
    sds_bancoID_BANCO: TIntegerField;
    sds_bancoCONTA: TStringField;
    sds_bancoBANCO: TStringField;
    sds_bancoCIDADE: TStringField;
    sds_bancoSALDO: TFloatField;
    sds_bancoAGENCIA: TStringField;
    sds_bancoDIGAGEN: TStringField;
    sds_bancoCOD_CED: TStringField;
    sds_bancoID_TITULO: TIntegerField;
    sds_bancoCARTEIRA: TStringField;
    sds_bancoN_DOC: TIntegerField;
    sds_bancoJUROS: TFloatField;
    sds_bancoVENCIMENTO: TStringField;
    sds_bancoVENCIMENTO1: TStringField;
    sds_bancoVENCIMENTO2: TStringField;
    sds_bancoLOCAL_PGTO: TStringField;
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
    cds_bancoCARTEIRA: TStringField;
    cds_bancoN_DOC: TIntegerField;
    cds_bancoJUROS: TFloatField;
    cds_bancoVENCIMENTO: TStringField;
    cds_bancoVENCIMENTO1: TStringField;
    cds_bancoVENCIMENTO2: TStringField;
    cds_bancoLOCAL_PGTO: TStringField;
    sds_cheqBANCO: TStringField;
    cds_cheqBANCO: TStringField;
    DBMemo1: TDBMemo;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCheques: TfCheques;
  tipo : string;
implementation

uses UDM, uDespesas, uReceitas, uFinaliza_Compra, uVenda_Finalizar;

{$R *.dfm}

procedure TfCheques.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CHEQUE, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_cheqID_CHEQ.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfCheques.FormCreate(Sender: TObject);
begin
  inherited;
  if not cds_banco.Active then
    cds_banco.Open;
  cds_banco.First;
  While not cds_banco.Eof do
  begin
    DBCbx.Items.Add(cds_bancoBANCO.AsString);
    cds_banco.Next;
  end;
  cds_banco.Close;
end;

procedure TfCheques.FormShow(Sender: TObject);
begin
  inherited;
 if tipo = 'ob' then
 begin
    if cds_cheq.Active then
      cds_cheq.Close;
    cds_cheq.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;//tabela óbitos
    cds_cheq.Params[1].AsString := 'ob';//tabela óbitos
    cds_cheq.Open;
 end;
 if tipo = 'DP' then
 begin
    if cds_cheq.Active then
      cds_cheq.Close;
    cds_cheq.Params[0].AsInteger := fDespesas.cds_compraID_DEPREC.AsInteger;//tabela óbitos
    cds_cheq.Params[1].AsString := 'DP';//tabela Despesas_Receitas
    cds_cheq.Open;
 end;
 if tipo = 'RC' then
 begin
    if cds_cheq.Active then
      cds_cheq.Close;
    cds_cheq.Params[0].AsInteger := fDespesas.cds_compraID_DEPREC.AsInteger;//tabela óbitos
    cds_cheq.Params[1].AsString := 'RC';//tabela Despesas_Receitas
    cds_cheq.Open;
 end;
 if tipo = 'CP' then
 begin
    if cds_cheq.Active then
      cds_cheq.Close;
    cds_cheq.Params[0].AsInteger := dm.cds_compraID_COMPRA.AsInteger;//tabela óbitos
    cds_cheq.Params[1].AsString := 'CP';//tabela Despesas_Receitas
    cds_cheq.Open;
 end;
 if tipo = 'VD' then
 begin
    if cds_cheq.Active then
      cds_cheq.Close;
    cds_cheq.Params[0].AsInteger := fVenda_Finalizar.cds_vendaID_VENDA.AsInteger;//tabela óbitos
    cds_cheq.Params[1].AsString := 'VD';//tabela Despesas_Receitas
    cds_cheq.Open;
 end;
end;

procedure TfCheques.btnIncluirClick(Sender: TObject);
begin
  inherited;
 if tipo = 'ob' then //Obitos
 begin
   cds_cheqCOD_ORIGEM.AsInteger := dm.cds_ObitosID.AsInteger;
   cds_cheqTIPO_ORIGEM.AsString := 'ob';
   if dm.cds_ObitosTIPO_OBITO.AsString = 'SOCIO' then
   begin
     cds_cheqCODCLI_FORN.AsInteger := dm.cds_ObitosID_SOCIO.AsInteger;
     cds_cheqCLI_OU_FORN.AsString := 'C';//c = cliente
   end;
   if dm.cds_ObitosTIPO_OBITO.AsString = 'SOCIO_MENSAL' then
   begin
     cds_cheqCODCLI_FORN.AsInteger := dm.cds_ObitosID_SOCIO.AsInteger;
     cds_cheqCLI_OU_FORN.AsString := 'C';//c = cliente
   end;
 end;
 if tipo = 'DP' then //Despesas
 begin
   cds_cheqCOD_ORIGEM.AsInteger := fDespesas.cds_compraID_DEPREC.AsInteger;
   cds_cheqTIPO_ORIGEM.AsString := 'DP';
   cds_cheqCODCLI_FORN.AsInteger := fDespesas.cds_compraID_FORNECEDOR.AsInteger;
   cds_cheqCLI_OU_FORN.AsString := 'F';//F = Fornecedor
 end;
 if tipo = 'RC' then //Receitas
 begin
   cds_cheqCOD_ORIGEM.AsInteger := fReceitas.cds_pagID_DEPREC.AsInteger;
   cds_cheqTIPO_ORIGEM.AsString := 'RC';
   cds_cheqCODCLI_FORN.AsInteger := fReceitas.cds_pagID_FORNECEDOR.AsInteger;
   cds_cheqCLI_OU_FORN.AsString := 'C';//C = Cliente
 end;
 if tipo = 'CP' then //Compras
 begin
   cds_cheqCOD_ORIGEM.AsInteger := DM.cds_compraID_COMPRA.AsInteger;
   cds_cheqTIPO_ORIGEM.AsString := 'CP';
   cds_cheqCODCLI_FORN.AsInteger := dm.cds_compraID_FORNECEDOR.AsInteger;
   cds_cheqCLI_OU_FORN.AsString := 'F';//F = Fornecedor
 end;
 if tipo = 'VD' then //Compras
 begin
   cds_cheqCOD_ORIGEM.AsInteger := fVenda_Finalizar.cds_vendaID_VENDA.AsInteger;
   cds_cheqTIPO_ORIGEM.AsString := 'VD';
   cds_cheqCODCLI_FORN.AsInteger := fVenda_Finalizar.cds_vendaID_CLIENTE.AsInteger;
   cds_cheqCLI_OU_FORN.AsString := 'C';//F = Fornecedor
 end;

end;

end.
