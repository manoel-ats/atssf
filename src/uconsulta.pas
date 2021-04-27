unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, dxCore, dxButton, ExtCtrls, DBCtrls, Grids,
  DBGrids, Buttons, StdCtrls, Mask, XPMenu, rpcompobase, rpvclreport,
  Provider, SqlExpr, DBClient, DBLocal, DBLocalS ;

type
  TfConsulta = class(TfPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    XPMenu1: TXPMenu;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    dxButton3: TdxButton;
    VCLReport1: TVCLReport;
    SpeedButton5: TSpeedButton;
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
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton10: TSpeedButton;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    proc_medico: TSQLClientDataSet;
    proc_medicoCRM: TStringField;
    proc_medicoNOME_MEDICO: TStringField;
    proc_medicoID_MEDICO: TIntegerField;
    cds_par: TSQLClientDataSet;
    cds_parPARAMETRO: TStringField;
    cds_parDESCRICAO: TStringField;
    cds_parCONFIGURADO: TStringField;
    cds_parPARAMETRO1: TStringField;
    cds_parPARAMETRO2: TStringField;
    cds_parPARAMETRO3: TStringField;
    cds_parPARAMETRO4: TStringField;
    cds_parPARAMETRO5: TStringField;
    cds_parPARAMETRO6: TStringField;
    cds_parPARAMETRO7: TStringField;
    cds_parPARAMETRO8: TStringField;
    cds_parPARAMETRO9: TStringField;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsulta: TfConsulta;
  carterinha: string;
implementation

uses UDM, uProcurar, ufDlgLogin, uProc_socio, uPrincipal, uFiltroProcura,
  uProcGrupo;

{$R *.dfm}

procedure TfConsulta.FormShow(Sender: TObject);
begin
  inherited;
  Incluir := '';
  Alterar := '';
  Excluir := '';
  Cancelar := '';
  Procurar := '';

  if dm.cds_consulta.Active then
     dm.cds_consulta.Close;
  dm.cds_consulta.Params[0].Clear;
  dm.cds_consulta.Params[1].AsInteger := 9999999;
  dm.cds_consulta.Open;

    if dm.cds_clinica.Active then
     dm.cds_clinica.Close;
  dm.cds_clinica.Params[0].Clear;
  dm.cds_clinica.Params[1].AsInteger := 9999999;
  dm.cds_clinica.Open;

    if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := varUsuario;
  dm.cdsPermissao.Params[1].AsString := 'Consultas';
  dm.cdsPermissao.Open;

  if dm.cdsPermissaoINCLUIR.AsString = 'S' then
  begin
    Incluir  := 'S';
    Cancelar  := 'S';
    btnIncluir.Enabled   := true;
    btnCancelar.Enabled  := true;
  end
  else
  begin
    Incluir  := 'N';
    Cancelar  := 'N';
    btnIncluir.Enabled := false;
    btnCancelar.Enabled  := false;
  end;

  if dm.cdsPermissaoEXCLUIR.AsString = 'S' then
  begin
     Excluir  := 'S';
     btnExcluir.Enabled  := true;
  end
  else
  begin
     Excluir  := 'N';
     btnExcluir.Enabled  := false;
  end;

  if dm.cdsPermissaoALTERAR.AsString = 'S' then
  begin
     Alterar  := 'S';
     btnGravar.Enabled  := true;
  end
  else
  begin
     Alterar  := 'N';
     btnGravar.Enabled  := false;
  end;

  if (not cds_par.Active) then
  cds_par.Open;

  cds_par.Locate('PARAMETRO','CARTERINHA',[loCaseInsensitive]);
  carterinha := cds_parPARAMETRO1.AsString;
  cds_par.Close;
  
  if (carterinha = 'PIRAMIDE') then
  begin
    Label32.Visible := False ;
    Label33.Visible := False ;
    DBEdit29.Visible := False;
    DBEdit30.Visible := False;
  end;
end;

procedure TfConsulta.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,dm.proc_clinica);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
   begin
      dm.cds_consultaID_CLINICA.AsInteger :=
        dm.proc_clinicaID_CLINICA.AsInteger;
   end;
   finally
    dm.proc_clinica.Close;
    fProcurar.Free;
   end;
end;

procedure TfConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dm.cds_clinica.Active then
    dm.cds_clinica.Close;
end;

procedure TfConsulta.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfConsulta.dxButton3Click(Sender: TObject);

begin
  inherited;

  if (carterinha = 'SERRA') then
  begin
     VCLReport1.FileName := str_relatorio + 'guia_consulta.rep';
     VCLReport1.Report.Params.ParamByName('PID').Value := dm.cds_consultaID_CONSULTA.AsInteger;
     VCLReport1.Execute;
  end;

  if (carterinha = 'PIRAMIDE') then
  begin
     VCLReport1.FileName := str_relatorio + 'guia.rep';
     VCLReport1.Report.Params.ParamByName('PID').Value := dm.cds_consultaID_CONSULTA.AsInteger;

     VCLReport1.Execute;
  end;


end;

procedure TfConsulta.btnExcluirClick(Sender: TObject);
begin
 if perfil <> 'administrador' then
 begin
   MessageDlg('usuário ñ tem permissão para excluir registros, solicite permissão '+#13+#10+'ao usuário administrador..', mtWarning, [mbOK], 0);
   exit;
 end;
  inherited;

end;

procedure TfConsulta.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  fProc_socio:=TfProc_socio.Create(self,proc_dep);
  try
   fProc_socio.RxLabel2.Visible := false;
   fProc_socio.ComboBox1.Visible := false;
   fProc_socio.Panel3.Visible := false;
   fProc_socio.EvDBFind1.DataField := 'NOME_DEP';
   if fProc_socio.ShowModal=mrOk then
   begin
     if dm.cds_consulta.State in [dsInactive] then
       exit;
     if dm.cds_consulta.State in [dsBrowse] then
       dm.cds_consulta.Edit;
      dm.cds_consultaDEPENDENTE.AsString := proc_depNOME_DEP.AsString;
      dm.cds_consultaPARENTESCO.AsString := proc_depDESCRICAO.AsString;
   end;
   finally
    proc_dep.Close;
    fProc_socio.Free;
   end;
end;

procedure TfConsulta.SpeedButton1Click(Sender: TObject);
begin
  inherited;
     fProcGrupo := TfProcGrupo.Create(Application);
     try
        if fProcGrupo.cds_mensal.Active then
           fProcGrupo.cds_mensal.Close;
        fProcGrupo.BitBtn2.Click;
        fProcGrupo.RadioButton2.Checked := true;
        if fProcGrupo.ShowModal=mrOk then
        begin
          if (dm.cds_consulta.State in [dsBrowse, dsInactive]) then
            dm.cds_consulta.Edit;
          dm.cds_consultaID_SOCIO.AsInteger := fProcGrupo.cds_mensalID_SOCIO.AsInteger;
          dm.cds_consultaSOCIO.AsString := fProcGrupo.cds_mensalNOME_DEP.AsString;
          dm.cds_consultaGRUPO.AsString := fProcGrupo.cds_mensalGRUPO.AsString;
          dm.cds_consultaINSCRICAO.AsInteger := fProcGrupo.cds_mensalN_INSCRICAO.AsInteger;
        end;
     finally
       fProcGrupo.cds_mensal.Close;
       fProcGrupo.Free;
     end;
end;

procedure TfConsulta.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_medico);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'CRM';
   if fProcurar.ShowModal=mrOk then
   begin
    if dm.cds_consulta.State in [dsBrowse] then
       dm.cds_consulta.Edit;
    if dm.cds_consulta.State in [dsInsert, dsEdit] then
    begin
      dm.cds_consultaID_MEDICO.AsInteger := proc_medicoID_MEDICO.AsInteger;
      dm.cds_consultaCRM.AsString := proc_medicoCRM.AsString;
      dm.cds_consultaNOME_MEDICO.AsString := proc_medicoNOME_MEDICO.AsString;
    end;
   end;
   finally
    proc_medico.Close;
    fProcurar.Free;
   end;
end;
        
end.
