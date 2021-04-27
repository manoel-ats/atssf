unit uNovoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, DBCtrls, StdCtrls, Mask, DB, XPMenu;

type
  TfNovoUsuario = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    DtSrc: TDataSource;
    XPMenu1: TXPMenu;
    procedure dxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNovoUsuario: TfNovoUsuario;

implementation

uses UDM, uDmApp, uGerencia_Acessos;

{$R *.dfm}

procedure TfNovoUsuario.dxButton1Click(Sender: TObject);
begin

  if dm.cds_funcionario.Active then
    dm.cds_funcionario.Close;
   dm.cds_funcionario.Params[0].Clear;
   dm.cds_funcionario.Params[1].Clear;
   dm.cds_funcionario.Params[1].AsInteger := 9999999;
   dm.cds_funcionario.Open;

   if not dm.cds_senha.Active then
   begin
     dm.cds_senha.Open;
     dm.cds_senha.Append;
   end
   else
     dm.cds_senha.Append;


end;

procedure TfNovoUsuario.FormShow(Sender: TObject);
begin
  if dm.cds_funcionario.Active then
    dm.cds_funcionario.Close;
   dm.cds_funcionario.Params[0].Clear;
   dm.cds_funcionario.Params[1].Clear;
   dm.cds_funcionario.Params[1].AsInteger := 9999999;
   dm.cds_funcionario.Open;

   if not dm.cds_senha.Active then
     dm.cds_senha.Open;
     
end;

procedure TfNovoUsuario.dxButton2Click(Sender: TObject);
begin
   dm.cds_senha.FieldByName('Senha').AsString := dmApp.Encripta(DBEdit2.Text);
   dm.cds_senha.ApplyUpdates(0);
end;

procedure TfNovoUsuario.dxButton3Click(Sender: TObject);
begin
  dm.cds_senha.Cancel;
end;

procedure TfNovoUsuario.dxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TfNovoUsuario.DBComboBox1Enter(Sender: TObject);
begin
  DBComboBox1.Color :=  clYellow;
end;

procedure TfNovoUsuario.DBComboBox1Exit(Sender: TObject);
begin
  DBComboBox1.Color := clWhite;
end;

procedure TfNovoUsuario.DBLookupComboBox1Enter(Sender: TObject);
begin
//  DBLookupComboBox1.Color:=clYellow;
end;

procedure TfNovoUsuario.DBLookupComboBox1Exit(Sender: TObject);
begin
//  DBLookupComboBox1.Color:=clWhite;
end;

procedure TfNovoUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) then
     begin
         key:= #0;
         SelectNext((Sender as TwinControl),True,True);
     end;

end;

procedure TfNovoUsuario.DtSrcStateChange(Sender: TObject);
begin
   dxButton1.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
   dxButton2.Enabled:=DtSrc.State in [dsInsert,dsEdit];
   dxButton3.Enabled:=DtSrc.State in [dsInsert,dsEdit];
   dxButton4.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
end;

end.
