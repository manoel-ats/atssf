unit uPagarTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, ExtCtrls, XPMenu, DB, FacDbEdit, StdCtrls,
  DBCtrls, Mask;

type
  TfPagarTitulos = class(TForm)
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox2: TDBComboBox;
    FacDBEdit3: TFacDBEdit;
    FacDBEdit4: TFacDBEdit;
    FacDBEdit8: TFacDBEdit;
    DBEdit4: TDBEdit;
    FacDBEdit1: TFacDBEdit;
    DataSource1: TDataSource;
    XPMenu1: TXPMenu;
    Panel2: TPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton4: TdxButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label16: TLabel;
    Label20: TLabel;
    DBEdit5: TDBEdit;
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPagarTitulos: TfPagarTitulos;
  a_receber, dif : double;
  pagar : string;

implementation

uses UDM, uCP;

{$R *.dfm}

procedure TfPagarTitulos.DBEdit10Exit(Sender: TObject);
begin
  if dm.cds_CP.State in [dsInsert, dsEdit] then
  begin
    a_receber := dm.cds_CPVALOR_RESTO.Value;
    a_receber := a_receber - dm.cds_CPDESCONTO.Value + dm.cds_CPJUROS.Value;
    dm.cds_CPVALORRECEBIDO.Value := a_receber;
    Edit1.Text := Format('%-6.2n',[a_receber]);
  end;
end;

procedure TfPagarTitulos.DBEdit11Exit(Sender: TObject);
begin
  if dm.cds_CP.State in [dsInsert, dsEdit] then
  begin
    a_receber := dm.cds_CPVALOR_RESTO.Value;
    a_receber := a_receber + dm.cds_CPJUROS.Value - dm.cds_CPDESCONTO.Value;
    dm.cds_CPVALORRECEBIDO.Value := a_receber;
    Edit1.Text := Format('%-6.2n',[a_receber]);
  end;
end;

procedure TfPagarTitulos.DBEdit15Exit(Sender: TObject);
begin
  if dm.cds_CP.State in [dsInsert, dsEdit] then
  begin
    dif := a_receber - dm.cds_CPVALORRECEBIDO.Value;
    Edit2.Text := Format('%-6.2n',[dif]);
  end;
end;

procedure TfPagarTitulos.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
  if Key in ['.'] then Key := ',';
end;

procedure TfPagarTitulos.FormShow(Sender: TObject);
begin
  if dm.cds_CP.Active then
    dm.cds_CP.Close;
  dm.cds_CP.Params[0].Clear;
  dm.cds_CP.Params[0].AsInteger := fCP.scdsCp_procID_PAGAMENTO.AsInteger;
  dm.cds_CP.Open;
  if dm.cds_CPSTATUS.AsString <> 'Pago' then
  begin
   dm.cds_CP.Edit;
   dm.cds_CPDATASISTEMA.AsDateTime := now;
   dm.cds_CPDATABAIXA.AsDateTime := now;
   dm.cds_CPDATAPAGAMENTO.AsDateTime := now;
   dm.cds_CPDESCONTO.Value := 0;
   dm.cds_CPJUROS.Value := 0;   
   DBComboBox2.SetFocus;
  end;
end;

procedure TfPagarTitulos.dxButton1Click(Sender: TObject);
var
  id_r, id, id_s, id_b, via: integer;
  valor_t, valor_r: double;
  data_v, data_e, nf : String;
begin
 if dm.cds_CPSTATUS.AsString = 'Pago' then
 begin
  MessageDlg('Título já está pago', mtInformation, [mbOK], 0);
  exit;
 end;
 if dm.cds_CP.State in [dsInsert, dsEdit] then
   dm.cds_CPSTATUS.AsString := 'Pago';
   dm.cds_CP.ApplyUpdates(0);
// testa se pagou valor menor que o titulo
 if dm.cds_CPVALORRECEBIDO.AsFloat < StrToFloat(Edit1.Text) then
 begin
// aqui pego os valores para criar nova via do título.
  id_r := dm.cds_CPID_PAGAMENTO.AsInteger;
  nf := dm.cds_CPTITULO.AsString;
  id := dm.cds_CPID_FORNECEDOR.AsInteger;
  via := dm.cds_CPPARCELAS.AsInteger;
  data_v := DateToStr(dm.cds_CPDATAVENCIMENTO.AsDateTime);
  data_e := DateToStr(dm.cds_CPEMISSAO.AsDateTime);
  valor_t := StrToFloat(Edit2.Text);
  valor_r := dm.cds_CPVALOR_RESTO.AsFloat;
//aqui adiciono nova via
  dm.cds_CP.Append;
  dm.cds_CPID_FORNECEDOR.AsInteger := id;
  dm.cds_CPPARCELAS.AsInteger := via;
  dm.cds_CPDATAVENCIMENTO.AsDateTime := StrToDate(data_v);
  dm.cds_CPEMISSAO.AsDateTime := StrToDate(data_e);
  dm.cds_CPVALOR_RESTO.AsFloat := valor_t;
  dm.cds_CRVALOR_1VIA.AsFloat := valor_r;
  dm.cds_CPSTATUS.AsString := 'Pendente';
// gera codigo para tab. recebimentos
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PAGAMENTO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  dm.cds_CPID_PAGAMENTO.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
  id_r := dm.cds_CPID_PAGAMENTO.AsInteger;
  dm.c_6_genid.Close;
  if pagar = 'Compras' then
  begin
    dm.cds_CPTIPO_DOC.AsString := 'CP';
    dm.cds_CPTITULO.AsString := nf;
  end;

  if pagar = 'Outras Despesas' then
  begin
    dm.cds_CPTIPO_DOC.AsString := 'DP';
    dm.cds_CPTITULO.AsString := nf;
  end;
  dm.cds_CP.ApplyUpdates(0);
  dm.cds_CP.Close;
  dm.cds_CP.Params[0].AsInteger := id_r;
  dm.cds_CP.Open;
 end;
end;

procedure TfPagarTitulos.dxButton4Click(Sender: TObject);
begin
  close;
end;

procedure TfPagarTitulos.dxButton2Click(Sender: TObject);
begin
    if dm.cds_CPSTATUS.AsString = 'Pendente' then
    begin
      MessageDlg('Título ainda não foi Baixado ', mtError, [mbOK], 0);
      exit;
    end;

    if dm.cds_CPSTATUS.AsString = 'Pago' then
    begin
      if dm.cds_CP.State in [dsBrowse] then
        dm.cds_CP.Edit;
       dm.cds_CPSTATUS.AsString := 'Pendente';
       dm.cds_CPDATAPAGAMENTO.AsString := '';
       dm.cds_CPVALORRECEBIDO.AsFloat := 0;
       dm.cds_CP.ApplyUpdates(0);
    end;
    
end;

end.
