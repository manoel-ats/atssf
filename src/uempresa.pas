unit uEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, StdCtrls, DBCtrls, Buttons, ExtCtrls, ComCtrls,
  Mask, FacDbEdit, Menus, dxCore, dxButton, XPMenu, JvDBImage, ExtDlgs,
  FMTBcd, SqlExpr, IBCustomDataSet, IBQuery, IBDatabase, DBClient, Provider;

type
  TfEmpresa = class(TfPai)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel3: TPanel;
    DBTextDestaque1: TDBText;
    DBTextDestaque: TDBText;
    XPMenu1: TXPMenu;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label14: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    FacDBEdit12: TFacDBEdit;
    FacDBEdit11: TFacDBEdit;
    FacDBEdit8: TFacDBEdit;
    FacDBEdit9: TFacDBEdit;
    FacDBEdit10: TFacDBEdit;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Panel2: TPanel;
    Label16: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    FacDBEdit15: TFacDBEdit;
    FacDBEdit14: TFacDBEdit;
    FacDBEdit13: TFacDBEdit;
    FacDBEdit7: TFacDBEdit;
    FacDBEdit6: TFacDBEdit;
    FacDBEdit5: TFacDBEdit;
    FacDBEdit4: TFacDBEdit;
    FacDBEdit3: TFacDBEdit;
    FacDBEdit1: TFacDBEdit;
    FacDBEdit2: TFacDBEdit;
    FacDBEdit16: TFacDBEdit;
    FacDBEdit17: TFacDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    FacDBEdit18: TFacDBEdit;
    Label19: TLabel;
    FacDBEdit19: TFacDBEdit;
    Label20: TLabel;
    FacDBEdit20: TFacDBEdit;
    Label21: TLabel;
    FacDBEdit21: TFacDBEdit;
    FacDBEdit22: TFacDBEdit;
    Label22: TLabel;
    FacDBEdit23: TFacDBEdit;
    Label23: TLabel;
    FacDBEdit24: TFacDBEdit;
    Label24: TLabel;
    FacDBEdit25: TFacDBEdit;
    Label25: TLabel;
    FacDBEdit26: TFacDBEdit;
    Label26: TLabel;
    FacDBEdit27: TFacDBEdit;
    Label27: TLabel;
    FacDBEdit28: TFacDBEdit;
    Label28: TLabel;
    FacDBEdit29: TFacDBEdit;
    Label29: TLabel;
    FacDBEdit30: TFacDBEdit;
    Label30: TLabel;
    FacDBEdit31: TFacDBEdit;
    Label31: TLabel;
    FacDBEdit32: TFacDBEdit;
    Label32: TLabel;
    FacDBEdit33: TFacDBEdit;
    Label33: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    SQLDataSet1: TSQLDataSet;
    Panel5: TPanel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure FacDBEdit12Exit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation

uses UDM, uPrincipal, sCtrlResize, U_BlobImageFB;

{$R *.dfm}

procedure TfEmpresa.FormShow(Sender: TObject);
var
  b:TStream;
begin
  inherited;

  sCtrlResize.CtrlResize(TForm(fEmpresa));

  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  dm.cds_empresa.Open;
  if dm.cds_Empresa.IsEmpty then
     dm.cds_Empresa.Append
  else
     dm.cds_empresa.Edit;
  //  FacDBEdit1.SetFocus;

  // Primeiramente vamos apagar a imagem contida no recipiente TImage
  Image1.Picture.Bitmap:=nil;

  if (SQLDataSet1.Active) then
    SQLDataSet1.Close;
  SQLDataSet1.CommandText := 'SELECT LOGOTIPO FROM EMPRESA ';
  SQLDataSet1.Open;
  // transferindo a fotografia para o objeto TStream
  b:=SQLDataSet1.CreateBlobStream(SQLDataSet1.FieldByName('LOGOTIPO'),bmRead);
  // agora transferindo do TStream para um recipiente TImage
  Image1.Picture.Bitmap.LoadFromStream(b);
  b.Destroy;
  SQLDataSet1.close;

end;

procedure TfEmpresa.BitBtn1Click(Sender: TObject);
var
b:TStream;
begin
   OpenPictureDialog1.Execute;
  if (SQLDataSet1.Active) then
    SQLDataSet1.Close;
   SQLDataSet1.CommandText := 'UPDATE EMPRESA SET LOGOTIPO=:_bitmap_foto';
   SQLDataSet1.ParamByName('_bitmap_foto').LoadFromFile(OpenPictureDialog1.FileName, ftBlob);
   SQLDataSet1.ExecSQL();

  if (SQLDataSet1.Active) then
    SQLDataSet1.Close;
  SQLDataSet1.CommandText := 'SELECT LOGOTIPO FROM EMPRESA ';
  SQLDataSet1.Open;
  // transferindo a fotografia para o objeto TStream
  b:=SQLDataSet1.CreateBlobStream(SQLDataSet1.FieldByName('LOGOTIPO'),bmRead);
  // agora transferindo do TStream para um recipiente TImage
  Image1.Picture.Bitmap.LoadFromStream(b);
  b.Destroy;
  SQLDataSet1.Close;

end;


procedure TfEmpresa.DBEdit1Exit(Sender: TObject);
begin
  inherited;

 if dm.cds_empresa.State in [dsInsert, dsEdit] then
  DM.cds_empresaRAZAO_EMPRESA.AsString:=DM.cds_empresaNOME_EMPRESA.AsString;

end;

procedure TfEmpresa.DBEdit1Click(Sender: TObject);
begin
  inherited;

 if dm.cds_empresa.State in [dsInsert, dsEdit] then
  DM.cds_empresaRAZAO_EMPRESA.AsString:=DM.cds_empresaNOME_EMPRESA.AsString;

end;

procedure TfEmpresa.FacDBEdit12Exit(Sender: TObject);
begin
  inherited;
  FacDBEdit13.SetFocus;
end;

procedure TfEmpresa.btnExcluirClick(Sender: TObject);
begin
   MessageDlg('usuário ñ tem permissão para excluir registros, solicite permissão '+#13+#10+'ao usuário administrador..', mtWarning, [mbOK], 0);
   exit;
  inherited;

end;

procedure TfEmpresa.btnIncluirClick(Sender: TObject);
begin
{ if not dm.cds_empresa.IsEmpty then
 begin
   MessageDlg('Empresa já cadastrada', mtInformation, [mbOK], 0);
   DM.cds_empresa.Cancel;
   exit;
 end;  }
  inherited;

end;

procedure TfEmpresa.btnGravarClick(Sender: TObject);
begin
{if varUsuario <> 'Meta' then
begin
 MessageDlg('Usuário sem permissão para alterar a empresa. '+#13+#10+'Entre em contato com o Suporte atravez do '+#13+#10+'     Telefone (19)3877-1994 - 9768-9214', mtWarning, [mbOK], 0);
 dm.cds_empresa.Cancel;
 exit;
end;  }
  inherited;

end;

end.
