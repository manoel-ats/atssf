unit uGeraTituloAvulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxCore, dxButton, Grids, DBGrids, FMTBcd,
  Mask, SqlExpr, Provider, DB, DBClient, ExtCtrls, DBCtrls, XPMenu,
  ToolEdit;

type
  TfGeraTituloAvulso = class(TForm)
    GroupBox22: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox23: TGroupBox;
    SpeedButton20: TSpeedButton;
    GroupBox19: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox38: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel3: TPanel;
    Panel1: TPanel;
    dxButton1: TdxButton;
    dxButton5: TdxButton;
    dxButton4: TdxButton;
    btnSair: TdxButton;
    dtsrc_CR: TDataSource;
    cds_CR: TClientDataSet;
    cds_CRID_RECEBIMENTOS: TIntegerField;
    cds_CRID: TIntegerField;
    cds_CRVALOR_NF: TFloatField;
    cds_CRVALOR_RECEBER: TFloatField;
    cds_CRPARCELA: TIntegerField;
    cds_CRVENCIMENTO: TDateField;
    cds_CRDATA_PAG: TDateField;
    cds_CRSTATUS: TStringField;
    cds_CRVALOR_PAGO: TFloatField;
    cds_CRVALOR_DIF: TFloatField;
    cds_CRJUROS: TFloatField;
    cds_CRDESCONTO: TFloatField;
    cds_CRMULTA: TFloatField;
    cds_CREMISSAO: TDateField;
    cds_CRN_DOCUMENTO: TStringField;
    cds_CRCAIXA: TStringField;
    cds_CRFORMARECEBIMENTO: TStringField;
    cds_CRVALOR_A_REC: TFloatField;
    cds_CRVALOR_1VIA: TFloatField;
    cds_CRTIPO_DOC: TStringField;
    cds_CRID_SOCIO: TIntegerField;
    cds_CRLOTE: TIntegerField;
    cds_CRGEROU: TStringField;
    cds_CRDATA_DOC: TDateField;
    cds_CRGRUPO: TStringField;
    cds_CRID_BANCO: TIntegerField;
    cds_CRSITUACAO: TStringField;
    cds_CRSELECIONOU: TStringField;
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRTITULO: TIntegerField;
    cds_CRSERIE: TStringField;
    dsp_CR: TDataSetProvider;
    sds_CR: TSQLDataSet;
    sds_CRID_RECEBIMENTOS: TIntegerField;
    sds_CRID: TIntegerField;
    sds_CRVALOR_NF: TFloatField;
    sds_CRVALOR_RECEBER: TFloatField;
    sds_CRPARCELA: TIntegerField;
    sds_CRVENCIMENTO: TDateField;
    sds_CRDATA_PAG: TDateField;
    sds_CRSTATUS: TStringField;
    sds_CRVALOR_PAGO: TFloatField;
    sds_CRVALOR_DIF: TFloatField;
    sds_CRJUROS: TFloatField;
    sds_CRDESCONTO: TFloatField;
    sds_CRMULTA: TFloatField;
    sds_CREMISSAO: TDateField;
    sds_CRN_DOCUMENTO: TStringField;
    sds_CRCAIXA: TStringField;
    sds_CRFORMARECEBIMENTO: TStringField;
    sds_CRVALOR_A_REC: TFloatField;
    sds_CRVALOR_1VIA: TFloatField;
    sds_CRTIPO_DOC: TStringField;
    sds_CRID_SOCIO: TIntegerField;
    sds_CRLOTE: TIntegerField;
    sds_CRGEROU: TStringField;
    sds_CRDATA_DOC: TDateField;
    sds_CRGRUPO: TStringField;
    sds_CRID_BANCO: TIntegerField;
    sds_CRSITUACAO: TStringField;
    sds_CRSELECIONOU: TStringField;
    sds_CRPERCENTUALJUROS: TFloatField;
    sds_CRPERCENTUALMULTA: TFloatField;
    sds_CRPERCENTUALDESCONTO: TFloatField;
    sds_CRVALOROUTROSACRESCIMOS: TFloatField;
    sds_CRTITULO: TIntegerField;
    sds_CRSERIE: TStringField;
    valortitulo: TEdit;
    edparcela: TEdit;
    entrada: TEdit;
    Edit8: TEdit;
    XPMenu1: TXPMenu;
    sds_CROBS: TGraphicField;
    cds_CROBS: TGraphicField;
    btnIncluir: TdxButton;
    Label1: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    SpeedButton3: TSpeedButton;
    Edit6: TEdit;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    Edit5: TEdit;
    emissao: TDateEdit;
    vencimento: TDateEdit;
    BitBtn2: TdxButton;
    sds_CRMESANO: TStringField;
    cds_CRMESANO: TStringField;
    sds_CRCOBRADOR: TIntegerField;
    cds_CRCOBRADOR: TIntegerField;
    Edit7: TEdit;
    Label4: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fGeraTituloAvulso: TfGeraTituloAvulso;

implementation

uses uProcGrupo, UDM, uProcurar, URemessaBanco1;

{$R *.dfm}

procedure TfGeraTituloAvulso.SpeedButton1Click(Sender: TObject);
begin
     fProcGrupo := TfProcGrupo.Create(Application);
     try
        if fProcGrupo.cds_mensal.Active then
           fProcGrupo.cds_mensal.Close;
     //   fProcGrupo.BitBtn2.Click;
        fProcGrupo.RadioButton2.Checked := true;
        if fProcGrupo.ShowModal=mrOk then
        begin
          Edit1.Text := fProcGrupo.cds_mensalGRUPO.AsString;
          Edit2.Text := IntToStr(fProcGrupo.cds_mensalN_INSCRICAO.AsInteger);
          Edit3.text := IntToStr(fProcGrupo.cds_mensalID_SOCIO.AsInteger);
          Edit4.text := fProcGrupo.cds_mensalNOME_DEP.AsString;
          Edit7.text := IntToStr(fProcGrupo.cds_mensalDIAPARAPGTO.AsInteger);
        end;
     finally
       fProcGrupo.cds_mensal.Close;
       fProcGrupo.Free;
     end;
end;

procedure TfGeraTituloAvulso.dxButton1Click(Sender: TObject);
var
   ano, mes, dia: word;
   I, np1: integer;
   data,np2,mesano,venc:string;
   Sobra, parcela, np: double;
   parc : double;
begin

  if (Edit4.Text = '') then
  begin
    MessageDlg('Informe o nome do Sócio.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (Edit6.Text = '') then
  begin
    MessageDlg('Informe o nome do Cobrador.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (vencimento.Text = '  /  /    ') then
  begin
    MessageDlg('Informe a data do primeiro vencimento.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (valortitulo.Text = '') then
  begin
    MessageDlg('Informe o valor do título.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (edparcela.Text = '') then
  begin
    MessageDlg('Informe o n° de parcelas.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (edparcela.Text <> '') then
    parc := StrToFloat(edparcela.Text);
  if (parc <= 0) then
    edparcela.Text := '';

   {** gera contas a receber}
   data := vencimento.text ; //emissao.Text;
   if entrada.Text <>'' then
   begin
     Sobra := StrToFloat(valortitulo.Text) - StrToFloat(entrada.Text);
     if StrToInt(edparcela.Text) > 1 then
       np := StrToInt(edparcela.Text) - 1;
     if Sobra <> 0 then
       parcela := Sobra / np;
   end
   else
     parcela := StrToFloat(valortitulo.Text) / StrToInt(edparcela.Text);
   np := StrToInt(edparcela.Text);
   np2 := floatToStr(np);
   np1 := StrToInt(np2);
   if not dtsrc_CR.DataSet.Active then
      dtsrc_CR.DataSet.Open;
   dtsrc_CR.DataSet.Append;
   cds_CRVENCIMENTO.AsDateTime := StrToDate(vencimento.Text);
   for I:=1 to np1 do
   begin

      decodedate(StrToDate(vencimento.Text), ano, mes, dia);
      mesano := IntToStr(mes);
      mesano := mesano + IntToStr(ano);

      if cds_CR.State <> dsinsert then
         cds_CR.Append;
      cds_CRID.AsInteger := StrToInt(Edit3.Text);
      cds_CRID_SOCIO.AsInteger := StrToInt(Edit3.Text);
      cds_CRPARCELA.AsInteger := I;
      if (Edit8.Text <> '') then
        cds_CROBS.Value := Edit8.Text;
      cds_CRSITUACAO.AsString := 'Ativo';
      cds_CRTIPO_DOC.AsString := 'AV';
      cds_CRGRUPO.AsString := Edit1.Text;
      cds_CRMESANO.Value := mesano;
      cds_CRCOBRADOR.Value := StrToInt(Edit5.Text);

    if entrada.Text <> '' then
    begin
      if I=1 then
      begin
        cds_CRVENCIMENTO.AsDateTime := StrToDate(vencimento.Text);
        cds_CRDATA_PAG.AsDateTime := now;
        cds_CREMISSAO.AsDateTime := StrToDate(emissao.Text);
        cds_CRSTATUS.Value := 'Pago';
        cds_CRVALOR_NF.Value := StrToFloat(entrada.Text);
        cds_CRVALOR_RECEBER.Value := StrToFloat(entrada.Text);
        cds_CRVALOR_1VIA.Value := StrToFloat(entrada.Text);
        cds_CRVALOR_PAGO.Value := StrToFloat(entrada.Text);
        // gera codigo para tab. recebimentos
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_CRID_RECEBIMENTOS.AsInteger := dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
        //********************************************************************
        cds_CR.Post;
        data := DateToStr(cds_CRVENCIMENTO.AsDateTime);

      end
      else
      begin
        decodedate(StrToDate(data), Ano, mes, dia);
        mes:=mes+1;
        if mes<=12 then
        begin
          cds_CRVENCIMENTO.AsDateTime := encodedate(ano, mes, dia);

         //  decodedate(StrToDate(cds_CRVENCIMENTO.AsString), ano, mes, dia);
         //  mesano := IntToStr(mes);
         //  mesano := mesano + IntToStr(ano);
         //  cds_CRMESANO.Value := mesano;

        end
        else
        begin
          ano := ano+1;
          mes := 0;
          mes := mes+1;
          cds_CRVENCIMENTO.AsDateTime := encodedate(ano, mes, dia);

          // decodedate(StrToDate(cds_CRVENCIMENTO.AsString), ano, mes, dia);
          // mesano := IntToStr(mes);
          // mesano := mesano + IntToStr(ano);
          // cds_CRMESANO.Value := mesano;

        end;
          cds_CREMISSAO.AsDateTime := StrToDate(emissao.Text);
          cds_CRSTATUS.Value := 'Pendente';
          cds_CRVALOR_NF.Value := parcela;
          cds_CRVALOR_RECEBER.Value := parcela;
          cds_CRVALOR_1VIA.Value := parcela;
          cds_CRVALOR_PAGO.Value := 0;
          cds_CRVALOR_DIF.Value := 0;
          cds_CRVALOR_A_REC.Value := 0;
          cds_CRDESCONTO.Value := 0;
          cds_CRJUROS.Value := 0;
          // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CRID_RECEBIMENTOS.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_CR.Post;

         data := DateToStr(cds_CRVENCIMENTO.AsDateTime);

      end;
    end

    else
    begin
        decodedate(StrToDate(data), Ano, mes, dia);
        if(I > 1) then
        mes := mes+1;

        if((mes = 2)and(dia > 28))then
        dia := 28;
        if mes <= 12 then
        begin
          cds_CRVENCIMENTO.AsDateTime := encodedate(ano, mes, dia );
          data := DateToStr(cds_CRVENCIMENTO.AsDateTime);
          decodedate(StrToDate(data), ano, mes, dia);
          mesano := IntToStr(mes);
          mesano := mesano + IntToStr(ano);
          cds_CRMESANO.Value := mesano;

        end
        else
        begin
          ano := ano+1;
          mes := 0;
          mes := mes+1;
          cds_CRVENCIMENTO.AsDateTime := encodedate(ano, mes, dia);

          data := DateToStr(cds_CRVENCIMENTO.AsDateTime);
          decodedate(StrToDate(data), ano, mes, dia);
          mesano := IntToStr(mes);
          mesano := mesano + IntToStr(ano);
          cds_CRMESANO.Value := mesano;


        end;
          if (edparcela.Text = '1')then
          cds_CRVENCIMENTO.AsDateTime := StrToDate(vencimento.Text);
          cds_CRSTATUS.Value := 'Pendente';
          cds_CREMISSAO.AsDateTime := StrToDate(emissao.Text);
          cds_CRVALOR_NF.Value := parcela;
          cds_CRVALOR_RECEBER.Value := parcela;
          cds_CRVALOR_1VIA.Value := parcela;
          cds_CRVALOR_PAGO.Value := 0;
          cds_CRVALOR_DIF.Value := 0;
          cds_CRVALOR_A_REC.Value := 0;
          cds_CRDESCONTO.Value := 0;
          cds_CRJUROS.Value := 0;

          // gera codigo para tab. recebimentos
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_CRID_RECEBIMENTOS.AsInteger := dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       //********************************************************************
          cds_CR.Post;

          data := DateToStr(cds_CRVENCIMENTO.AsDateTime);
          cds_CR.ApplyUpdates(0);

    end;

   end;


    if cds_CR.Active then
      cds_CR.Close;
    cds_CR.Params[0].AsInteger := StrToInt(Edit3.Text);
    cds_CR.Params[1].AsString := 'AV';
    cds_CR.Open;
end;

procedure TfGeraTituloAvulso.btnSairClick(Sender: TObject);
begin
   close;
end;

procedure TfGeraTituloAvulso.dxButton5Click(Sender: TObject);
begin
 if perfil <> 'administrador' then
 begin
  MessageDlg('   Somente usuários Administradores tem '+#13+#10+'permição para excluir parcelas', mtInformation, [mbOK], 0);
  exit;
 end;
  if MessageDlg('Deseja realmente excluir este Lançamento?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     dtsrc_CR.DataSet.Delete;
     (dtsrc_CR.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfGeraTituloAvulso.dxButton4Click(Sender: TObject);
begin
  cds_cr.ApplyUpdates(0);
end;

procedure TfGeraTituloAvulso.btnIncluirClick(Sender: TObject);
begin
  if (cds_CR.Active) then
    cds_CR.Close;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit8.Text := '';
 
  valortitulo.Text := '';
  edparcela.Text := '1';
  //ComboBox1.Text := '';
  SpeedButton1.Click;
  emissao.SetFocus;
end;

procedure TfGeraTituloAvulso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit8.Text := '';
  emissao.Text := '  /  /    ';
  valortitulo.Text := '';
  edparcela.Text := '1';
 // ComboBox1.Text := '';
  if (cds_CR.Active) then
    cds_CR.Close;
end;

procedure TfGeraTituloAvulso.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfGeraTituloAvulso.FormCreate(Sender: TObject);
//var
 // ScreenHeight: LongInt;
 // ScreenWidth: LongInt;
begin
  { ScreenWidth := 800;
   ScreenHeight := 600;
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;}
end;

procedure TfGeraTituloAvulso.SpeedButton2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit5.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit6.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;
end;

procedure TfGeraTituloAvulso.SpeedButton20Click(Sender: TObject);
begin
 emissao.Text := '';
end;

procedure TfGeraTituloAvulso.SpeedButton3Click(Sender: TObject);
begin
  vencimento.Text := '';
end;

procedure TfGeraTituloAvulso.BitBtn2Click(Sender: TObject);
begin
   fRemessaBanco1 := TfRemessaBanco1.Create(Application);
   try
     fRemessaBanco1.Edit2.Text := Edit1.Text;
     fRemessaBanco1.Edit3.Text := Edit2.Text;
     fRemessaBanco1.Edit1.Text := Edit2.Text;
     fRemessaBanco1.DateEdit1.Text := emissao.Text;
     fRemessaBanco1.Edit6.Text := Edit6.Text;
     fRemessaBanco1.Edit4.Text := Edit5.Text;
     fRemessaBanco1.ShowModal;

   finally
     fRemessaBanco1.Free;
   end;
end;

end.
