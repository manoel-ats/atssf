unit uReceitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, SqlExpr, Provider, FMTBcd, XPMenu, DB, DBClient, DBLocal,
  DBLocalS, Grids, DBGrids, StdCtrls, DBCtrls, Buttons, Mask, Menus,
  dxCore, dxButton, ExtCtrls;

type
  TfReceitas = class(TfPai)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    SpeedButton12: TSpeedButton;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    BitBtn2: TBitBtn;
    DBEdit10: TDBEdit;
    DBMemo1: TDBMemo;
    DBComboBox2: TDBComboBox;
    DBGrid1: TDBGrid;
    DBEdit11: TDBEdit;
    sds_pag: TSQLDataSet;
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
    sds_pagDESCRICAO: TStringField;
    sds_pagFORMAPAGAMENTO: TStringField;
    sds_pagDATAPAGTO: TDateField;
    sds_pagDATABAIXA: TDateField;
    sds_pagPARCELAS: TFloatField;
    dsp_pag: TDataSetProvider;
    cds_pag: TClientDataSet;
    cds_pagID_DEPREC: TIntegerField;
    cds_pagID_FORNECEDOR: TIntegerField;
    cds_pagDATAEMISAO: TDateField;
    cds_pagDATAVENCIMENTO: TDateField;
    cds_pagID_COMPRADOR: TSmallintField;
    cds_pagSTATUS: TSmallintField;
    cds_pagID_USUARIO: TSmallintField;
    cds_pagDATASISTEMA: TDateField;
    cds_pagNOTAFISCAL: TIntegerField;
    cds_pagSERIE: TStringField;
    cds_pagCODCCUSTO: TSmallintField;
    cds_pagN_PARCELA: TSmallintField;
    cds_pagN_DOCUMENTO: TStringField;
    cds_pagCAIXA: TSmallintField;
    cds_pagVALOR: TFloatField;
    cds_pagDESCONTO: TFloatField;
    cds_pagMULTA_JUROS: TFloatField;
    cds_pagAPAGAR: TFloatField;
    cds_pagVALOR_PAGAR: TFloatField;
    cds_pagENTRADA: TFloatField;
    cds_pagN_BOLETO: TStringField;
    cds_pagSTATUS1: TStringField;
    cds_pagVALOR_ICMS: TFloatField;
    cds_pagVALOR_IPI: TFloatField;
    cds_pagVALOR_FRETE: TFloatField;
    cds_pagVALOR_SEGURO: TFloatField;
    cds_pagOUTRAS_DESP: TFloatField;
    cds_pagOBS: TGraphicField;
    cds_pagDESCRICAO: TStringField;
    cds_pagFORMAPAGAMENTO: TStringField;
    cds_pagDATAPAGTO: TDateField;
    cds_pagDATABAIXA: TDateField;
    cds_pagPARCELAS: TFloatField;
    dtsrc_CP: TDataSource;
    sds_CP: TSQLDataSet;
    dsp_CP: TDataSetProvider;
    cds_CP: TClientDataSet;
    XPMenu1: TXPMenu;
    proc_despesa: TSQLClientDataSet;
    proc_despesaID_DEPREC: TIntegerField;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    ComboBox3: TComboBox;
    sds_pagTIPO: TStringField;
    cds_pagTIPO: TStringField;
    cds_CPID_RECEBIMENTOS: TIntegerField;
    cds_CPID: TIntegerField;
    cds_CPVALOR_NF: TFloatField;
    cds_CPVALOR_RECEBER: TFloatField;
    cds_CPPARCELA: TIntegerField;
    cds_CPVENCIMENTO: TDateField;
    cds_CPDATA_PAG: TDateField;
    cds_CPSTATUS: TStringField;
    cds_CPVALOR_PAGO: TFloatField;
    cds_CPVALOR_DIF: TFloatField;
    cds_CPJUROS: TFloatField;
    cds_CPDESCONTO: TFloatField;
    cds_CPMULTA: TFloatField;
    cds_CPEMISSAO: TDateField;
    cds_CPN_DOCUMENTO: TStringField;
    cds_CPCAIXA: TStringField;
    cds_CPFORMARECEBIMENTO: TStringField;
    cds_CPVALOR_A_REC: TFloatField;
    cds_CPTITULO: TIntegerField;
    cds_CPVALOR_1VIA: TFloatField;
    cds_CPID_SOCIO: TIntegerField;
    cds_CPLOTE: TIntegerField;
    cds_CPGEROU: TStringField;
    cds_CPDATA_DOC: TDateField;
    cds_CPGRUPO: TStringField;
    cds_CPID_BANCO: TIntegerField;
    cds_CPSITUACAO: TStringField;
    cds_CPTIPO_DOC: TStringField;
    cds_CPSELECIONOU: TStringField;
    cds_CPSERIE: TStringField;
    cds_CPPERCENTUALJUROS: TFloatField;
    cds_CPPERCENTUALMULTA: TFloatField;
    cds_CPPERCENTUALDESCONTO: TFloatField;
    cds_CPVALOROUTROSACRESCIMOS: TFloatField;
    cds_CPCODIGO: TIntegerField;
    cds_CPOBS: TGraphicField;
    cds_CPENTRADA: TFloatField;
    cds_CPCODCCUSTO: TSmallintField;
    cds_CPID_DEPREC: TIntegerField;
    cds_CPNOME_SOCIO: TStringField;
    sds_CPID_RECEBIMENTOS: TIntegerField;
    sds_CPID: TIntegerField;
    sds_CPVALOR_NF: TFloatField;
    sds_CPVALOR_RECEBER: TFloatField;
    sds_CPPARCELA: TIntegerField;
    sds_CPVENCIMENTO: TDateField;
    sds_CPDATA_PAG: TDateField;
    sds_CPSTATUS: TStringField;
    sds_CPVALOR_PAGO: TFloatField;
    sds_CPVALOR_DIF: TFloatField;
    sds_CPJUROS: TFloatField;
    sds_CPDESCONTO: TFloatField;
    sds_CPMULTA: TFloatField;
    sds_CPEMISSAO: TDateField;
    sds_CPN_DOCUMENTO: TStringField;
    sds_CPCAIXA: TStringField;
    sds_CPFORMARECEBIMENTO: TStringField;
    sds_CPVALOR_A_REC: TFloatField;
    sds_CPTITULO: TIntegerField;
    sds_CPVALOR_1VIA: TFloatField;
    sds_CPID_SOCIO: TIntegerField;
    sds_CPLOTE: TIntegerField;
    sds_CPGEROU: TStringField;
    sds_CPDATA_DOC: TDateField;
    sds_CPGRUPO: TStringField;
    sds_CPID_BANCO: TIntegerField;
    sds_CPSITUACAO: TStringField;
    sds_CPTIPO_DOC: TStringField;
    sds_CPSELECIONOU: TStringField;
    sds_CPSERIE: TStringField;
    sds_CPPERCENTUALJUROS: TFloatField;
    sds_CPPERCENTUALMULTA: TFloatField;
    sds_CPPERCENTUALDESCONTO: TFloatField;
    sds_CPVALOROUTROSACRESCIMOS: TFloatField;
    sds_CPCODIGO: TIntegerField;
    sds_CPOBS: TGraphicField;
    sds_CPENTRADA: TFloatField;
    sds_CPCODCCUSTO: TSmallintField;
    sds_CPID_DEPREC: TIntegerField;
    sds_CPNOME_SOCIO: TStringField;
    dxButton2: TdxButton;
    proc_despesaNOTAFISCAL: TIntegerField;
    proc_despesaDATAEMISAO: TDateField;
    proc_despesaDATAVENCIMENTO: TDateField;
    BitBtn4: TBitBtn;
    sds_pagNOME: TStringField;
    cds_pagNOME: TStringField;
    proc_despesaNOME: TStringField;
    dxButton5: TdxButton;
    dxButton1: TdxButton;
    DBComboBox1: TDBComboBox;
    Label9: TLabel;
    sds_CPNOTAFISCAL: TIntegerField;
    cds_CPNOTAFISCAL: TIntegerField;
    sds_pagNOME_DEP: TStringField;
    cds_pagNOME_DEP: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReceitas: TfReceitas;

implementation

uses UDM, uProcurar, uFiltroProcura, uProcGrupo, uProcura_Trimestral,
  uCCusto, uCheques;

{$R *.dfm}

procedure TfReceitas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (cds_CP.Active) then
    cds_CP.Close;
  cds_pagTIPO.AsString := 'R';
  cds_pagDATASISTEMA.AsDateTime := now;
  cds_pagDATAEMISAO.AsDateTime := now;
  DBEdit4.SetFocus;
end;

procedure TfReceitas.BitBtn1Click(Sender: TObject);
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
          cds_pagID_FORNECEDOR.AsInteger := fFiltroProcura.cds_mensalID_DEP.AsInteger;
          cds_pagNOME_DEP.AsString := fFiltroProcura.cds_mensalNOME_DEP.AsString;
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
          cds_pagID_FORNECEDOR.AsInteger := fProcGrupo.cds_mensalID_DEP.AsInteger;
          cds_pagNOME_DEP.AsString := fProcGrupo.cds_mensalNOME_DEP.AsString;
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
          cds_pagID_FORNECEDOR.AsInteger := fProcura_Trimestral.cds_mensalID_DEP.AsInteger;
          cds_pagNOME_DEP.AsString := fProcura_Trimestral.cds_mensalNOME_DEP.AsString;
        end;
     finally
       fProcura_Trimestral.cds_mensal.Close;
       fProcura_Trimestral.Free;
     end;
   end;
  DBEdit2.SetFocus;
end;

procedure TfReceitas.BitBtn2Click(Sender: TObject);
begin
  inherited;
   tipoform := 'RECEITA';
   fCCusto := TfCCusto.Create(Application);
   try
     form_usa := 'Despesas';
     fCCusto.ShowModal;
     cds_pagCODCCUSTO.AsInteger := ID;
     cds_pagDESCRICAO.AsString := descricao;
   finally
     fCCusto.Free;
   end;
   DBEdit9.SetFocus;
end;

procedure TfReceitas.SpeedButton12Click(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DESP_REC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_pagID_DEPREC.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    DtSrc.DataSet.Post;
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
  end;
  tipo := 'RC';
  fCheques := TfCheques.Create(Application);
  try
    fCheques.ShowModal;
  finally
    fCheques.Free;
  end;
  cds_pag.Edit;
end;

procedure TfReceitas.BitBtn3Click(Sender: TObject);
begin
  inherited;
  cds_CP.ApplyUpdates(0);
end;

procedure TfReceitas.dxButton2Click(Sender: TObject);
begin
  inherited;
 fProcurar:=TfProcurar.Create(self,proc_despesa);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
   begin
     if (cds_pag.Active) then
       cds_pag.Close;
     cds_pag.Params[0].Clear;
     cds_pag.Params[0].AsInteger := proc_despesaID_DEPREC.AsInteger;
     cds_pag.Open;
     if (cds_CP.Active) then
       cds_CP.Close;
     cds_CP.Params[0].Clear;
     cds_CP.Params[0].AsInteger := proc_despesaID_DEPREC.AsInteger;
     cds_CP.Open;
   end;
   finally
    proc_despesa.Close;
    fProcurar.Free;
   end;
end;

procedure TfReceitas.btnGravarClick(Sender: TObject);
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
    cds_pagID_DEPREC.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

//***************************************
// abre a tabela Recebimentos           *
//***************************************
  if (cds_CP.Active) then
     cds_CP.Close;
  cds_CP.Params[0].Clear;
  cds_CP.Params[0].AsInteger := cds_pagID_DEPREC.AsInteger;
  cds_CP.Open;
//***************************************
// se ñ estiver vazia cancelo a inserção*
//***************************************
  if (not cds_CP.IsEmpty) then
     exit;
//***************************************
// gera contas a receber
   data :=DateToStr(cds_pagDATAVENCIMENTO.AsDateTime);
   if DBEdit11.Text <>'' then
   begin
     Sobra := cds_pagVALOR.Value - cds_pagENTRADA.Value;
     if cds_pagPARCELAS.AsFloat > 1 then
       np:=cds_pagPARCELAS.Value - 1;
     if Sobra <> 0 then
     parcela := Sobra / np;
   end
   else
    parcela := cds_pagVALOR.Value / cds_pagPARCELAS.Value;
   np:=cds_pagPARCELAS.Value;
   np2 := floatToStr(np);
   np1 := StrToInt(np2);
   if not dtsrc_CP.DataSet.Active then
      dtsrc_CP.DataSet.Open;
   dtsrc_CP.DataSet.Append;
   cds_CPVENCIMENTO.AsDateTime :=cds_pagDATAVENCIMENTO.AsDateTime;
   for I:=1 to np1 do
   begin
    if cds_CP.State <> dsinsert then
       cds_CP.Append;
    cds_CPID_DEPREC.AsInteger:=cds_pagID_DEPREC.AsInteger;
    cds_CPPARCELA.AsInteger:=I;
    cds_CPVALOR_NF.Value:=cds_pagVALOR.Value;
    cds_CPTIPO_DOC.AsString := 'RC';
    if DBEdit11.Text <> '' then
    begin
      if I=1 then
      begin
        cds_CPVENCIMENTO.AsDateTime := cds_pagDATAVENCIMENTO.AsDateTime;
        cds_CPDATA_PAG.AsDateTime :=now;
        cds_CPEMISSAO.AsDateTime :=now;
        cds_CPID_SOCIO.AsInteger := cds_pagID_FORNECEDOR.AsInteger;
        cds_CPSTATUS.Value:='Pago';
        cds_CPNOTAFISCAL.Value:=cds_pagNOTAFISCAL.Value;
        cds_CPVALOR_NF.Value:=cds_pagVALOR.Value;
        cds_CPVALOR_1VIA.Value:=cds_pagENTRADA.Value;
        cds_CPVALOR_PAGO.Value:=cds_pagENTRADA.Value;
     // gera codigo para tab. recebimentos
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_CPID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
     //********************************************************************
        cds_CP.Post;
        data := DateToStr(cds_CPVENCIMENTO.AsDateTime);
      end
      else
      begin
        decodedate(StrToDate(data), Ano, mes, dia);
         mes:=mes+1;
        if mes<=12 then
        begin
          cds_CPVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_CPVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_CPNOTAFISCAL.Value:=cds_pagNOTAFISCAL.Value;
          cds_CPEMISSAO.AsDateTime :=now;
          cds_CPID_SOCIO.AsInteger := cds_pagID_FORNECEDOR.AsInteger;
          cds_CPSTATUS.Value:='Pendente';
          cds_CPVALOR_NF.Value:=cds_pagVALOR.Value;
          cds_CPVALOR_1VIA.Value:=parcela;
          cds_CPVALOR_RECEBER.Value:=parcela;
          cds_CPVALOR_DIF.Value:=0;
          cds_CPVALOR_A_REC.Value:=0;
          cds_CPVALOR_PAGO.Value:=0;
          cds_CPDESCONTO.Value:=0;
          cds_CPJUROS.Value:=0;
       // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CPID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_CP.Post;
          data := DateToStr(cds_CPVENCIMENTO.AsDateTime);
      end;
    end
    else
    begin
        decodedate(StrToDate(data), Ano, mes, dia);
        if I > 1 then
        mes:=mes+1;
        if mes<=12 then
        begin
          cds_CPVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          cds_CPVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          cds_CPNOTAFISCAL.Value:=cds_pagNOTAFISCAL.Value;
          cds_CPEMISSAO.AsDateTime :=now;
          cds_CPID_SOCIO.AsInteger := cds_pagID_FORNECEDOR.AsInteger;
          cds_CPSTATUS.Value:='Pendente';
          cds_CPVALOR_NF.Value:=cds_pagVALOR.Value;
          cds_CPVALOR_1VIA.Value:=parcela;
          cds_CPVALOR_RECEBER.Value:=parcela;
          cds_CPVALOR_DIF.Value:=0;
          cds_CPVALOR_A_REC.Value:=0;
          cds_CPVALOR_PAGO.Value:=0;
          cds_CPDESCONTO.Value:=0;
          cds_CPJUROS.Value:=0;
         // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CPID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_CP.Post;
          data := DateToStr(cds_CPVENCIMENTO.AsDateTime);
    end;
   end;
   cds_CP.ApplyUpdates(0);
    if cds_CP.Active then
      cds_CP.Close;
    cds_CP.Params[0].AsInteger := cds_pagID_DEPREC.AsInteger;
    cds_CP.Open;
end;

procedure TfReceitas.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfReceitas.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     dtsrc_CP.DataSet.Delete;
     (dtsrc_CP.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfReceitas.btnExcluirClick(Sender: TObject);
begin
   if (cds_CP.Active) then
     cds_CP.Close;
   cds_CP.Params[0].Clear;
   cds_CP.Params[0].AsInteger := cds_pagID_DEPREC.AsInteger;
   cds_CP.Open;
   if (not cds_CP.IsEmpty) then
   begin
     MessageDlg('Primeiro exclua as parcelas, pra depois excluir a Receita..', mtError, [mbOK], 0);
     exit;
   end;
  inherited;

end;

end.
