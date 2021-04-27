unit U_Autoriza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, MMJPanel, ExtCtrls, FMTBcd, DB, SqlExpr,
  Provider, DBClient;

type
  TF_autoriza = class(TForm)
    Panel2: TPanel;
    MMJPanel1: TMMJPanel;
    Label2: TLabel;
    Label1: TLabel;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    Panel1: TPanel;
    MMJPanel2: TMMJPanel;
    BitBtnCancelar: TBitBtn;
    BitBtnOK: TBitBtn;
    c_parametro: TClientDataSet;
    p_parametro: TDataSetProvider;
    d_parametro: TDataSource;
    s_parametro: TSQLDataSet;
    c_parametroPARAMETRO: TStringField;
    c_parametroDESCRICAO: TStringField;
    c_parametroCONFIGURADO: TStringField;
    c_parametroPARAMETRO1: TStringField;
    c_parametroPARAMETRO2: TStringField;
    c_parametroPARAMETRO3: TStringField;
    c_parametroPARAMETRO4: TStringField;
    c_parametroPARAMETRO5: TStringField;
    c_parametroPARAMETRO6: TStringField;
    c_parametroPARAMETRO7: TStringField;
    c_parametroPARAMETRO8: TStringField;
    c_parametroPARAMETRO9: TStringField;
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    id_1, id_2, id_3, id_4, id_5, id_6, id_7, id_8, id_9 : string;
    LOG_USER , LOG_SEN: STRING;
    FTentativas: Integer;
    procedure setTentativas(const Value: Integer);
    { Private declarations }
  public
    property Tentativas: Integer read FTentativas write setTentativas;
    { Public declarations }
  end;

var
  F_autoriza: TF_autoriza;

implementation

uses UDM, uDmApp;

{$R *.dfm}

procedure TF_autoriza.BitBtnOKClick(Sender: TObject);
begin
 if ((EdtLogin.Text <> 'ats') and (EdtSenha.Text <> '')) then    // tem que ser assim para onde tem o usuario ats poder excluir
 begin
    dm.cds_senha.Open;
    if not (dm.cds_senha.Locate('Login', edtLogin.Text, [loPartialKey])) then

  //  if (perfil <> 'administrador') then
    begin
        Application.MessageBox('Usuário não cadastrado, ou digitado errado!', 'Erro',
         MB_ICONERROR);
      edtLogin.Text := '';
      edtSenha.Text := '';
      edtLogin.setFocus;
      Tentativas := Tentativas + 1;
      if (tentativas >3) then
       Exit;
    end
    else
    begin
      LOG_USER := DM.cds_SenhaLOGIN.AsString;

      LOG_SEN := dmApp.Encripta(EdtSenha.Text) ;

      if( LOG_SEN <> dm.cds_SenhaSENHA.AsString) then
      exit;



      if (c_parametro.Active) then
         c_parametro.Close;
      c_parametro.Params[0].AsString := 'AUTORIZACAO';
      c_parametro.Open;
      id_1 := c_parametroPARAMETRO1.AsString;
      id_2 := c_parametroPARAMETRO2.AsString;
      id_3 := c_parametroPARAMETRO3.AsString;
      id_4 := c_parametroPARAMETRO4.AsString;
      id_5 := c_parametroPARAMETRO5.AsString;
      id_6 := c_parametroPARAMETRO6.AsString;
      id_7 := c_parametroPARAMETRO7.AsString;
      id_8 := c_parametroPARAMETRO8.AsString;
      id_9 := c_parametroPARAMETRO9.AsString;
      c_parametro.Close;

      if ((LOG_USER = id_1) or (LOG_USER = id_2) or (LOG_USER = id_3) or (LOG_USER = id_4) or
         (LOG_USER = id_5) or (LOG_USER = id_6) or (LOG_USER = id_7) or (LOG_USER = id_8) or (LOG_USER = id_9))
      then
         DM.RESULTADO := 'TRUE'
      else
         DM.RESULTADO := 'FALSE';

      close;
    end;
 end
 else
 begin
    DM.RESULTADO := 'TRUE';
 end;

end;

procedure TF_autoriza.setTentativas(const Value: Integer);
begin
  FTentativas := Value;
end;

procedure TF_autoriza.BitBtnCancelarClick(Sender: TObject);
begin
  DM.RESULTADO := 'CANCEL';
  close;
end;

procedure TF_autoriza.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) then
     begin
         key:= #0;
         SelectNext((Sender as TwinControl),True,True);
     end;
end;

procedure TF_autoriza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //DM.RESULTADO := 'CANCEL';
  close;
end;

end.
