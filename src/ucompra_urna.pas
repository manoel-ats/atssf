unit uCompra_urna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, Grids, DBGrids,
  StdCtrls, Buttons, Mask, DBCtrls, FMTBcd, DBClient, Provider, SqlExpr,
  XPMenu, DBLocal, DBLocalS ,DBxpress;
type
  TfCompra_urna = class(TfPai)
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit10: TDBEdit;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    DtSrc_itens: TDataSource;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    XPMenu1: TXPMenu;
    proc_fornecedor: TSQLClientDataSet;
    proc_fornecedorID_FORNECEDOR: TIntegerField;
    proc_fornecedorNOME_FERNECEDOR: TStringField;
    proc_produto: TSQLClientDataSet;
    proc_produtoID_PRODUTO: TIntegerField;
    proc_produtoDESCRICAO: TStringField;
    proc_produtoUN: TStringField;
    proc_produtoV_COMPRA: TFloatField;
    proc_prod: TSQLClientDataSet;
    proc_prodID_PRODUTO: TIntegerField;
    proc_prodDESCRICAO: TStringField;
    proc_prodUN: TStringField;
    proc_prodV_COMPRA: TFloatField;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    proc_produtoVC_REAL: TFloatField;
    proc_mov: TSQLClientDataSet;
    proc_movNOME_FERNECEDOR: TStringField;
    proc_movDATAMOVIMENTO: TDateField;
    proc_movVALOR_NF: TFloatField;
    proc_movID_MOVIMENTO: TIntegerField;
    proc_prodVC_REAL: TFloatField;
    Caixa1: TMenuItem;
    BitBtn2: TBitBtn;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn3: TBitBtn;
    Label9: TLabel;
    cdsP: TClientDataSet;
    dspP: TDataSetProvider;
    sqlP: TSQLDataSet;
    sqlPID_PRODUTO: TIntegerField;
    sqlPESTOQUE: TIntegerField;
    cdsPID_PRODUTO: TIntegerField;
    cdsPESTOQUE: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnDeletaClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButton1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrc_itensStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompra_urna: TfCompra_urna;

implementation

uses UDM, uProcurar, uFinaliza_Compra ,uPrincipal;

{$R *.dfm}

procedure TfCompra_urna.BitBtn1Click(Sender: TObject);
begin
  inherited;
 fProcurar:=TfProcurar.Create(self,proc_fornecedor);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_FERNECEDOR';
   if fProcurar.ShowModal=mrOk then
   begin
     dm.cds_movID_FORNECEDOR.AsInteger := proc_fornecedorID_FORNECEDOR.AsInteger;
     dm.cds_movNOME_FERNECEDOR.AsString := proc_fornecedorNOME_FERNECEDOR.AsString;
   end;
   finally
    proc_fornecedor.Close;
    fProcurar.Free;
   end;
end;

procedure TfCompra_urna.btnIncluirClick(Sender: TObject);
begin
  inherited;


  codmovdet := 1999999;
  dm.cds_movDATAMOVIMENTO.AsDateTime := date;
  dm.cds_movDATA_SISTEMA.AsDateTime := date;
  dm.cds_movCOD_FUNCIONARIO.AsInteger := 1;
  dm.cds_movNATUREZA.AsString := 'Compra';
//  cds_movTIPO.AsString := 'OB';
  if DtSrc_itens.DataSet.State in [dsInactive] then
  begin
    DtSrc_itens.DataSet.Open;
    DtSrc_itens.DataSet.Append;
  end;
  if DtSrc_itens.DataSet.State in [dsBrowse] then
      DtSrc_itens.DataSet.Append;
  BitBtn1.Click;


end;

procedure TfCompra_urna.FormShow(Sender: TObject);
begin
  inherited;
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';

  if dm.cds_mov.IsEmpty then
   dm.cds_mov.Close;

  if dm.cds_itens.IsEmpty then
   dm.cds_itens.Close;

   Label9.Caption := varUsuario ;

end;

procedure TfCompra_urna.btnNovoClick(Sender: TObject);
begin
  if DtSrc_itens.State in [dsInsert, dsEdit] then
  begin
     if dm.cds_Mov.State in [dsBrowse, dsInactive] then
       dm.cds_Mov.Edit;
     DtSrc_itens.DataSet.Post;
     DtSrc_itens.DataSet.Append;
     DBEdit4.SetFocus;
  end;
  if DtSrc_itens.State in [dsBrowse] then
  begin
   if dm.cds_Mov.State in [dsBrowse, dsInactive] then
    dm.cds_Mov.Edit;
    DtSrc_itens.DataSet.Append;
    DBEdit4.SetFocus;
  end;
end;

procedure TfCompra_urna.btnSalvaClick(Sender: TObject);
begin
 if dm.cds_compra.Active then
    dm.cds_compra.Close;
 dm.cds_compra.Params[0].AsInteger := dm.cds_movID_MOVIMENTO.AsInteger;
 dm.cds_compra.Open;
 if not dm.cds_compra.IsEmpty then
 begin
   MessageDlg('Essa Compra gerou uma título no contas a receber para alterá-lo, primeiro vc deve exclui-lá '+#13+#10+'na opção Caixa...!', mtWarning, [mbOK], 0);
   dm.cds_compra.Close;
   dm.cds_itens.Cancel;
 end;

  inherited;
    DtSrc_itens.DataSet.Post;
//   (DtSrc_itens.DataSet as TClientDataset).ApplyUpdates(0);
    btnNovo.SetFocus;
end;

procedure TfCompra_urna.btnDeletaClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_itens.DataSet.Delete;
     (DtSrc_itens.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfCompra_urna.btnCancelClick(Sender: TObject);
begin
  inherited;
   DtSrc_itens.DataSet.Cancel;
end;

procedure TfCompra_urna.BitBtn2Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_produto);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'DESCRICAO';
   if fProcurar.ShowModal=mrOk then
   begin
     dm.cds_itensID_PRODUTO.AsInteger := proc_produtoID_PRODUTO.AsInteger;
     dm.cds_itensDESCRICAO.AsString := proc_produtoDESCRICAO.AsString;
     dm.cds_itensUN.AsString := proc_produtoUN.AsString;
     dm.cds_itensQUANTIDADE.AsFloat := 1;
     dm.cds_itensPRECO.AsFloat := proc_produtoV_COMPRA.AsFloat;
     dm.cds_itensPRECO_REAL.AsFloat := proc_produtoVC_REAL.AsFloat;
   end;
   finally
    proc_produto.Close;
    fProcurar.Free;
   end;
   DBEdit6.SetFocus;
end;

procedure TfCompra_urna.DBEdit4Exit(Sender: TObject);
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
      BitBtn1.Click;
      exit;
    end;
//     cds_itensID_PRODUTO.AsInteger := proc_produtoID_PRODUTO.AsInteger;
     dm.cds_itensDESCRICAO.AsString := proc_prodDESCRICAO.AsString;
     dm.cds_itensUN.AsString := proc_prodUN.AsString;
     dm.cds_itensQUANTIDADE.AsFloat := 1;
     dm.cds_itensPRECO.AsFloat := proc_prodV_COMPRA.AsFloat;
     dm.cds_itensPRECO_REAL.AsFloat := proc_produtoVC_REAL.AsFloat;
  end;
   proc_prod.Close;
end;

procedure TfCompra_urna.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 if DtSrc.DataSet.Active then
    DtSrc.DataSet.Close;
 if DtSrc_itens.DataSet.Active then
    DtSrc_itens.DataSet.Close;
end;

procedure TfCompra_urna.dxButton1Click(Sender: TObject);
begin
  inherited;
 if DtSrc.DataSet.State in [dsInsert, dsEdit] then
    BitBtn3.Click;
 if DtSrc.DataSet.State in [dsInsert, dsEdit, dsBrowse] then
     fFinaliza_Compra.ShowModal
 else
   Exit;
end;

procedure TfCompra_urna.btnExcluirClick(Sender: TObject);
begin
 if dm.cds_compra.Active then
    dm.cds_compra.Close;
 dm.cds_compra.Params[0].AsInteger := dm.cds_movID_MOVIMENTO.AsInteger;
 dm.cds_compra.Open;
 if not dm.cds_compra.IsEmpty then
 begin
   MessageDlg('Compra já finalizada para excluí-la, primeiro vc deve exclui-lá '+#13+#10+'na opção Caixa...!', mtWarning, [mbOK], 0);
   dm.cds_compra.Close;
   exit;
 end;
  inherited;
 if dm.cds_itens.Active then
   dm.cds_itens.Close;
end;

procedure TfCompra_urna.dxButton2Click(Sender: TObject);
begin
  inherited;
 fProcurar:=TfProcurar.Create(self,proc_mov);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_FERNECEDOR';
   if fProcurar.ShowModal=mrOk then
   begin
     if dm.cds_mov.Active then
       dm.cds_mov.Close;
     dm.cds_mov.Params[0].AsInteger := proc_movID_MOVIMENTO.AsInteger;
     dm.cds_mov.Open;
     if dm.cds_itens.Active then
       dm.cds_itens.Close;
     dm.cds_itens.Params[0].AsInteger := proc_movID_MOVIMENTO.AsInteger;
     dm.cds_itens.Open;
     dxButton1.Enabled := true;
   end;
   finally
    proc_mov.Close;
    fProcurar.Free;
   end;
end;

procedure TfCompra_urna.btnCancelarClick(Sender: TObject);
begin
  inherited;
 if dm.cds_itens.Active then
   dm.cds_itens.Close;
 if dm.cds_mov.Active then
   dm.cds_mov.Close;
   dxButton1.Enabled := False;

end;

procedure TfCompra_urna.BitBtn8Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;
  if  MessageDlg('Confirma a exclusão do item ''' + dm.cds_itensDESCRICAO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
     DtSrc_itens.DataSet.Delete;
end;

procedure TfCompra_urna.btnGravarClick(Sender: TObject);
var  TD : TTransactionDesc ;
    atualizar : string ;
    quant : integer;
begin
   if dm.cds_mov.State in [dsInsert] then
   begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MOVIMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_movID_MOVIMENTO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
   end;
  inherited;
  //********************************************************************************
  // aqui corrijo o codigo do movimento na tabela mov_detalhe
  if (dm.cds_itensID_MOVIMENTO.AsInteger = 1999999) then
  begin
    if (dm.cds_itens.State in [dsInsert]) then
       dm.cds_itens.Post;
    dm.cds_itens.First;
    while not dm.cds_itens.Eof do
    begin
       if dm.cds_itens.State in [dsbrowse] then
         dm.cds_itens.Edit;
       if dm.cds_mov.State in [dsbrowse] then
         dm.cds_mov.Edit;
       dm.cds_movVALOR_NF.AsFloat := dm.cds_movVALOR_NF.AsFloat + dm.cds_itensVALTOTAL.AsFloat;
       dm.cds_mov.ApplyUpdates(0);
       if dm.c_6_genid.Active then
           dm.c_6_genid.Close;
       dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MOVIMENTODETALHE, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
       dm.c_6_genid.Open;
       dm.cds_itensID_MOVIMENTO.AsInteger := dm.cds_movID_MOVIMENTO.AsInteger;
       dm.cds_itensID_DETALHE.AsInteger := dm.c_6_genidCODIGO.AsInteger;


   if(cdsP.Active) then
     cdsP.Close;
     cdsP.Params[0].AsInteger := dm.cds_itensID_PRODUTO.AsInteger;
     cdsP.Open;
   quant := cdsPESTOQUE.AsInteger;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update PRODUTOS set ESTOQUE = ';
   atualizar := atualizar +  IntToStr(dm.cds_itensQUANTIDADE.AsInteger + quant);
   atualizar := atualizar + ' where ID_PRODUTO = ';
   atualizar := atualizar + IntToStr(dm.cds_itensID_PRODUTO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);



       dm.c_6_genid.Close;
       dm.cds_itens.Post;
       dm.cds_itens.Next;
    end;
  end;
  dm.cds_itens.ApplyUpdates(0);
  dxButton1.Enabled := True;
end;

procedure TfCompra_urna.DtSrc_itensStateChange(Sender: TObject);
begin
  inherited;
 if DtSrc.DataSet.State in [dsInsert, dsEdit, dsBrowse] then
  btnNovo.Enabled:=DtSrc_itens.State in [dsInsert, dsEdit];
 BitBtn8.Enabled:=DtSrc_itens.State in [dsBrowse];
 BitBtn2.Enabled:=DtSrc_itens.State in [dsInsert,dsEdit];
end;

end.
