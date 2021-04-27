unit uFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, XPMenu, DB, StdCtrls, DBCtrls, Buttons, ExtCtrls, ComCtrls,
  Mask, FacDbEdit, Menus, dxCore, dxButton;

type
  TfFuncionarios = class(TfPai)
    Label1: TLabel;
    FacDBEdit1: TFacDBEdit;
    Label2: TLabel;
    FacDBEdit2: TFacDBEdit;
    Label3: TLabel;
    FacDBEdit3: TFacDBEdit;
    Label4: TLabel;
    FacDBEdit5: TFacDBEdit;
    Label5: TLabel;
    Panel4: TPanel;
    FacDBEdit8: TFacDBEdit;
    Label6: TLabel;
    FacDBEdit9: TFacDBEdit;
    Label7: TLabel;
    FacDBEdit10: TFacDBEdit;
    Label8: TLabel;
    FacDBEdit11: TFacDBEdit;
    Label9: TLabel;
    FacDBEdit12: TFacDBEdit;
    Label10: TLabel;
    FacDBEdit13: TFacDBEdit;
    Label13: TLabel;
    FacDBEdit14: TFacDBEdit;
    Label14: TLabel;
    FacDBEdit15: TFacDBEdit;
    Label15: TLabel;
    FacDBEdit16: TFacDBEdit;
    Label17: TLabel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    DBMemo2: TDBMemo;
    FacDBEdit4: TFacDBEdit;
    Panel2: TPanel;
    DBTextDestaque1: TDBText;
    DBTextDestaque: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel3: TPanel;
    Label16: TLabel;
    Label11: TLabel;
    FacDBEdit6: TFacDBEdit;
    FacDBEdit7: TFacDBEdit;
    dxButton2: TdxButton;
    FacDBEdit17: TFacDBEdit;
    Label12: TLabel;
    XPMenu1: TXPMenu;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFuncionarios: TfFuncionarios;

implementation

uses UDM, uProcurar, uPrincipal, uAcesso, udmAcesso, ufDlgLogin;

{$R *.dfm}

procedure TfFuncionarios.btnIncluirClick(Sender: TObject);
begin
  inherited;
  FacDBEdit2.SetFocus;
end;

procedure TfFuncionarios.btnProcurarClick(Sender: TObject);
begin
  inherited;

  fProcurar:=TfProcurar.Create(self,dm.proc_funcionario);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
    Dm.cds_funcionario.Close;
    dm.cds_funcionario.Params[0].Clear;
    Dm.cds_funcionario.Params[0].AsInteger:=Dm.proc_funcionarioCOD_FUNCIONARIO.AsInteger;
    Dm.cds_funcionario.Open;
    end;
   finally
    dm.proc_funcionario.Close;
    fProcurar.Free;
   end;
end;

procedure TfFuncionarios.dxButton2Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_funcionario);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
    Dm.cds_funcionario.Close;
    dm.cds_funcionario.Params[0].Clear;
    Dm.cds_funcionario.Params[0].AsInteger:=Dm.proc_funcionarioCOD_FUNCIONARIO.AsInteger;
    Dm.cds_funcionario.Open;
    end;
   finally
    dm.proc_funcionario.Close;
    fProcurar.Free;
   end;
end;

procedure TfFuncionarios.btnExcluirClick(Sender: TObject);
begin
 if perfil <> 'administrador' then
 begin
   MessageDlg('usuário ñ tem permissão para excluir registros, solicite permissão '+#13+#10+'ao usuário administrador..', mtWarning, [mbOK], 0);
   exit;
 end;
  inherited;

end;

procedure TfFuncionarios.btnGravarClick(Sender: TObject);
begin
 if perfil <> 'administrador' then
 begin
   MessageDlg('usuário ñ tem permissão para alterar registros, solicite permissão '+#13+#10+'ao usuário administrador..', mtWarning, [mbOK], 0);
   exit;
 end;
  inherited;

end;

procedure TfFuncionarios.FormShow(Sender: TObject);
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
  dm.cdsPermissao.Params[1].AsString := 'Funcionários';
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
