unit uProcurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DBLocals, EDBFind, dxCore, dxButton, RXCtrls, XPMenu;

type
  TfProcurar = class(TForm)
    DtSrc: TDataSource;
    StsBr: TStatusBar;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancel: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    EditProc: TEdit;
    RxLabel1: TRxLabel;
    BtnProcurar: TBitBtn;
    XPMenu1: TXPMenu;
    EvDBFind1: TEvDBFind;
    btnIncluir: TBitBtn;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
 constructor Create (AOWner : TComponent; DataSet : TSQLClientDataset); reintroduce;
    { Public declarations }
  end;

var
  fProcurar: TfProcurar;
  varform :string;

implementation

uses UDM, uFornecedor;

{$R *.dfm}

procedure TfProcurar.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TSQLClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProcurar.BtnProcurarClick(Sender: TObject);
begin
 with DtSrc.dataset as TSQLClientDataset do // Atenção : declara DBlocalS em uses
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
end;

constructor TfProcurar.Create(AOWner: TComponent; DataSet: TSQLClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
end;

procedure TfProcurar.FormShow(Sender: TObject);
begin
  EvDBFind1.SetFocus;
end;

procedure TfProcurar.btnIncluirClick(Sender: TObject);
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
