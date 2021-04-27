unit uRel_socios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, StdCtrls, ExtCtrls, Provider, SqlExpr, DB,
  DBClient, DBLocal, DBLocalS, Buttons, XPMenu, rpcompobase, rpvclreport,
  Mask, ToolEdit;

type
  TfRel_socios = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    VCLReport1: TVCLReport;
    XPMenu1: TXPMenu;
    SpeedButton5: TSpeedButton;
    Edit1: TEdit;
    Label3: TLabel;
    proc_dep: TSQLClientDataSet;
    proc_depID_DEP: TIntegerField;
    proc_depID_SOCIO: TIntegerField;
    proc_depNOME_DEP: TStringField;
    proc_depFALECIDO: TStringField;
    proc_depCODPAR: TFloatField;
    proc_depDTNASC: TDateField;
    proc_depDTFALEC: TDateField;
    proc_depID_PAR: TIntegerField;
    proc_depDESCRICAO: TStringField;
    proc_depGRUPO: TStringField;
    proc_depN_INSCRICAO: TIntegerField;
    proc_depSOBRENOME: TStringField;
    proc_depCARENCIA: TIntegerField;
    proc_depDTACADASTRO: TDateField;
    Edit2: TEdit;
    proc_mens: TSQLClientDataSet;
    proc_mensID_DEP: TIntegerField;
    proc_mensID_SOCIO: TIntegerField;
    proc_mensNOME_DEP: TStringField;
    proc_mensFALECIDO: TStringField;
    proc_mensCODPAR: TFloatField;
    proc_mensDTNASC: TDateField;
    proc_mensDTFALEC: TDateField;
    proc_mensID_PAR: TIntegerField;
    proc_mensCARENCIA: TIntegerField;
    proc_mensDTACADASTRO: TDateField;
    proc_mensDESCRICAO: TStringField;
    proc_mensGRUPO: TStringField;
    proc_mensN_INSCRICAO: TIntegerField;
    proc_mensSOBRENOME: TStringField;
    proc_mensTIPO_SOCIO: TStringField;
    Label12: TLabel;
    Edit4: TEdit;
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Data1: TDateEdit;
    Data2: TDateEdit;
    dxButton3: TdxButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    procedure SpeedButton5Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_socios: TfRel_socios;

implementation

uses uProc_socio, uSocio_Procura, UDM, uProcurar;

{$R *.dfm}

procedure TfRel_socios.SpeedButton5Click(Sender: TObject);
begin
      fSocio_Procura.ShowModal;

end;

procedure TfRel_socios.dxButton1Click(Sender: TObject);
begin
   if (RadioGroup1.ItemIndex = 0) then
   begin
     VCLReport1.FileName := str_relatorio + 'lista_dep.rep';
     if Edit1.Text <> '' then
      VCLReport1.Report.Params.ParamByName('PID').Value := StrToInt(Edit2.text)
     else
      VCLReport1.Report.Params.ParamByName('PID').Value := 9999999;
     if Edit3.Text <> '' then
       VCLReport1.Report.Params.ParamByName('PVD').Value := StrToInt(Edit3.text)
     else
       VCLReport1.Report.Params.ParamByName('PVD').Value := 9999999;
   end;

   if (RadioGroup3.ItemIndex = 1) then
   begin
     if (RadioGroup1.ItemIndex = 1) then
       VCLReport1.FileName := str_relatorio + 'lista_socios_p_cobrador.rep';
     if (RadioGroup2.ItemIndex = 1) then
       VCLReport1.FileName := str_relatorio + 'lista_socios_Inativos.rep';
   end;

   if (RadioGroup3.ItemIndex = 0) then
   begin
     if (RadioGroup1.ItemIndex = 1) then
       VCLReport1.FileName := str_relatorio + 'lista_socios_p_vendedor.rep';
     if (RadioGroup2.ItemIndex = 1) then
       VCLReport1.FileName := str_relatorio + 'lista_socios_p_vendedor.rep';

   end;

   if Data1.Text <> '  /  /    ' then
     VCLReport1.Report.Params.ParamByName('DTA1').Value := StrToDate(Data1.Text)
   else
     VCLReport1.Report.Params.ParamByName('DTA1').Value := StrToDate('01/01/1001');

   if Data2.Text <> '  /  /    ' then
    VCLReport1.Report.Params.ParamByName('DTA2').Value := StrToDate(Data2.Text)
   else
     VCLReport1.Report.Params.ParamByName('DTA2').Value := StrToDate('31/12/9999');

   // Parametro Cobrador
   if (RadioGroup3.ItemIndex = 1) then
   begin
     if Edit5.Text <> '' then
       VCLReport1.Report.Params.ParamByName('PCB').Value := StrToInt(Edit5.text)
     else
       VCLReport1.Report.Params.ParamByName('PCB').Value := 9999999;

   end;
   // Parametro Vendedor
   if (RadioGroup3.ItemIndex = 0) then
   begin
     if Edit3.Text <> '' then
       VCLReport1.Report.Params.ParamByName('PCB').Value := StrToInt(Edit3.text)
     else
       VCLReport1.Report.Params.ParamByName('PCB').Value := 9999999;
   end;

    if (RadioGroup2.ItemIndex = 0) then
       VCLReport1.Report.Params.ParamByName('STATUS').Value := 'A'
    else
       VCLReport1.Report.Params.ParamByName('STATUS').Value := 'I';

    VCLReport1.Title := VCLReport1.FileName;
    VCLReport1.Execute;
end;

procedure TfRel_socios.dxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TfRel_socios.SpeedButton2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_vend);
  try
     fProcurar.BtnProcurar.Click;
     fProcurar.EvDBFind1.DataField := 'VENDEDOR';
     if fProcurar.ShowModal=mrOk then
     begin
        Edit3.Text := IntToStr(dm.proc_vendID_VEN.AsInteger);
        Edit4.Text := dm.proc_vendVENDEDOR.AsString;
     end;
  finally
      dm.proc_vend.Close;
      fProcurar.Free;
  end;
end;

procedure TfRel_socios.SpeedButton1Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit5.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit6.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;
end;

procedure TfRel_socios.dxButton3Click(Sender: TObject);
begin
  Data1.Text := '  /  /    ';
  Data2.Text := '  /  /    ';
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
end;

end.
