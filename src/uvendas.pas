unit uVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, XPMenu, StdCtrls, Grids, DBGrids, Buttons, Mask, DBCtrls,
  DB, Menus, dxCore, dxButton, ExtCtrls, Provider, SqlExpr, DBClient,
  DBLocal, DBLocalS, FMTBcd,DBxpress;

type
  TfVendas = class(TfPai)
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    GroupBox5: TGroupBox;
    DBEdit10: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit11: TDBEdit;
    XPMenu1: TXPMenu;
    proc_produto: TSQLClientDataSet;
    proc_produtoID_PRODUTO: TIntegerField;
    proc_produtoDESCRICAO: TStringField;
    proc_produtoUN: TStringField;
    proc_prod: TSQLClientDataSet;
    proc_prodID_PRODUTO: TIntegerField;
    proc_prodDESCRICAO: TStringField;
    proc_prodUN: TStringField;
    DtSrc_itens: TDataSource;
    proc_prodV_VENDA: TFloatField;
    proc_produtoV_VENDA: TFloatField;
    sds_lote1: TSQLDataSet;
    proc_produtoVC_REAL: TFloatField;
    IncluirItem1: TMenuItem;
    ExcluirIten1: TMenuItem;
    cds_venda: TClientDataSet;
    cds_vendaID_VENDA: TIntegerField;
    cds_vendaID_MOVIMENTO: TIntegerField;
    cds_vendaID_CLIENTE: TIntegerField;
    cds_vendaDATAVENDA: TDateField;
    cds_vendaDATAVENCIMENTO: TDateField;
    cds_vendaNUMEROBORDERO: TIntegerField;
    cds_vendaBANCO: TSmallintField;
    cds_vendaCODVENDEDOR: TSmallintField;
    cds_vendaSTATUS: TSmallintField;
    cds_vendaCODUSUARIO: TSmallintField;
    cds_vendaDATASISTEMA: TDateField;
    cds_vendaVALOR: TFloatField;
    cds_vendaNOTAFISCAL: TIntegerField;
    cds_vendaSERIE: TStringField;
    cds_vendaDESCONTO: TFloatField;
    cds_vendaCODCCUSTO: TSmallintField;
    cds_vendaN_PARCELA: TSmallintField;
    cds_vendaOPERACAO: TStringField;
    cds_vendaFORMAPAGAMENTO: TStringField;
    cds_vendaN_DOCUMENTO: TStringField;
    cds_vendaCAIXA: TSmallintField;
    cds_vendaMULTA_JUROS: TFloatField;
    cds_vendaAPAGAR: TFloatField;
    cds_vendaVALOR_PAGAR: TFloatField;
    cds_vendaENTRADA: TFloatField;
    cds_vendaN_BOLETO: TStringField;
    cds_vendaSTATUS1: TStringField;
    cds_vendaVALOR_ICMS: TFloatField;
    cds_vendaVALOR_FRETE: TFloatField;
    cds_vendaVALOR_SEGURO: TFloatField;
    cds_vendaOUTRAS_RECE: TFloatField;
    cds_vendaVALOR_IPI: TFloatField;
    cds_vendaHISTORICO: TStringField;
    cds_vendaNOME: TStringField;
    dsp_venda: TDataSetProvider;
    sds_venda: TSQLDataSet;
    sds_vendaID_VENDA: TIntegerField;
    sds_vendaID_MOVIMENTO: TIntegerField;
    sds_vendaID_CLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaFORMAPAGAMENTO: TStringField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_RECE: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    sds_vendaHISTORICO: TStringField;
    sds_vendaNOME: TStringField;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    proc_mov: TSQLClientDataSet;
    proc_movID_MOVIMENTO: TIntegerField;
    proc_movDATAMOVIMENTO: TDateField;
    proc_movVALOR_NF: TFloatField;
    proc_movNOME_FERNECEDOR: TStringField;
    cdsP: TClientDataSet;
    cdsPID_PRODUTO: TIntegerField;
    cdsPESTOQUE: TIntegerField;
    dspP: TDataSetProvider;
    sqlP: TSQLDataSet;
    sqlPID_PRODUTO: TIntegerField;
    sqlPESTOQUE: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnDeletaClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrc_itensStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVendas: TfVendas;
  serie_nf :string;

implementation

uses UDM, uProcurar, uCompra_urna, uCad_Obitos ,uPrincipal, U_Autoriza;

{$R *.dfm}

procedure TfVendas.BitBtn2Click(Sender: TObject);
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
     dm.cds_itensPRECO.AsFloat := proc_produtoV_VENDA.AsFloat;
     dm.cds_itensPRECO_REAL.AsFloat := proc_produtoVC_REAL.AsFloat;
   end;
   finally
    proc_produto.Close;
    fProcurar.Free;
   end;
   DBEdit6.SetFocus;
end;

procedure TfVendas.DBEdit4Exit(Sender: TObject);
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
     dm.cds_itensDESCRICAO.AsString := proc_prodDESCRICAO.AsString;
     dm.cds_itensUN.AsString := proc_prodUN.AsString;
     dm.cds_itensQUANTIDADE.AsFloat := 1;
     dm.cds_itensPRECO.AsFloat := proc_prodV_VENDA.AsFloat;
     dm.cds_itensPRECO_REAL.AsFloat := proc_produtoVC_REAL.AsFloat;
  end;
   proc_prod.Close;

end;

procedure TfVendas.btnIncluirClick(Sender: TObject);
begin
  inherited;

  codmovdet := 1999999;
  dm.cds_mov_OBDATAMOVIMENTO.AsDateTime := date;
  dm.cds_mov_OBDATA_SISTEMA.AsDateTime := date;
  dm.cds_mov_OBCOD_FUNCIONARIO.AsInteger := 1;
 if(tipov = 'TR')then
 begin
  dm.cds_mov_OBNATUREZA.AsString := 'Vendas';
  dm.cds_mov_OBTIPO.AsString := 'TR';
  dm.cds_mov_OBFALECIDO.AsString := 'TRANSFERENCIA';
 end else
 begin
  dm.cds_mov_OBNATUREZA.AsString := 'Vendas';
  dm.cds_mov_OBTIPO.AsString := 'OB';
  dm.cds_mov_OBFALECIDO.AsString := dm.cds_ObitosFALECIDO.AsString;
 end;


  if DtSrc_itens.DataSet.State in [dsInactive] then
  begin
    DtSrc_itens.DataSet.Open;
    DtSrc_itens.DataSet.Append;
  end;
  if DtSrc_itens.DataSet.State in [dsBrowse] then
      DtSrc_itens.DataSet.Append;
  DBEdit4.SetFocus;
  if(tipov = 'TR')then
 begin
   fvendas.btnGravar.Enabled  := true;
   fvendas.btnCancelar.Enabled  := true;
 end;     
end;

procedure TfVendas.btnNovoClick(Sender: TObject);
begin
  inherited;
  if DtSrc_itens.State in [dsInsert, dsEdit] then
  begin
   if dm.cds_mov_OB.State in [dsBrowse, dsInactive] then
    dm.cds_mov_OB.Edit;
    DtSrc_itens.DataSet.Post;
    DtSrc_itens.DataSet.Append;
    DBEdit4.SetFocus;
  end;
  if DtSrc_itens.State in [dsBrowse] then
  begin
   if dm.cds_mov_OB.State in [dsBrowse, dsInactive] then
    dm.cds_mov_OB.Edit;
    DtSrc_itens.DataSet.Append;
    DBEdit4.SetFocus;
  end;

end;

procedure TfVendas.btnSalvaClick(Sender: TObject);
begin
  inherited;
 if dm.cds_Obitos.State in [dsBrowse] then
    dm.cds_Obitos.Edit;
  dm.cds_ObitosVALOR_SERVICO.AsFloat := dm.cds_mov_OBVALOR_NF.AsFloat;

    DtSrc_itens.DataSet.Post;
//   (DtSrc_itens.DataSet as TClientDataset).ApplyUpdates(0);
    btnNovo.SetFocus;
end;

procedure TfVendas.btnDeletaClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc_itens.DataSet.Delete;
     (DtSrc_itens.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfVendas.btnCancelClick(Sender: TObject);
begin
  inherited;
   DtSrc_itens.DataSet.Cancel;
end;

procedure TfVendas.FormShow(Sender: TObject);
begin
  inherited;
{  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  btnIncluir.Enabled   := true;
  btnGravar.Enabled  := true;
  btnExcluir.Enabled  := true;
  btnCancelar.Enabled  := true;
}  btnSair.Enabled  := true;
end;

procedure TfVendas.DtSrc_itensStateChange(Sender: TObject);
begin
  inherited;
 if DtSrc.DataSet.State in [dsInsert, dsEdit, dsBrowse] then
  btnNovo.Enabled:=DtSrc_itens.State in [dsInsert, dsEdit];
 BitBtn8.Enabled:=DtSrc_itens.State in [dsBrowse];
 BitBtn1.Enabled:=DtSrc_itens.State in [dsInsert,dsEdit];

end;

procedure TfVendas.FormCreate(Sender: TObject);
begin
  inherited;


  if dm.cds_mov_OB.Active then
    dm.cds_mov_OB.Close;
  dm.cds_mov_OB.Params[0].AsInteger := dm.cds_ObitosID.AsInteger;
  dm.cds_mov_OB.Open;

  if dm.cds_mov_OB.IsEmpty then
   dm.cds_mov_OB.Close;

  if dm.cds_itens.Active then
    dm.cds_itens.Close;
  if(dm.cds_ObitosID.AsInteger <> 0)  then
  begin
   tipov := '';
  end;
  if(tipov = 'TR') then
  begin
  dm.cds_itens.Params[0].AsInteger := 0;
  end else
  dm.cds_itens.Params[0].AsInteger := dm.cds_mov_OBID_MOVIMENTO.AsInteger;
  dm.cds_itens.Open;

  if dm.cds_itens.IsEmpty then
   dm.cds_itens.Close;
end;

procedure TfVendas.btnGravarClick(Sender: TObject);
var
   ano, mes, dia: word;
   I, np1: integer;
   data,np2,sql_texto:string;
   Sobra, parcela, np: double;
   TD : TTransactionDesc ;
   atualizar : string ;
   quant : integer;

begin
 // gero o codigo da tabela Movimento
{ if(tipov = 'TR') then
 begin
 exit;

 end;
}
 if dm.cds_mov_OB.State in [dsInsert] then
 begin
    if dm.c_6_genid.Active then
       dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MOVIMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_mov_OBID_MOVIMENTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
 end;

 // salvo o Movimento
 inherited;
 //********************************************************************************
 // aqui corrijo o codigo do movimento na tabela mov_detalhe
  if (dm.cds_itensID_MOVIMENTO.AsInteger = 1999999) then
  begin
    dm.cds_itens.First;
    while not dm.cds_itens.Eof do
    begin
       if dm.cds_itens.State in [dsbrowse] then
         dm.cds_itens.Edit;
       if dm.cds_mov_OB.State in [dsbrowse] then
         dm.cds_mov_OB.Edit;
       dm.cds_mov_OBVALOR_NF.AsFloat := dm.cds_mov_OBVALOR_NF.AsFloat + dm.cds_itensVALTOTAL.AsFloat;
       dm.cds_mov_OB.ApplyUpdates(0);
       if dm.c_6_genid.Active then
           dm.c_6_genid.Close;
       dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MOVIMENTODETALHE, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
       dm.c_6_genid.Open;
       dm.cds_itensID_MOVIMENTO.AsInteger := dm.cds_mov_OBID_MOVIMENTO.AsInteger;
       dm.cds_itensID_DETALHE.AsInteger := dm.c_6_genidCODIGO.AsInteger;
       dm.c_6_genid.Close;


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
   atualizar := atualizar +  IntToStr(quant - dm.cds_itensQUANTIDADE.AsInteger);
   atualizar := atualizar + ' where ID_PRODUTO = ';
   atualizar := atualizar + IntToStr(dm.cds_itensID_PRODUTO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);




       dm.cds_itens.Post;
       dm.cds_itens.Next;
    end;
  end;
  dm.cds_itens.ApplyUpdates(0);
 //***************************************************************************
 //                   Gravo informações na tabela venda                      *
 //***************************************************************************
  if dm.cds_venda.Active then
    dm.cds_venda.Close;
  dm.cds_venda.Params[0].AsInteger := dm.cds_mov_OBID_MOVIMENTO.AsInteger;
  dm.cds_venda.Open;
 if dm.cds_venda.IsEmpty then
 begin
  dm.cds_venda.Append;
 // gera codigo para tab. Socios mensalistas
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_VENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  dm.cds_vendaID_VENDA.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;
  dm.cds_vendaID_MOVIMENTO.AsInteger := dm.cds_mov_OBID_MOVIMENTO.AsInteger;
  dm.cds_vendaID_CLIENTE.AsInteger := dm.cds_mov_OBID_OBITO.AsInteger;
  dm.cds_vendaVALOR.AsFloat := dm.cds_mov_OBVALOR_NF.AsFloat;
  dm.cds_vendaDATAVENDA.AsDateTime := Date;
  dm.cds_vendaDATAVENCIMENTO.AsDateTime := Date;
  dm.cds_vendaVALOR.AsFloat := dm.cds_mov_OBVALOR_NF.AsFloat;
  dm.cds_vendaSERIE.AsString := dm.cds_ObitosSERIE_NF.AsString;
  dm.cds_vendaNOTAFISCAL.AsInteger := dm.cds_ObitosNOTAFISCAL.AsInteger;
  dm.cds_venda.ApplyUpdates(0);
 end
 else
 begin
   if dm.cds_vendaSERIE.AsString <> dm.cds_ObitosSERIE_NF.AsString then
   begin
     dm.cds_venda.Edit;
     dm.cds_vendaVALOR.AsFloat := dm.cds_mov_OBVALOR_NF.AsFloat;
     dm.cds_vendaSERIE.AsString := dm.cds_ObitosSERIE_NF.AsString;
     dm.cds_vendaNOTAFISCAL.AsInteger := dm.cds_ObitosNOTAFISCAL.AsInteger;
     dm.cds_venda.ApplyUpdates(0);
   end;
 end;
end;

procedure TfVendas.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  {  btnIncluir.Enabled:=DtSrc.State in [dsInactive];
  btnGravar.Enabled:=DtSrc.State in [dsEdit, dsInsert];
  btnCancelar.Enabled:=DtSrc.State in [dsEdit, dsInsert];
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse];

  if DtSrc.State in [dsBrowse, dsInsert, dsEdit] then
  begin
    btnIncluir.Top := -100;
    btnexcluir.Top := 7;
    btngravar.Top := 7;
    btnCancelar.Top := -100;
  end;

  if DtSrc.State in [dsInactive] then
  begin
    btnIncluir.Top := 7;
    btnexcluir.Top := 7;
    btngravar.Top := -100;
    btnCancelar.Top := -100;
  end;}
  
end;

procedure TfVendas.btnExcluirClick(Sender: TObject);
var
  sql_texto, deleta:string;
begin

    F_autoriza := TF_autoriza.Create(Application);
    try
      F_autoriza.ShowModal;
    finally
      F_autoriza.Free;
    end;

    if (DM.RESULTADO = 'CANCEL') then
       exit;

    if (DM.RESULTADO = 'FALSE') then
    begin
       ShowMessage('Usuario não tem autorização para executar essa operação!');
       exit;
    end;

  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    {  deleta := 'update recebimentos  where ID = ';
     deleta := deleta + '''' + IntToStr(dm.cds_ObitosID.AsInteger) + '''';
     deleta := deleta + ' and TIPO_DOC = ';
     deleta := deleta + '''OB''';
     dm.SQLObitos.ExecuteDirect(deleta);
    }
     deleta := 'delete from recebimentos where ID = ';
     deleta := deleta + '''' + IntToStr(dm.cds_ObitosID.AsInteger) + '''';
     deleta := deleta + ' and TIPO_DOC = ';
     deleta := deleta + '''OB''';
     dm.SQLObitos.ExecuteDirect(deleta);

     //***************************************************************************
     //                   Baixa o Estoque                                        *
     //***************************************************************************
      if sds_lote1.Active then
        sds_lote1.Close;
      sds_lote1.CommandText := '';
      sql_texto := 'EXECUTE PROCEDURE SP_ATUALIZA_ESTOQUE ';
      sql_texto := sql_texto + '( ';
      sql_texto := sql_texto + '''' + IntToStr(dm.cds_mov_OBID_MOVIMENTO.AsInteger) + '''';
      sql_texto := sql_texto + ' , ';
      sql_texto := sql_texto + '''Excluir_V''';
      sql_texto := sql_texto + ' )';
      sds_lote1.CommandText := sql_Texto;
      sds_lote1.ExecSQL;
    //  inherited;
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
      if dm.cds_itens.Active then
         dm.cds_itens.Close;
      if dm.cds_CR.Active then
         dm.cds_CR.Close;
  end;
end;

procedure TfVendas.BitBtn8Click(Sender: TObject);
var
   TD : TTransactionDesc ;
   atualizar : string ;
   quant : integer;
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;
  if  MessageDlg('Confirma a exclusão do item ''' + dm.cds_itensDESCRICAO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
  //   DtSrc_itens.DataSet.Delete;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update  MOVIMENTODETALHE set STATUS = ';
   atualizar := atualizar + QuotedStr('E');
   atualizar := atualizar + ',  QUANTIDADE = ';
   atualizar := atualizar +  IntToStr(0);  
   atualizar := atualizar + ' where ID_DETALHE = ';
   atualizar := atualizar + IntToStr(dm.cds_itensID_DETALHE.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

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
   atualizar := atualizar +  IntToStr(quant + dm.cds_itensQUANTIDADE.AsInteger);
   atualizar := atualizar + ' where ID_PRODUTO = ';
   atualizar := atualizar + IntToStr(dm.cds_itensID_PRODUTO.AsInteger);
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);

   dm.cds_itens.Refresh;
  
end;

procedure TfVendas.SpeedButton5Click(Sender: TObject);
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
     dm.cds_itensPRECO.AsFloat := proc_produtoV_VENDA.AsFloat;
     dm.cds_itensPRECO_REAL.AsFloat := proc_produtoVC_REAL.AsFloat;
   end;
   finally
    proc_produto.Close;
    fProcurar.Free;
   end;
   DBEdit6.SetFocus;
end;

procedure TfVendas.BitBtn1Click(Sender: TObject);
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
     dm.cds_itensPRECO.AsFloat := proc_produtoV_VENDA.AsFloat;
     dm.cds_itensPRECO_REAL.AsFloat := proc_produtoVC_REAL.AsFloat;
   end;
   finally
    proc_produto.Close;
    fProcurar.Free;
   end;
   DBEdit6.SetFocus;
end;

procedure TfVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if(tipov = 'TR') then
  begin
    exit;
  end;

 if dm.cds_Obitos.State in [dsBrowse] then
    dm.cds_Obitos.Edit;
  dm.cds_ObitosVALOR_SERVICO.AsFloat := dm.cds_mov_OBVALOR_NF.AsFloat;
  dm.cds_ObitosVENCIMENTO.Value := dm.cds_mov_OBDATAMOVIMENTO.Value;
  
  inherited;

end;

procedure TfVendas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not odd(dm.cds_itens.RecNo) then // se for impar
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

end.
