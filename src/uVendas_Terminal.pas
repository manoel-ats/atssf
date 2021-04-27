unit uVendas_Terminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, FMTBcd, SqlExpr, Provider, StdCtrls, Grids, DBGrids,
  Buttons, Mask, DBCtrls, DBLocal, DBLocalS, DB, DBClient, Menus, dxCore,
  dxButton, ExtCtrls, XPMenu;

type
  Tfvendas_Terminal = class(TfPai)
    dxButton2: TdxButton;
    dxButton1: TdxButton;
    cds_mov: TClientDataSet;
    cds_movID_MOVIMENTO: TIntegerField;
    cds_movDATAMOVIMENTO: TDateField;
    cds_movSTATUS: TStringField;
    cds_movCOD_FUNCIONARIO: TIntegerField;
    cds_movID_FORNECEDOR: TIntegerField;
    cds_movDATA_SISTEMA: TSQLTimeStampField;
    cds_movVALOR_NF: TFloatField;
    cds_movNATUREZA: TStringField;
    cds_movID_OBITO: TIntegerField;
    dsp_mov: TDataSetProvider;
    sds_mov: TSQLDataSet;
    sds_movID_MOVIMENTO: TIntegerField;
    sds_movDATAMOVIMENTO: TDateField;
    sds_movSTATUS: TStringField;
    sds_movCOD_FUNCIONARIO: TIntegerField;
    sds_movID_FORNECEDOR: TIntegerField;
    sds_movDATA_SISTEMA: TSQLTimeStampField;
    sds_movVALOR_NF: TFloatField;
    sds_movNATUREZA: TStringField;
    sds_movID_OBITO: TIntegerField;
    sds_itens: TSQLDataSet;
    sds_itensID_DETALHE: TIntegerField;
    sds_itensID_MOVIMENTO: TIntegerField;
    sds_itensID_PRODUTO: TIntegerField;
    sds_itensQUANTIDADE: TFloatField;
    sds_itensPRECO: TFloatField;
    sds_itensPRECO_REAL: TFloatField;
    sds_itensUN: TStringField;
    sds_itensVALTOTAL: TFloatField;
    sds_itensDESCRICAO: TStringField;
    dsp_itens: TDataSetProvider;
    cds_itens: TClientDataSet;
    cds_itensID_DETALHE: TIntegerField;
    cds_itensID_MOVIMENTO: TIntegerField;
    cds_itensID_PRODUTO: TIntegerField;
    cds_itensQUANTIDADE: TFloatField;
    cds_itensPRECO_REAL: TFloatField;
    cds_itensPRECO: TFloatField;
    cds_itensUN: TStringField;
    cds_itensVALTOTAL: TFloatField;
    cds_itensDESCRICAO: TStringField;
    DtSrc_itens: TDataSource;
    sds_lote1: TSQLDataSet;
    proc_produto: TSQLClientDataSet;
    proc_produtoID_PRODUTO: TIntegerField;
    proc_produtoDESCRICAO: TStringField;
    proc_produtoUN: TStringField;
    proc_produtoV_VENDA: TFloatField;
    proc_produtoVC_REAL: TFloatField;
    proc_prod: TSQLClientDataSet;
    proc_prodID_PRODUTO: TIntegerField;
    proc_prodDESCRICAO: TStringField;
    proc_prodUN: TStringField;
    proc_prodV_VENDA: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    BitBtn2: TBitBtn;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btnNovo: TBitBtn;
    DBGrid1: TDBGrid;
    GroupBox5: TGroupBox;
    DBEdit10: TDBEdit;
    DBEdit3: TDBEdit;
    btnSalva: TBitBtn;
    btnDeleta: TBitBtn;
    btnCancel: TBitBtn;
    DBEdit11: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    ComboBox3: TComboBox;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    XPMenu1: TXPMenu;
    sds_movTIPO: TStringField;
    sds_movID_CLIENTE: TIntegerField;
    sds_movNOME_DEP: TStringField;
    cds_movTIPO: TStringField;
    cds_movID_CLIENTE: TIntegerField;
    cds_movNOME_DEP: TStringField;
    proc_mov: TSQLClientDataSet;
    proc_movID_MOVIMENTO: TIntegerField;
    proc_movDATAMOVIMENTO: TDateField;
    proc_movVALOR_NF: TFloatField;
    ItensIncluir1: TMenuItem;
    ItensExcluir1: TMenuItem;
    ItensSalvar1: TMenuItem;
    ItensCancelar1: TMenuItem;
    proc_movNOME_DEP: TStringField;
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnDeletaClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DtSrc_itensStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure cds_itensBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvendas_Terminal: Tfvendas_Terminal;

implementation

uses UDM, uProcurar, uFiltroProcura, uProcGrupo, uProcura_Trimestral,
  uVenda_Finalizar;

{$R *.dfm}

procedure Tfvendas_Terminal.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure Tfvendas_Terminal.BitBtn2Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_produto);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'DESCRICAO';
   if fProcurar.ShowModal=mrOk then
   begin
     cds_itensID_PRODUTO.AsInteger := proc_produtoID_PRODUTO.AsInteger;
     cds_itensDESCRICAO.AsString := proc_produtoDESCRICAO.AsString;
     cds_itensUN.AsString := proc_produtoUN.AsString;
     cds_itensQUANTIDADE.AsFloat := 1;
     cds_itensPRECO.AsFloat := proc_produtoV_VENDA.AsFloat;
     cds_itensPRECO_REAL.AsFloat := proc_produtoVC_REAL.AsFloat;
   end;
   finally
    proc_produto.Close;
    fProcurar.Free;
   end;
   DBEdit6.SetFocus;
end;

procedure Tfvendas_Terminal.DBEdit4Exit(Sender: TObject);
begin
  inherited;
 if DBEdit4.Text='' then exit;
  if DBEdit4.Field.OldValue<>DBEdit4.Field.NewValue then
  begin
    if proc_prod.Active then
    proc_prod.Close;
    proc_prod.Params[0].Value:=DBEdit4.Text;
    proc_prod.Open;
    if proc_prod.IsEmpty then
    begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      BitBtn2.Click;
      exit;
    end;
//     cds_itensID_PRODUTO.AsInteger := proc_produtoID_PRODUTO.AsInteger;
     cds_itensDESCRICAO.AsString := proc_prodDESCRICAO.AsString;
     cds_itensUN.AsString := proc_prodUN.AsString;
     cds_itensQUANTIDADE.AsFloat := 1;
     cds_itensPRECO.AsFloat := proc_prodV_VENDA.AsFloat;
     cds_itensPRECO_REAL.AsFloat := proc_produtoVC_REAL.AsFloat;     
  end;
   proc_prod.Close;
end;

procedure Tfvendas_Terminal.btnNovoClick(Sender: TObject);
begin
  inherited;
 if dtsrc.State in [dsInactive] then
  exit;

 if dtsrc.State in [dsBrowse] then
    dtsrc.DataSet.Edit;

   if not DtSrc_itens.DataSet.Active then
      DtSrc_itens.DataSet.Open;
    DtSrc_itens.DataSet.Append;

// gera codigo para tab. Socios mensalistas
  if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MOVIMENTODETALHE, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_itensID_DETALHE.AsInteger := dm.c_6_genidCODIGO.AsInteger;
  cds_itensID_MOVIMENTO.AsInteger :=  cds_movID_MOVIMENTO.AsInteger;
  dm.c_6_genid.Close;
  DBEdit4.SetFocus;
  
end;

procedure Tfvendas_Terminal.btnSalvaClick(Sender: TObject);
begin
  inherited;
    DtSrc_itens.DataSet.Post;
//   (DtSrc_itens.DataSet as TClientDataset).ApplyUpdates(0);
    btnNovo.SetFocus;
end;

procedure Tfvendas_Terminal.btnDeletaClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_itens.DataSet.Delete;
     (DtSrc_itens.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure Tfvendas_Terminal.btnCancelClick(Sender: TObject);
begin
  inherited;
   DtSrc_itens.DataSet.Cancel;
end;

procedure Tfvendas_Terminal.BitBtn1Click(Sender: TObject);
begin
  inherited;
   if ComboBox3.Text = 'MS' then
   begin
     fFiltroProcura := TfFiltroProcura.Create(Application);
     try
        if not fFiltroProcura.cds_mensal.Active then
          fFiltroProcura.cds_mensal.Open;
        if fFiltroProcura.ShowModal=mrOk then
        begin
          cds_movID_CLIENTE.AsInteger := fFiltroProcura.cds_mensalID_DEP.AsInteger;
          cds_movNOME_DEP.AsString := fFiltroProcura.cds_mensalNOME_DEP.AsString;
          cds_movTIPO.AsString := 'MS';
        end;
     finally
       fFiltroProcura.cds_mensal.Close;
       fFiltroProcura.Free;
     end;
   end;
   if ComboBox3.Text = 'GP' then
   begin
     fProcGrupo := TfProcGrupo.Create(Application);
     try
        if fProcGrupo.cds_mensal.Active then
           fProcGrupo.cds_mensal.Close;
        fProcGrupo.BitBtn2.Click;
        if fProcGrupo.ShowModal=mrOk then
        begin
          cds_movID_CLIENTE.AsInteger := fProcGrupo.cds_mensalID_DEP.AsInteger;
          cds_movNOME_DEP.AsString := fProcGrupo.cds_mensalNOME_DEP.AsString;
          cds_movTIPO.AsString := 'GP';
        end;
     finally
       fProcGrupo.cds_mensal.Close;
       fProcGrupo.Free;
     end;
   end;

   if ComboBox3.Text = 'TM' then
   begin
     fProcura_Trimestral := TfProcura_Trimestral.Create(Application);
     try
        if not fProcura_Trimestral.cds_mensal.Active then
          fProcura_Trimestral.cds_mensal.Open;
        if fProcura_Trimestral.ShowModal=mrOk then
        begin
          cds_movID_CLIENTE.AsInteger := fProcura_Trimestral.cds_mensalID_DEP.AsInteger;
          cds_movNOME_DEP.AsString := fProcura_Trimestral.cds_mensalNOME_DEP.AsString;
          cds_movTIPO.AsString := 'TM';
        end;
     finally
       fProcura_Trimestral.cds_mensal.Close;
       fProcura_Trimestral.Free;
     end;
   end;

   if ComboBox3.Text = 'CL' then
   begin
//     fProcura_Trimestral := TfProcura_Trimestral.Create(Application);
     try
{        if not fProcura_Trimestral.cds_mensal.Active then
          fProcura_Trimestral.cds_mensal.Open;
        if fProcura_Trimestral.ShowModal=mrOk then
        begin
          cds_pagID_FORNECEDOR.AsInteger := fProcura_Trimestral.cds_mensalID_SOCIO.AsInteger;
          cds_pagNOME_SOCIO.AsString := fProcura_Trimestral.cds_mensalNOME_DEP.AsString;
          cds_pagNOME.AsString := fProcura_Trimestral.cds_mensalNOME_DEP.AsString;
          cds_movTIPO.AsString := 'TM';
        end;                           }
     finally
{       fProcura_Trimestral.cds_mensal.Close;
       fProcura_Trimestral.Free;}
     end;
   end;

  btnNovo.Click;
 // DBEdit4.SetFocus;

end;

procedure Tfvendas_Terminal.DtSrc_itensStateChange(Sender: TObject);
begin
  inherited;
 if DtSrc.DataSet.State in [dsInsert, dsEdit, dsBrowse] then
  btnNovo.Enabled:=DtSrc_itens.State in [dsBrowse,dsInactive];
  btnSalva.Enabled:=DtSrc_itens.State in [dsInsert,dsEdit];
  btnCancel.Enabled:=DtSrc_itens.State in [dsInsert,dsEdit];
  btnDeleta.Enabled:=DtSrc_itens.State in [dsBrowse];
  BitBtn2.Enabled:=DtSrc_itens.State in [dsInsert,dsEdit];
end;

procedure Tfvendas_Terminal.FormShow(Sender: TObject);
begin
  inherited;
  btnIncluir.Enabled   := true;
  btnGravar.Enabled  := true;
  btnExcluir.Enabled  := true;
  btnCancelar.Enabled  := true;
  btnSair.Enabled  := true;
  dxButton1.Enabled  := false;
  dxButton2.Enabled  := true;
end;

procedure Tfvendas_Terminal.btnIncluirClick(Sender: TObject);
begin
  inherited;
   if DtSrc_itens.DataSet.Active then
      DtSrc_itens.DataSet.Close;
// gera codigo para tab. Movimento
  if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MOVIMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_movID_MOVIMENTO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  BitBtn1.Enabled := true;
  cds_movDATAMOVIMENTO.AsDateTime := date;
  cds_movCOD_FUNCIONARIO.AsInteger := 1;
  cds_movNATUREZA.AsString := 'Venda';
  cds_movCOD_FUNCIONARIO.AsInteger := 1;
  BitBtn1.SetFocus;
end;

procedure Tfvendas_Terminal.btnGravarClick(Sender: TObject);
begin
  inherited;
  (DtSrc_itens.DataSet as TClientDataset).ApplyUpdates(0);
  dxButton1.Enabled := true;
end;

procedure Tfvendas_Terminal.btnExcluirClick(Sender: TObject);
begin
  inherited;
{ if fFinaliza_Compra.cds_compra.Active then
    fFinaliza_Compra.cds_compra.Close;
 fFinaliza_Compra.cds_compra.Params[0].AsInteger := cds_movID_MOVIMENTO.AsInteger;
 fFinaliza_Compra.cds_compra.Open;
 if not fFinaliza_Compra.cds_compra.IsEmpty then
 begin
   MessageDlg('Compra já finalizada para excluí-la, primeiro vc deve exclui-lá '+#13+#10+'na opção Caixa...!', mtWarning, [mbOK], 0);
   fFinaliza_Compra.cds_compra.Close;
   exit;
 end;
  inherited;
 if cds_itens.Active then
   cds_itens.Close;}
end;

procedure Tfvendas_Terminal.dxButton2Click(Sender: TObject);
begin
  inherited;
 fProcurar:=TfProcurar.Create(self,proc_mov);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_DEP';
   if fProcurar.ShowModal=mrOk then
   begin
     if cds_mov.Active then
       cds_mov.Close;
     cds_mov.Params[0].AsInteger := proc_movID_MOVIMENTO.AsInteger;
     cds_mov.Open;
     if cds_itens.Active then
       cds_itens.Close;
     cds_itens.Params[0].AsInteger := proc_movID_MOVIMENTO.AsInteger;
     cds_itens.Open;
     dxButton1.Enabled := true;
   end;
   finally
    proc_mov.Close;
    fProcurar.Free;
   end;
end;

procedure Tfvendas_Terminal.dxButton1Click(Sender: TObject);
begin
  inherited;
    valor_nota := cds_movVALOR_NF.AsFloat;
    codmov := cds_movID_MOVIMENTO.AsInteger;
    codcli := cds_movID_CLIENTE.AsInteger;
    fVenda_Finalizar.ShowModal;
end;

procedure Tfvendas_Terminal.cds_itensBeforePost(DataSet: TDataSet);
begin
  inherited;
  cds_itensVALTOTAL.AsFloat := cds_itensQUANTIDADE.AsFloat *
     cds_itensPRECO_REAL.AsFloat;
  cds_movVALOR_NF.AsFloat := cds_movVALOR_NF.AsFloat +
     cds_itensVALTOTAL.AsFloat;
end;

end.
