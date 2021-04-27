unit uFinaliza_Compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, Mask, DBCtrls, DB, Menus, dxCore, dxButton,
  ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr, Buttons, Grids, DBGrids,
  DBLocal, DBLocalS, XPMenu;

type
  TfFinaliza_Compra = class(TfPai)
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    sds_lote1: TSQLDataSet;
    XPMenu1: TXPMenu;
    DBComboBox2: TDBComboBox;
    SpeedButton12: TSpeedButton;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBNavigator1: TDBNavigator;
    BitBtn3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFinaliza_Compra: TfFinaliza_Compra;

implementation

uses UDM, uCompra_urna, uProcurar, uCheques;

{$R *.dfm}

procedure TfFinaliza_Compra.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;
begin
  inherited;
  if not odd(DataSource1.dataset.RecNo) then // se for impar
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

procedure TfFinaliza_Compra.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  dm.cds_cpagar.IndexFieldNames := Column.FieldName;
end;

procedure TfFinaliza_Compra.btnGravarClick(Sender: TObject);
var
   ano, mes, dia: word;
   I, np1: integer;
   data,np2,sql_texto:string;
   Sobra, parcela, np: double;
begin
 //***************************************************************************
 //                   Atualiza o Estoque                                     *
 //***************************************************************************
{  if sds_lote1.Active then
    sds_lote1.Close;
  sds_lote1.CommandText := '';
  sql_texto := 'EXECUTE PROCEDURE SP_ATUALIZA_ESTOQUE ';
  sql_texto := sql_texto + '( ';
  sql_texto := sql_texto + '''' + IntToStr(fCompra_urna.cds_movID_MOVIMENTO.AsInteger) + '''';
  sql_texto := sql_texto + ' , ';
  sql_texto := sql_texto + '''Compra''';
  sql_texto := sql_texto + ' )';
  sds_lote1.CommandText := sql_Texto;
  sds_lote1.ExecSQL;
 }
// GERA CHAVE P/ TABELA COMPRA
  if (DtSrc.DataSet.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COMPRA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_compraID_COMPRA.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.cds_compraID_MOVIMENTO.AsInteger:=dm.cds_movID_MOVIMENTO.AsInteger;
    dm.cds_compraID_FORNECEDOR.AsInteger:=dm.cds_movID_FORNECEDOR.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;
//***************************************
  {** abre a tabela Pag.}
//***************************************
  if (dm.cds_cpagar.Active) then
     dm.cds_cpagar.Close;
  dm.cds_cpagar.Params[0].Clear;
  dm.cds_cpagar.Params[0].AsInteger := dm.cds_compraID_COMPRA.AsInteger;
  dm.cds_cpagar.Open;
  //***************************************
  {** se ñ estiver vazia cancelo a inserção*}
  //***************************************
  if (not dm.cds_cpagar.IsEmpty) then
     exit;
//***************************************
// gera contas a Pagar                  *
//***************************************
   data :=DateToStr(dm.cds_compraDATAVENCIMENTO.AsDateTime);
   // teste se teve Entrada
   if dm.cds_compraENTRADA.Value > 0 then
   begin
     Sobra := dm.cds_compraVALOR.Value - dm.cds_compraENTRADA.Value;
     if dm.cds_compraN_PARCELA.AsInteger > 1 then
       np := dm.cds_compraN_PARCELA.Value - 1;
     if Sobra <> 0 then
       parcela := Sobra / np;
   end
   else
    parcela := dm.cds_compraVALOR.Value / dm.cds_compraN_PARCELA.Value;
   np := dm.cds_compraN_PARCELA.Value;
   np2 := floatToStr(np);
   np1 := StrToInt(np2);
   if not DataSource1.DataSet.Active then
      DataSource1.DataSet.Open;
   DataSource1.DataSet.Append;
   dm.cds_cpagarDATAVENCIMENTO.AsDateTime := dm.cds_compraDATAVENCIMENTO.AsDateTime;
   for I:=1 to np1 do
   begin
    if dm.cds_cpagar.State <> dsinsert then
       dm.cds_cpagar.Append;
    dm.cds_cpagarID_COMPRA.AsInteger := dm.cds_compraID_COMPRA.AsInteger;
    dm.cds_cpagarPARCELAS.AsInteger:=I;
    dm.cds_cpagarTIPO_DOC.AsString := 'CP';
    if dm.cds_compraENTRADA.AsFloat > 0 then
    begin
      if I=1 then
      begin
        dm.cds_cpagarTITULO.AsString := IntToStr(dm.cds_compraNOTAFISCAL.AsInteger);
        dm.cds_cpagarDATAVENCIMENTO.AsDateTime := dm.cds_compraDATAVENCIMENTO.AsDateTime;
        dm.cds_cpagarDATAPAGAMENTO.AsDateTime :=now;
        dm.cds_cpagarEMISSAO.AsDateTime :=now;
        dm.cds_cpagarSTATUS.Value:='Pago';
        dm.cds_cpagarTIPO_DOC.AsString := 'CP';
        dm.cds_cpagarID_FORNECEDOR.AsInteger := dm.cds_compraID_FORNECEDOR.AsInteger;
        dm.cds_cpagarVALORTITULO.Value := dm.cds_compraVALOR.Value;
        dm.cds_cpagarVALORRECEBIDO.Value := dm.cds_compraENTRADA.Value;
        dm.cds_cpagarVALOR_PRIM_VIA.Value := dm.cds_compraENTRADA.Value;
        dm.cds_cpagarVIA.AsString := '1';
        dm.cds_cpagarPARCELAS.AsString := '1';
        dm.cds_cpagarFORMAPAGAMENTO.AsString := dm.cds_compraFORMAPAGAMENTO.AsString;
     // gera codigo para tab. Pagamentos
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PAGAMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        dm.cds_cpagarID_PAGAMENTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
     //********************************************************************
        dm.cds_cpagar.Post;
        data := DateToStr(dm.cds_cpagarDATAVENCIMENTO.AsDateTime);
      end
      else
      begin
        decodedate(StrToDate(data), Ano, mes, dia);
        mes:=mes+1;
        if mes<=12 then
        begin
          dm.cds_cpagarDATAVENCIMENTO.AsDateTime := encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          dm.cds_cpagarDATAVENCIMENTO.AsDateTime := encodedate(ano, mes, dia);
        end;
          dm.cds_cpagarTITULO.AsString := IntToStr(dm.cds_compraNOTAFISCAL.AsInteger);
          dm.cds_cpagarEMISSAO.AsDateTime := now;
          dm.cds_cpagarSTATUS.Value := 'Pendente';
          dm.cds_cpagarTIPO_DOC.AsString := 'CP';
          dm.cds_cpagarID_FORNECEDOR.AsInteger := dm.cds_compraID_FORNECEDOR.AsInteger;
          dm.cds_cpagarVALORTITULO.Value := dm.cds_compraVALOR.Value;
          dm.cds_cpagarVALOR_RESTO.Value := parcela;
          dm.cds_cpagarVALOR_PRIM_VIA.Value := parcela;
          dm.cds_cpagarVALORRECEBIDO.Value:=0;
          dm.cds_cpagarVIA.AsString := '1';
          dm.cds_cpagarPARCELAS.AsString := '1';
       // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PAGAMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_cpagarID_PAGAMENTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          dm.cds_cpagar.Post;
          data := DateToStr(dm.cds_cpagarDATAVENCIMENTO.AsDateTime);
      end;
    end
    else
    begin
        decodedate(StrToDate(data), Ano, mes, dia);
        if I<>1 then
          mes:=mes+1;

        if mes<=12 then
        begin
          dm.cds_cpagarDATAVENCIMENTO.AsDateTime := encodedate(ano, mes, dia);
        end
        else
        begin
          ano:=ano+1;
          mes:=0;
          mes:=mes+1;
          dm.cds_cpagarDATAVENCIMENTO.AsDateTime:=encodedate(ano, mes, dia);
        end;
          dm.cds_cpagarTITULO.AsString := IntToStr(dm.cds_compraNOTAFISCAL.AsInteger);
          dm.cds_cpagarTIPO_DOC.AsString := 'CP';
          dm.cds_cpagarID_FORNECEDOR.AsInteger := dm.cds_compraID_FORNECEDOR.AsInteger;
          dm.cds_cpagarEMISSAO.AsDateTime := now;
          dm.cds_cpagarSTATUS.Value := 'Pendente';
          dm.cds_cpagarVALORTITULO.Value := dm.cds_compraVALOR.Value;
          dm.cds_cpagarVALOR_RESTO.Value := parcela;
          dm.cds_cpagarVALOR_PRIM_VIA.Value := parcela;
          dm.cds_cpagarVALORRECEBIDO.Value:=0;
          dm.cds_cpagarVIA.AsString := '1';
          dm.cds_cpagarPARCELAS.AsString := '1';
          dm.cds_cpagarFORMAPAGAMENTO.AsString := '0';
          // gera codigo para tab. Pagamentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PAGAMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_cpagarID_PAGAMENTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          dm.cds_cpagar.Post;
          data := DateToStr(dm.cds_cpagarDATAVENCIMENTO.AsDateTime);
    end;
   end;
   dm.cds_cpagar.ApplyUpdates(0);
    if dm.cds_cpagar.Active then
      dm.cds_cpagar.Close;
    dm.cds_cpagar.Params[0].AsInteger := dm.cds_compraID_COMPRA.AsInteger;
    dm.cds_cpagar.Open;
end;

procedure TfFinaliza_Compra.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_funcionario);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
   begin
     if dm.cds_compra.State in [dsBrowse] then
       dm.cds_compra.Edit;
      dm.cds_compraCODCOMPRADOR.AsInteger := dm.proc_funcionarioCOD_FUNCIONARIO.AsInteger;
      DBEdit2.Text := dm.proc_funcionarioNOME.AsString;
   end;
   finally
    dm.proc_funcionario.Close;
    fProcurar.Free;
   end;
end;

procedure TfFinaliza_Compra.btnIncluirClick(Sender: TObject);
begin
  if (dm.cds_compra.Active) then
     dm.cds_compra.Close;

  if (dm.cds_cpagar.Active) then
     dm.cds_cpagar.Close;

  inherited;
   dm.cds_compraDATACOMPRA.AsDateTime := Date;
   dm.cds_compraDATAVENCIMENTO.AsDateTime := Date;
   dm.cds_compraENTRADA.AsFloat := 0;
   dm.cds_compraN_PARCELA.AsInteger := 1;
   BitBtn1.Click;
end;

procedure TfFinaliza_Compra.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInsert] then
    dm.cds_compraDATAVENCIMENTO.AsDateTime := dm.cds_compraDATACOMPRA.AsDateTime;
end;

procedure TfFinaliza_Compra.FormShow(Sender: TObject);
begin
  inherited;
  if dm.cds_compra.Active then
    dm.cds_compra.Close;
  dm.cds_compra.Params[0].AsInteger := dm.cds_movID_MOVIMENTO.AsInteger;
  dm.cds_compra.Open;
 if not dm.cds_compra.IsEmpty then
 begin
  if dm.cds_cpagar.Active then
    dm.cds_cpagar.Close;
  dm.cds_cpagar.Params[0].AsInteger := dm.cds_compraID_COMPRA.AsInteger;
  dm.cds_cpagar.Open;
 end
 else
 begin
  dm.cds_compra.Append;
  dm.cds_compraDATACOMPRA.AsDateTime := Date;
  dm.cds_compraDATAVENCIMENTO.AsDateTime := Date;
  dm.cds_compraVALOR.Value := dm.cds_movVALOR_NF.Value;
  dm.cds_compraENTRADA.AsFloat := 0;
  dm.cds_compraN_PARCELA.AsFloat := 1;
  DBComboBox2.Text := 'SN';
  if not dm.cds_cpagar.Active then
    dm.cds_cpagar.Open;
  BitBtn1.Click;
 end;

end;

procedure TfFinaliza_Compra.btnExcluirClick(Sender: TObject);
var
  sql_texto:string;
begin
 //***************************************************************************
 //                   Baixa o Estoque                                        *
 //***************************************************************************
  if sds_lote1.Active then
    sds_lote1.Close;
  sds_lote1.CommandText := '';
  sql_texto := 'EXECUTE PROCEDURE SP_ATUALIZA_ESTOQUE ';
  sql_texto := sql_texto + '( ';
  sql_texto := sql_texto + '''' + IntToStr(dm.cds_movID_MOVIMENTO.AsInteger) + '''';
  sql_texto := sql_texto + ' , ';
  sql_texto := sql_texto + '''Escluir_C''';
  sql_texto := sql_texto + ' )';
  sds_lote1.CommandText := sql_Texto;
  sds_lote1.ExecSQL;
  inherited;
  if dm.cds_cpagar.Active then
    dm.cds_cpagar.Close;
end;

procedure TfFinaliza_Compra.BitBtn2Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_serie);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
   begin
     if dm.cds_compra.State in [dsBrowse] then
       dm.cds_compra.Edit;
      dm.cds_compraSERIE.AsString := dm.proc_serieSERIE.AsString;
   end;
   finally
    dm.proc_serie.Close;
    fProcurar.Free;
   end;
   DBEdit3.SetFocus;
end;

procedure TfFinaliza_Compra.SpeedButton12Click(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
 // gera codigo para tab. Socios mensalistas
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COMPRA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_compraID_COMPRA.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    DtSrc.DataSet.Post;
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
  end;
  inherited;
  tipo := 'CP';
  fCheques := TfCheques.Create(Application);
  try
    fCheques.ShowModal;
  finally
    fCheques.Free;
  end;
  dm.cds_compra.Edit;

end;

procedure TfFinaliza_Compra.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 dm.cds_cpagar.ApplyUpdates(0);
end;

procedure TfFinaliza_Compra.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DataSource1.DataSet.Delete;
     (DataSource1.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfFinaliza_Compra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (dm.cds_compra.Active) then
     dm.cds_compra.Close;

  if (dm.cds_cpagar.Active) then
     dm.cds_cpagar.Close;

end;

end.
