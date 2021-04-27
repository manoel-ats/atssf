unit u_DadosCob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExStdCtrls, JvEdit, JvValidateEdit, StdCtrls, JvCheckBox,
  JvToolEdit, Buttons, Mask, JvExMask, JvSpin, JvExControls, JvLabel,
  ExtCtrls, MMJPanel, FMTBcd, DB, SqlExpr, CobrancaCls, DBXpress, DateUtils;

type
  Tf_DadosCob = class(TForm)
    MMJPanel1: TMMJPanel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel8: TJvLabel;
    btn1: TSpeedButton;
    JvLabel5: TJvLabel;
    JvLabel9: TJvLabel;
    btnLote: TSpeedButton;
    cbbPlano: TComboBox;
    edtGrupo: TEdit;
    edtInc2: TJvSpinEdit;
    edtSocio: TEdit;
    edtInc1: TJvSpinEdit;
    edtLote: TEdit;
    MMJPanel2: TMMJPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    JvDateEdit1: TJvDateEdit;
    JvLabel1: TJvLabel;
    JvVencimento: TJvDateEdit;
    JvLabel2: TJvLabel;
    JvLabel10: TJvLabel;
    edtParc: TJvSpinEdit;
    chkTaxa: TJvCheckBox;
    JvValorAq: TJvValidateEdit;
    JvValorAv: TJvValidateEdit;
    chkTitulo: TJvCheckBox;
    chkSomar: TJvCheckBox;
    buscaPlano: TSQLDataSet;
    buscaPlanoPLANO: TStringField;
    buscaPlanoDIA_FALEC: TStringField;
    buscaPlanoQUANTIDADE: TIntegerField;
    edtNomeCob: TEdit;
    edtIDCOB: TEdit;
    btn4: TSpeedButton;
    JvLabel7: TJvLabel;
    JvTitulo: TJvSpinEdit;
    chkPendentes: TJvCheckBox;
    edtIDSocio: TEdit;
    s_GP: TSQLDataSet;
    s_GPID_GRUPO: TIntegerField;
    s_GPINSCRICAO: TIntegerField;
    s_GPQTDE: TIntegerField;
    s_GPGRUPO: TStringField;
    s_GPN_FALEC: TIntegerField;
    s_GPTOT_FAL: TIntegerField;
    s_GPLOTE: TIntegerField;
    s_GPGEROU: TStringField;
    procedure chkTaxaClick(Sender: TObject);
    procedure chkTituloClick(Sender: TObject);
    procedure chkPendentesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure cbbPlanoChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbbPlanoExit(Sender: TObject);
    procedure btnLoteClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    v_PLANO : string;
    v_GRUPO : string;
    v_INSC_INI : Integer;
    v_INSC_FIN : Integer;
    v_N_PARC : Integer;
    v_EMISSAO :TDateTime;
    v_VENCIMENTO :TDateTime;
    v_IDCOB : Integer;
    v_TOTALPEND : Integer;
    v_TAXAAQUI  : Double;
    v_TITULOAV  : Double;
    v_SOMAPEND  : string;
    v_LOTE      : Integer;
    v_QUTDE     : Integer;
    procedure populaVariaveis;
    function    TestaCamposObrigatorios() : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_DadosCob: Tf_DadosCob;
  TD: TTransactionDesc;
  FGeraCob : TCobrancaCls;

implementation

uses uProcurar, UDM, uSocio_Procura, uVerLotes, u_Filtro;

{$R *.dfm}

procedure Tf_DadosCob.chkTaxaClick(Sender: TObject);
begin
  if (chkTaxa.Checked = True) then
     JvValorAq.Enabled := True
  else
     JvValorAq.Enabled := False;
end;

procedure Tf_DadosCob.chkTituloClick(Sender: TObject);
begin
  if (chkTitulo.Checked = True) then
     JvValorAv.Enabled := True
  else
     JvValorAv.Enabled := False;
end;

procedure Tf_DadosCob.chkPendentesClick(Sender: TObject);
begin
  if (chkPendentes.Checked = True) then
     JvTitulo.Enabled := True
  else
     JvTitulo.Enabled := False;
end;

procedure Tf_DadosCob.FormCreate(Sender: TObject);
begin
  if (buscaPlano.Active) then
    buscaPlano.Close;
  buscaPlano.CommandText := 'select * from PLANO';
  buscaPlano.Open;
  buscaPlano.First;
  while not buscaPlano.Eof do
  begin
    cbbPlano.Items.Add(buscaPlano.Fields[0].AsString);
    buscaPlano.Next;
  end;
  buscaPlano.Close;


end;

procedure Tf_DadosCob.btn2Click(Sender: TObject);
begin
   if (TestaCamposObrigatorios = False) then
     Exit;

    populaVariaveis;
   // Testar o Tipode Plano
   if (buscaPlano.Active) then
     buscaPlano.Close;
   buscaPlano.CommandText := 'select * from PLANO where PLANO = ' +
                             QuotedStr(cbbPlano.Text);
   buscaPlano.Open;
   if (buscaPlano.IsEmpty) then
   begin
     MessageDlg('o campo Plano não tem valor'+#13+#10+'ou valor informado é invalido', mtInformation, [mbOK], 0);
     cbbPlano.SetFocus;
     Exit;
   end
   else
   begin
     //Gera Titulo Avulso
     if (chkTitulo.Checked = True) then
     begin
       FGeraCob.GeraTituloAvulso(v_PLANO, v_GRUPO, v_INSC_INI, v_INSC_FIN, v_N_PARC, v_TAXAAQUI, v_EMISSAO, v_VENCIMENTO, v_IDCOB);
     end
     else
     begin
       if (buscaPlanoDIA_FALEC.AsString = 'D') then // Por Dia
       begin
         if (chkTaxa.Checked = True) then  //Gera Taxa de aquisição ?
         begin
            FGeraCob.GeraTituloAvulso(v_PLANO, v_GRUPO, v_INSC_INI, v_INSC_FIN, 1, v_TAXAAQUI, v_EMISSAO, v_VENCIMENTO, v_IDCOB);
            v_QUTDE := FGeraCob.buscaPLANO(cbbPlano.Text);
            v_VENCIMENTO := IncDay(v_VENCIMENTO, v_QUTDE);
         end;
         FGeraCob.GeraCobPorDia(v_PLANO, v_GRUPO, v_INSC_INI, v_INSC_FIN, v_N_PARC, v_EMISSAO, v_VENCIMENTO, v_IDCOB, v_TOTALPEND);
       end;

       // Verificar se é por Falecimento ou Dia
       if (buscaPlanoDIA_FALEC.AsString = 'F') then // Por Falecimento
       begin
          { //Gera Cob. Para Socios com pendencia <= ao valor informado
           if (chkPendentes.Checked = True) then
           begin

           end;
           //Gera Titulo Somando os Anteriores
           if (chkSomar.Checked = True) then
           begin

           end;
           }
       end;
     end;
   end;
   buscaPlano.Close;

  Close;

end;

procedure Tf_DadosCob.btn4Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      edtIDCOB.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      edtNomeCob.Text := dm.proc_cobNOME.AsString;
    end;
  finally
    dm.proc_cob.Close;
    fProcurar.Free;
  end;
end;

procedure Tf_DadosCob.cbbPlanoChange(Sender: TObject);
var
   Tipo_plano : string;
begin
    if (buscaPlano.Active) then
    buscaPlano.Close;
  buscaPlano.CommandText := 'select * from PLANO where PLANO = ' + QuotedStr(cbbPlano.Text);
  buscaPlano.Open;
  Tipo_plano := buscaPlano.Fields[1].AsString;
  buscaPlano.Close;
  if (Tipo_plano = 'F') then
  begin
    edtLote.Enabled  := True;
    btnLote.Enabled  := True;
    chkSomar.Visible := True;
    btnLote.Enabled  := True;
  end
  else
  begin
    edtLote.Enabled  := False;
    btnLote.Enabled  := False;
    chkSomar.Visible := False;
    btnLote.Enabled  := False;
  end;

end;

procedure Tf_DadosCob.btn1Click(Sender: TObject);
begin
  varonde := 9;
  edtGrupo.Text := '';
  edtInc1.Text  := '';
  edtInc2.Text  := '';
  edtSocio.Text := '';
  fSocio_Procura.ShowModal;
  edtGrupo.Text := DM.v_gp;
  edtInc1.Text  := DM.v_inc1;
  edtInc2.Text  := DM.v_inc2;
  edtIDSocio.Text := DM.v_IDSocio;
  edtSocio.Text := DM.v_socio;
  varonde := 0;
end;

procedure Tf_DadosCob.cbbPlanoExit(Sender: TObject);
begin
  JvDateEdit1.Date := Now;
  JvVencimento.Date := Now + 30;
end;

procedure Tf_DadosCob.btnLoteClick(Sender: TObject);
begin
  edtInc1.AsInteger := 0;
  edtInc2.AsInteger := 0;
  DM.v_Lote := '';
  DM.v_gp   := '';
  fVerLotes := TfVerLotes.Create(Application);
  try
    fVerLotes.ShowModal;
  finally
    fVerLotes.Free;
  end;
  edtLote.Text  := DM.v_Lote;
  edtGrupo.Text := DM.v_gp;
  // Pega total de Socios Do Grupo
  if (s_GP.Active) then
     s_GP.Close;
  s_GP.Params[0].AsString := DM.v_gp;
  s_GP.Open;
  if (not s_GP.IsEmpty) then
  begin
     edtInc1.AsInteger := 1;
     edtInc2.AsInteger := s_GPINSCRICAO.AsInteger;
  end;
  s_GP.Close;
end;

procedure Tf_DadosCob.btn3Click(Sender: TObject);
begin
   Close;
end;

procedure Tf_DadosCob.populaVariaveis;
begin
  v_PLANO := cbbPlano.Text;
  v_GRUPO := edtGrupo.Text;
  v_INSC_INI := edtInc1.AsInteger;
  v_INSC_FIN := edtInc2.AsInteger;
  if (edtLote.Text <> '') then
    v_LOTE := StrToInt(edtLote.Text);
  v_N_PARC := 1;
  if (edtParc.AsInteger > 1) then
    v_N_PARC := edtParc.AsInteger;
  v_EMISSAO := JvDateEdit1.Date;
  v_VENCIMENTO := JvVencimento.Date;
  v_IDCOB := 0;
  if (edtIDCOB.Text <> '') then
    v_IDCOB := StrToInt(edtIDCOB.Text);
  if (chkPendentes.Checked = True) then
    v_TOTALPEND := JvTitulo.AsInteger
  else
    v_TOTALPEND := 0;
  if (chkTaxa.Checked = True) then
    v_TAXAAQUI  := JvValorAq.Value
  else
    v_TAXAAQUI  := 0;
  if (chkTitulo.Checked = True) then
    v_TITULOAV  := JvValorAv.Value
  else
    v_TITULOAV  :=  0;
  if (chkSomar.Checked = True) then
    v_SOMAPEND  := 'SIM'
  else
    v_SOMAPEND  := 'NAO';
end;

function Tf_DadosCob.TestaCamposObrigatorios: Boolean;
begin
   if (cbbPlano.Text = '') then
   begin
     Result := False;
     MessageDlg('É preciso escolher um PLANO.', mtError, [mbOK], 0);
     cbbPlano.SetFocus;
     Exit;
   end;

   if (edtGrupo.Text = '') then
   begin
     Result := False;
     MessageDlg('Preencha o campo GRUPO.', mtError, [mbOK], 0);
     edtGrupo.SetFocus;
     Exit;
   end;

   if (edtInc1.AsInteger <= 0) then
   begin
     Result := False;
     MessageDlg('O campo Inscrição deve ter um valor.', mtError, [mbOK], 0);
     edtInc1.SetFocus;
     Exit;
   end;

   if (edtInc2.AsInteger <= 0) then
   begin
     Result := False;
     MessageDlg('O campo Inscrição deve ter um valor.', mtError, [mbOK], 0);
     edtInc2.SetFocus;
     Exit;
   end;

   if (JvDateEdit1.Text = '  /  /    ') then
   begin
     Result := False;
     MessageDlg('Preencha a Data de EMISSÃO.', mtError, [mbOK], 0);
     JvDateEdit1.SetFocus;
     Exit;
   end;

   if (JvVencimento.Text = '  /  /    ') then
   begin
     Result := False;
     MessageDlg('Preencha a Data de VENCIMENTO.', mtError, [mbOK], 0);
     JvVencimento.SetFocus;
     Exit;
   end;

   if (chkTaxa.Checked = True) then
   begin
     if (JvValorAq.Value <= 0) then
     begin
       Result := False;
       MessageDlg('Preencha o Valor da Taxa de AQUISIÇÃO.', mtError, [mbOK], 0);
       JvValorAq.SetFocus;
       Exit;
     end;
   end;

   if (chkTitulo.Checked = True) then
   begin
     if (JvValorAv.Value <= 0) then
     begin
       Result := False;
       MessageDlg('Preencha o Valor do Título Avulso.', mtError, [mbOK], 0);
       JvValorAv.SetFocus;
       Exit;
     end;
   end;

   if (chkPendentes.Checked = True) then
   begin
     if (JvTitulo.AsInteger <= 0) then
     begin
       Result := False;
       MessageDlg('o campo títulos pendentes tem que ter um valor maior que ' + IntToStr(JvTitulo.AsInteger), mtError, [mbOK], 0);
       JvTitulo.SetFocus;
       Exit;
     end;
   end;

   Result := True;
   
end;

procedure Tf_DadosCob.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Data_Final : TDateTime;
begin
  f_Filtro.var_plano := cbbPlano.Text;
  if (edtLote.Text <> '') then
    f_Filtro.var_lote        := edtLote.Text;
  f_Filtro.var_grupo       := edtGrupo.Text;
  f_Filtro.var_insc1       := edtInc1.Text;
  f_Filtro.var_insc2       := edtInc2.Text;
  if (edtIDCOB.Text <> '') then
    f_Filtro.var_cobrador    := edtIDCOB.Text;
  if (JvVencimento.Text = '  /  /    ') then
  begin
      f_Filtro.var_vencimento1 := DateTimeToStr(Now);
  end
  else
  begin
      f_Filtro.var_vencimento1 := JvVencimento.Text;
  end;
  Data_Final := IncMonth(JvVencimento.Date, 120);
  f_Filtro.var_vencimento2 := DateTimeToStr(Data_Final);
  f_Filtro.var_DataUltima1 := '  /  /    ';
  f_Filtro.var_DataUltima2 := '  /  /    ';
  f_Filtro.var_emissao1 := '  /  /    ';
  f_Filtro.var_emissao2 := '  /  /    ';
  f_Filtro.var_pagamento1 := '  /  /    ';
  f_Filtro.var_pagamento2 := '  /  /    ';
end;

end.
