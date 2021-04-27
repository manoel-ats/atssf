unit uAltera_Grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, XPMenu, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfAltera_Grupo = class(TForm)
    DBGrid2: TDBGrid;
    SpeedButton5: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel1: TPanel;
    XPMenu1: TXPMenu;
    Panel2: TPanel;
    btExcluir: TdxButton;
    btBaixa: TdxButton;
    btCancela: TdxButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1ID_GRUPO: TIntegerField;
    SQLDataSet1INSCRICAO: TIntegerField;
    SQLDataSet1QTDE: TIntegerField;
    SQLDataSet1GRUPO: TStringField;
    SQLDataSet1N_FALEC: TIntegerField;
    DataSetProvider2: TDataSetProvider;
    grupo: TClientDataSet;
    grupoID_GRUPO: TIntegerField;
    grupoINSCRICAO: TIntegerField;
    grupoQTDE: TIntegerField;
    grupoGRUPO: TStringField;
    grupoN_FALEC: TIntegerField;
    DataSource2: TDataSource;
    cds_nullos: TClientDataSet;
    cds_nullosGrupo: TStringField;
    cds_nullosinscricao: TIntegerField;
    sds_socio: TSQLDataSet;
    sds_socioID_SOCIO: TIntegerField;
    sds_socioGRUPO: TStringField;
    sds_socioN_INSCRICAO: TIntegerField;
    DataSetProvider1: TDataSetProvider;
    cds_socio: TClientDataSet;
    cds_socioID_SOCIO: TIntegerField;
    cds_socioGRUPO: TStringField;
    cds_socioN_INSCRICAO: TIntegerField;
    DataSource1: TDataSource;
    Edit4: TEdit;
    Memo1: TMemo;
    dxButton1: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btBaixaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAltera_Grupo: TfAltera_Grupo;

implementation

uses uSocio_Procura, uPrincipal, UDM;

{$R *.dfm}

procedure TfAltera_Grupo.FormShow(Sender: TObject);
var
 I, codigo, vargrupo : Integer;
begin
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
   for I := 1 to 500 do
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
            cds_nullosinscricao.AsInteger := I;
            cds_nullos.Post;
            vargrupo := 1;
          end;
        end
        else
        begin
            cds_nullos.Append;
            cds_nullosGrupo.AsString := cds_socioGRUPO.AsString;
            cds_nullosinscricao.AsInteger := I;
            cds_nullos.Post;
            vargrupo := 1;
        end;
     end;
   end;
  grupo.Next;
 end;
end;

procedure TfAltera_Grupo.SpeedButton5Click(Sender: TObject);
begin
     varonde := 7;
     fSocio_Procura.ShowModal;
end;

procedure TfAltera_Grupo.btBaixaClick(Sender: TObject);
Var   varHist : String;
begin

    if (dm.cds_socio.Active) then
       dm.cds_socio.Close;
    dm.cds_socio.Params[0].AsInteger := StrToInt(Edit4.Text);
    dm.cds_socio.Open;
   // Gravando histórico
    if dm.cds_pront.Active then
      dm.cds_pront.Close;
    dm.cds_pront.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_pront.Open;
    dm.cds_pront.Append;
    dm.cds_prontID_SOCIO.AsInteger := dm.cds_socioID_SOCIO.AsInteger;

    Memo1.Clear;
    varHist := ' Data de Alteração do Grupo : ' + DateTimeToSTr(Now);
    Memo1.Lines.Add(varHist);
    varHist := 'Grupo: ' + dm.cds_socioGRUPO.AsString +
      ' Inscrição: ' + IntToStr(dm.cds_socioN_INSCRICAO.asInteger);
    Memo1.Lines.Add(varHist);
    Memo1.Lines.Add(' ');
    varHist := 'Usúário : ' + varUsuario;
    Memo1.Lines.Add(varHist);
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('-----------------------------------------------------------' +
    '--------------------------------------------------------------------------------------------------------- ');
    dm.cds_prontHISTORICO.Value := Memo1.Text;
    dm.cds_pront.ApplyUpdates(0);
    Memo1.Clear;
    dm.cds_socio.Edit;
    DM.cds_socioGRUPO.AsString := cds_nullosGrupo.AsString;
    dm.cds_socioN_INSCRICAO.AsInteger := cds_nullosinscricao.AsInteger;
    dm.cds_socio.ApplyUpdates(0);
    Edit1.Text := DM.cds_socioGRUPO.AsString;
    Edit2.Text := IntToStr(dm.cds_socioN_INSCRICAO.AsInteger);
    dm.cds_socio.Close;
end;

procedure TfAltera_Grupo.btCancelaClick(Sender: TObject);
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
   for I := 1 to 500 do
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
            cds_nullosinscricao.AsInteger := I;
            cds_nullos.Post;
            vargrupo := 1;
          end;
        end
        else
        begin
            cds_nullos.Append;
            cds_nullosGrupo.AsString := cds_socioGRUPO.AsString;
            cds_nullosinscricao.AsInteger := I;
            cds_nullos.Post;
            vargrupo := 1;
        end;
     end;
   end;
  grupo.Next;
 end;
end;

procedure TfAltera_Grupo.btExcluirClick(Sender: TObject);
begin
  Close;
end;

procedure TfAltera_Grupo.dxButton1Click(Sender: TObject);
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
   for I := 1 to 500 do
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
