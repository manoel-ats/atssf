unit uContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Mask, ToolEdit, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, ImgList;

type
  TfContasReceber = class(TForm)
    MMJPanel1: TMMJPanel;
    BitBtn12: TBitBtn;
    BitBtn4: TBitBtn;
    BtnBaixarTitulo: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn6: TBitBtn;
    Panel9: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    edCodCliente: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn8: TBitBtn;
    ComboBox1: TComboBox;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    ComboBox2: TComboBox;
    Label15: TLabel;
    BitBtn10: TBitBtn;
    Edit7: TEdit;
    Label14: TLabel;
    Edit1: TEdit;
    Label21: TLabel;
    BitBtn3: TBitBtn;
    Edit8: TEdit;
    BitBtn13: TBitBtn;
    Label22: TLabel;
    Edit9: TEdit;
    Label23: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn15: TBitBtn;
    Data3: TDateEdit;
    Label1: TLabel;
    Label19: TLabel;
    Data4: TDateEdit;
    BitBtn99: TBitBtn;
    Label7: TLabel;
    Data1: TDateEdit;
    Data2: TDateEdit;
    Label8: TLabel;
    BitBtn16: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    MMJPanel2: TMMJPanel;
    sds: TSQLDataSet;
    sdsTITULO: TIntegerField;
    sdsID_RECEBIMENTOS: TIntegerField;
    sdsID_SOCIO: TIntegerField;
    sdsVENCIMENTO: TDateField;
    sdsDATA_PAG: TDateField;
    sdsSTATUS: TStringField;
    sdsVALOR_NF: TFloatField;
    sdsVALOR_RECEBER: TFloatField;
    sdsPARCELA: TIntegerField;
    sdsVALOR_1VIA: TFloatField;
    sdsSELECIONOU: TStringField;
    sdsVALOR_PAGO: TFloatField;
    sdsVALOR_DIF: TFloatField;
    sdsLOTE: TIntegerField;
    sdsSITUACAO: TStringField;
    sdsTIPO_DOC: TStringField;
    sdsNOME_SOCIO: TStringField;
    sdsGRUPO: TStringField;
    sdsN_INSCRICAO: TIntegerField;
    sdsNOME: TStringField;
    sdsCODIGO: TIntegerField;
    sdsMENSAL: TIntegerField;
    sdsTRIMESTRAL: TIntegerField;
    dsp: TDataSetProvider;
    scdsCp_proc: TClientDataSet;
    scdsCp_procTITULO: TIntegerField;
    scdsCp_procID_RECEBIMENTOS: TIntegerField;
    scdsCp_procID_SOCIO: TIntegerField;
    scdsCp_procVENCIMENTO: TDateField;
    scdsCp_procDATA_PAG: TDateField;
    scdsCp_procSTATUS: TStringField;
    scdsCp_procVALOR_NF: TFloatField;
    scdsCp_procVALOR_RECEBER: TFloatField;
    scdsCp_procPARCELA: TIntegerField;
    scdsCp_procVALOR_1VIA: TFloatField;
    scdsCp_procSELECIONOU: TStringField;
    scdsCp_procVALOR_PAGO: TFloatField;
    scdsCp_procVALOR_DIF: TFloatField;
    scdsCp_procLOTE: TIntegerField;
    scdsCp_procSITUACAO: TStringField;
    scdsCp_procTIPO_DOC: TStringField;
    scdsCp_procNOME_SOCIO: TStringField;
    scdsCp_procGRUPO: TStringField;
    scdsCp_procN_INSCRICAO: TIntegerField;
    scdsCp_procNOME: TStringField;
    scdsCp_procCODIGO: TIntegerField;
    scdsCp_procMENSAL: TIntegerField;
    scdsCp_procTRIMESTRAL: TIntegerField;
    scdsCp_proctotal: TAggregateField;
    scdsCp_procrecebido: TAggregateField;
    scdsCp_procpendente: TAggregateField;
    DtSrc: TDataSource;
    ImageList1: TImageList;
    Edit10: TEdit;
    Edit4: TEdit;
    ComboBox3: TComboBox;
    Label5: TLabel;
    procedure BitBtn12Click(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fContasReceber: TfContasReceber;

implementation

uses sCtrlResize, UDM, uRemessaBanco;

{$R *.dfm}

procedure TfContasReceber.BitBtn12Click(Sender: TObject);
Var
  SqlTexto, DataStr, DataStr1,total_Str, Val_recebido: String;
  Pago, Pendente, SqlTexto1, SqlTexto2, registros: String;
  total : integer;
  valor_titulo, valor_recebido,valor_resto :Double;
begin
    if sds.Active then
       sds.Close;
    if scdsCp_proc.Active then
       scdsCp_proc.Close;
     sds.CommandText:='select cr.TITULO, cr.ID_RECEBIMENTOS, cr.ID_SOCIO, cr.VENCIMENTO, ' +
     'cr.DATA_PAG, cr.STATUS, cr.VALOR_NF, cr.VALOR_RECEBER, cr.PARCELA, cr.VALOR_1VIA, cr.SELECIONOU, ' +
     'cr.VALOR_PAGO, cr.VALOR_DIF, cr.LOTE, cr.situacao, cr.TIPO_DOC, cr.COBRADOR, ' +
     'ob.NOME_SOCIO, ob.GRUPO, ob.N_INSCRICAO, co.NOME, cr.CODIGO, ob.CODIGO as mensal,  ' +
     'ob.CODIGO_T as trimestral from RECEBIMENTOS cr left outer join SOCIOS ob ' +
     'on ob.ID_SOCIO = cr.ID_SOCIO left outer join COBRANCA co ' +
     'on co.ID_COB = ob.ID_COB ';
   //==============================================================================
    datastr:='  /  /    ';
    //==============================================================================
    //Verifica se a data de vencimento foi preenchido
    try
    if (data1.Text<>datastr) then
    StrToDate(data1.Text);
    if (data2.Text<>datastr) then
    StrToDate(data2.Text);
    if (data1.Text<>datastr) then
    if (data2.Text<>datastr) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.VENCIMENTO between '
      else
        sqlTexto := sqlTexto + ' and cr.VENCIMENTO between ';
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
    datastr1:='  /  /    ';
    //==============================================================================
    //Verifica se a data de Pagamento foi preenchido
    try
    if (Data3.Text<>datastr1) then
    StrToDate(data3.Text);
    if (Data4.Text<>datastr1) then
    StrToDate(data4.Text);
    if (Data3.Text<>datastr1) then
    if (Data4.Text<>datastr1) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.DATA_PAG between '
      else
        sqlTexto := sqlTexto + ' and cr.DATA_PAG between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(Data3.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(Data4.Text)) + '''';
    end;
    except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data3.SetFocus;
    end;
    end;
    //==============================================================================
    //Sócio
    if edCodCliente.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.NOME_SOCIO = '
      else
        sqlTexto := sqlTexto + ' and ob.NOME_SOCIO = ';
        sqlTexto := sqlTexto + '''' + edCodCliente.Text + '''';
    end;
   //==============================================================================
   //GRUPO
    if Edit2.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.GRUPO = '
      else
        sqlTexto := sqlTexto + ' and ob.GRUPO = ';
        sqlTexto := sqlTexto + '''' + Edit2.Text + '''';
    end;
   //==============================================================================
   //Inscrição
    if Edit3.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.N_INSCRICAO = '
      else
        sqlTexto := sqlTexto + ' and ob.N_INSCRICAO = ';
        sqlTexto := sqlTexto + '''' + Edit3.Text + '''';
    end;
   //==============================================================================
   //Lote
    if Edit7.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.LOTE = '
      else
        sqlTexto := sqlTexto + ' and cr.LOTE = ';
        sqlTexto := sqlTexto + '' + Edit7.Text + '';
    end;
   //==============================================================================
   //Título
    if Edit1.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.TITULO = '
      else
        sqlTexto := sqlTexto + ' and cr.TITULO = ';
        sqlTexto := sqlTexto + '''' + Edit1.Text + '''';
    end;
   //==============================================================================
   //Título
    if Edit8.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.CODIGO = '
      else
        sqlTexto := sqlTexto + ' and cr.CODIGO = ';
        sqlTexto := sqlTexto + '''' + Edit8.Text + '''';
    end;
   //==============================================================================
   //Cobrador
    if Edit10.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.ID_COB = '
      else
        sqlTexto := sqlTexto + ' and ob.ID_COB = ';
        sqlTexto := sqlTexto + '' + Edit10.Text + '';
    end;
    SqlTexto2 := SqlTexto;
    //==============================================================================
    //Status
    if ComboBox1.Text<>'' then
    begin
      if ComboBox1.Text <> 'Todos Pendentes' then
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS = '
        else
          sqlTexto := sqlTexto + ' and cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
      end
      else
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS <> '
        else
          sqlTexto := sqlTexto + ' and cr.STATUS <> ';
        sqlTexto := sqlTexto + '''' + 'Pago' + '''' + ' and cr.STATUS <> ';
        sqlTexto := sqlTexto + '''' + 'Renegociado' + '''';
      end;
    end;
      SqlTexto1 := SqlTexto;
    //==============================================================================
    //Quem Recebeu
    if Edit4.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.COBRADOR = '
      else
        sqlTexto := sqlTexto + ' and cr.COBRADOR = ';
        sqlTexto := sqlTexto + '''' + Edit4.Text + '''';
    end;
    //==============================================================================
    //TIpo   Documento
    if ComboBox1.Text<>'' then
      if ComboBox2.Text <> 'Todos' then
        if ComboBox2.Text = 'Obitos' then
        begin
          if sqlTexto='' then
            sqlTexto := sqlTexto + ' where cr.TIPO_DOC = '
          else
            sqlTexto := sqlTexto + ' and cr.TIPO_DOC = ';
          if ComboBox2.Text = 'Obitos' then
            sqlTexto := sqlTexto + QuotedStr('OB');
        end
        else
        begin
          if sqlTexto='' then
            sqlTexto := sqlTexto + ' where cr.TIPO_DOC <> '
          else
            sqlTexto := sqlTexto + ' and cr.TIPO_DOC <> ';
          sqlTexto := sqlTexto + QuotedStr('OB');
        end;
   // Situação
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.SITUACAO <> '
      else
        sqlTexto := sqlTexto + ' and cr.SITUACAO <> ';
        sqlTexto := sqlTexto + '''' + 'Inativo' + '''';
   //==============================================================================
   //Group By
      sqlTexto := sqlTexto + ' Group by ob.NOME_SOCIO, cr.VENCIMENTO, cr.TITULO, cr.ID_RECEBIMENTOS, '+
      'cr.ID_SOCIO, cr.DATA_PAG, cr.STATUS, cr.VALOR_NF, cr.VALOR_RECEBER, '+
      'cr.PARCELA, cr.VALOR_1VIA, cr.SELECIONOU, cr.VALOR_PAGO, cr.VALOR_DIF, cr.LOTE, ' +
      'cr.situacao, cr.TIPO_DOC, cr.COBRADOR, ob.GRUPO, ob.N_INSCRICAO, co.NOME, cr.CODIGO, ' +
      'ob.CODIGO, ob.CODIGO_T ';
    //==============================================================================
      sds.CommandText := sds.CommandText + sqlTexto;
      scdsCp_proc.Open;
end;

procedure TfContasReceber.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
     R : TRect;  
begin
  // Selecionou ?
   if Column.Field = scdsCp_procSELECIONOU then
   begin
       JvDBGrid1.Canvas.FillRect(Rect);
       ImageList1.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
       if scdsCp_procSELECIONOU.AsString = 'S' then
         ImageList1.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
       else
         ImageList1.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
   end;
   //***************************************************
   // destacando Campos
   if Column.Field = scdsCp_procSTATUS then
     if scdsCp_procSTATUS.AsString = 'Pendente' then
     begin
       JvDBGrid1.Canvas.Font.Color := clRed;
       JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
     end;
   if Column.Field = scdsCp_procSTATUS then
     if scdsCp_procSTATUS.AsString = 'Pago' then
     begin
       JvDBGrid1.Canvas.Font.Color := clBlue;
       JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
     end;
   if Column.Field = scdsCp_procVALOR_RECEBER then
   begin
     JvDBGrid1.Canvas.Font.Color := clRed;
     JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
   if Column.Field = scdsCp_procVALOR_PAGO then
   begin
     JvDBGrid1.Canvas.Font.Color := clBlue;
     JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

   if Column.Field = scdsCp_procTIPO_DOC then
   begin
     if scdsCp_procTIPO_DOC.AsString = 'OB' then
       JvDBGrid1.Canvas.Font.Color := clRed
     else
       JvDBGrid1.Canvas.Font.Color := clBlue;
     JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfContasReceber.JvDBGrid1CellClick(Column: TColumn);
begin
  if Column.Field = scdsCp_procSELECIONOU then
  begin
     scdsCp_proc.Edit;
     if scdsCp_procSELECIONOU.AsString = 'S' then
       scdsCp_procSELECIONOU.AsString := ''
     else
       scdsCp_procSELECIONOU.AsString := 'S';
  end;
end;

procedure TfContasReceber.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = scdsCp_procSELECIONOU then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];
end;

procedure TfContasReceber.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fContasReceber));
end;

procedure TfContasReceber.BitBtn11Click(Sender: TObject);
begin
  Close;
end;

procedure TfContasReceber.BitBtn17Click(Sender: TObject);
begin
   fRemessaBanco := TfRemessaBanco.Create(Application);
   try
     fRemessaBanco.ShowModal;
   finally
     fRemessaBanco.Free;
   end;
end;

end.
