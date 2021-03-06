unit uEstcivil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, XPMenu, Grids,
  DBGrids, StdCtrls, Mask, DBCtrls, FMTBcd, SqlExpr, Provider, DBClient,DBxpress;

type
  TfEstcivil = class(TfPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    sdsSerie: TSQLDataSet;
    sdsSerieDESCRICAO: TStringField;
    cds_serie: TClientDataSet;
    dspserie: TDataSetProvider;
    sdsSerie1: TSQLDataSet;
    sdsSerie1MAX: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstcivil: TfEstcivil;

implementation

uses UDM, ufDlgLogin, uPrincipal;

{$R *.dfm}

procedure TfEstcivil.FormShow(Sender: TObject);
var ulti : integer ;
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
  dm.cdsPermissao.Params[1].AsString := 'estcivil';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
    Incluir  := 'S';
    Cancelar  := 'S';
    btnIncluir.Enabled   := true;
    btnCancelar.Enabled  := true;
  end
  else
  begin
    Incluir  := 'N';
    Cancelar  := 'N';
    btnIncluir.Enabled := false;
    btnCancelar.Enabled  := false;
  end;

  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
  begin
     Excluir  := 'S';
     btnExcluir.Enabled  := true;
  end
  else
  begin
     Excluir  := 'N';
     btnExcluir.Enabled  := false;
  end;

  if dm.cdsPermissaoALTERAR.AsString = 'S' then
  begin
     Alterar  := 'S';
     btnGravar.Enabled  := true;
  end
  else
  begin
     Alterar  := 'N';
     btnGravar.Enabled  := false;
  end;

    if cds_serie.Active then
     cds_serie.Close;
  cds_serie.Open;
  cds_serie.First;
  while not cds_serie.Eof do
  begin
    if cds_serie.State in [dsBrowse] then
      cds_serie.Edit;
    cds_serie.ApplyUpdates(0);
    cds_serie.Next;
  end;


end;

procedure TfEstcivil.btnExcluirClick(Sender: TObject);
begin
 if perfil <> 'administrador' then
 begin
   MessageDlg('usu?rio ? tem permiss?o para excluir registros, solicite permiss?o '+#13+#10+'ao usu?rio administrador..', mtWarning, [mbOK], 0);
   exit;
 end;
  inherited;

end;

procedure TfEstcivil.btnGravarClick(Sender: TObject);
var
   TD : TTransactionDesc ;
   atualizar : string ;
   ulti : integer ;
begin
 if perfil <> 'administrador' then
 begin
   MessageDlg('usu?rio ? tem permiss?o para Aterar registros, solicite permiss?o '+#13+#10+'ao usu?rio administrador..', mtWarning, [mbOK], 0);
   exit;
 end;
   inherited;

   sdsSerie1.Open;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';         
   atualizar := 'Insert into EST_CIVIL (ID_ESTCIVIL ,DESCRICAO)';
   atualizar := atualizar + ' VALUES(';
   atualizar := atualizar + IntToStr(sdsSerie1MAX.AsInteger+1);
   atualizar := atualizar +  ', ';
   atualizar := atualizar + QuotedStr(DBEdit1.Text);
   atualizar := atualizar +  ')';
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);
end;

procedure TfEstcivil.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

end.
