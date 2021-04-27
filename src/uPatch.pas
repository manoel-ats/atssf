unit uPatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, SqlExpr, ComCtrls, StdCtrls, FileCtrl, Buttons,
  ExtCtrls, FMTBcd, DBClient, Provider, DB;

type
  TfrmAtualizador = class(TForm)
    Panel1: TPanel;
    flbPatches: TFileListBox;
    pgbArquivos: TProgressBar;
    Label1: TLabel;
    lblAtualizacoes: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    btnAplicar: TBitBtn;
    btnSair: TBitBtn;
    flbLogs: TFileListBox;
    Label2: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualizador    : TfrmAtualizador;

implementation

uses
  uLib;

{$R *.dfm}

procedure TfrmAtualizador.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAtualizador.FormActivate(Sender: TObject);
var
  I : Integer;
begin
  flbLogs.Directory := ExtractFilePath(Application.ExeName);
  flbLogs.Mask := '*.log';
  for I := 0 to flbLogs.Items.Count-1 do
    DeleteFile(ExtractFilePath(Application.ExeName) + flbLogs.Items[I]);
  pgbArquivos.Max := 0;
  pgbArquivos.Position := 0;
  lblAtualizacoes.Caption := '';
  flbPatches.Directory := ExtractFilePath(Application.ExeName);
  flbPatches.Mask := '*.sql';
  btnAplicar.Enabled := True;
end;

procedure TfrmAtualizador.btnAplicarClick(Sender: TObject);
var
  Patchs            : TPatches;
  I                 : Integer;
begin
  flbLogs.Directory := ExtractFilePath(Application.ExeName);
  flbLogs.Mask := '*.log';
  flbLogs.Update;
  pgbArquivos.Position := 0;
  pgbArquivos.Max := flbPatches.Count;
  if flbPatches.Count = 0 then
    MessageDlg('Não existem patches para serem aplicados.', mtInformation, [mbOk], 0);
  Patchs := TPatches.Create;
  for I := 0 to flbPatches.Count - 1 do
  begin
    Patchs.Patch := ExtractFilePath(Application.ExeName) + flbPatches.Items[I];
    lblAtualizacoes.Caption := 'Aplicando patch ' + flbPatches.Items[I];
    Patchs.Execute;
    pgbArquivos.Position := pgbArquivos.Position + 1;
  end;
  lblAtualizacoes.Caption := '';
  MessageDlg('Script de atualização executado.', mtInformation, [mbOk], 0);
  btnAplicar.Enabled := False;
  flbLogs.Directory := ExtractFilePath(Application.ExeName);
  flbLogs.Mask := '*.log';
  flbLogs.Update;
end;

end.

