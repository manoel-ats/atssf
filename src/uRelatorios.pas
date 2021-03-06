unit uRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, StdCtrls, ExtCtrls, rpcompobase, rpvclreport
  , rplabelitem;

type
  TfRelatorios = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    dxButton9: TdxButton;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    VCLReport6: TVCLReport;
    VCLReport5: TVCLReport;
    VCLReport2: TVCLReport;
    VCLReport1: TVCLReport;
    VCLReport3: TVCLReport;
    VCLReport4: TVCLReport;
    VCLReport7: TVCLReport;
    dxButton4: TdxButton;
    VCLReport8: TVCLReport;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    check: TCheckBox;
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorios: TfRelatorios;

implementation

uses uCad_Obitos, UDM;

{$R *.dfm}

procedure TfRelatorios.dxButton9Click(Sender: TObject);
begin
     VCLReport4.FileName := str_relatorio + 'ordem_serv.rep';
     VCLReport4.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport4.Title := VCLReport4.FileName;   
     VCLReport4.Execute;
end;

procedure TfRelatorios.dxButton1Click(Sender: TObject);
begin
     VCLReport3.FileName := str_relatorio + 'nota_fal.rep';
     VCLReport3.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport3.Title := VCLReport3.FileName;
     VCLReport3.Execute;
end;

procedure TfRelatorios.dxButton2Click(Sender: TObject);
var
 acompo, acompo1 :TRpLabel;
begin
 if Cad_Obitos.cds_par.Active then
   Cad_Obitos.cds_par.Close;
 Cad_Obitos.cds_par.Params[0].Clear;
 Cad_Obitos.cds_par.Params[0].Value := dm.cds_ObitosTIPO_DOC.AsString;
 Cad_Obitos.cds_par.Open;

    if dm.cds_ObitosSERIE.AsString = 'C' then
   begin
MessageDlg('Use o Bot?o Guia de Obito II'+#13+#10+'Para gerar Essa Guia', mtWarning, [mbOK], 0);
   exit;
   end;
 if Cad_Obitos.cds_parPARAMETRO1.AsString = 'serra1' then
 begin
   if dm.cds_ObitosSERIE.AsString = 'A' then
   begin
     if(check.Checked = False) then
     VCLReport1.FileName := str_relatorio + 'oficial.rep'
     else
     VCLReport1.FileName := str_relatorio + 'oficialMenos.rep';
     acompo:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel135'));
     acompo1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel137'));
     if Assigned(acompo) then
       acompo.Text := 'Cart?rio onde nasceu:';
     if Assigned(acompo1) then
       acompo1.Text := '';

     VCLReport1.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport1.Title := VCLReport1.FileName;
     VCLReport1.Execute;
   end;
   if dm.cds_ObitosSERIE.AsString = 'B' then
   begin
     if(check.Checked = False) then
     VCLReport2.FileName := str_relatorio + 'nao_oficial.rep'
     else
     VCLReport2.FileName := str_relatorio + 'nao_oficialMenos.rep';

     VCLReport2.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport2.Title := VCLReport2.FileName;
     VCLReport2.Execute;
   end;
 end;

 if Cad_Obitos.cds_parPARAMETRO1.AsString = 'serra2' then
 begin
     if(check.Checked = False) then
     VCLReport5.FileName := str_relatorio + 'dec_obito.rep'
     else
    VCLReport5.FileName := str_relatorio + 'dec_obitoMenos.rep';

    if (dm.cds_ObitosSERIE.AsString = 'B') then
    begin
       acompo:=TRpLabel(VCLReport5.Report.FindComponent('TRpLabel135'));
       acompo1:=TRpLabel(VCLReport5.Report.FindComponent('TRpLabel137'));
       if Assigned(acompo) then
         acompo.Text := 'Cart?rio onde nasceu:';
       if Assigned(acompo1) then
         acompo1.Text := '';
    end;
    VCLReport5.Report.Params.ParamByName('PID').Value := dm.cds_ObitosID.AsInteger;
    VCLReport5.Title := VCLReport5.FileName;
    VCLReport5.Execute;
 end;

 if Cad_Obitos.cds_parPARAMETRO1.AsString = 'consoni' then
 begin
   if dm.cds_ObitosSERIE.AsString = 'A' then
   begin
     VCLReport1.FileName := str_relatorio + 'oficial.rep';
     acompo:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel135'));
     acompo1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel137'));
     if Assigned(acompo) then
       acompo.Text := 'Cart?rio onde nasceu:';
     if Assigned(acompo1) then
       acompo1.Text := '';

     VCLReport1.Report.Params.ParamByName('PID').Value :=  dm.cds_ObitosID.AsInteger;
     VCLReport1.Report.Params.ParamByName('ID_PAI').Value :=  dm.cds_ObitosID.AsInteger;
     VCLReport1.Title := VCLReport1.FileName;
     VCLReport1.Execute;
   end;
   if dm.cds_ObitosSERIE.AsString = 'B' then
   begin
     VCLReport2.FileName := str_relatorio + 'nao_oficial.rep';
     VCLReport2.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport2.Title := VCLReport2.FileName;
     VCLReport2.Execute;
   end;
 end;
 Cad_Obitos.cds_par.Close;

end;

procedure TfRelatorios.dxButton3Click(Sender: TObject);
begin
     VCLReport7.FileName := str_relatorio + 'condolencias.rep';
     VCLReport7.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport7.Title := VCLReport7.FileName;
     VCLReport7.Execute;
end;

procedure TfRelatorios.dxButton4Click(Sender: TObject);
begin
    VCLReport8.FileName := str_relatorio + 'dec_natimorto.rep';
    VCLReport8.Report.Params.ParamByName('PID').Value := dm.cds_ObitosID.AsInteger;
    VCLReport8.Title := VCLReport8.FileName;
    VCLReport8.Execute;
end;

procedure TfRelatorios.dxButton5Click(Sender: TObject);
begin
    VCLReport8.FileName := str_relatorio + 'listapresenca.rep';
    VCLReport8.Report.Params.ParamByName('PID').Value := dm.cds_ObitosID.AsInteger;
    VCLReport8.Title := VCLReport8.FileName;
    VCLReport8.Execute;
end;

procedure TfRelatorios.dxButton6Click(Sender: TObject);
var
 acompo, acompo1 :TRpLabel;
begin
  if Cad_Obitos.cds_par.Active then
  begin
    Cad_Obitos.cds_par.Close;
  Cad_Obitos.cds_par.Params[0].Clear;
  Cad_Obitos.cds_par.Params[0].Value := dm.cds_ObitosTIPO_DOC.AsString;
  Cad_Obitos.cds_par.Open;
  end;
  if dm.cds_ObitosSERIE.AsString = 'C' then
  begin
     if(check.Checked = False) then
     VCLReport2.FileName := str_relatorio + 'oficialCOSMO.rep'
     else
     VCLReport2.FileName := str_relatorio + 'oficialCOSMOMenos.rep';  

    VCLReport2.Report.Params.ParamByName('PID').Value :=dm.cds_ObitosID.AsInteger;
    VCLReport2.Title := VCLReport2.FileName;
    VCLReport2.Execute;
    Cad_Obitos.cds_par.Close;
  end;

end;

end.
procedure TfRelatorios.dxButton6Click(Sender: TObject);
begin
var
 acompo, acompo1 :TRpLabel;
begin
 if Cad_Obitos.cds_par.Active then
   Cad_Obitos.cds_par.Close;
 Cad_Obitos.cds_par.Params[0].Clear;
 Cad_Obitos.cds_par.Params[0].Value := dm.cds_ObitosTIPO_DOC.AsString;
 Cad_Obitos.cds_par.Open;

 if Cad_Obitos.cds_parPARAMETRO1.AsString = 'serra1' then
 begin
   if dm.cds_ObitosSERIE.AsString = 'A' then
   begin
     VCLReport1.FileName := str_relatorio + 'oficial.rep';
     acompo:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel135'));
     acompo1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel137'));
     if Assigned(acompo) then
       acompo.Text := 'Cart?rio onde nasceu:';
     if Assigned(acompo1) then
       acompo1.Text := '';

     VCLReport1.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport1.Title := VCLReport1.FileName;
     VCLReport1.Execute;
   end;
   if dm.cds_ObitosSERIE.AsString = 'B' then
   begin
     VCLReport2.FileName := str_relatorio + 'nao_oficial.rep';
     VCLReport2.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport2.Title := VCLReport2.FileName;
     VCLReport2.Execute;
   end;
 end;

 if Cad_Obitos.cds_parPARAMETRO1.AsString = 'serra2' then
 begin
    VCLReport5.FileName := str_relatorio + 'dec_obito.rep';
    if (dm.cds_ObitosESTADO_CIVIL.AsString = 'SOLTEIRO') then
    begin
       acompo:=TRpLabel(VCLReport5.Report.FindComponent('TRpLabel135'));
       acompo1:=TRpLabel(VCLReport5.Report.FindComponent('TRpLabel137'));
       if Assigned(acompo) then
         acompo.Text := 'Cart?rio onde nasceu:';
       if Assigned(acompo1) then
         acompo1.Text := '';
    end;
    VCLReport5.Report.Params.ParamByName('PID').Value := dm.cds_ObitosID.AsInteger;
    VCLReport5.Title := VCLReport5.FileName;
    VCLReport5.Execute;
 end;

 if Cad_Obitos.cds_parPARAMETRO1.AsString = 'consoni' then
 begin
   if dm.cds_ObitosSERIE.AsString = 'A' then
   begin
     VCLReport1.FileName := str_relatorio + 'oficial.rep';
     acompo:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel135'));
     acompo1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel137'));
     if Assigned(acompo) then
       acompo.Text := 'Cart?rio onde nasceu:';
     if Assigned(acompo1) then
       acompo1.Text := '';

     VCLReport1.Report.Params.ParamByName('PID').Value :=  dm.cds_ObitosID.AsInteger;
     VCLReport1.Report.Params.ParamByName('ID_PAI').Value :=  dm.cds_ObitosID.AsInteger;
     VCLReport1.Title := VCLReport1.FileName;
     VCLReport1.Execute;
   end;
   if dm.cds_ObitosSERIE.AsString = 'B' then
   begin
     VCLReport2.FileName := str_relatorio + 'nao_oficial.rep';
     VCLReport2.Report.Params.ParamByName('PID').Value :=
       dm.cds_ObitosID.AsInteger;
     VCLReport2.Title := VCLReport2.FileName;
     VCLReport2.Execute;
   end;
 end;
 Cad_Obitos.cds_par.Close;
end;


