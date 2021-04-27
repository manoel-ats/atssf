unit uCad_Vendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, ExtCtrls, DBCtrls, Mask, DB, Menus, dxCore,
  dxButton;

type
  TfCad_Vendedor = class(TfPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
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
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    dxButton2: TdxButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCad_Vendedor: TfCad_Vendedor;

implementation

uses UDM, uProcurar, uPrincipal;

{$R *.dfm}

procedure TfCad_Vendedor.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfCad_Vendedor.dxButton2Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_vend);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'VENDEDOR';
   if fProcurar.ShowModal=mrOk then
   begin
    Dm.cds_vend.Close;
    dm.cds_vend.Params[0].Clear;
    Dm.cds_vend.Params[0].AsInteger:=Dm.proc_vendID_VEN.AsInteger;
    Dm.cds_vend.Open;
   end;
   finally
    dm.proc_vend.Close;
    fProcurar.Free;
   end;
end;

procedure TfCad_Vendedor.FormShow(Sender: TObject);
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
  dm.cdsPermissao.Params[1].AsString := 'Vendedores';
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
