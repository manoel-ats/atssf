unit uUrnas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, DB, Menus, dxCore, dxButton, ExtCtrls, FMTBcd,
  XPMenu, SqlExpr, DBClient, Provider, Grids, DBGrids, Mask, DBCtrls,
  RXCtrls, EDBFind, Buttons, rpcompobase, rpvclreport;

type
  TfUrnas = class(TfPai)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    dsp_prod: TDataSetProvider;
    cds_prod: TClientDataSet;
    sds_prod: TSQLDataSet;
    XPMenu1: TXPMenu;
    cds_prodID_PRODUTO: TIntegerField;
    cds_prodDESCRICAO: TStringField;
    cds_prodID_FAMILIA: TIntegerField;
    cds_prodID_MARCA: TIntegerField;
    cds_prodD_COMPRA: TDateField;
    cds_prodV_COMPRA: TFloatField;
    cds_prodV_VENDA: TFloatField;
    cds_prodVC_REAL: TFloatField;
    cds_prodM_LUCRO: TFloatField;
    cds_prodESTOQUE: TIntegerField;
    cds_prodREPOSICAO: TIntegerField;
    sds_prodID_PRODUTO: TIntegerField;
    sds_prodDESCRICAO: TStringField;
    sds_prodID_FAMILIA: TIntegerField;
    sds_prodID_MARCA: TIntegerField;
    sds_prodD_COMPRA: TDateField;
    sds_prodV_COMPRA: TFloatField;
    sds_prodV_VENDA: TFloatField;
    sds_prodVC_REAL: TFloatField;
    sds_prodM_LUCRO: TFloatField;
    sds_prodESTOQUE: TIntegerField;
    sds_prodREPOSICAO: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    dtsrc_marca: TDataSource;
    cds_marca: TClientDataSet;
    dsp_marca: TDataSetProvider;
    sds_marca: TSQLDataSet;
    dtsrc_grupo: TDataSource;
    cds_grupo: TClientDataSet;
    dsp_grupo: TDataSetProvider;
    sds_grupo: TSQLDataSet;
    cds_marcaID_MARCA: TIntegerField;
    cds_marcaDESCRICAO: TStringField;
    sds_marcaID_MARCA: TIntegerField;
    sds_marcaDESCRICAO: TStringField;
    cds_grupoID_FAMILIA: TIntegerField;
    cds_grupoDESCRICAO: TStringField;
    sds_grupoID_FAMILIA: TIntegerField;
    sds_grupoDESCRICAO: TStringField;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    EvDBFind1: TEvDBFind;
    RxLabel1: TRxLabel;
    dxButton1: TdxButton;
    VCLReport1: TVCLReport;
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dsp_prodGetDataSetProperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure dsp_prodUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUrnas: TfUrnas;

implementation

uses UDM, uPrincipal, uGrupo, uMarcas, uFamilia;

{$R *.dfm}
function NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

procedure TfUrnas.btnGravarClick(Sender: TObject);
begin
 // gera codigo para tab. Socios mensalistas
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PRODUTOS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_prodID_PRODUTO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure TfUrnas.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not odd(cds_prod.RecNo) then // se for impar
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

procedure TfUrnas.FormShow(Sender: TObject);
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
  dm.cdsPermissao.Params[1].AsString := 'Produtos';
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

  if not cds_prod.Active then
    cds_prod.Open;
    cds_prod.First;

  if not cds_marca.Active then
    cds_marca.Open;

  if not cds_grupo.Active then
    cds_grupo.Open;


end;

procedure TfUrnas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfUrnas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if cds_prod.Active then
    cds_prod.Close;

  if cds_marca.Active then
    cds_marca.Close;

  if cds_grupo.Active then
    cds_grupo.Close;

end;

procedure TfUrnas.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  if cds_prod.State in [dsInsert, dsEdit] then
    cds_prodV_VENDA.AsFloat := cds_prodM_LUCRO.AsFloat *
    cds_prodV_COMPRA.AsFloat;
end;

procedure TfUrnas.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  cds_prod.IndexFieldNames := Column.FieldName;
end;

procedure TfUrnas.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
 if Key in ['.'] then Key := ',';
end;

procedure TfUrnas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if cds_prod.State in [dsBrowse] then
    cds_prod.Edit;
  fMarcas := TfMarcas.Create(Application);
  try
    fMarcas.ShowModal;
  finally
    fMarcas.Free;
  end;
end;

procedure TfUrnas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if cds_prod.State in [dsBrowse] then
    cds_prod.Edit;
  fFamilia := TfFamilia.Create(Application);
  try
    fFamilia.ShowModal;
  finally
    fFamilia.Free;
  end;
end;

procedure TfUrnas.dsp_prodGetDataSetProperties(Sender: TObject;
  DataSet: TDataSet; out Properties: OleVariant);
begin
  { Declare Variants no uses }
 Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO',varUsuario,True]);
  Properties[1] := VarArrayOf(['MICRO',NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',
    IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;


procedure TfUrnas.dsp_prodUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
   str, str_For, strOriginal , id_rec :string;
   i : Integer;
begin
  str := '';
  str_For := '';
  strOriginal := '';
  id_rec := '' ;

  id_rec := dataset.Fields[0].AsString;

  with DataSet do
  begin
     SetOptionalParam('DATA',Date,True);
    SetOptionalParam('HORA',Time,True);
      //aqui salvo na tabela
      str := 'INSERT INTO LOGS (MICRO, TABELA, USUARIO, DATA, HORA,CAMPO1, data_set)';
      str := str +  ' VALUES(';
      str := str + '''' + GetOptionalParam('MICRO') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('TABELA') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('USUARIO') + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('mm/dd/yy',Date) + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('hh/nn/ss',Time) + '''';
      str := str + ', ';

      str := str + '''' + id_rec + '''';

      str := str + ', ';

      for i := 0 to dataset.FieldCount - 1 do
      begin
        //aqui se deletar o arquivo
        if (dataset.UpdateStatus = usDeleted) then
        begin
           if (str_For = '') then
            str_for := '----Deletado----'+   ' '
                                                 +  dataset.Fields[0].AsString + #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
        // aqui se modificar o arquivo
        if (dataset.UpdateStatus = usUnModified) then
        begin
           if (str_For = '') then
            str_for := '----Modificado----' +  dataset.Fields[i].AsString
                                                 +  ' '
                                                 +  dataset.Fields[7].AsString
            + ' ' + #13+#10;
             strOriginal := strOriginal + dataset.FieldDefList[i].Name;
            id_rec := dataset.Fields[i].AsString ;

             if (dataset.Fields[i].AsString <> '') then
               strOriginal := strOriginal + ': ' + dataset.Fields[i].AsString
             else
               strOriginal := strOriginal + ': Vazio';
           DataSet.Next;
           if (not dataset.Fields[i].IsNull) then
           begin
             if (dataset.Fields[i].AsString = '') then
               str_For := str_For + strOriginal +  ' -> Vazio; '+#13+#10
             else
               str_For := str_For + strOriginal +  ' -> ' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
           strOriginal := '';
           DataSet.First;
        end;
        // aqui se inserir um novo
        if (dataset.UpdateStatus = usInserted) then
        begin
           if (str_For = '') then
            str_for := '----Adicionado----'+  ' '
                                                 +  dataset.Fields[0].AsString + #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
      end;
      str := str + '''' + str_For + '''';
      str := str+  ')';
      dm.SQLObitos.ExecuteDirect(str);
  end;

end;

procedure TfUrnas.dxButton1Click(Sender: TObject);
begin
 // inherited;
    VCLReport1.FileName := str_relatorio + 'produtos.rep';
    VCLReport1.Execute;
end;

end.
