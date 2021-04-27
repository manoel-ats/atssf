unit uPai;

interface

uses
  Windows, Messages, SysUtils, Types, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, dxCore, dxButton, ExtCtrls, StdCtrls, DBCtrls,
  ComCtrls, DBClient, DB;


type
  TfPai = class(TForm)
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Excluir1: TMenuItem;
    Excluir2: TMenuItem;
    Cancelar1: TMenuItem;
    Procurar1: TMenuItem;
    Sair1: TMenuItem;
    DtSrc: TDataSource;
    Panel1: TPanel;
    btnGravar: TdxButton;
    btnCancelar: TdxButton;
    btnIncluir: TdxButton;
    btnExcluir: TdxButton;
    btnSair: TdxButton;
    procedure btnSairClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function Verifica_Campos_Em_Branco: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPai: TfPai;
  Incluir, Alterar, Excluir, Cancelar, Procurar : String;
  IncluirD, AlterarD, ExcluirD, CancelarD, ProcurarD : String;
  IncluirE, AlterarE, ExcluirE, CancelarE, ProcurarE : String;


implementation

uses UDM;

{Quando criamos formulários, ãs vezes é útil escrever um código para que a tela
 e todos os seus objetos sejam mostrados no mesmo tamanho, não importando qual
 a resolução da tela. Aqui esta um código que mostra como isso é feito:}
//const
//ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
//ScreenHeight: LongInt = 600;

{$R *.dfm}

(***********************************************************************)
function TFPai.Verifica_Campos_Em_Branco: Boolean;
var cont : integer;
begin
  Result:=True; //assume que estão todos preenchidos
  for cont:= 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[cont].Required then
      if (DtSrc.DataSet.Fields[cont].IsNull)or
         (DtSrc.DataSet.Fields[cont].AsString='') then
      begin
        MessageDlg('Preencha o campo "'+DtSrc.DataSet.Fields[cont].DisplayLabel+'"',
                   mtWarning,[mbOk],0);
        Result:=False;
        Break;
      end;
end;
(***********************************************************************)

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

procedure TfPai.DtSrcStateChange(Sender: TObject);
var icomp: integer;
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
 if Incluir = 'S' then
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive]
 else
    btnIncluir.Enabled:= False;

 if Alterar = 'S' then
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btnGravar.Enabled:=False;

 if Cancelar = 'S' then
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btnCancelar.Enabled:=false;

 if Excluir = 'S' then
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse]
 else
  btnExcluir.Enabled:=false;

  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  for icomp:=0 to ComponentCount - 1 do
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := DtSrc.State in [dsInsert,dsEdit, dsBrowse];
  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Top := -100;
    btnexcluir.Top := -100;
    btngravar.Top := 7;
    btnCancelar.Top := 7;
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Top := 7;
    btnexcluir.Top := 7;
    btngravar.Top := -100;
    btnCancelar.Top := -100;
  end;
end;

procedure TfPai.btnIncluirClick(Sender: TObject);
begin
 if btnIncluir.Enabled = false then Exit;
  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;
end;

procedure TfPai.btnGravarClick(Sender: TObject);
begin
 if Alterar = 'N' then Exit;
  if Verifica_Campos_Em_Branco then
  begin
    DtSrc.DataSet.Post;
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
  end
  else abort;
end;

procedure TfPai.btnExcluirClick(Sender: TObject);
begin
  if Excluir = 'N' then Exit;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfPai.btnCancelarClick(Sender: TObject);
begin
  if Cancelar = 'N' then Exit;
  DtSrc.DataSet.Cancel;
end;

procedure TfPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(DtSrc.DataSet) then
     DtSrc.DataSet.Close;
end;

procedure TfPai.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfPai.FormCreate(Sender: TObject);
var
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;
begin
{
 if not dm.cds_par.Active then
   dm.cds_par.Open;

 if dm.cds_parPARAMETRO1.AsString = '800x600' then
 begin
   ScreenWidth := 800;
   ScreenHeight := 600;
 end;

 if dm.cds_parPARAMETRO1.AsString = '1024x768' then
 begin
   ScreenWidth := 1024;
   ScreenHeight := 768;
 end;

 if dm.cds_parPARAMETRO1.AsString = '1280x800' then
 begin
   ScreenWidth := 1280;
   ScreenHeight := 800;
 end;

 if dm.cds_parPARAMETRO1.AsString = '1440x900' then
 begin
   ScreenWidth := 1440;
   ScreenHeight := 900;
 end;
 }
 {if dm.cds_parPARAMETRO1.AsString <> 'Padrão' then
 begin
    scaled := true;
    if (screen.width <> ScreenWidth) then
    begin
      height := longint(height) * longint(screen.height) DIV ScreenHeight;
      width := longint(width) * longint(screen.width) DIV ScreenWidth;
      scaleBy(screen.width, ScreenWidth);
    end;
 end
 else
 begin
  fPai.Position := poDesktopCenter;
  fPai.WindowState := wsNormal;
    scaled := true;
    if (screen.width <> ScreenWidth) then
    begin
      height := longint(height) * longint(screen.height) DIV ScreenHeight;
      width := longint(width) * longint(screen.width) DIV ScreenWidth;
      scaleBy(screen.width, ScreenWidth);
    end;
 end;    }
   //ScreenWidth := ScreenWidth;
   //ScreenHeight := ScreenHeight;
 {
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  }
end;

end.
