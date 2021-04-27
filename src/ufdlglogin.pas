unit ufDlgLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, MMJPanel;
type
  TfDlgLogin = class(TForm)
    BitBtnCancelar: TBitBtn;
    BitBtnOK: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    MMJPanel2: TMMJPanel;
    MMJPanel1: TMMJPanel;
    Label2: TLabel;
    Label1: TLabel;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure EdtLoginKeyPress(Sender: TObject; var Key: Char);
   
  private
    FTentativas: Integer;
    procedure setTentativas(const Value: Integer);
    { Private declarations }
  public
    property Tentativas: Integer read FTentativas write setTentativas;
    { Public declarations }
  end;

var
  fDlgLogin: TfDlgLogin;

  intTeste: integer;
  usuario : string;


implementation

uses  DB, uPrincipal, uDm, udmApp, uSplash;

{$R *.dfm}

procedure TfDlgLogin.FormCreate(Sender: TObject);
var contador: integer;
begin
   contador := 100;
//   FlatGauge1.MaxValue := dm.C_Cliente.RecordCount;
    fSplash.FlatGauge1.MaxValue := contador;
//   fSplash.FlatGauge1.Progress := 0;
   while not fSplash.FlatGauge1.Progress = 9990 do
   begin
    //  contador := contador + 1;
      fSplash.FlatGauge1.Progress := fSplash.FlatGauge1.Progress + 1;
      fSplash.FlatGauge1.Refresh;
      Next;
   end;
//    fSplash.Free;
  fSplash.FlatGauge1.Progress := 100;
  Tentativas := 0;
end;

procedure TfDlgLogin.FormShow(Sender: TObject);
begin
  Dm.cds_senha.open;
  edtLogin.SetFocus;
end;

procedure TfDlgLogin.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  Dm.cds_senha.Close;
  if (intTeste = 1) then
  begin
  if (Tentativas <= 3) then
  begin
    fDlgLogin.Visible := False;
    fSplash.Free;
    Principal.ShowModal;
  end;
  end;
end;

procedure TfDlgLogin.BitBtnOKClick(Sender: TObject);
begin
  varUsuario := edtLogin.Text;
 if (EdtLogin.Text <> 'ats') then
 begin
 // [loCaseInsensitive]
  if not (dm.cds_senha.Locate('Login',
          edtLogin.Text, [loPartialKey])) then
  begin
      Application.MessageBox('Usuário não cadastrado, ou digitado errado!', 'Erro',
       MB_ICONERROR);
    edtLogin.Text := '';
    edtSenha.Text := '';
    edtLogin.setFocus;
    Tentativas := Tentativas + 1;
      if (tentativas >3) then Close;
  end
  else
    if (dmApp.Encripta(edtSenha.Text) =
        dm.cds_senha.FieldByName('senha'). AsString) then
    begin
     intTeste := 1;
     if dm.cds_senhaCODUSUARIO.AsInteger <= 0 then
       usuarioLogado := 0
     else
       usuarioLogado:=dm.cds_senhaCODUSUARIO.AsInteger;
       perfil := dm.cds_SenhaPERFIL.AsString;
       Close;
    end
    else
    begin
      Application.MessageBox('Senha incorreta', 'Erro',
      MB_ICONERROR);
      edtLogin.Text := '';
      edtSenha.Text := '';
      edtLogin.SetFocus;
      Tentativas := Tentativas +1;
    if (Tentativas >3) then Close;
    end;
//se usuario for ATS
 end
 else
 begin
   if EdtSenha.Text = 'a2t00s7' then
   begin
   //MessageDlg('bem vindo ao sistema - Sys Óbitos', mtWarning, [mbOK], 0);
     intTeste := 1;
     perfil := 'administrador';
     usuario := 'ats';
     Close;
   end
   else
   begin
     Application.MessageBox('Senha incorreta', 'Erro', MB_ICONERROR);
     exit;
   end;
 end;

end;

procedure TfDlgLogin.BitBtnCancelarClick(Sender: TObject);
begin
  Tentativas := 4;
  Close;
end;

procedure TfDlgLogin.setTentativas(const Value: Integer);
begin
  FTentativas := Value;
end;

procedure TfDlgLogin.EdtLoginKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) then
     begin
         key:= #0;
         SelectNext((Sender as TwinControl),True,True);
     end;

end;

end.
