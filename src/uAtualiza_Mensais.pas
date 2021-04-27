unit uAtualiza_Mensais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, DBCtrls, Buttons, TFlatGaugeUnit, DB,
  Grids, DBGrids, DBClient, Provider, SqlExpr;

type
  TfAtualiza_Mensais = class(TForm)
    proc_socio: TSQLDataSet;
    proc_socioID_SOCIO: TIntegerField;
    DBGrid1: TDBGrid;
    dtsrc_dta: TDataSource;
    FlatGauge1: TFlatGauge;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label44: TLabel;
    BitBtn2: TBitBtn;
    proc_receb: TSQLDataSet;
    proc_recebMAX: TDateField;
    sds: TSQLDataSet;
    dts: TDataSetProvider;
    cds: TClientDataSet;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    cdsNOME_SOCIO: TStringField;
    cdsDTA_ULTIMA_PARCELA: TDateField;
    sdsNOME_SOCIO: TStringField;
    sdsDTA_ULTIMA_PARCELA: TDateField;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure consulta_socio;    
  public
    { Public declarations }
  end;

var
  fAtualiza_Mensais: TfAtualiza_Mensais;

implementation

uses UDM, uPrincipal, ufDlgLogin;

{$R *.dfm}

{ TForm1 }

procedure TfAtualiza_Mensais.consulta_socio;
begin
   if (not proc_socio.Active) then
     proc_socio.Open;

   Label1.Caption := '';
   Label1.Caption := 'Aguarde...';
   Refresh;
   FlatGauge1.MaxValue := proc_socio.RecordCount;
   proc_socio.First;
   while not proc_socio.Eof do
   begin
      if (cds.Active) then
        cds.Close;
      cds.Params[0].AsDate := StrToDate('01/01/1901');
      cds.Params[1].AsDate := now;
      cds.Open;
      if (not cds.IsEmpty) then
      begin
         if (not dm.cds_socio.Active) then
            dm.cds_socio.Close;
         dm.cds_socio.Params[0].AsInteger := proc_socioID_SOCIO.AsInteger;
         dm.cds_socio.Open;
         dm.cds_socio.Edit;
         dm.cds_socioGEROU.AsString := 'NÃO';
         dm.cds_socio.ApplyUpdates(0);
         dm.cds_socio.Close;
      end;
      cds.Close;
      proc_socio.Next;
   end;
   Label1.Caption := '';
   Label1.Caption := 'Arquivo Gerado com sucesso...';
   Refresh;
   FlatGauge1.Progress :=0;

end;

procedure TfAtualiza_Mensais.BitBtn2Click(Sender: TObject);
begin
  if not proc_socio.Active then
     proc_socio.Open;
   Label1.Caption := '';
   Label1.Caption := 'Aguarde...';
   Refresh;
   FlatGauge1.MaxValue := proc_socio.RecordCount;
   proc_socio.First;
   while not proc_socio.Eof do
   begin
      if proc_receb.Active then
         proc_receb.Close;
      proc_receb.Params[0].AsInteger := proc_socioID_SOCIO.AsInteger;
      proc_receb.Open;
      if not proc_receb.IsEmpty then
      begin
        if dm.cds_socio.Active then
           dm.cds_socio.Close;
        dm.cds_socio.Params[0].AsInteger := proc_socioID_SOCIO.AsInteger;
        dm.cds_socio.Open;
        dm.cds_socio.Edit;
        dm.cds_socioDTA_ULTIMA_PARCELA.AsDateTime := proc_recebMAX.AsDateTime;
        dm.cds_socio.ApplyUpdates(0);
        dm.cds_socio.Close;
        proc_receb.Close;
      end;
      FlatGauge1.Progress := FlatGauge1.Progress + 1;
      proc_socio.Next;
   end;
   if proc_receb.Active then
      proc_receb.Close;
   proc_socio.Close;
   Label1.Caption := '';
   Label1.Caption := 'Data Atualizada com sucesso...';
   Refresh;
   FlatGauge1.Progress :=0;

end;

procedure TfAtualiza_Mensais.FormShow(Sender: TObject);
begin
   if (usuario = 'ats') then
      BitBtn2.Visible := True;
end;

procedure TfAtualiza_Mensais.BitBtn1Click(Sender: TObject);
begin
  if (cds.Active) then
    cds.Close;
  cds.Params[0].AsDate := StrToDate(MaskEdit3.Text);
  cds.Open;
end;

end.
