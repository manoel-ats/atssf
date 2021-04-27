unit uMostra_Insc_vazia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, StdCtrls, Buttons, SqlExpr, DBClient, Provider,
  Grids, DBGrids, ExtCtrls, MMJPanel, XPMenu;

type
  TfMostra_Insc_vazia = class(TForm)
    DataSetProvider1: TDataSetProvider;
    cds_socio: TClientDataSet;
    DataSource1: TDataSource;
    sds_socio: TSQLDataSet;
    cds_socioGRUPO: TStringField;
    cds_socioN_INSCRICAO: TIntegerField;
    sds_socioGRUPO: TStringField;
    sds_socioN_INSCRICAO: TIntegerField;
    sds_socioID_SOCIO: TIntegerField;
    cds_socioID_SOCIO: TIntegerField;
    cds_nullos: TClientDataSet;
    DataSource2: TDataSource;
    cds_nullosGrupo: TStringField;
    cds_nullosinscricao: TIntegerField;
    DataSetProvider2: TDataSetProvider;
    grupo: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1ID_GRUPO: TIntegerField;
    SQLDataSet1INSCRICAO: TIntegerField;
    SQLDataSet1QTDE: TIntegerField;
    SQLDataSet1GRUPO: TStringField;
    SQLDataSet1N_FALEC: TIntegerField;
    grupoID_GRUPO: TIntegerField;
    grupoINSCRICAO: TIntegerField;
    grupoQTDE: TIntegerField;
    grupoGRUPO: TStringField;
    grupoN_FALEC: TIntegerField;
    XPMenu1: TXPMenu;
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMostra_Insc_vazia: TfMostra_Insc_vazia;

implementation

uses UDM, uSocios;

{$R *.dfm}

procedure TfMostra_Insc_vazia.BitBtn1Click(Sender: TObject);
var
 I, codigo, vargrupo : Integer;
begin
   while not cds_nullos.Eof do begin
     cds_nullos.Delete;
   end;

   if not grupo.Active then
     grupo.Open;
   grupo.First;

   if not cds_nullos.Active then
     cds_nullos.Open;

   if not cds_socio.Active then
     cds_socio.Open;
     cds_socio.First;

 while not grupo.Eof do
 begin
   if cds_socio.Active then
     cds_socio.Close;
   cds_socio.Params[0].AsString := grupoGRUPO.AsString;
   cds_socio.Open;
   vargrupo := 0;
   for I := 1 to (grupoINSCRICAO.Value) do
   begin
     if (vargrupo = 0) then
     begin
        if (not cds_socio.Eof) then
        begin
          codigo := cds_socioN_INSCRICAO.AsInteger;
          cds_socio.Next;
          IF (codigo > I) THEN
          begin
            cds_nullos.Append;
            cds_nullosGrupo.AsString := cds_socioGRUPO.AsString;
            if (cds_nullosGrupo.AsString = '') then
              cds_nullosGrupo.AsString := grupoGRUPO.AsString;            
            cds_nullosinscricao.AsInteger := I;
            cds_nullos.Post;
            vargrupo := 1;
          end;
        end
        else
        begin
            cds_nullos.Append;
            cds_nullosGrupo.AsString := cds_socioGRUPO.AsString;
            if (cds_nullosGrupo.AsString = '') then
              cds_nullosGrupo.AsString := grupoGRUPO.AsString;
            cds_nullosinscricao.AsInteger := I;
            cds_nullos.Post;
            vargrupo := 1;
        end;
     end;
   end;
  grupo.Next;
 end;
end;

procedure TfMostra_Insc_vazia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cds_socio.Close;
  grupo.Close;
  cds_nullos.Close;
end;

procedure TfMostra_Insc_vazia.BitBtn2Click(Sender: TObject);
begin
 if cds_nullos.IsEmpty then
 begin
    MessageDlg('É preciso criar um novo grupo......', mtWarning, [mbOK], 0);
    exit;
 end
 else
 begin
    if(fSocios.corrigir = 'S')then
    begin
     dm.cds_socio.Edit;
    end;
    dm.cds_socioGRUPO.AsString := cds_nullosGrupo.AsString;
    dm.cds_socioN_INSCRICAO.AsInteger := cds_nullosinscricao.AsInteger;
    close;

 end;

end;

procedure TfMostra_Insc_vazia.BitBtn3Click(Sender: TObject);
var
 I, codigo, vargrupo : Integer;
begin
   while not cds_nullos.Eof do begin
     cds_nullos.Delete;
   end;
   if not grupo.Active then
     grupo.Open;
   grupo.First;
   if not cds_nullos.Active then
     cds_nullos.Open;
   if not cds_socio.Active then
     cds_socio.Open;
     cds_socio.First;

 while not grupo.Eof do
 begin
   if cds_socio.Active then
     cds_socio.Close;
   cds_socio.Params[0].AsString := grupoGRUPO.AsString;
   cds_socio.Open;
   vargrupo := 0;
   for I := 1 to (grupoINSCRICAO.Value) do
   begin
        if (not cds_socio.Eof) then
        begin
          codigo := cds_socioN_INSCRICAO.AsInteger;
          cds_socio.Next;
          IF (codigo > I) THEN
          begin
            cds_nullos.Append;
            cds_nullosGrupo.AsString := cds_socioGRUPO.AsString;
            cds_nullosinscricao.AsInteger := I;
            cds_nullos.Post;
          end;
        end
        else
        begin
            cds_nullos.Append;
            cds_nullosGrupo.AsString := cds_socioGRUPO.AsString;
            cds_nullosinscricao.AsInteger := I;
            cds_nullos.Post;
        end;
   end;
  grupo.Next;
 end;
end;

end.
