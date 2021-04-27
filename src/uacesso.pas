unit uAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, Buttons, DBClient, dxCore,
  dxButton;

type
  TfAcesso = class(TForm)
    DtSrc: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    Panel3: TPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAcesso: TfAcesso;

implementation

uses udmAcesso, uPrincipal, UDM;

{$R *.dfm}

procedure TfAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmAcesso.cdsEmpresa.Active then
    dmAcesso.cdsEmpresa.Close;
  if dmAcesso.cdsFun.Active then
    dmAcesso.cdsFun.Close;
  if dmAcesso.cdsInquilino.Active then
    dmAcesso.cdsInquilino.Close;
end;

procedure TfAcesso.dxButton1Click(Sender: TObject);
begin
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfAcesso.dxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfAcesso.dxButton2Click(Sender: TObject);
begin
  DtSrc.DataSet.Cancel;
end;

end.
