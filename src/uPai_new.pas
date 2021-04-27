unit uPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MMJPanel, StdCtrls, Buttons, Menus, XPMenu, DB, DBClient;

type
  TfPai = class(TForm)
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    DtSrc: TDataSource;
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    btnProcurar: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPai: TfPai;

implementation

uses UDM;

{$R *.dfm}

procedure TfPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(DtSrc.DataSet) then
     DtSrc.DataSet.Close;
end;

procedure TfPai.FormCreate(Sender: TObject);
begin
  {** força o form no padrão de video 800x600}
  videoW := '1440';
  videoH := '900';
  ScreenWidth := StrToInt(videoW);
  ScreenHeight := StrToInt(videoH);
  scaled := true;
  if (screen.width <> ScreenWidth) then
  begin
    height := longint(height) * longint(screen.height) DIV ScreenHeight;
    width := longint(width) * longint(screen.width) DIV ScreenWidth;
    scaleBy(screen.width, ScreenWidth);
  end;
end;

procedure TfPai.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {** quando clicar enter ele entende que é o tab}
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfPai.btnIncluirClick(Sender: TObject);
begin
 if btnIncluir.Enabled = false then Exit;
  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;
end;

procedure TfPai.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfPai.btnSairClick(Sender: TObject);
begin
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if MessageDlg('Você não salvou este registro deseja sair assim mesmo?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then close;
  end
  else
   close;
end;

procedure TfPai.btnGravarClick(Sender: TObject);
begin
    DtSrc.DataSet.Post;
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfPai.btnCancelarClick(Sender: TObject);
begin
  DtSrc.DataSet.Cancel;
end;

procedure TfPai.DtSrcStateChange(Sender: TObject);
begin
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
  btnProcurar.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnCancelar.Visible := True;
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;
end;

end.
