unit uBaixaretorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Grids, DBGrids, DBClient, Provider, SqlExpr,
  StdCtrls, DBCtrls, Buttons;

type
  TfBaixaretorno = class(TForm)
    DataSource1: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    DBGrid1: TDBGrid;
    sdsID_RECEBIMENTOS: TIntegerField;
    sdsID: TIntegerField;
    sdsVALOR_NF: TFloatField;
    sdsVALOR_RECEBER: TFloatField;
    sdsPARCELA: TIntegerField;
    sdsVENCIMENTO: TDateField;
    sdsDATA_PAG: TDateField;
    sdsSTATUS: TStringField;
    sdsVALOR_PAGO: TFloatField;
    sdsVALOR_DIF: TFloatField;
    sdsJUROS: TFloatField;
    sdsDESCONTO: TFloatField;
    sdsMULTA: TFloatField;
    sdsEMISSAO: TDateField;
    sdsN_DOCUMENTO: TStringField;
    sdsCAIXA: TStringField;
    sdsFORMARECEBIMENTO: TStringField;
    sdsVALOR_A_REC: TFloatField;
    sdsTITULO: TIntegerField;
    sdsVALOR_1VIA: TFloatField;
    sdsID_SOCIO: TIntegerField;
    sdsLOTE: TIntegerField;
    sdsGEROU: TStringField;
    sdsDATA_DOC: TDateField;
    sdsGRUPO: TStringField;
    sdsID_BANCO: TIntegerField;
    sdsSITUACAO: TStringField;
    sdsTIPO_DOC: TStringField;
    sdsSELECIONOU: TStringField;
    sdsSERIE: TStringField;
    sdsPERCENTUALJUROS: TFloatField;
    sdsPERCENTUALMULTA: TFloatField;
    sdsPERCENTUALDESCONTO: TFloatField;
    sdsVALOROUTROSACRESCIMOS: TFloatField;
    sdsCODIGO: TIntegerField;
    sdsOBS: TGraphicField;
    sdsENTRADA: TFloatField;
    sdsCODCCUSTO: TSmallintField;
    sdsID_DEPREC: TIntegerField;
    sdsNOTAFISCAL: TIntegerField;
    sdsID_VENDA: TIntegerField;
    sdsID_ACORDO: TIntegerField;
    sdsN_BOLETO: TStringField;
    sdsCOBRADOR: TIntegerField;
    sdsARQUIVORETORNO: TGraphicField;
    sdsNOMEARQUIVORETORNO: TStringField;
    cdsID_RECEBIMENTOS: TIntegerField;
    cdsID: TIntegerField;
    cdsVALOR_NF: TFloatField;
    cdsVALOR_RECEBER: TFloatField;
    cdsPARCELA: TIntegerField;
    cdsVENCIMENTO: TDateField;
    cdsDATA_PAG: TDateField;
    cdsSTATUS: TStringField;
    cdsVALOR_PAGO: TFloatField;
    cdsVALOR_DIF: TFloatField;
    cdsJUROS: TFloatField;
    cdsDESCONTO: TFloatField;
    cdsMULTA: TFloatField;
    cdsEMISSAO: TDateField;
    cdsN_DOCUMENTO: TStringField;
    cdsCAIXA: TStringField;
    cdsFORMARECEBIMENTO: TStringField;
    cdsVALOR_A_REC: TFloatField;
    cdsTITULO: TIntegerField;
    cdsVALOR_1VIA: TFloatField;
    cdsID_SOCIO: TIntegerField;
    cdsLOTE: TIntegerField;
    cdsGEROU: TStringField;
    cdsDATA_DOC: TDateField;
    cdsGRUPO: TStringField;
    cdsID_BANCO: TIntegerField;
    cdsSITUACAO: TStringField;
    cdsTIPO_DOC: TStringField;
    cdsSELECIONOU: TStringField;
    cdsSERIE: TStringField;
    cdsPERCENTUALJUROS: TFloatField;
    cdsPERCENTUALMULTA: TFloatField;
    cdsPERCENTUALDESCONTO: TFloatField;
    cdsVALOROUTROSACRESCIMOS: TFloatField;
    cdsCODIGO: TIntegerField;
    cdsOBS: TGraphicField;
    cdsENTRADA: TFloatField;
    cdsCODCCUSTO: TSmallintField;
    cdsID_DEPREC: TIntegerField;
    cdsNOTAFISCAL: TIntegerField;
    cdsID_VENDA: TIntegerField;
    cdsID_ACORDO: TIntegerField;
    cdsN_BOLETO: TStringField;
    cdsCOBRADOR: TIntegerField;
    cdsARQUIVORETORNO: TGraphicField;
    cdsNOMEARQUIVORETORNO: TStringField;
    DBText1: TDBText;
    sdsNOME_SOCIO: TStringField;
    sdsGRUPO_1: TStringField;
    sdsN_INSCRICAO: TIntegerField;
    cdsNOME_SOCIO: TStringField;
    cdsGRUPO_1: TStringField;
    cdsN_INSCRICAO: TIntegerField;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBaixaretorno: TfBaixaretorno;

implementation

uses UDM, uArquivoRetorno;

{$R *.dfm}

procedure TfBaixaretorno.FormShow(Sender: TObject);
begin
  if cds.Active then
    cds.Close;
  cds.Params[0].AsInteger := codigo;
  cds.Open;
  Label1.Caption := FloatToStr(v_resto);
end;

procedure TfBaixaretorno.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfBaixaretorno.BitBtn1Click(Sender: TObject);
begin
     if v_resto >= cdsVALOR_RECEBER.AsFloat then
     begin
        if cdsSTATUS.AsString = 'Pendente' then
        begin
          if cds.State in [dsBrowse] then
             cds.Edit;
          cdsDATA_PAG.AsDateTime := now;
          cdsSTATUS.AsString := 'Pago';
          cdsVALOR_A_REC.AsFloat := cdsVALOR_RECEBER.AsFloat;
          cdsVALOR_PAGO.AsFloat := cdsVALOR_NF.AsFloat;
          cdsSELECIONOU.AsString := '';
          cdsNOMEARQUIVORETORNO.AsString := ExtractFileName(fArquivoRetorno.OpenDialog1.FileName);
          cds.ApplyUpdates(0);
          v_pago := v_resto;
          v_titulo := cdsVALOR_RECEBER.AsFloat;
          v_resto := v_pago - v_titulo;
          Label1.Caption := FloatToStr(v_resto);
          n_titulo := cdsTITULO.AsInteger;
          //atualizo o memo
          texto_memo := '';
          texto_memo := texto_memo + 'CBR643 : ';
          texto_memo := 'Título nº: ' + IntToStr(fArquivoRetorno.cdsTITULO.AsInteger) + ' Data: ' +
              fArquivoRetorno.cdsDATA.AsString + ' valor R$ : ' +
              FloatToStr(fArquivoRetorno.cdsVALOR.AsFloat);
          texto_memo := texto_memo + ' | Baixado - (Grupo : ' + cdsGRUPO_1.AsString;
          texto_memo := texto_memo + ' Inscrição : ' + IntToStr(cdsN_INSCRICAO.AsInteger);
          texto_memo := texto_memo + ' Inscrição : ' + cdsNOME_SOCIO.AsString;
          texto_memo := texto_memo + ' Título : ' + IntToStr(cdsTITULO.AsInteger);
          texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(cdsVALOR_RECEBER.AsFloat) + ')';
          fArquivoRetorno.Memo1.Lines.Add(texto_memo);
        end;
     end
     else
     begin
        MessageDlg('Valor restante menor que valor da parcela', mtWarning, [mbOK], 0);
     end;
end;

end.
