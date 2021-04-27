unit uCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, DBCtrls, StdCtrls,
  Mask;

type
  TfCobranca = class(TfPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    Panel2: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    dxButton2: TdxButton;
    procedure dxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCobranca: TfCobranca;

implementation

uses UDM, uProcurar, uPrincipal;

{$R *.dfm}

procedure TfCobranca.dxButton2Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
   begin
    Dm.cds_cob.Close;
    dm.cds_cob.Params[0].Clear;
    Dm.cds_cob.Params[0].AsInteger:=Dm.proc_cobID_COB.AsInteger;
    Dm.cds_cob.Open;
   end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;
end;

procedure TfCobranca.FormShow(Sender: TObject);
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
  dm.cdsPermissao.Params[1].AsString := 'Cobradores';
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

  if dm.cdsPermissaoCONSULTAR.AsString = 'S' then
  begin
     Procurar := 'S';
     dxButton2.Enabled := true;
  end
  else
  begin
     Procurar := 'N';
     dxButton2.Enabled := false;
  end;
       
end;

end.
