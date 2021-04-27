unit u_GeraCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCheckBox, dxCore, dxButton, JvEdit,
  JvValidateEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvBaseDlg,
  JvProgressDialog, Buttons, JvSpin, Mask, JvExMask, JvToolEdit,
  JvExControls, JvLabel, ExtCtrls, MMJPanel, FMTBcd, DB,
  SqlExpr, DBXpress, Provider, DBClient;

type
  Tf_GeraCobranca = class(TForm)
    MMJPanel1: TMMJPanel;
    JvProgressDialog1: TJvProgressDialog;
    JvDBGrid1: TJvDBGrid;
    dlgSave1: TSaveDialog;
    buscaPlano: TSQLDataSet;
    busca: TSQLDataSet;
    dsConsulta: TClientDataSet;
    pConsulta: TDataSetProvider;
    ds2: TDataSource;
    sConsulta: TSQLDataSet;
    JvDBGrid2: TJvDBGrid;
    s_CR: TSQLDataSet;
    p_CR: TDataSetProvider;
    ds_CR: TClientDataSet;
    dst: TDataSource;
    btnFiltro: TdxButton;
    btnGeraCob: TdxButton;
    btnBoletos: TdxButton;
    btnSair: TdxButton;
    MMJPanel2: TMMJPanel;
    dsConsultaR_IDSOCIO: TIntegerField;
    dsConsultaR_GRUPO: TStringField;
    dsConsultaR_PLANO: TStringField;
    dsConsultaR_NOME_SOCIO: TStringField;
    dsConsultaR_DATA_ULT_PARC: TDateField;
    dsConsultaR_VALOR_PENDENTE: TFloatField;
    dsConsultaR_TOTAL_TITULOS: TIntegerField;
    dsConsultaR_INSCRICAO: TIntegerField;
    s_CRTITULO: TIntegerField;
    s_CRPARCELA: TIntegerField;
    s_CREMISSAO: TDateField;
    s_CRVENCIMENTO: TDateField;
    s_CRDATA_PAG: TDateField;
    s_CRSTATUS: TStringField;
    s_CRVALOR_RECEBER: TFloatField;
    s_CRVALOR_PAGO: TFloatField;
    ds_CRTITULO: TIntegerField;
    ds_CRPARCELA: TIntegerField;
    ds_CREMISSAO: TDateField;
    ds_CRVENCIMENTO: TDateField;
    ds_CRDATA_PAG: TDateField;
    ds_CRSTATUS: TStringField;
    ds_CRVALOR_RECEBER: TFloatField;
    ds_CRVALOR_PAGO: TFloatField;
    jvTotalPendente: TJvValidateEdit;
    jvTotalPago: TJvValidateEdit;
    s_CRN_BOLETO: TStringField;
    ds_CRN_BOLETO: TStringField;
    s_CRID_RECEBIMENTOS: TIntegerField;
    ds_CRID_RECEBIMENTOS: TIntegerField;
    s_CRNOTAFISCAL: TIntegerField;
    ds_CRNOTAFISCAL: TIntegerField;
    procedure btnLoteClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnGeraCobClick(Sender: TObject);
    procedure btnBoletosClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    v_sqlConsulta : TSQLDataSet;
    p_sqlconsulta : TDataSetProvider;
    c_sqlConsulta : TClientDataSet;
    TD: TTransactionDesc;
    var_TXT : string;
    procedure mostraSocios;
    { Private declarations }
  public
    procedure mostraCR;
    { Public declarations }
  end;

var
  f_GeraCobranca: Tf_GeraCobranca;

implementation

uses UDM, uVerLotes, uSocio_Procura, u_GeraBoleto, u_DadosCob, u_Filtro;

{$R *.dfm}

procedure Tf_GeraCobranca.btnLoteClick(Sender: TObject);
begin
  fVerLotes := TfVerLotes.Create(Application);
  try
    fVerLotes.ShowModal;
  finally
    fVerLotes.Free;
  end;
end;

procedure Tf_GeraCobranca.btnFiltroClick(Sender: TObject);
begin
 f_Filtro.ShowModal;
 if (dsConsulta.Active) then
    dsConsulta.Close;

 if (f_Filtro.var_plano = '') then
    f_Filtro.var_plano := 'TODOS OS PLANOS';

 if (f_Filtro.var_grupo = '') then
    f_Filtro.var_grupo := '0';

 if (f_Filtro.var_insc1 = '0') then
    f_Filtro.var_insc1 := '1';

 if (f_Filtro.var_insc2 = '0') then
    f_Filtro.var_insc2 := '9999999';

 if (f_Filtro.var_cobrador = '') then
    f_Filtro.var_cobrador := '0';

 if (f_Filtro.var_DataUltima1 = '  /  /    ') then
    f_Filtro.var_DataUltima1 := '01/01/1001';

 if (f_Filtro.var_DataUltima2 = '  /  /    ') then
    f_Filtro.var_DataUltima2 := '31/12/2080';

 dsConsulta.Params[0].AsString  := f_Filtro.var_plano;
 dsConsulta.Params[1].AsString  := f_Filtro.var_grupo;
 dsConsulta.Params[2].AsInteger := StrToInt(f_Filtro.var_insc1);
 dsConsulta.Params[3].AsInteger := StrToInt(f_Filtro.var_insc2);
 dsConsulta.Params[4].AsInteger := StrToInt(f_Filtro.var_cobrador);
 dsConsulta.Params[5].Value     := FormatDateTime('mm/dd/yyyy',StrToDate(f_Filtro.var_DataUltima1));
 dsConsulta.Params[6].Value     := FormatDateTime('mm/dd/yyyy',StrToDate(f_Filtro.var_DataUltima2));
 dsConsulta.Open;

 mostraCR;

end;

procedure Tf_GeraCobranca.btnGeraCobClick(Sender: TObject);
begin
  //f_DadosCob.cbbPlano.Text := f_Filtro.var_plano;
  f_DadosCob.edtGrupo.Text := f_Filtro.var_grupo;
  f_DadosCob.edtInc1.Text := f_Filtro.var_insc1;
  f_DadosCob.edtInc2.Text := f_Filtro.var_insc2;
      

  f_DadosCob.ShowModal;

 if (dsConsulta.Active) then
    dsConsulta.Close;

 if (f_Filtro.var_plano = '') then
    f_Filtro.var_plano := 'TODOS OS PLANOS';

 if (f_Filtro.var_grupo = '') then
    f_Filtro.var_grupo := '0';

 if (f_Filtro.var_insc1 = '0') then
    f_Filtro.var_insc1 := '1';

 if (f_Filtro.var_insc2 = '0') then
    f_Filtro.var_insc2 := '9999999';

 if (f_Filtro.var_cobrador = '') then
    f_Filtro.var_cobrador := '0';

 if (f_Filtro.var_DataUltima1 = '  /  /    ') then
    f_Filtro.var_DataUltima1 := '01/01/1001';

 if (f_Filtro.var_DataUltima2 = '  /  /    ') then
    f_Filtro.var_DataUltima2 := '31/12/2080';

 dsConsulta.Params[0].AsString  := f_Filtro.var_plano;
 dsConsulta.Params[1].AsString  := f_Filtro.var_grupo;
 dsConsulta.Params[2].AsInteger := StrToInt(f_Filtro.var_insc1);
 dsConsulta.Params[3].AsInteger := StrToInt(f_Filtro.var_insc2);
 dsConsulta.Params[4].AsInteger := StrToInt(f_Filtro.var_cobrador);
 dsConsulta.Params[5].Value     := FormatDateTime('mm/dd/yyyy',StrToDate(f_Filtro.var_DataUltima1));
 dsConsulta.Params[6].Value     := FormatDateTime('mm/dd/yyyy',StrToDate(f_Filtro.var_DataUltima2));
 dsConsulta.Open;

 mostraCR;
end;

procedure Tf_GeraCobranca.btnBoletosClick(Sender: TObject);
begin
  f_GeraBoleto := Tf_GeraBoleto.Create(Application);
  try
    f_GeraBoleto.ShowModal;
  finally
    f_GeraBoleto.Free;
  end;
end;

procedure Tf_GeraCobranca.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure Tf_GeraCobranca.mostraCR;
var
  TXTSQL : string;
begin
  TXTSQL := '';
  var_TXT := 'select TITULO, PARCELA, EMISSAO, VENCIMENTO, DATA_PAG, STATUS, ' +
             'VALOR_RECEBER, VALOR_PAGO, N_BOLETO, ID_RECEBIMENTOS, NOTAFISCAL from RECEBIMENTOS ';

  if ((f_Filtro.var_emissao1 <> '  /  /    ') and (f_Filtro.var_emissao2 <> '  /  /    ')) then
  begin
     TXTSQL := 'WHERE EMISSAO between ' + FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_emissao1));
     TXTSQL := TXTSQL + ' and ' + FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_emissao2));
  end;

  if (TXTSQL = '') then
  begin
    if ((f_Filtro.var_vencimento1 <> '  /  /    ') and (f_Filtro.var_vencimento2 <> '  /  /    ')) then
    begin
       TXTSQL := 'WHERE VENCIMENTO between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_vencimento1)));
       TXTSQL := TXTSQL + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_vencimento2)));
    end;
  end
  else
  begin
    if ((f_Filtro.var_vencimento1 <> '  /  /    ') and (f_Filtro.var_vencimento2 <> '  /  /    ')) then
    begin
       TXTSQL := ' and VENCIMENTO between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_vencimento1)));
       TXTSQL := TXTSQL + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_vencimento2)));
    end;
  end;

  if (TXTSQL = '') then
  begin
    if ((f_Filtro.var_pagamento1 <> '  /  /    ') and (f_Filtro.var_pagamento2 <> '  /  /    ')) then
    begin
       TXTSQL := 'WHERE DATA_PAG between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_pagamento1)));
       TXTSQL := TXTSQL + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_pagamento2)));
    end;
  end
  else
  begin
    if ((f_Filtro.var_pagamento1 <> '  /  /    ') and (f_Filtro.var_pagamento2 <> '  /  /    ')) then
    begin
       TXTSQL := ' and DATA_PAG between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_pagamento1)));
       TXTSQL := TXTSQL + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(f_Filtro.var_pagamento2)));
    end;
  end;

  if (f_Filtro.var_status <> '') then
  begin
    if (TXTSQL = '') then
      TXTSQL := 'Where STATUS = ' + QuotedStr(f_Filtro.var_status)
    else
      TXTSQL := TXTSQL + ' and STATUS = ' + QuotedStr(f_Filtro.var_status);
  end;

  if (f_Filtro.var_titulo <> '') then
  begin
    if (TXTSQL = '') then
      TXTSQL := 'Where TITULO = ' + f_Filtro.var_titulo
    else
      TXTSQL := TXTSQL + ' and TITULO = ' + f_Filtro.var_titulo;
  end;
  
  if (TXTSQL = '') then
    TXTSQL := 'Where ID_SOCIO = ' + IntToStr(dsConsultaR_IDSOCIO.AsInteger)
  else
    TXTSQL := TXTSQL + ' and ID_SOCIO = ' + IntToStr(dsConsultaR_IDSOCIO.AsInteger);

 TXTSQL := TXTSQL + ' order by VENCIMENTO ';

  if (ds_CR.Active) then
     ds_CR.Close;
  ds_CR.CommandText := var_TXT + TXTSQL;
  ds_CR.Open;
  
end;

procedure Tf_GeraCobranca.mostraSocios;
begin


end;

procedure Tf_GeraCobranca.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  mostraCR;
end;

procedure Tf_GeraCobranca.JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  mostraCR;
end;

procedure Tf_GeraCobranca.JvDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  mostraCR;
end;

procedure Tf_GeraCobranca.JvDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  mostraCR;
end;

procedure Tf_GeraCobranca.JvDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.Field = ds_CRSTATUS then
   if ds_CRSTATUS.AsString = 'Pendente' then
   begin
     JvDBGrid2.Canvas.Font.Color := clRed;
     JvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = ds_CRSTATUS then
   if ds_CRSTATUS.AsString = 'Pago' then
   begin
     JvDBGrid2.Canvas.Font.Color := clBlue;
     JvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = ds_CRVALOR_RECEBER then
  begin
     JvDBGrid2.Canvas.Font.Color := clRed;
     JvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
  end;
  if Column.Field = ds_CRVALOR_PAGO then
  begin
     JvDBGrid2.Canvas.Font.Color := clBlue;
     JvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
  end;

end;

end.
