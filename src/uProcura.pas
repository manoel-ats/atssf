unit uProcura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DBLocals, EDBFind, dxCore, dxButton, RXCtrls, XPMenu, DBClient,
  JvExStdCtrls, JvEdit, JvDBSearchEdit;

type
  TfProcura = class(TForm)
    DtSrc: TDataSource;
    StsBr: TStatusBar;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancel: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    RxLabel1: TRxLabel;
    XPMenu1: TXPMenu;
    btnIncluir: TBitBtn;
    BtnProcurar: TBitBtn;
    EditProc: TJvDBSearchEdit;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
 constructor Create (AOWner : TComponent; DataSet : TClientDataset); reintroduce;
    { Public declarations }
  end;

var
  fProcura: TfProcura;
  varform :string;

implementation

uses UDM, uFornecedor;

{$R *.dfm}

procedure TfProcura.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProcura.BtnProcurarClick(Sender: TObject);
begin
 {**Passei a Rotina para o onShow do Form}
{ with DtSrc.dataset as TClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //opção de flag para usar % ou não
       Params[0].AsString:=EditProc.Text+'%'
    else
       Params[0].AsString:=EditProc.Text;
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end; }
end;

constructor TfProcura.Create(AOWner: TComponent; DataSet: TClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
end;

procedure TfProcura.FormShow(Sender: TObject);
begin
 with DtSrc.dataset as TClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //opção de flag para usar % ou não
       Params[0].AsString:=EditProc.Text+'%'
    else
       Params[0].AsString:=EditProc.Text;
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end;
  if EditProc.Visible = True then
   EditProc.SetFocus;
end;

procedure TfProcura.btnIncluirClick(Sender: TObject);
begin
  if (varform = 'Despesa') then
  begin
   fFornecedor := TfFornecedor.Create(Application);
   try
    fFornecedor.ShowModal;
   finally
    fFornecedor.Free;
   end;
   BtnProcurar.Click;
  end;
end;

end.
