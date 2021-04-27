unit uTemas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Mask, DB,
  SqlExpr, Provider, DBClient, XPMenu;

type
  TfTemas = class(TForm)
    tema: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    SQLDataSet1: TSQLDataSet;
    temaTEXTO: TStringField;
    temaIMAGEM: TBlobField;
    SQLDataSet1TEXTO: TStringField;
    SQLDataSet1IMAGEM: TBlobField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource2: TDataSource;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    SQLDataSet1CAMINHO: TStringField;
    temaCAMINHO: TStringField;
    SQLDataSet1TEXTO1: TStringField;
    temaTEXTO1: TStringField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    XPMenu1: TXPMenu;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTemas: TfTemas;

implementation

uses UDM, uPrincipal;

{$R *.dfm}

procedure TfTemas.BitBtn1Click(Sender: TObject);
begin
 if tema.IsEmpty then
 begin
    tema.Append;
 end
 else
    tema.Edit;
    OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
//    if OpenDialog1.Execute
 //    then Principal.Image1.Picture.LoadFromFile(OpenDialog1.FileName);
 //   temaCAMINHO.AsString := OpenDialog1.FileName;
 //   DBEdit1.SetFocus;
end;

procedure TfTemas.BitBtn2Click(Sender: TObject);
begin
  tema.ApplyUpdates(0);
  Principal.Label1.Caption := temaTEXTO.AsString;
  Principal.Label2.Caption := temaTEXTO1.AsString;
  Principal.Label1.Width := Principal.Width;
  Principal.Label2.Width := Principal.Width;
  close;
end;

procedure TfTemas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if tema.Active then
     tema.Close;

end;

procedure TfTemas.BitBtn3Click(Sender: TObject);
begin
  tema.Delete;
  BitBtn2.Click;
end;

procedure TfTemas.FormShow(Sender: TObject);
begin
  if not tema.Active then
    tema.Open;
end;

end.
