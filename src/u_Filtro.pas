unit u_Filtro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvToolEdit, Mask, JvExMask, JvSpin,
  JvExControls, JvLabel, ExtCtrls, MMJPanel, FMTBcd, DB, SqlExpr;

type
  Tf_Filtro = class(TForm)
    MMJPanel1: TMMJPanel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    btn1: TSpeedButton;
    JvLabel5: TJvLabel;
    cbbPlano: TComboBox;
    edtGrupo: TEdit;
    edtInc2: TJvSpinEdit;
    edtSocio: TEdit;
    edtInc1: TJvSpinEdit;
    grp1: TGroupBox;
    edtEmissao1: TJvDateEdit;
    JvLabel1: TJvLabel;
    edtEmissao2: TJvDateEdit;
    JvLabel2: TJvLabel;
    grp2: TGroupBox;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    edtVencimento1: TJvDateEdit;
    edtVencimento2: TJvDateEdit;
    grp3: TGroupBox;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    edtPagamento1: TJvDateEdit;
    edtPagamento2: TJvDateEdit;
    JvLabel14: TJvLabel;
    cbbBanco: TComboBox;
    JvLabel15: TJvLabel;
    cbbStatus: TComboBox;
    JvLabel17: TJvLabel;
    edtTitulo: TEdit;
    JvLabel16: TJvLabel;
    edtLote: TEdit;
    JvLabel9: TJvLabel;
    btnLote: TSpeedButton;
    MMJPanel2: TMMJPanel;
    btn3: TBitBtn;
    buscaPlano: TSQLDataSet;
    busca: TSQLDataSet;
    BancoSelec: TSQLDataSet;
    BancoSelecID_BANCO: TIntegerField;
    BancoSelecCONTA: TStringField;
    BancoSelecBANCO: TStringField;
    BancoSelecCIDADE: TStringField;
    BancoSelecSALDO: TFloatField;
    BancoSelecAGENCIA: TStringField;
    BancoSelecDIGAGEN: TStringField;
    BancoSelecCOD_CED: TStringField;
    BancoSelecID_TITULO: TIntegerField;
    BancoSelecN_DOC: TIntegerField;
    BancoSelecJUROS: TFloatField;
    BancoSelecVENCIMENTO: TStringField;
    BancoSelecVENCIMENTO1: TStringField;
    BancoSelecVENCIMENTO2: TStringField;
    BancoSelecLOCAL_PGTO: TStringField;
    BancoSelecVENCIMENTO3: TStringField;
    BancoSelecCARTEIRA: TStringField;
    BancoSelecCADBANCO: TStringField;
    BancoSelecDESCBANCO: TStringField;
    BancoSelecCONTACORRRENTE: TStringField;
    BancoSelecDIGITOCONTACORRENTE: TStringField;
    BancoSelecINICIONOSSONUMERO: TStringField;
    BancoSelecFIMNOSSONUMERO: TStringField;
    BancoSelecPROXIMONOSSONUMERO: TStringField;
    BancoSelecVARIACAO: TStringField;
    BancoSelecNUMEROCONVENIO: TStringField;
    BancoSelecTIPOIMPRESSAOCARNE: TIntegerField;
    BancoSelecTIPOCARNE: TStringField;
    BancoSelecDEMONSTRATIVO: TStringField;
    BancoSelecINSTRUCOESCAIXA: TStringField;
    BancoSelecINSTRUCAO1: TStringField;
    BancoSelecINSTRUCAO2: TStringField;
    BancoSelecACEITEDOCUMENTO: TStringField;
    BancoSelecESPECIEDOCUMENTO: TStringField;
    BancoSelecINSTRUCAO3: TStringField;
    BancoSelecESPECIEDOC: TStringField;
    BancoSelecACEITE: TStringField;
    BancoSelecCONVENIO: TStringField;
    BancoSelecLOCALPGTO: TStringField;
    BancoSelecN_BANCO: TStringField;
    BancoSelecDIGITOBANCO: TIntegerField;
    BancoSelecLAYOUT_BL: TStringField;
    BancoSelecLAYOUT_RM: TStringField;
    BancoSelecRESP_EMISSAO: TStringField;
    BancoSelecIMP_COMPROVANTE: TStringField;
    BancoSelecPASTA_REMESSA: TStringField;
    BancoSelecPASTA_RETORNO: TStringField;
    BancoSelecNOME_ARQUIVO: TStringField;
    BancoSelecC_BANCO: TIntegerField;
    BancoSelecMORAJUROS: TStringField;
    BancoSelecPERCMULTA: TFloatField;
    BancoSelecCODIGOBOLETO: TStringField;
    BancoSelecPROTESTO: TStringField;
    edtNomeCob: TEdit;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    edtNomeRec: TEdit;
    edtIDCOB: TEdit;
    edtIDRecebe: TEdit;
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
    grp4: TGroupBox;
    JvLabel18: TJvLabel;
    edDataUltima1: TJvDateEdit;
    edDataUltima2: TJvDateEdit;
    btn2: TBitBtn;
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbPlanoChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btnLoteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
      var_plano       : String;
      var_banco       : String;
      var_status      : String;
      var_titulo      : String;
      var_lote        : String;
      var_grupo       : String;
      var_insc1       : String;
      var_insc2       : String;
      var_socio       : String;
      var_cobrador    : String;
      var_recebido    : String;
      var_emissao1    : String;
      var_emissao2    : String;
      var_vencimento1 : String;
      var_vencimento2 : String;
      var_pagamento1  : String;
      var_pagamento2  : String;
      var_DataUltima1  : String;
      var_DataUltima2  : String;

    { Public declarations }
  end;

var
  f_Filtro: Tf_Filtro;

implementation

uses uSocio_Procura, UDM, uProcurar, uVerLotes;

{$R *.dfm}

procedure Tf_Filtro.btn3Click(Sender: TObject);
begin
   close;
end;

procedure Tf_Filtro.FormShow(Sender: TObject);
begin
  var_plano       := '';
  var_banco       := '';
  var_status      := '';
  var_titulo      := '';
  var_lote        := '';
  var_grupo       := '';
  var_insc1       := '';
  var_insc2       := '';
  var_socio       := '';
  var_cobrador    := '';
  var_recebido    := '';
  var_emissao1    := '';
  var_emissao2    := '';
  var_vencimento1 := '';
  var_vencimento2 := '';
  var_pagamento1  := '';
  var_pagamento2  := '';
  var_DataUltima1  := '';
  var_DataUltima2  := '';
end;

procedure Tf_Filtro.cbbPlanoChange(Sender: TObject);
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
    edtLote.Enabled := True;
    btnLote.Enabled := True;
  end
  else
  begin
    edtLote.Enabled := False;
    btnLote.Enabled := False;
  end;
end;

procedure Tf_Filtro.btn1Click(Sender: TObject);
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

procedure Tf_Filtro.btn4Click(Sender: TObject);
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

procedure Tf_Filtro.btn5Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      edtIDRecebe.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      edtNomeRec.Text := dm.proc_cobNOME.AsString;
    end;
  finally
    dm.proc_cob.Close;
    fProcurar.Free;
  end;
end;

procedure Tf_Filtro.btnLoteClick(Sender: TObject);
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

procedure Tf_Filtro.FormClose(Sender: TObject; var Action: TCloseAction);
var
  bancosel : string;
begin
  var_plano       := cbbPlano.Text;

  if (BancoSelec.Active) then
      BancoSelec.Close;
  BancoSelec.Open;
  while not BancoSelec.Eof do
  begin
    bancosel := BancoSelecN_BANCO.AsString + '-' + BancoSelecBANCO.AsString + '  '  + BancoSelecCARTEIRA.AsString;
    if (bancosel = cbbBanco.Text) then
    begin
       var_banco := IntToStr(BancoSelecID_BANCO.AsInteger);
    end;
    BancoSelec.Next;
  end;
  BancoSelec.Close;

  var_status      := cbbStatus.Text;
  var_titulo      := edtTitulo.Text;
  var_lote        := edtLote.Text;
  var_grupo       := edtGrupo.Text;
  var_insc1       := edtInc1.Text;
  var_insc2       := edtInc2.Text;
  var_socio       := edtIDSocio.Text;
  var_cobrador    := edtIDCOB.Text;
  var_recebido    := edtIDRecebe.Text;
  var_emissao1    := edtEmissao1.Text;
  var_emissao2    := edtEmissao2.Text;
  var_vencimento1 := edtVencimento1.Text;
  var_vencimento2 := edtVencimento2.Text;
  var_pagamento1  := edtPagamento1.Text;
  var_pagamento2  := edtPagamento2.Text;

  var_DataUltima1  := edDataUltima1.Text;
  var_DataUltima2  := edDataUltima2.Text;
  
end;

procedure Tf_Filtro.btn2Click(Sender: TObject);
begin
  var_plano       := '';
  var_banco       := '';
  var_status      := '';
  var_titulo      := '';
  var_lote        := '';
  var_grupo       := '';
  var_insc1       := '';
  var_insc2       := '';
  var_socio       := '';
  var_cobrador    := '';
  var_recebido    := '';
  var_emissao1    := '';
  var_emissao2    := '';
  var_vencimento1 := '';
  var_vencimento2 := '';
  var_pagamento1  := '';
  var_pagamento2  := '';
  var_DataUltima1  := '';
  var_DataUltima2  := '';

  cbbPlano.Text   := '';
  cbbBanco.Text   := '';
  cbbStatus.Text  := '';
  edtTitulo.Text  := '';
  edtLote.Text    := '';
  edtGrupo.Text   := '';
  edtInc1.Text    := '';
  edtInc2.Text    := '';
  edtIDSocio.Text := '';
  edtSocio.Text   := '';
  edtIDCOB.Text   := '';
  edtNomeCob.Text := '';
  edtIDRecebe.Text:= '';
  edtNomeRec.Text := '';
  edtEmissao1.Text:= '  /  /    ';
  edtEmissao2.Text:= '  /  /    ';
  edtVencimento1.Text:= '  /  /    ';
  edtVencimento2.Text:= '  /  /    ';
  edtPagamento1.Text:= '  /  /    ';
  edtPagamento2.Text:= '  /  /    ';
  edDataUltima1.Text:= '  /  /    ';
  edDataUltima2.Text:= '  /  /    ';
end;

procedure Tf_Filtro.FormCreate(Sender: TObject);
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

  if (not BancoSelec.Active) then
      BancoSelec.Open;
  BancoSelec.First;
  cbbBanco.Items.Clear;
   while not BancoSelec.Eof do
   begin
      cbbBanco.Items.Add(BancoSelecN_BANCO.AsString + '-' + BancoSelecBANCO.AsString + '  '  + BancoSelecCARTEIRA.AsString);
      BancoSelec.Next;
   end;
end;

end.
