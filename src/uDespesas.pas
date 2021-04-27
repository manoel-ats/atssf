unit uDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, SqlExpr, Provider, FMTBcd, DBClient, StdCtrls, Buttons,
  Mask, DBCtrls, DB, DBLocal, DBLocalS, Menus, dxCore, dxButton, ExtCtrls,
  Grids, DBGrids, XPMenu;

type
  TfDespesas = class(TfPai)
    Panel2: TPanel;
    proc_fornecedor: TSQLClientDataSet;
    proc_fornecedorID_FORNECEDOR: TIntegerField;
    proc_fornecedorNOME_FERNECEDOR: TStringField;
    GroupBox1: TGroupBox;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit3: TDBEdit;
    sds_pag: TSQLDataSet;
    dsp_pag: TDataSetProvider;
    cds_compra: TClientDataSet;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    BitBtn2: TBitBtn;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox2: TDBComboBox;
    Label12: TLabel;
    SpeedButton12: TSpeedButton;
    DBGrid1: TDBGrid;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    dtsrc_CP: TDataSource;
    sds_CP: TSQLDataSet;
    dsp_CP: TDataSetProvider;
    cds_CP: TClientDataSet;
    cds_CPID_PAGAMENTO: TIntegerField;
    cds_CPTITULO: TStringField;
    cds_CPEMISSAO: TDateField;
    cds_CPDATAVENCIMENTO: TDateField;
    cds_CPDATAPAGAMENTO: TDateField;
    cds_CPCAIXA: TSmallintField;
    cds_CPCONTADEBITO: TIntegerField;
    cds_CPCONTACREDITO: TIntegerField;
    cds_CPVIA: TStringField;
    cds_CPDATABAIXA: TDateField;
    cds_CPHISTORICO: TStringField;
    cds_CPCODCOMPRA: TIntegerField;
    cds_CPCODALMOXARIFADO: TSmallintField;
    cds_CPCODCOMPRADOR: TSmallintField;
    cds_CPCODUSUARIO: TSmallintField;
    cds_CPN_DOCUMENTO: TStringField;
    cds_CPDATASISTEMA: TSQLTimeStampField;
    cds_CPVALORRECEBIDO: TFloatField;
    cds_CPJUROS: TFloatField;
    cds_CPDESCONTO: TFloatField;
    cds_CPPERDA: TFloatField;
    cds_CPTROCA: TFloatField;
    cds_CPFUNRURAL: TFloatField;
    cds_CPVALOR_PRIM_VIA: TFloatField;
    cds_CPVALOR_RESTO: TFloatField;
    cds_CPVALORTITULO: TFloatField;
    cds_CPOUTRO_CREDITO: TFloatField;
    cds_CPOUTRO_DEBITO: TFloatField;
    cds_CPPARCELAS: TIntegerField;
    cds_CPID_COMPRA: TIntegerField;
    cds_CPID_FORNECEDOR: TIntegerField;
    cds_CPSELECIONOU: TStringField;
    cds_CPOBS: TGraphicField;
    cds_CPENTRADA: TFloatField;
    cds_CPTIPO_DOC: TStringField;
    cds_CPNOME_FERNECEDOR: TStringField;
    cds_CPDESCRICAO: TStringField;
    sds_CPID_PAGAMENTO: TIntegerField;
    sds_CPTITULO: TStringField;
    sds_CPEMISSAO: TDateField;
    sds_CPDATAVENCIMENTO: TDateField;
    sds_CPDATAPAGAMENTO: TDateField;
    sds_CPCAIXA: TSmallintField;
    sds_CPCONTADEBITO: TIntegerField;
    sds_CPCONTACREDITO: TIntegerField;
    sds_CPVIA: TStringField;
    sds_CPDATABAIXA: TDateField;
    sds_CPHISTORICO: TStringField;
    sds_CPCODCOMPRA: TIntegerField;
    sds_CPCODALMOXARIFADO: TSmallintField;
    sds_CPCODCOMPRADOR: TSmallintField;
    sds_CPCODUSUARIO: TSmallintField;
    sds_CPN_DOCUMENTO: TStringField;
    sds_CPDATASISTEMA: TSQLTimeStampField;
    sds_CPVALORRECEBIDO: TFloatField;
    sds_CPJUROS: TFloatField;
    sds_CPDESCONTO: TFloatField;
    sds_CPPERDA: TFloatField;
    sds_CPTROCA: TFloatField;
    sds_CPFUNRURAL: TFloatField;
    sds_CPVALOR_PRIM_VIA: TFloatField;
    sds_CPVALOR_RESTO: TFloatField;
    sds_CPVALORTITULO: TFloatField;
    sds_CPOUTRO_CREDITO: TFloatField;
    sds_CPOUTRO_DEBITO: TFloatField;
    sds_CPPARCELAS: TIntegerField;
    sds_CPID_COMPRA: TIntegerField;
    sds_CPID_FORNECEDOR: TIntegerField;
    sds_CPSELECIONOU: TStringField;
    sds_CPOBS: TGraphicField;
    sds_CPENTRADA: TFloatField;
    sds_CPTIPO_DOC: TStringField;
    sds_CPNOME_FERNECEDOR: TStringField;
    sds_CPDESCRICAO: TStringField;
    cds_compraID_DEPREC: TIntegerField;
    cds_compraID_FORNECEDOR: TIntegerField;
    cds_compraDATAEMISAO: TDateField;
    cds_compraDATAVENCIMENTO: TDateField;
    cds_compraID_COMPRADOR: TSmallintField;
    cds_compraSTATUS: TSmallintField;
    cds_compraID_USUARIO: TSmallintField;
    cds_compraDATASISTEMA: TDateField;
    cds_compraNOTAFISCAL: TIntegerField;
    cds_compraSERIE: TStringField;
    cds_compraCODCCUSTO: TSmallintField;
    cds_compraN_PARCELA: TSmallintField;
    cds_compraN_DOCUMENTO: TStringField;
    cds_compraCAIXA: TSmallintField;
    cds_compraVALOR: TFloatField;
    cds_compraDESCONTO: TFloatField;
    cds_compraMULTA_JUROS: TFloatField;
    cds_compraAPAGAR: TFloatField;
    cds_compraVALOR_PAGAR: TFloatField;
    cds_compraENTRADA: TFloatField;
    cds_compraN_BOLETO: TStringField;
    cds_compraSTATUS1: TStringField;
    cds_compraVALOR_ICMS: TFloatField;
    cds_compraVALOR_IPI: TFloatField;
    cds_compraVALOR_FRETE: TFloatField;
    cds_compraVALOR_SEGURO: TFloatField;
    cds_compraOUTRAS_DESP: TFloatField;
    cds_compraOBS: TGraphicField;
    cds_compraNOME_FERNECEDOR: TStringField;
    cds_compraDESCRICAO: TStringField;
    sds_pagID_DEPREC: TIntegerField;
    sds_pagID_FORNECEDOR: TIntegerField;
    sds_pagDATAEMISAO: TDateField;
    sds_pagDATAVENCIMENTO: TDateField;
    sds_pagID_COMPRADOR: TSmallintField;
    sds_pagSTATUS: TSmallintField;
    sds_pagID_USUARIO: TSmallintField;
    sds_pagDATASISTEMA: TDateField;
    sds_pagNOTAFISCAL: TIntegerField;
    sds_pagSERIE: TStringField;
    sds_pagCODCCUSTO: TSmallintField;
    sds_pagN_PARCELA: TSmallintField;
    sds_pagN_DOCUMENTO: TStringField;
    sds_pagCAIXA: TSmallintField;
    sds_pagVALOR: TFloatField;
    sds_pagDESCONTO: TFloatField;
    sds_pagMULTA_JUROS: TFloatField;
    sds_pagAPAGAR: TFloatField;
    sds_pagVALOR_PAGAR: TFloatField;
    sds_pagENTRADA: TFloatField;
    sds_pagN_BOLETO: TStringField;
    sds_pagSTATUS1: TStringField;
    sds_pagVALOR_ICMS: TFloatField;
    sds_pagVALOR_IPI: TFloatField;
    sds_pagVALOR_FRETE: TFloatField;
    sds_pagVALOR_SEGURO: TFloatField;
    sds_pagOUTRAS_DESP: TFloatField;
    sds_pagOBS: TGraphicField;
    sds_pagNOME_FERNECEDOR: TStringField;
    sds_pagDESCRICAO: TStringField;
    sds_CPFORMAPAGAMENTO: TStringField;
    cds_CPFORMAPAGAMENTO: TStringField;
    sds_pagFORMAPAGAMENTO: TStringField;
    sds_pagDATAPAGTO: TDateField;
    sds_pagDATABAIXA: TDateField;
    sds_pagPARCELAS: TFloatField;
    cds_compraFORMAPAGAMENTO: TStringField;
    cds_compraDATAPAGTO: TDateField;
    cds_compraDATABAIXA: TDateField;
    cds_compraPARCELAS: TFloatField;
    sds_CPID_DEPREC: TIntegerField;
    cds_CPID_DEPREC: TIntegerField;
    sds_CPSTATUS: TStringField;
    cds_CPSTATUS: TStringField;
    XPMenu1: TXPMenu;
    dxButton2: TdxButton;
    proc_despesa: TSQLClientDataSet;
    proc_despesaDATAEMISAO: TDateField;
    proc_despesaDATAVENCIMENTO: TDateField;
    proc_despesaNOTAFISCAL: TIntegerField;
    proc_despesaNOME_FERNECEDOR: TStringField;
    proc_despesaID_DEPREC: TIntegerField;
    BitBtn3: TBitBtn;
    Label16: TLabel;
    Label15: TLabel;
    sds_pagTIPO: TStringField;
    cds_compraTIPO: TStringField;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    DBComboBox1: TDBComboBox;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDespesas: TfDespesas;

implementation

uses UDM, uProcurar, uCCusto, uCheques;

{$R *.dfm}

procedure TfDespesas.BitBtn1Click(Sender: TObject);
begin
  inherited;
 fProcurar:=TfProcurar.Create(self,proc_fornecedor);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_FERNECEDOR';
   fProcurar.btnIncluir.Visible := true;
   varform := 'Despesa';
   if fProcurar.ShowModal=mrOk then
   begin
     cds_compraID_FORNECEDOR.AsInteger := proc_fornecedorID_FORNECEDOR.AsInteger;
     cds_compraNOME_FERNECEDOR.AsString := proc_fornecedorNOME_FERNECEDOR.AsString;
   end;
   finally
    proc_fornecedor.Close;
    fProcurar.Free;
   end;
  DBComboBox1.SetFocus;
end;

procedure TfDespesas.btnGravarClick(Sender: TObject);
var
   ano, mes, dia: word;
   I, np1: integer;
   data,np2:string;
   Sobra, parcela, np: double;
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DESP_REC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_compraID_DEPREC.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;
//***************************************
// abre a tabela Pag.                   *
//***************************************
  if (cds_CP.Active) then
     cds_CP.Close;
  cds_CP.Params[0].Clear;
  cds_CP.Params[0].AsInteger := proc_despesaID_DEPREC.AsInteger;
  cds_CP.Open;
//***************************************
// se ñ estiver vazia cancelo a inserção*
//***************************************
  if (not cds_CP.IsEmpty) then
     exit;

//***************************************
// gera contas a Pagar                  *
//***************************************
   data :=DateToStr(cds_compraDATAVENCIMENTO.AsDateTime);
   if DBEdit11.Text <>'' then
   begin
     Sobra := cds_compraVALOR.Value - cds_compraENTRADA.Value;
     if cds_compraPARCELAS.AsInteger > 1 then
       np:=cds_compraPARCELAS.Value - 1;
     if np = 0 then
       np := 1;
     if Sobra <> 0 then
       parcela := Sobra / np;
   end
   else
    parcela := cds_compraVALOR.Value / cds_compraPARCELAS.Value;
   np:=cds_compraPARCELAS.Value;
   np2 := floatToStr(np);
   np1 := StrToInt(np2);
   if not dtsrc_CP.DataSet.Active then
      dtsrc_CP.DataSet.Open;
   dtsrc_CP.DataSet.Append;
   cds_cpDATAVENCIMENTO.AsDateTime :=cds_compraDATAVENCIMENTO.AsDateTime;
   for I:=1 to np1 do
   begin
    if cds_cp.State <> dsinsert then
       cds_cp.Append;
    cds_CPID_DEPREC.AsInteger:=cds_compraID_DEPREC.AsInteger;
    cds_cpPARCELAS.AsInteger:=I;
    if DBEdit11.Text <> '' then
    begin
      if I=1 then
      begin
        cds_cpTITULO.AsString:=IntToStr(cds_compraNOTAFISCAL.AsInteger);
        cds_cpDATAVENCIMENTO.AsDateTime :=cds_compraDATAVENCIMENTO.AsDateTime;
        cds_cpDATAPAGAMENTO.AsDateTime :=now;
        cds_cpEMISSAO.AsDateTime :=now;
        cds_cpSTATUS.Value:='Pago';
        cds_cpTIPO_DOC.AsString := 'DP';
        cds_cpID_FORNECEDOR.AsInteger := cds_compraID_FORNECEDOR.AsInteger;
        cds_cpVALORTITULO.Value:=cds_compraVALOR.Value;
        cds_cpVALORRECEBIDO.Value:=cds_compraENTRADA.Value;
        cds_cpVALOR_PRIM_VIA.Value:=cds_compraENTRADA.Value;
        cds_cpVIA.AsString := '1';
        cds_cpFORMAPAGAMENTO.AsString := cds_compraFORMAPAGAMENTO.AsString;
     // gera codigo para tab. Pagamentos
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PAGAMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_cpID_PAGAMENTO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
     //********************************************************************
        cds_cp.Post;
        data := DateToStr(cds_cpDATAVENCIMENTO.AsDateTime);
      end
      else
      begin
        decodedate(StrToDate(data), Ano, mes, dia);
        mes:=mes+1;
        if mes<=12 then
        begin
          cds_cpDATAVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_cpDATAVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_cpTITULO.AsString:=IntToStr(cds_compraNOTAFISCAL.AsInteger);
          cds_cpEMISSAO.AsDateTime :=now;
          cds_cpSTATUS.Value:='Pendente';
          cds_cpTIPO_DOC.AsString := 'DP';
          cds_cpID_FORNECEDOR.AsInteger := cds_compraID_FORNECEDOR.AsInteger;
          cds_cpVALORTITULO.Value:=cds_compraVALOR.Value;
          cds_cpVALOR_RESTO.Value:=parcela;
          cds_cpVALORRECEBIDO.Value:=0;
          cds_cpVALOR_PRIM_VIA.Value:=parcela;
          cds_cpVIA.AsString := '1';
       // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PAGAMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_cpID_PAGAMENTO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_cp.Post;
          data := DateToStr(cds_cpDATAVENCIMENTO.AsDateTime);
      end;
    end
    else
    begin
        decodedate(StrToDate(data), Ano, mes, dia);
        mes:=mes+1;
        if mes<=12 then
        begin
          cds_cpDATAVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_cpDATAVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_cpTITULO.AsString:=IntToStr(cds_compraNOTAFISCAL.AsInteger);
          cds_cpTIPO_DOC.AsString := 'DP';
          cds_cpID_FORNECEDOR.AsInteger := cds_compraID_FORNECEDOR.AsInteger;
          cds_cpSTATUS.Value:='Pendente';
          cds_cpVALORTITULO.Value:=cds_compraVALOR.Value;
          cds_cpVALOR_RESTO.Value:=parcela;
          cds_cpVALOR_PRIM_VIA.Value:=parcela;
          cds_cpVALORRECEBIDO.Value:=0;
          cds_cpVIA.AsString := '1';
       // gera codigo para tab. Pagamentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PAGAMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
           cds_cpID_PAGAMENTO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_cp.Post;
          data := DateToStr(cds_cpDATAVENCIMENTO.AsDateTime);
    end;
   end;
   cds_CP.ApplyUpdates(0);
    if cds_CP.Active then
      cds_CP.Close;
    cds_CP.Params[0].AsInteger := cds_compraID_DEPREC.AsInteger;
    cds_CP.Open;
end;

procedure TfDespesas.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfDespesas.BitBtn2Click(Sender: TObject);
begin
  inherited;
   tipoform := 'DESPESA';
   fCCusto := TfCCusto.Create(Application);
   try
     form_usa := 'Despesas';
     fCCusto.ShowModal;
     cds_compraCODCCUSTO.AsInteger := ID;
     cds_compraDESCRICAO.AsString := descricao;
   finally
     fCCusto.Free;
   end;
   DBEdit9.SetFocus;
end;

procedure TfDespesas.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInsert] then
  begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DESP_REC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_compraID_DEPREC.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    DtSrc.DataSet.Post;
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
  end;
  tipo := 'DP';
  fCheques := TfCheques.Create(Application);
  try
    fCheques.ShowModal;
  finally
    fCheques.Free;
  end;
  cds_compra.Edit;
end;

procedure TfDespesas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (cds_CP.Active) then
    cds_CP.Close;
  cds_compraTIPO.AsString := 'D';
  cds_compraDATASISTEMA.AsDateTime := now;
  cds_compraDATAEMISAO.AsDateTime := now;
  cds_compraDATAVENCIMENTO.AsDateTime := now;  
  BitBtn1.Click;
end;

procedure TfDespesas.dxButton2Click(Sender: TObject);
begin
  inherited;
 fProcurar:=TfProcurar.Create(self,proc_despesa);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_FERNECEDOR';
   if fProcurar.ShowModal=mrOk then
   begin
     if (cds_compra.Active) then
       cds_compra.Close;
     cds_compra.Params[0].Clear;
     cds_compra.Params[0].AsInteger := proc_despesaID_DEPREC.AsInteger;
     cds_compra.Open;
     if (cds_CP.Active) then
       cds_CP.Close;
     cds_CP.Params[0].Clear;
     cds_CP.Params[0].AsInteger := proc_despesaID_DEPREC.AsInteger;
     cds_CP.Open;
   end;
   finally
    proc_fornecedor.Close;
    fProcurar.Free;
   end;
end;

procedure TfDespesas.BitBtn3Click(Sender: TObject);
begin
  inherited;
  cds_CP.ApplyUpdates(0);
end;

procedure TfDespesas.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     dtsrc_CP.DataSet.Delete;
     (dtsrc_CP.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfDespesas.btnExcluirClick(Sender: TObject);
begin
   if (cds_CP.Active) then
     cds_CP.Close;
   cds_CP.Params[0].Clear;
   cds_CP.Params[0].AsInteger := cds_compraID_DEPREC.AsInteger;
   cds_CP.Open;
   if (not cds_CP.IsEmpty) then
   begin
     MessageDlg('Primeiro exclua as parcelas, pra depois excluir a Despesa', mtError, [mbOK], 0);
     exit;
   end;
  inherited;

end;

end.
