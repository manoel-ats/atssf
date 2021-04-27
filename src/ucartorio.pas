unit uCartorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, DB, Menus, dxCore, dxButton, ExtCtrls, Mask,
  DBCtrls, Provider, SqlExpr, DBClient, DBLocal, DBLocalS, XPMenu;

type
  TfCartorio = class(TfPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    proc_cartorio: TSQLClientDataSet;
    proc_cartorioNOME: TStringField;
    dxButton2: TdxButton;
    proc_cartorioID_CARTORIO: TIntegerField;
    XPMenu1: TXPMenu;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    procedure dxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCartorio: TfCartorio;

implementation

uses UDM, uProcurar, uPrincipal;

{$R *.dfm}

procedure TfCartorio.dxButton2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,proc_cartorio);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
    Dm.cds_cartorio.Close;
    dm.cds_cartorio.Params[0].Clear;
    Dm.cds_cartorio.Params[0].AsInteger :=
      proc_cartorioID_CARTORIO.AsInteger;
    Dm.cds_cartorio.Open;
    end;
   finally
    proc_cartorio.Close;
    fProcurar.Free;
   end;
end;

procedure TfCartorio.FormShow(Sender: TObject);
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
  dm.cdsPermissao.Params[1].AsString := 'Cartório';
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

procedure TfCartorio.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

end.
