unit uFiltra_Aluguel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, Provider, SqlExpr, FMTBcd, Grids, DBGrids, EExtenso,
  DBClient, DB, DBLocal, DBLocalS, StdCtrls, DBCtrls, Buttons, ExtCtrls,
  ComCtrls, Menus, Mask, ToolEdit, dxCore, dxButton;

type
  TfFiltra_Aluguel_Rec = class(TfPai)
    Label1: TLabel;
    cbStatus: TComboBox;
    edCodCliente: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    BitBtn8: TBitBtn;
    Edit2: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    scdsCp_proc: TSQLClientDataSet;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    scdsCp_procCOD_H_IMALU: TIntegerField;
    scdsCp_procCOD_IMALU: TIntegerField;
    scdsCp_procPARCELA: TStringField;
    scdsCp_procVENCIMENTO: TDateField;
    scdsCp_procSTATUS: TStringField;
    scdsCp_procTOTAL_ALUGUEL: TFloatField;
    scdsCp_procTOTAL_RECEBIDO: TFloatField;
    scdsCp_procREC_INQUILINO: TStringField;
    scdsCp_procDATA_REC: TDateField;
    scdsCp_procREP_PROPRIETARIO: TStringField;
    scdsCp_procDATA_REP: TDateField;
    scdsCp_procTOTAL_REPASSE: TFloatField;
    scdsCp_procFORMA_REC: TStringField;
    scdsCp_procNDOC_REC: TStringField;
    scdsCp_procCAIXA_REC: TStringField;
    scdsCp_procPERIODO_REC: TDateField;
    scdsCp_procPERIODO_REP: TDateField;
    scdsCp_procFORMA_REP: TStringField;
    scdsCp_procNDOC_REP: TStringField;
    scdsCp_procCAIXA_REP: TStringField;
    scdsCp_procVALOR_A_REC: TFloatField;
    scdsCp_procVALOR_A_REP: TFloatField;
    scdsCp_procTROCO_REC: TFloatField;
    scdsCp_procTROCO_REP: TFloatField;
    scdsCp_procDESCRICAO_REC: TStringField;
    scdsCp_procDESCRICAO_REP: TStringField;
    scdsCp_procVENCIMENTO_REP: TDateField;
    scdsCp_procCOD_IMALU_1: TIntegerField;
    scdsCp_procIMOVEL: TStringField;
    scdsCp_procTIPO: TStringField;
    scdsCp_procCOD_PROPRIETARIO: TIntegerField;
    scdsCp_procCOD_INQUILINO: TIntegerField;
    scdsCp_procCOD_FUNCIONARIO: TIntegerField;
    scdsCp_procCOD_ENDERECO: TIntegerField;
    scdsCp_procNR: TStringField;
    scdsCp_procCOMPL: TStringField;
    scdsCp_procMATRICULA: TStringField;
    scdsCp_procDATA_REGISTRO: TDateField;
    scdsCp_procDETALHES: TStringField;
    scdsCp_procVALOR_ALUGUEL: TFloatField;
    scdsCp_procVALOR_EXTENCO: TStringField;
    scdsCp_procALUGADO: TStringField;
    scdsCp_procMESES: TStringField;
    scdsCp_procDIAPGTO: TStringField;
    scdsCp_procCARENCIA: TStringField;
    scdsCp_procDATA_AQUIZICAO: TStringField;
    scdsCp_procDATA_LOCACAO: TStringField;
    scdsCp_procDATA_VCONTRATO: TStringField;
    scdsCp_procN_QUARTOS: TStringField;
    scdsCp_procN_SALAS: TStringField;
    scdsCp_procN_COZINHAS: TStringField;
    scdsCp_procN_GARAGENS: TStringField;
    scdsCp_procOBS: TStringField;
    scdsCp_procCOMISSAO_IMOBILIARIA: TFloatField;
    scdsCp_procCOD_IMOBILIARIA: TStringField;
    scdsCp_procCOD_CEP: TIntegerField;
    scdsCp_procBAIRRO: TStringField;
    scdsCp_procCIDADE: TStringField;
    scdsCp_procCEP: TStringField;
    scdsCp_procUF: TStringField;
    scdsCp_procRUA: TStringField;
    scdsCp_procNOME_PROPRIETARIO: TStringField;
    scdsCp_procNOME_INQUILINO: TStringField;
    scdsCp_procNOME: TStringField;
    Data1: TDateEdit;
    Data2: TDateEdit;
    scdsCp_procSTATUS_PRO: TStringField;
    scdsCp_procPERIODO_REC1: TDateField;
    scdsCp_procPERIODO_REP1: TDateField;
    scdsCp_procTOTAL_DESPESAS: TFloatField;
    scdsCp_procTOTAL_RECEITAS: TFloatField;
    BitBtn9: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds_muda_aluguel: TClientDataSet;
    cds_muda_aluguelVALOR_ALUGUEL: TFloatField;
    SQLDataSet1VALOR_ALUGUEL: TFloatField;
    Edit1: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ProcProprietario1Click(Sender: TObject);
    procedure procEndereo1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbStatusExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Cancelarecdias1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltra_Aluguel_Rec: TfFiltra_Aluguel_Rec;
  Aluguel1: Double;

implementation

uses UDM, uProcurar, uLancamentos, uReceber;

{$R *.dfm}

procedure TfFiltra_Aluguel_Rec.BitBtn3Click(Sender: TObject);
Var
 SqlTexto, DataStr: String;
begin
  inherited;
  if scdsCp_proc.Active then
     scdsCp_proc.Close;
   scdsCp_proc.CommandText:='select ht.*, ima.*, cep.*, pro.NOME_PROPRIETARIO, ' +
   'inc.NOME_INQUILINO, fun.NOME from H_IMALU ht left outer join IMOVEL_ALUGUEL ima ' +
   'on ima.cod_imalu=ht.cod_imalu left outer join CEP cep on cep.COD_CEP=ima.COD_ENDERECO ' +
   'left outer join PROPRIETARIOS pro on pro.COD_PROPRIETARIO = ima.COD_PROPRIETARIO ' +
   'left outer join INQUILINOS inc on inc.COD_INQUILINO = ima.COD_INQUILINO ' +
   'left outer join FUNCIONARIOS fun on fun.COD_FUNCIONARIO = ima.COD_FUNCIONARIO ';

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
      sqlTexto := sqlTexto + ' where ht.VENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and ht.VENCIMENTO between ';
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
  //------------------------------------------------------------------------------
  //INQUILINO
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where inc.NOME_INQUILINO = '
    else
      sqlTexto := sqlTexto + ' and inc.NOME_INQUILINO = ';
      sqlTexto := sqlTexto + '''' + edCodCliente.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //ENDERECO
  //------------------------------------------------------------------------------
  if Edit2.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where cep.RUA = '
    else
      sqlTexto := sqlTexto + ' and cep.RUA = ';
      sqlTexto := sqlTexto + '''' + Edit2.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //NUMERO
  //------------------------------------------------------------------------------
  if EdtNumero.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ima.NR = '
    else
      sqlTexto := sqlTexto + ' and ima.NR = ';
      sqlTexto := sqlTexto + '''' + EdtNumero.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //COMPLEMENTO
  //------------------------------------------------------------------------------
  if Edit1.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ima.COMPL = '
    else
      sqlTexto := sqlTexto + ' and ima.COMPL = ';
      sqlTexto := sqlTexto + '''' + Edit1.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //BAIRRO
  //------------------------------------------------------------------------------
  if Edit3.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where cep.BAIRRO = '
    else
      sqlTexto := sqlTexto + ' and cep.BAIRRO = ';
      sqlTexto := sqlTexto + '''' + Edit3.Text + '''';
  end;

//  sqlTexto := sqlTexto + ' and STATUS = ''Pago''';
  //==============================================================================
  //------------------------------------------------------------------------------
  //ordena por vencimento
  //------------------------------------------------------------------------------

    sqlTexto := sqlTexto + ' order by ht.VENCIMENTO, inc.NOME_INQUILINO ';
  //==============================================================================
    scdsCp_proc.CommandText := scdsCp_proc.CommandText + sqlTexto;
    scdsCp_proc.Open;

end;

procedure TfFiltra_Aluguel_Rec.BitBtn1Click(Sender: TObject);
begin
  inherited;

  FProcurar:=TFProcurar.Create(Self,dm.proc_Inquilino);
  try
   FProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_INQUILINO';
   if FProcurar.ShowModal=mrOK then
  begin
   edCodCliente.Text := dm.proc_InquilinoNOME_INQUILINO.AsString;
  end;
  finally
   DM.proc_Inquilino.Close;
   FProcurar.Free;
  end;


end;

procedure TfFiltra_Aluguel_Rec.BitBtn8Click(Sender: TObject);
begin
  inherited;

      FProcurar:=TFProcurar.Create(Self,dm.proc_cep);
      try
       FProcurar.BtnProcurar.Click;
       fProcurar.EvDBFind1.DataField := 'RUA';
       if FProcurar.ShowModal=mrOK then
      begin
        Edit2.Text:=dm.proc_cepRUA.AsString;
      end;
      finally
       DM.proc_cep.Close;
       FProcurar.Free;
      end;


end;

procedure TfFiltra_Aluguel_Rec.ProcProprietario1Click(Sender: TObject);
begin
  inherited;
  BitBtn1.Click;
end;

procedure TfFiltra_Aluguel_Rec.procEndereo1Click(Sender: TObject);
begin
  inherited;
  BitBtn8.Click;
end;

procedure TfFiltra_Aluguel_Rec.BitBtn4Click(Sender: TObject);
begin
  inherited;
  scdscp_proc.Close;
  cbStatus.Text:='';
  edcodcliente.Text:='';
  edit1.Text:='';
  edit2.Text:='';
  edit3.Text:='';
  edtNumero.Text:='';
  data1.Text:='  /  /  ';
  data2.Text:='  /  /  ';

end;

procedure TfFiltra_Aluguel_Rec.BitBtn6Click(Sender: TObject);
begin
  inherited;
 Close;
end;

procedure TfFiltra_Aluguel_Rec.FormCreate(Sender: TObject);
var
   ano, mes, dia, dia1: word;
begin
  inherited;
    Data1.Text:=formatdatetime('dd/mm/yy',now);
    decodedate(Data1.date, ano, mes, dia);
    dia:=1;
    Data1.Date:=encodedate(ano, mes, dia);

    Data2.Text:=formatdatetime('dd/mm/yy',now);
    decodedate(Data2.date, ano, mes, dia);

    dia:=31;

     if mes = 1 then
       cbStatus.Text := 'Janeiro';

     if mes = 2 then
       cbStatus.Text := 'Fevereiro';
      if dia > 28 then
         dia:=28;

     if mes = 3 then
       cbStatus.Text := 'Março';

     if mes = 4 then
       cbStatus.Text := 'Abril';
       if dia > 30 then
          dia:=30;

     if mes = 5 then
       cbStatus.Text := 'Maio';

    if mes = 6 then
       cbStatus.Text := 'Junho';
      if dia > 30 then
         dia:=30;

     if mes = 7 then
       cbStatus.Text := 'Julho';

     if mes = 8 then
       cbStatus.Text := 'Agosto';

    if mes = 9 then
       cbStatus.Text := 'Setembro';
      if dia > 30 then
       dia:=30;

     if mes = 10 then
       cbStatus.Text := 'Outubro';

    if mes = 11 then
      cbStatus.Text := 'Novembro';
      if dia > 30 then
       dia:=30;

     if mes = 12 then
       cbStatus.Text := 'Dezembro';

   Data2.Date:=encodedate(ano, mes, dia);

end;

procedure TfFiltra_Aluguel_Rec.cbStatusExit(Sender: TObject);
var
   ano, mes, dia, dia1: word;
begin
  inherited;

    Data1.Text:=formatdatetime('dd/mm/yy',now);
    decodedate(Data1.date, ano, mes, dia);


    Data2.Text:=formatdatetime('dd/mm/yy',now);
    decodedate(Data2.date, ano, mes, dia);


    dia:=1;

       if cbStatus.Text = 'Janeiro' then
       mes:=1;
     if cbStatus.Text = 'Fevereiro' then
       mes:=2;
     if cbStatus.Text = 'Março' then
       mes:=3;
     if cbStatus.Text = 'Abril' then
       mes:=4;
     if cbStatus.Text = 'Maio' then
       mes:=5;
     if cbStatus.Text = 'Junho' then
       mes:=6;
     if cbStatus.Text = 'Julho' then
       mes:=7;
     if cbStatus.Text = 'Agosto' then
       mes:=8;
     if cbStatus.Text = 'Setembro' then
       mes:=9;
     if cbStatus.Text = 'Outubro' then
       mes:=10;
     if cbStatus.Text = 'Novembro' then
       mes:=11;
     if cbStatus.Text = 'Dezembro' then
       mes:=12;


    Data1.Date:=encodedate(ano, mes, dia);

    dia:=31;

     if mes = 2 then
      if dia > 28 then
         dia:=28;

     if mes = 4 then
       if dia > 30 then
          dia:=30;

    if mes = 6 then
      if dia > 30 then
         dia:=30;

    if mes = 9 then
      if dia > 30 then
       dia:=30;

    if mes = 11 then
      if dia > 30 then
       dia:=30;

   Data2.Date:=encodedate(ano, mes, dia);

end;

procedure TfFiltra_Aluguel_Rec.BitBtn5Click(Sender: TObject);
var
   ano, mes, dia, dia1: word;
   valor: Double;
begin
  inherited;
    fReceber:=TfReceber.create(Application); // cria form
    try
     if fReceber.cds_Aluguel.Active then
        fReceber.cds_Aluguel.Close;
     fReceber.cds_Aluguel.Params[0].AsInteger :=
       fFiltra_Aluguel_Rec.scdsCp_procCOD_H_IMALU.AsInteger;
     fReceber.cds_Aluguel.Open;
     fReceber.cds_Aluguel.Edit;
    //**********************************
     fReceber.cds_AluguelTOTAL_DESPESAS.AsFloat :=
       dm.cds_lancamentosTotal.AsFloat;
     fReceber.cds_AluguelTOTAL_RECEITAS.AsFloat :=
       dm.cds_lancamentosTotal_rec.AsFloat;
    //************************************
     fReceber.cds_AluguelPERIODO_REC.AsString :=
       fFiltra_Aluguel_Rec.Data1.Text;
     fReceber.cds_AluguelPERIODO_REC1.AsString :=
       fFiltra_Aluguel_Rec.Data2.Text;
    finally
      fReceber.Free;
    end;

end;

procedure TfFiltra_Aluguel_Rec.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;

  with DataSource2.dataset as TSQLClientDataset do
    IndexFieldNames:=Column.FieldName;

end;

procedure TfFiltra_Aluguel_Rec.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;
begin
  inherited;
  if not odd(scdsCp_proc.RecNo) then // se for impar
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
   if scdsCp_procSTATUS.AsString = 'Vencido' then
   begin
//     DBGrid1.Canvas.Font.Style :=
   //    DBGrid1.Canvas.Font.Style + [fsBold];
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCp_procSTATUS then
   if scdsCp_procSTATUS.AsString = 'Pago' then
   begin
  //   DBGrid1.Canvas.Font.Style :=
   //    DBGrid1.Canvas.Font.Style + [fsBold];
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfFiltra_Aluguel_Rec.BitBtn2Click(Sender: TObject);
var
 a :String;
 Aluguel: Double;
begin
  inherited;
  if scdsCp_proc.Active then
  begin
     Aluguel1 :=  fFiltra_Aluguel_Rec.scdsCp_procVALOR_ALUGUEL.AsFloat;
     if fFiltra_Aluguel_Rec.scdsCp_procVENCIMENTO.AsDateTime > Date then
     begin
      if fFiltra_Aluguel_Rec.scdsCp_procSTATUS.AsString <> 'Pago' then
      begin
        if MessageDlg('você está recebendo essa parcela'+#13+#10+'  antes do vencimento, confirma '+#13+#10+'       receber apenas os dias',mtConfirmation,
                    [mbYes,mbNo],0) = mrYes then
        begin
          DecimalSeparator := '.';
          a:='Execute Procedure SP_VENC_ALUGUEL('+
            IntToStr(fFiltra_Aluguel_Rec.scdsCp_procCOD_IMALU.AsInteger) +
            ',' + IntToStr (fFiltra_Aluguel_Rec.scdsCp_procCOD_H_IMALU.AsInteger) +
            ')';
          DM.scSge.ExecuteDirect(a);
          DecimalSeparator := ',';
            fLancamentos:=TfLancamentos.Create(Application);
            try
           //  if fLancamentos.R_A_INTEGRAL.Enabled = false then
           //    fLancamentos.R_A_INTEGRAL.Enabled :=true;
             fLancamentos.ShowModal;
            finally
             fLancamentos.Free;
            end;
        end
        else
        begin
          fLancamentos:=TfLancamentos.Create(Application);
          try
            fLancamentos.ShowModal;
          finally
           fLancamentos.Free;
          end;
        end;
       end
       else
       begin
          fLancamentos:=TfLancamentos.Create(Application);
          try
            fLancamentos.ShowModal;
          finally
           fLancamentos.Free;
          end;
       end;
     end
     else
     begin
      fLancamentos:=TfLancamentos.Create(Application);
      try
       fLancamentos.ShowModal;
      finally
       fLancamentos.Free;
      end;
     end;
 end;
end;

procedure TfFiltra_Aluguel_Rec.BitBtn9Click(Sender: TObject);
begin
  inherited;
  data1.Text:='  /  /    ';
  data2.Text:='  /  /    ';
end;

procedure TfFiltra_Aluguel_Rec.Cancelarecdias1Click(Sender: TObject);
begin
  inherited;
 if scdsCp_proc.Active then
 begin
  if cds_muda_aluguel.Active then
    cds_muda_aluguel.Close;
  cds_muda_aluguel.Params[0].AsInteger := scdsCp_procCOD_IMALU.AsInteger;
  cds_muda_aluguel.Open;
  scdsCp_proc.Edit;
  scdsCp_procTOTAL_ALUGUEL.AsFloat := cds_muda_aluguelVALOR_ALUGUEL.AsFloat;
  scdsCp_proc.ApplyUpdates(0);
  cds_muda_aluguel.Close;
  BitBtn3.Click;
 end;
end;

end.
