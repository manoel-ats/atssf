unit uSocios_D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, EDBNav, StdCtrls, ExtCtrls, Mask,
  Buttons, ComCtrls, DB, DBClient, dxCore, dxButton, FMTBcd, Provider,
  SqlExpr;

type
  TfSocios_D = class(TForm)
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel1: TPanel;
    btnSair: TdxButton;
    dxButton2: TdxButton;
    DtSrc_dep: TDataSource;
    cds_est_civil: TClientDataSet;
    cds_est_civilID_ESTCIVIL: TIntegerField;
    cds_est_civilDESCRICAO: TStringField;
    DataSource1: TDataSource;
    cds_parentesco: TClientDataSet;
    cds_parentescoID_PAR: TIntegerField;
    cds_parentescoDESCRICAO: TStringField;
    DataSource2: TDataSource;
    DtSrc_end: TDataSource;
    DtSrc: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    GroupBox11: TGroupBox;
    DBEdit46: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBMemo1: TDBMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBEdit21: TDBEdit;
    TabSheet2: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBLookupComboBox2: TDBLookupComboBox;
    DBComboBox3: TDBComboBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    EvDBNavigator1: TEvDBNavigator;
    TabSheet3: TTabSheet;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit18: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBGrid1: TDBGrid;
    EvDBNavigator2: TEvDBNavigator;
    DBLookupComboBox4: TDBLookupComboBox;
    sds_munic: TSQLDataSet;
    sds_municID_MUNICIPIO: TIntegerField;
    sds_municMUNICIPIO: TStringField;
    dsp_munic: TDataSetProvider;
    sds_bairro: TSQLDataSet;
    sds_bairroID_BAIRRO: TIntegerField;
    sds_bairroBAIRRO: TStringField;
    dsp_bairro: TDataSetProvider;
    cds_bairro: TClientDataSet;
    cds_bairroID_BAIRRO: TIntegerField;
    cds_bairroBAIRRO: TStringField;
    cds_munic: TClientDataSet;
    cds_municID_MUNICIPIO: TIntegerField;
    cds_municMUNICIPIO: TStringField;
    DtSrc_munic: TDataSource;
    DtSrc_bairro: TDataSource;
    dxButton1: TdxButton;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure dxButton2Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSocios_D: TfSocios_D;

implementation

uses UDM, uProcurar;

{$R *.dfm}

procedure TfSocios_D.dxButton2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_socio_D);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_SOCIO';
   if fProcurar.ShowModal=mrOk then
   begin
    Dm.cds_socio_desl.Close;
    dm.cds_socio_desl.Params[0].Clear;
    Dm.cds_socio_desl.Params[0].AsInteger:=dm.proc_socio_DID_SOCIO_DESL.AsInteger;
    Dm.cds_socio_desl.Open;

    if dm.cds_end_D.Active then
       dm.cds_end_D.Close;
    dm.cds_end_D.Params[0].Clear;
    dm.cds_end_D.Params[0].AsInteger := dm.proc_socio_DID_SOCIO_DESL.AsInteger;
    dm.cds_end_D.Open;

    if not cds_bairro.Active then
       cds_bairro.Open;
    if not cds_munic.Active then
       cds_munic.Open;

    if DM.cds_vend.Active then
      dm.cds_vend.Close;
    dm.cds_vend.Params[0].AsInteger :=
      dm.cds_socio_deslID_VEN.AsInteger;
    dm.cds_vend.Open;
    Edit1.Text := dm.cds_vendVENDEDOR.AsString;
    dm.cds_vend.Close;

    if DM.cds_cob.Active then
      dm.cds_cob.Close;
    dm.cds_cob.Params[0].AsInteger :=
      dm.cds_socio_deslID_COB.AsInteger;
    dm.cds_cob.Open;
    Edit2.Text := dm.cds_cobNOME.AsString;
    dm.cds_cob.Close;

    if DM.cds_dep_D.Active then
      dm.cds_dep_D.Close;
    dm.cds_dep_D.Params[0].AsInteger :=
      dm.cds_socio_deslID_SOCIO_DESL.AsInteger;
    dm.cds_dep_D.Open;

   end;
   finally
    dm.proc_socio_D.Close;
    fProcurar.Free;
   end;
   PageControl1.ActivePage := TabSheet1;

end;

procedure TfSocios_D.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfSocios_D.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if cds_bairro.Active then
       cds_bairro.Close;
    if cds_munic.Active then
       cds_munic.Close;
    if dm.cds_end_D.Active then
       dm.cds_end_D.Close;
    if dm.cds_dep_D.Active then
       dm.cds_dep_D.Close;
    if dm.cds_socio_desl.Active then
       dm.cds_socio_desl.Close;
end;

end.
