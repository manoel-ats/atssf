unit uFluxo_Caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, MMJPanel, Grids, DBGrids,
  Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, rplabelitem,
  rpcompobase, rpvclreport, JvToolEdit, JvExMask, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit ,DateUtils;

type
  TfFluxo_Caixa = class(TForm)
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    cdsCODPROD: TIntegerField;
    cdsCODMOV: TIntegerField;
    cdsPRODUTO: TStringField;
    cdsSALDOINIACUM: TFloatField;
    cdsENTRADA: TFloatField;
    cdsSAIDA: TFloatField;
    cdsSALDOFIMACUM: TFloatField;
    cdsPRECOCOMPRA: TFloatField;
    cdsPRECOVENDA: TFloatField;
    cdsPRECOUNIT: TFloatField;
    cdsPRECOUNITR: TFloatField;
    cdsVALORCOMPRA: TFloatField;
    cdsVALORVENDA: TFloatField;
    cdsVALORESTOQUE: TFloatField;
    cdsDTAMOV: TDateField;
    sdsCODPROD: TIntegerField;
    sdsCODMOV: TIntegerField;
    sdsPRODUTO: TStringField;
    sdsSALDOINIACUM: TFloatField;
    sdsENTRADA: TFloatField;
    sdsSAIDA: TFloatField;
    sdsSALDOFIMACUM: TFloatField;
    sdsPRECOCOMPRA: TFloatField;
    sdsPRECOVENDA: TFloatField;
    sdsPRECOUNIT: TFloatField;
    sdsPRECOUNITR: TFloatField;
    sdsVALORCOMPRA: TFloatField;
    sdsVALORVENDA: TFloatField;
    sdsVALORESTOQUE: TFloatField;
    sdsDTAMOV: TDateField;
    sds_familia: TSQLDataSet;
    sds_familiaID_FAMILIA: TIntegerField;
    sds_familiaDESCRICAO: TStringField;
    sdsSALDOACUMULADO: TFloatField;
    cdsSALDOACUMULADO: TFloatField;
    cdstotal_debito: TAggregateField;
    cdstotal_credito: TAggregateField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    VCLReport1: TVCLReport;
    JvDatePickerEdit1: TJvDatePickerEdit;
    JvDatePickerEdit2: TJvDatePickerEdit;
    sdsREPOSICAO: TIntegerField;
    cdsREPOSICAO: TIntegerField;
    sdsVALOR_COMPRA: TFloatField;
    sdsTIPO: TStringField;
    sdsSTATUS: TStringField;
    cdsVALOR_COMPRA: TFloatField;
    cdsTIPO: TStringField;
    cdsSTATUS: TStringField;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFluxo_Caixa: TfFluxo_Caixa;

implementation

uses UDM;

{$R *.dfm}

procedure TfFluxo_Caixa.DBGrid1TitleClick(Column: TColumn);
begin
 cds.IndexFieldNames := Column.FieldName;
end;

procedure TfFluxo_Caixa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = cdsENTRADA then
    if cdsENTRADA.AsInteger > 0 then
    begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
  if Column.Field = cdsSAIDA then
    if cdsSAIDA.AsInteger > 0 then
    begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;

  if Column.Field = cdsVALORCOMPRA then
    if cdsVALORCOMPRA.AsInteger > 0 then
    begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
  if Column.Field = cdsVALORVENDA then
    if cdsVALORVENDA.AsInteger > 0 then
    begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;

  if Column.Field = cdsSALDOACUMULADO then
    if cdsSALDOACUMULADO.AsInteger < 0 then
    begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
  if Column.Field = cdsSALDOACUMULADO then
    if cdsSALDOACUMULADO.AsInteger > 0 then
    begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
  if Column.Field = cdsSAIDA then
    if ((cdsSAIDA.AsInteger = 0) and(cdsSTATUS.AsString = 'E'))  then
    begin
     DBGrid1.Canvas.Font.Color := clGreen;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
end;

procedure TfFluxo_Caixa.FormCreate(Sender: TObject);
begin
  if (not sds_familia.Active) then
     sds_familia.Open;
  sds_familia.First;
  while not sds_familia.Eof do
  begin
    ComboBox1.Items.Add(sds_familiaDESCRICAO.AsString);
    sds_familia.Next;
  end;
end;

procedure TfFluxo_Caixa.SpeedButton1Click(Sender: TObject);
begin
  if (cds.Active) then
     cds.Close;
 //  if ComboBox1.Text = '' then
 //  begin
  //   MessageDlg('selecione um grupo..', mtWarning, [mbOK], 0);
  //   exit;
 //  end;
   sds_familia.Locate('DESCRICAO', ComboBox1.Text, [loPartialKey]);
   cds.Params[0].Clear;
   cds.Params[1].Clear;
   cds.Params[2].Clear;
   cds.Params[0].AsDateTime := StrToDateTime(JvDatePickerEdit1.Text);
   cds.Params[1].AsDateTime := StrToDateTime(JvDatePickerEdit2.Text);
    if ComboBox1.Text = '' then
   begin
   cds.Params[2].AsInteger := 9999999 ;
   end else
   cds.Params[2].AsInteger := sds_familiaID_FAMILIA.AsInteger;

   cds.Open;
   cds.Last;
   Edit1.Text := Format('%-6.2n',[cdsSALDOACUMULADO.AsFloat]);
   if (cdsSALDOACUMULADO.AsFloat < 0) then
     Edit1.Font.Color := clRed;
   if (cdsSALDOACUMULADO.AsFloat > 0) then
     Edit1.Font.Color := clBlue;
end;

procedure TfFluxo_Caixa.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure TfFluxo_Caixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (sds_familia.Active) then
      sds_familia.Close;
  if (sds.Active) then
      sds.Close;
end;

procedure TfFluxo_Caixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfFluxo_Caixa.SpeedButton2Click(Sender: TObject);
begin
  ComboBox1.Text := '';
  //JvDatePickerEdit1.Text := '  /  /    ';
 // JvDatePickerEdit2.Text := '  /  /    ';
  cds.Close;
end;  
procedure TfFluxo_Caixa.SpeedButton3Click(Sender: TObject);
var
text,text1,text2 :TRpLabel;
begin
  // text:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel14'));
 //  text1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
 //  text2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));

 //  if Assigned(text) then
 //    text.Text := DBEdit1.Text;
//   if Assigned(text1) then
 //    text1.Text := DBEdit2.Text;
 //  if Assigned(text2) then
 //    text2.Text := Edit1.Text;
    VCLReport1.FileName := str_relatorio + 'rel_estoque.rep';
    VCLReport1.Report.Params.ParamByName('DTA1').Value := StrToDate(JvDatePickerEdit1.Text);
    VCLReport1.Report.Params.ParamByName('DTA2').Value :=  StrToDate(JvDatePickerEdit2.Text);
    sds_familia.Locate('DESCRICAO', ComboBox1.Text, [loPartialKey]);
   if ComboBox1.Text = '' then
   begin
   VCLReport1.Report.Params.ParamByName('CODGRUPO').Value := 9999999 ;
   end else
   VCLReport1.Report.Params.ParamByName('CODGRUPO').Value :=  sds_familiaID_FAMILIA.Value;

   VCLReport1.Title := str_relatorio + 'rel_estoque.rep';
   VCLReport1.Execute;

end;

procedure TfFluxo_Caixa.FormShow(Sender: TObject);
begin
  JvDatePickerEdit1.Date := StartOfTheMonth(now);
end;

end.
