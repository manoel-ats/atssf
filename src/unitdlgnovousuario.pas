unit UnitDlgNovoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, XPMenu;

type
  TFormDlgNovoUsuario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    bbtnCancelar: TBitBtn;
    bbtnOk: TBitBtn;
    XPMenu1: TXPMenu;
    procedure bbtnOkClick(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDlgNovoUsuario: TFormDlgNovoUsuario;

implementation

uses UDM, UfDlgLogin, uDmApp;

{$R *.dfm}

procedure TFormDlgNovoUsuario.bbtnOkClick(Sender: TObject);
begin
   dm.CDSSenha.FieldByName('Senha').AsString := dmApp.Encripta(DBEdit2.Text);
   dm.CDSSenha.ApplyUpdates(0);
end;

procedure TFormDlgNovoUsuario.bbtnCancelarClick(Sender: TObject);
begin
   dm.CDSSenha.Delete;
end;

procedure TFormDlgNovoUsuario.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin

     if (key = #13) then
     begin
         key:= #0;
         SelectNext((Sender as TwinControl),True,True);
     end;

end;

end.
