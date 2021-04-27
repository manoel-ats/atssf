unit UnitDlgAlterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, XPMenu, dxCore, dxButton;

type
  TFormDlgAlterarSenha = class(TForm)
    XPMenu1: TXPMenu;
    Panel1: TPanel;
    leNova: TLabeledEdit;
    leConfirmacao: TLabeledEdit;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    leAtual: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButton1Click(Sender: TObject);
    procedure leAtualExit(Sender: TObject);
    procedure leAtualKeyPress(Sender: TObject; var Key: Char);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDlgAlterarSenha: TFormDlgAlterarSenha;

implementation

uses UDM, UfDlgLogin, UPrincipal, uDmApp;

{$R *.dfm}

procedure TFormDlgAlterarSenha.FormShow(Sender: TObject);
begin
  if not dm.cds_senha.Active then
    dm.cds_senha.Open;
  leAtual.SetFocus;
end;

procedure TFormDlgAlterarSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.cds_senha.Active then
   dm.CDSSenha.Close;
end;

procedure TFormDlgAlterarSenha.dxButton1Click(Sender: TObject);
begin
  if leNova.Text <> leConfirmacao.Text then
  begin
    Application.MessageBox('Nova senha e confirmação são' + ' diferentes. Por Favor,' + ' redigite', 'Erro', MB_ICONERROR);
    leNova.Text := '';
    leConfirmacao.Text := '';
    leNova.SetFocus;
    exit;
  end;
  with dm.cds_senha do
  begin
    Locate('Login', dm.cds_senhaLOGIN.AsString, [loCaseInsensitive]);
    Edit;
    FieldByName('Senha').AsString := dmApp.Encripta(leNova.Text);
    ApplyUpdates(0);
    end;
    Application.MessageBox('Senha alterada com sucesso.', 'Aviso', MB_ICONEXCLAMATION);
end;

procedure TFormDlgAlterarSenha.leAtualExit(Sender: TObject);
begin
  if (dmApp.Encripta(leAtual.Text) <>
    dm.cds_senha.FieldByName('senha'). AsString) then
  begin
   Application.MessageBox('Senha incorreta', 'Erro');
   leAtual.Text:='';
   leAtual.SetFocus;
  end;
  leNova.Text:='';
  leConfirmacao.Text:='';
end;

procedure TFormDlgAlterarSenha.leAtualKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) then
     begin
         key:= #0;
         SelectNext((Sender as TwinControl),True,True);
     end;
end;

procedure TFormDlgAlterarSenha.dxButton2Click(Sender: TObject);
begin
  if dm.cds_senha.State in [dsInsert, dsEdit] then
    dm.cds_senha.Cancel;
    close;
end;

end.
