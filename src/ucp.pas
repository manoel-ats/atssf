unit uCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, DB, XPMenu, DBClient, DBLocal, DBLocalS,
  Grids, DBGrids, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, ImgList,
  FMTBcd, DBCtrls;

type
  TfCP = class(TForm)
    Panel3: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    edCodCliente: TEdit;
    BitBtn1: TBitBtn;
    Data1: TDateEdit;
    Data2: TDateEdit;
    BitBtn9: TBitBtn;
    cbStatus: TComboBox;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    Edit7: TEdit;
    BitBtn10: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BtnBaixarTitulo: TBitBtn;
    BitBtn11: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    XPMenu1: TXPMenu;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    sds_CP: TSQLDataSet;
    dsp_CP: TDataSetProvider;
    scdsCp_proc: TClientDataSet;
    ComboBox3: TComboBox;
    Label20: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    Label5: TLabel;
    BitBtn5: TBitBtn;
    scdsCp_procID_PAGAMENTO: TIntegerField;
    scdsCp_procTITULO: TStringField;
    scdsCp_procEMISSAO: TDateField;
    scdsCp_procDATAVENCIMENTO: TDateField;
    scdsCp_procDATAPAGAMENTO: TDateField;
    scdsCp_procCAIXA: TSmallintField;
    scdsCp_procCONTADEBITO: TIntegerField;
    scdsCp_procCONTACREDITO: TIntegerField;
    scdsCp_procVIA: TStringField;
    scdsCp_procFORMAPAGAMENTO: TStringField;
    scdsCp_procDATABAIXA: TDateField;
    scdsCp_procHISTORICO: TStringField;
    scdsCp_procCODCOMPRA: TIntegerField;
    scdsCp_procCODALMOXARIFADO: TSmallintField;
    scdsCp_procCODCOMPRADOR: TSmallintField;
    scdsCp_procCODUSUARIO: TSmallintField;
    scdsCp_procN_DOCUMENTO: TStringField;
    scdsCp_procDATASISTEMA: TSQLTimeStampField;
    scdsCp_procVALORRECEBIDO: TFloatField;
    scdsCp_procJUROS: TFloatField;
    scdsCp_procDESCONTO: TFloatField;
    scdsCp_procPERDA: TFloatField;
    scdsCp_procTROCA: TFloatField;
    scdsCp_procFUNRURAL: TFloatField;
    scdsCp_procVALOR_PRIM_VIA: TFloatField;
    scdsCp_procVALOR_RESTO: TFloatField;
    scdsCp_procVALORTITULO: TFloatField;
    scdsCp_procOUTRO_CREDITO: TFloatField;
    scdsCp_procOUTRO_DEBITO: TFloatField;
    scdsCp_procPARCELAS: TIntegerField;
    scdsCp_procID_COMPRA: TIntegerField;
    scdsCp_procID_FORNECEDOR: TIntegerField;
    scdsCp_procSELECIONOU: TStringField;
    scdsCp_procOBS: TGraphicField;
    scdsCp_procENTRADA: TFloatField;
    scdsCp_procTIPO_DOC: TStringField;
    scdsCp_procID_DEPREC: TIntegerField;
    scdsCp_procSTATUS: TStringField;
    scdsCp_procNOME_FERNECEDOR: TStringField;
    sds_CPID_PAGAMENTO: TIntegerField;
    sds_CPTITULO: TStringField;
    sds_CPEMISSAO: TDateField;
    sds_CPDATAVENCIMENTO: TDateField;
    sds_CPDATAPAGAMENTO: TDateField;
    sds_CPCAIXA: TSmallintField;
    sds_CPCONTADEBITO: TIntegerField;
    sds_CPCONTACREDITO: TIntegerField;
    sds_CPVIA: TStringField;
    sds_CPFORMAPAGAMENTO: TStringField;
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
    sds_CPID_DEPREC: TIntegerField;
    sds_CPSTATUS: TStringField;
    sds_CPNOME_FERNECEDOR: TStringField;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds_CR: TClientDataSet;
    SQLDataSet1ID_PAGAMENTO: TIntegerField;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1DATAPAGAMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1CONTADEBITO: TIntegerField;
    SQLDataSet1CONTACREDITO: TIntegerField;
    SQLDataSet1VIA: TStringField;
    SQLDataSet1FORMAPAGAMENTO: TStringField;
    SQLDataSet1DATABAIXA: TDateField;
    SQLDataSet1HISTORICO: TStringField;
    SQLDataSet1CODCOMPRA: TIntegerField;
    SQLDataSet1CODALMOXARIFADO: TSmallintField;
    SQLDataSet1CODCOMPRADOR: TSmallintField;
    SQLDataSet1CODUSUARIO: TSmallintField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1DATASISTEMA: TSQLTimeStampField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1JUROS: TFloatField;
    SQLDataSet1DESCONTO: TFloatField;
    SQLDataSet1PERDA: TFloatField;
    SQLDataSet1TROCA: TFloatField;
    SQLDataSet1FUNRURAL: TFloatField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1OUTRO_CREDITO: TFloatField;
    SQLDataSet1OUTRO_DEBITO: TFloatField;
    SQLDataSet1PARCELAS: TIntegerField;
    SQLDataSet1ID_COMPRA: TIntegerField;
    SQLDataSet1ID_FORNECEDOR: TIntegerField;
    SQLDataSet1SELECIONOU: TStringField;
    SQLDataSet1OBS: TGraphicField;
    SQLDataSet1ENTRADA: TFloatField;
    SQLDataSet1TIPO_DOC: TStringField;
    SQLDataSet1ID_DEPREC: TIntegerField;
    SQLDataSet1STATUS: TStringField;
    cds_CRID_PAGAMENTO: TIntegerField;
    cds_CRTITULO: TStringField;
    cds_CREMISSAO: TDateField;
    cds_CRDATAVENCIMENTO: TDateField;
    cds_CRDATAPAGAMENTO: TDateField;
    cds_CRCAIXA: TSmallintField;
    cds_CRCONTADEBITO: TIntegerField;
    cds_CRCONTACREDITO: TIntegerField;
    cds_CRVIA: TStringField;
    cds_CRFORMAPAGAMENTO: TStringField;
    cds_CRDATABAIXA: TDateField;
    cds_CRHISTORICO: TStringField;
    cds_CRCODCOMPRA: TIntegerField;
    cds_CRCODALMOXARIFADO: TSmallintField;
    cds_CRCODCOMPRADOR: TSmallintField;
    cds_CRCODUSUARIO: TSmallintField;
    cds_CRN_DOCUMENTO: TStringField;
    cds_CRDATASISTEMA: TSQLTimeStampField;
    cds_CRVALORRECEBIDO: TFloatField;
    cds_CRJUROS: TFloatField;
    cds_CRDESCONTO: TFloatField;
    cds_CRPERDA: TFloatField;
    cds_CRTROCA: TFloatField;
    cds_CRFUNRURAL: TFloatField;
    cds_CRVALOR_PRIM_VIA: TFloatField;
    cds_CRVALOR_RESTO: TFloatField;
    cds_CRVALORTITULO: TFloatField;
    cds_CROUTRO_CREDITO: TFloatField;
    cds_CROUTRO_DEBITO: TFloatField;
    cds_CRPARCELAS: TIntegerField;
    cds_CRID_COMPRA: TIntegerField;
    cds_CRID_FORNECEDOR: TIntegerField;
    cds_CRSELECIONOU: TStringField;
    cds_CROBS: TGraphicField;
    cds_CRENTRADA: TFloatField;
    cds_CRTIPO_DOC: TStringField;
    cds_CRID_DEPREC: TIntegerField;
    cds_CRSTATUS: TStringField;
    sds_registros: TSQLDataSet;
    sds_registrosTOTAL: TIntegerField;
    ds_registros: TDataSource;
    sds_pago: TSQLDataSet;
    sds_pagoPAGO: TFloatField;
    ds_pago: TDataSource;
    sds_pendente: TSQLDataSet;
    sds_pendentePENDENTE: TFloatField;
    ds_pendente: TDataSource;
    Label6: TLabel;
    Label17: TLabel;
    DBText1: TDBText;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    BitBtn7: TBitBtn;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure scdsCp_procSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn11Click(Sender: TObject);
    procedure BtnBaixarTituloClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCP: TfCP;

implementation

uses uPagarTitulos;

{$R *.dfm}

procedure TfCP.ChkDBGridCellClick(Column: TColumn);
  var
    Field: TField;
  begin
    Field := Column.Field;
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU')
        and Field.CanModify and not Column.ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        if (scdsCp_procSELECIONOU.AsString = '') then
          scdsCp_procSELECIONOU.AsString := 'S'
        else
          scdsCp_procSELECIONOU.AsString := '';
      end;
end;

procedure TfCP.ChkDBGridColEnter(DBGrid: TDBGrid);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
      DBGrid.Options := DBGrid.Options - [dgEditing];

end;

procedure TfCP.ChkDBGridColExit(DBGrid: TDBGrid);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
      DBGrid.Options := DBGrid.Options + [dgEditing];

end;

procedure TfCP.ChkDBGridDrawColumnCell(DBGrid: TDBGrid; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
    taRightJustify:
      X := Rect.Right - 2 - 16;
    taCenter:
      X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
    else // taLeftJustify:
      X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
//    if Field.AsBoolean then Index := 1 else Index := 0;
    if scdsCp_procSELECIONOU.AsString = '' then Index := 1 else Index := 0;
    // Draw the graphic
    fCP.ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfCP.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
 var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
      if (Key = ' ') and Field.CanModify and
          not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
        with Field.Dataset do begin
          if State = dsBrowse then
            Edit;
//          Field.AsBoolean := not Field.AsBoolean;
        if (scdsCp_procSELECIONOU.AsString = '') then
          scdsCp_procSELECIONOU.AsString := 'S'
        else
          scdsCp_procSELECIONOU.AsString := '';

        end;

end;

procedure TfCP.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
 R: TRect;
begin
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

     //***************************************************
     // destacando Campos
     //***************************************************
  if Column.Field = scdsCp_procSTATUS then
  begin
   if scdsCp_procSTATUS.AsString = 'Pago' then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

   if scdsCp_procSTATUS.AsString = 'Pendente' then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  end;

  if Column.Field = scdsCp_procVALOR_RESTO then
  begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
  end;
  if Column.Field = scdsCp_procVALORRECEBIDO then
  begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
  end;

   ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);

end;

procedure TfCP.scdsCp_procSTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
{  if Sender.AsString = 'E' then
    begin
     Text:='Pendente';
     exit;
    end;
  if Sender.AsString = 'P' then
    begin
     Text:='Pago';
     exit;
    end;}
end;

procedure TfCP.DBGrid1TitleClick(Column: TColumn);
begin
  scdsCp_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfCP.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfCP.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfCP.DBGrid1ColExit(Sender: TObject);
begin
ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfCP.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfCP.BitBtn11Click(Sender: TObject);
begin
  close;
end;

procedure TfCP.BtnBaixarTituloClick(Sender: TObject);
begin
   scdsCp_proc.First;
   while not scdsCp_proc.Eof do
   begin
     if scdsCp_procSELECIONOU.AsString <> '' then
     begin
       if cds_CR.Active then
         cds_cr.Close;
       cds_CR.Params[0].AsInteger := scdsCp_procID_PAGAMENTO.AsInteger;
       cds_CR.Open;
       cds_cr.Edit;
       cds_CRDATAPAGAMENTO.AsDateTime := now;
       cds_CRSTATUS.AsString := 'Pago';
       cds_CRVALORRECEBIDO.AsFloat := cds_CRVALOR_RESTO.AsFloat;
       cds_CRVALOR_RESTO.AsFloat := 0;
       cds_CR.ApplyUpdates(0);
     end;
       scdsCp_proc.Next;
   end;
    cds_CR.Close;
    BitBtn3.Click;
end;

procedure TfCP.BitBtn3Click(Sender: TObject);
Var
 SqlTexto, DataStr, DataStr1,total_Str, Val_recebido: String;
 total : integer;
 valor_titulo, valor_recebido,valor_resto :Double;
 Pago, Pendente, SqlTexto1, SqlTexto2, registros: String;
begin
  if scdsCp_proc.Active then
     scdsCp_proc.Close;
   scdsCp_proc.CommandText:='SELECT p.*, f.NOME_FERNECEDOR from PAGAMENTO p '+
                            'left outer join FORNECEDORES f on ' +
                            'f.ID_FORNECEDOR = p.ID_FORNECEDOR';
  //==============================================================================
  datastr:='  /  /    ';
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (data1.Text<>datastr) then
  StrToDate(data1.Text);
  if (data2.Text<>datastr) then
  StrToDate(data2.Text);
  if (data1.Text<>datastr) then
  if (data2.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where p.DATAVENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and p.DATAVENCIMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data1.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     data1.SetFocus;
  end;
  end;
  //==============================================================================
   datastr:='  /  /    ';
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (DateEdit1.Text<>datastr) then
   StrToDate(DateEdit1.Text);
  if (DateEdit2.Text<>datastr) then
   StrToDate(DateEdit2.Text);
  if (DateEdit1.Text<>datastr) then
  if (DateEdit2.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where p.DATAPAGAMENTO between '
    else
      sqlTexto := sqlTexto + ' and p.DATAPAGAMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(DateEdit1.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(DateEdit2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     DateEdit1.SetFocus;
  end;
  end;
 //==============================================================================
 //------------------------------------------------------------------------------
 //Tipo
 //------------------------------------------------------------------------------
  if ComboBox3.Text<>'' then
  begin
   if ComboBox3.Text = 'Outras Despesas' then
   begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where p.TIPO_DOC = '
    else
      sqlTexto := sqlTexto + ' and p.TIPO_DOC = ';
      sqlTexto := sqlTexto + '''DP''';
   end;
   if ComboBox3.Text = 'Compras' then
   begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where p.TIPO_DOC = '
    else
      sqlTexto := sqlTexto + ' and p.TIPO_DOC = ';
      sqlTexto := sqlTexto + '''CP''';
   end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where f.NOME_FERNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and f.NOME_FERNECEDOR = ';
      sqlTexto := sqlTexto + '''' + edCodCliente.Text + '''';
  end;
 //==============================================================================
 //------------------------------------------------------------------------------
 //Status
 //------------------------------------------------------------------------------
  if ComboBox1.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where p.STATUS = '
    else
      sqlTexto := sqlTexto + ' and p.STATUS = ';
      sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
  end;

 //==============================================================================
 //------------------------------------------------------------------------------
 //Título
 //------------------------------------------------------------------------------
  if Edit7.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where p.TITULO = '
    else
      sqlTexto := sqlTexto + ' and p.TITULO = ';
      sqlTexto := sqlTexto + '''' + Edit7.Text + '''';
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //ordena por vencimento
  //------------------------------------------------------------------------------

    sqlTexto := sqlTexto + ' order by p.STATUS, p.DATAVENCIMENTO, f.NOME_FERNECEDOR ';
  //==============================================================================
    scdsCp_proc.CommandText := scdsCp_proc.CommandText + sqlTexto;
    scdsCp_proc.Open;
  //------------------------------------------------------------------------------
  //Totais
  //------------------------------------------------------------------------------
{  if (sds_pendente.Active) then
     sds_pendente.Close;
  if (ComboBox1.Text <> 'Pago') then
  begin
    Pendente := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
    'left outer join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' +
    'left outer join COBRANCA co on co.ID_COB = ob.ID_COB ';
    //------------------------------------------------------------------------------
    //Status
    //------------------------------------------------------------------------------
    if sqlTexto2='' then
      sqlTexto2 := sqlTexto2 + ' where cr.STATUS = '
    else
      sqlTexto2 := sqlTexto2 + ' and cr.STATUS = ';
      sqlTexto2 := sqlTexto2 + '''Pendente''';

    Pendente := Pendente + SqlTexto2;
    sds_pendente.CommandText := Pendente;
    sds_pendente.Open;
  end;
    if (sds_pago.Active) then
      sds_pago.Close;
    Pago := 'SELECT SUM(VALORRECEBIDO) as pago from RECEBIMENTOS cr ' +
    'left outer join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' +
    'left outer join COBRANCA co on co.ID_COB = ob.ID_COB ';
    //------------------------------------------------------------------------------
    //Status
    //------------------------------------------------------------------------------
    Pago := Pago + SqlTexto1;
    sds_pago.CommandText := Pago;
    sds_pago.Open;
    if (sds_registros.Active) then
      sds_registros.Close;
    registros := 'SELECT Count(ID_PAGAMENTO) as total from RECEBIMENTOS cr ' +
    'left outer join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' +
    'left outer join COBRANCA co on co.ID_COB = ob.ID_COB ';
    registros := registros + SqlTexto1;
    sds_registros.CommandText := registros;
    sds_registros.Open;}
end;

procedure TfCP.BitBtn6Click(Sender: TObject);
begin
  fPagarTitulos := TfPagarTitulos.Create(Application);
  try
    pagar := ComboBox3.Text;
    fPagarTitulos.ShowModal;
  finally
    fPagarTitulos.Free;
  end;
end;

procedure TfCP.BitBtn7Click(Sender: TObject);
begin
   scdsCp_proc.First;
   while not scdsCp_proc.Eof do
   begin
     if scdsCp_procSELECIONOU.AsString <> '' then
     begin
       if cds_CR.Active then
         cds_cr.Close;
       cds_CR.Params[0].AsInteger := scdsCp_procID_PAGAMENTO.AsInteger;
       cds_CR.Open;
       cds_cr.Edit;
       cds_CRDATAPAGAMENTO.Clear;
       cds_CRSTATUS.AsString := 'Pendente';
       cds_CRVALOR_RESTO.AsFloat := cds_CRVALORRECEBIDO.AsFloat;
       cds_CRVALORRECEBIDO.AsFloat := 0;
       cds_CR.ApplyUpdates(0);
     end;
       scdsCp_proc.Next;
   end;
    cds_CR.Close;
    BitBtn3.Click;
end;

end.
