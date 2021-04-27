unit uPLano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, upai, DB, Menus, dxCore, dxButton, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvExMask, JvSpin, JvDBSpinEdit, StdCtrls, DBCtrls,
  Mask;

type
  TfPlano = class(TfPai)
    lbl1: TLabel;
    dbedtPLANO: TDBEdit;
    dbrgrpDIA_FALEC: TDBRadioGroup;
    JvDBSpinEdit1: TJvDBSpinEdit;
    lbl2: TLabel;
    JvDBGrid1: TJvDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPlano: TfPlano;

implementation

uses UDM;

{$R *.dfm}

procedure TfPlano.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfPlano.FormShow(Sender: TObject);
begin
//  inherited;
  if (not dm.dsPlano.Active) then
     dm.dsPlano.Open;
end;

procedure TfPlano.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  inherited;
  if (dm.dsPlano.Active) then
     dm.dsPlano.Close;
end;

procedure TfPlano.DtSrcStateChange(Sender: TObject);
var icomp: integer;
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
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

end.
