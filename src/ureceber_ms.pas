unit uReceber_MS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FacDbEdit, StdCtrls, DBCtrls, Mask, XPMenu, DB, Menus,
  dxCore, dxButton, ExtCtrls, DBClient;

type
  TfReceber_MS = class(TfPai)
    Panel2: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    XPMenu1: TXPMenu;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox2: TDBComboBox;
    FacDBEdit3: TFacDBEdit;
    FacDBEdit4: TFacDBEdit;
    FacDBEdit8: TFacDBEdit;
    DBEdit4: TDBEdit;
    FacDBEdit1: TFacDBEdit;
    DBEdit5: TDBEdit;
    dxButton1: TdxButton;
    dxButton3: TdxButton;
    dxButton2: TdxButton;
    dxButton7: TdxButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReceber_MS: TfReceber_MS;

implementation

uses UDM, uCad_Clientes, uConfirma_renovar, uFiltro_CR1, uRecibo;

{$R *.dfm}

procedure TfReceber_MS.btnIncluirClick(Sender: TObject);
begin

//  inherited;

end;

procedure TfReceber_MS.FormShow(Sender: TObject);
begin
  inherited;
  if dm.cds_CR.State = dsInactive then
  begin
    dm.cds_cr.Params[0].Clear;
    dm.cds_cr.Params[1].Clear;
    dm.cds_cr.Params[2].AsInteger := Filtro_CR1.scdsCp_procID_RECEBIMENTOS.AsInteger;
    dm.cds_cr.Open;
  end;

  if dm.cds_CRSTATUS.AsString <> 'Pago' then
  begin
   dm.cds_cr.Edit;
   dm.cds_CRDATA_PAG.AsDateTime := now;
   DBComboBox2.SetFocus;
  end;

end;

procedure TfReceber_MS.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if dm.cds_cr.State in [dsInsert, dsEdit] then
  begin
    dm.cds_crVALOR_A_REC.Value := dm.cds_CRVALOR_RECEBER.Value;
    dm.cds_CRVALOR_A_REC.Value := dm.cds_CRVALOR_A_REC.Value -
    dm.cds_CRDESCONTO.Value + dm.cds_crJUROS.Value;
  end;

end;

procedure TfReceber_MS.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if dm.cds_cr.State in [dsInsert, dsEdit] then
  begin
    dm.cds_CRVALOR_A_REC.Value := dm.cds_CRVALOR_RECEBER.Value;
    dm.cds_CRVALOR_A_REC.Value := dm.cds_CRVALOR_A_REC.Value +
    dm.cds_crJUROS.Value - dm.cds_crDESCONTO.Value;
  end;
end;

procedure TfReceber_MS.DBEdit15Exit(Sender: TObject);
begin
  inherited;
  if dm.cds_cr.State in [dsInsert, dsEdit] then
  begin
    dm.cds_CRVALOR_DIF.Value := dm.cds_CRVALOR_A_REC.Value -
    dm.cds_CRVALOR_PAGO.Value;
  end;
end;

procedure TfReceber_MS.btnGravarClick(Sender: TObject);
begin
  dm.cds_CRSTATUS.AsString := 'Pago';
  inherited;
  if dm.cds_CRVENCIMENTO.Value = dm.cds_socioDATAFIM.Value then
  begin
    fConfirma_renovar := TfConfirma_renovar.Create(Application);
    try
      fConfirma_renovar.ShowModal;
    finally
      fConfirma_renovar.Free;
    end;
  end;

end;

procedure TfReceber_MS.btnCancelarClick(Sender: TObject);
begin
   dm.cds_CRSTATUS.AsString := 'Pendente';
   dm.cds_CRDATA_PAG.AsString := '';
   dm.cds_CRFORMARECEBIMENTO.AsString := '';
   dm.cds_CRN_DOCUMENTO.AsString := '';
   dm.cds_CRCAIXA.AsString := '';
   dm.cds_CRDESCONTO.AsFloat := 0;
   dm.cds_CRJUROS.AsFloat := 0;
   dm.cds_CRVALOR_A_REC.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
   dm.cds_CRVALOR_DIF.AsFloat := 0;
//  inherited;

end;

procedure TfReceber_MS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    if tipo_cr = 'MS' then
    begin
      if DM.cds_CR.Active then
        dm.cds_CR.Close;
      dm.cds_CR.Params[0].AsInteger :=
        dm.cds_socioID_SOCIO.AsInteger;
      dm.cds_CR.Params[1].AsString := 'MS';
      dm.cds_CR.Open;
    end;
    if tipo_cr = 'TM' then
    begin
      if DM.cds_CR.Active then
        dm.cds_CR.Close;
      dm.cds_CR.Params[0].AsInteger :=
        dm.cds_socioID_SOCIO.AsInteger;
      dm.cds_CR.Params[1].AsString := 'TM';
      dm.cds_CR.Open;
    end;

    //RadioButton3.Checked := true;
end;

procedure TfReceber_MS.DtSrcStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TfReceber_MS.dxButton1Click(Sender: TObject);
begin
 if dm.cds_CRSTATUS.AsString = 'Pago' then
 begin
  MessageDlg('Parcela já foi Paga', mtError, [mbOK], 0);
  exit;
 end;
  dm.cds_CRSTATUS.AsString := 'Pago';
  dm.cds_CR.ApplyUpdates(0);
  if dm.cds_socio.State = dsInactive then
  begin
    dm.cds_socio.Params[0].AsInteger := Filtro_CR1.scdsCp_procID_SOCIO.AsInteger;
    dm.cds_socio.Open;
  end;

  if dm.cds_CRVENCIMENTO.AsDateTime = dm.cds_socioDATAFIM.AsDateTime then
  begin
    fConfirma_renovar := TfConfirma_renovar.Create(Application);
    try
      fConfirma_renovar.ShowModal;
    finally
      fConfirma_renovar.Free;
    end;
  end;
 // close;
end;

procedure TfReceber_MS.dxButton2Click(Sender: TObject);
begin
 if dm.cds_CRSTATUS.AsString = 'Pendente' then
 begin
  MessageDlg('Parcela Ainda não foi Paga', mtError, [mbOK], 0);
  exit;
 end;

  if dm.cds_CR.State = dsBrowse then
   dm.cds_CR.Edit;

   dm.cds_CRSTATUS.AsString := 'Pendente';
   dm.cds_CRDATA_PAG.AsString := '';
   dm.cds_CRFORMARECEBIMENTO.AsString := '';
   dm.cds_CRN_DOCUMENTO.AsString := '';
   dm.cds_CRCAIXA.AsString := '';
   dm.cds_CRDESCONTO.AsFloat := 0;
   dm.cds_CRJUROS.AsFloat := 0;
   dm.cds_CRVALOR_A_REC.AsFloat := dm.cds_CRVALOR_RECEBER.AsFloat;
   dm.cds_CRVALOR_DIF.AsFloat := 0;
   dm.cds_CR.ApplyUpdates(0);
end;

procedure TfReceber_MS.btnSairClick(Sender: TObject);
begin
  inherited;
 close;
end;

procedure TfReceber_MS.dxButton7Click(Sender: TObject);
begin
  inherited;
 receber := 'LOTE';
 fRecibo := TfRecibo.Create(Application);
 try
    fRecibo.ShowModal;
 finally
   fRecibo.Free;
 end;
end;

end.
