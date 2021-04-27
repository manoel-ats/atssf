unit CobrancaCls;

interface

uses Windows, Forms, Dialogs, Messages, SysUtils, Classes, DBCtrls,
    DBXpress, DB, SqlExpr, DBClient, Provider, StdCtrls, rpcompobase,
    rpvclreport;

Type
  TCobrancaCls = class(TObject)

  private

  protected
     function executaSql(strSql: String): Boolean;
  public
    function buscaSocio(GRUPO : string; INSC : Integer; IDCOB : Integer; DATAULTIMA : TDateTime) : Integer;
    function buscaFAIXA(FAIXA : Integer) : Double;
    function buscaPLANO(PLANO : String) :Integer;
    function buscaNumTitulo() : Integer;
    function buscaNFSERIE(PLANO : string) : Integer;
    function updateNFSERIE(PLANO : string; NUNNF : Integer) : Integer;
    function updateDataUltimaParcela(DATAULTIMA : TDateTime) : TDateTime;

    function GeraTituloAvulso(PLANO : string; GRUPO : string;
                              INSC_INI : Integer; INSC_FIN : Integer;
                              N_PARC : Integer; VALORTITULO :Double;
                              EMISSAO :TDateTime; VENCIMENTO :TDateTime; IDCOB : Integer) : Integer;

    function GeraCobPorFal(PLANO : string; LOTE : Integer; GRUPO : string;
                           INSC_INI : Integer; INSC_FIN : Integer;
                           N_PARC : Integer;
                           EMISSAO :TDateTime; VENCIMENTO :TDateTime;
                           SOMATITULOS : string; IDCOB : Integer;
                           TOTALPEND : Integer) : Integer;

    function GeraCobPorDia(PLANO : string; GRUPO : string;
                           INSC_INI : Integer; INSC_FIN : Integer;
                           N_PARC : Integer;
                           EMISSAO :TDateTime; VENCIMENTO :TDateTime;
                           IDCOB : Integer;
                           TOTALPEND : Integer) : Integer;

    function InserirRec(ID : Integer; VALOR_NF : Double; VALOR_RECEBER : Double;
                        VALOR_A_REC :Double; PARCELA : Integer;
                        VENCIMENTO : TDateTime; STATUS : string;
                        VALOR_PAGO : Double; VALOR_DIF : Double;
                        JUROS : Double; DESCONTO : Double; MULTA : Double;
                        EMISSAO : TDateTime; TITULO : Integer;
                        CODIGO : Integer; SERIE : string;  VALOR_1VIA : Double;
                        ID_SOCIO : Integer; ID_BANCO : Integer;
                        SITUACAO : string; TIPO_DOC : string) : Integer;



    constructor Create;
    Destructor  Destroy; Override;

  end;

var
  sqlConsulta  : TSqlQuery;
  sql_1        : TSqlQuery;
  s_GERACOB    : TSQLDataSet;
  p_GERACOB    : TDataSetProvider;
  c_GERACOB    : TClientDataSet;
  TD: TTransactionDesc;  
  v_ProximoVenc : TDateTime;
  v_DataFinal : TDateTime;
  v_SqlTexto, v_SqlConsulta, v_sqlInsert  : string;
  v_QTDE, v_IDSOCIO, v_DIAPGTO, v_FAIXA, v_Titulo, v_NF  : Integer;
  v_Valor : Double;
  ano,mes,dia : Word;

implementation

uses UDM, DateUtils;

{ TCobrancaCls }

function TCobrancaCls.buscaFAIXA(FAIXA: Integer): Double;
begin
  try
    v_Valor := 0;
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.SQLObitos;
    v_SqlConsulta := 'SELECT VALOR FROM VALORES ' +
                     'where FAIXA = ' + IntToStr(v_FAIXA);
    sqlConsulta.SQL.Clear;
    sqlConsulta.SQL.Add(v_SqlConsulta);
    sqlConsulta.Open;
    Result := sqlConsulta.Fields[0].AsFloat;
  finally
    sqlConsulta.Free;
  end;
end;

function TCobrancaCls.buscaNFSERIE(PLANO: string): Integer;
begin
  try
    //v_Valor := 0;
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.SQLObitos;
    v_SqlConsulta := 'SELECT ULTIMO_NUMERO FROM SERIES ' +
                     'where SERIE = ' + QuotedStr(PLANO);
    sqlConsulta.SQL.Clear;
    sqlConsulta.SQL.Add(v_SqlConsulta);
    sqlConsulta.Open;
    Result := sqlConsulta.Fields[0].AsInteger;
  finally
    sqlConsulta.Free;
  end;
end;

function TCobrancaCls.buscaNumTitulo: Integer;
begin
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.SQLObitos;
    v_SqlTexto := 'SELECT CAST(GEN_ID(GEN_CODIGO_BANCO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    sqlConsulta.SQL.Add(v_SqlConsulta);
    sqlConsulta.Open;
    Result := sqlConsulta.Fields[0].AsInteger;
  finally
    sqlConsulta.Free;
  end;
end;

function TCobrancaCls.buscaPLANO(PLANO: string): Integer;
begin
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.SQLObitos;
    v_SqlTexto := 'SELECT QUANTIDADE FROM PLANO where PLANO = ' + QuotedStr(PLANO);
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    Result := sqlConsulta.Fields[0].AsInteger;
  finally
    sqlConsulta.Free;
  end;
end;

function TCobrancaCls.buscaSocio(GRUPO: string; INSC: Integer; IDCOB: Integer; DATAULTIMA : TDateTime): Integer;
begin
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.SQLObitos;
    v_SqlConsulta := 'SELECT ID_SOCIO, DIAPARAPGTO, FAIXA FROM SOCIOS a ' +
                     'where N_INSCRICAO = ' + IntToStr(INSC) +
                     ' and GRUPO = ' + QuotedStr(GRUPO) +
                     ' and DTA_ULTIMA_PARCELA < ' + QuotedStr(FormatDateTime('mm/dd/yyyy',DATAULTIMA));
    if (IDCOB > 0) then
        v_SqlConsulta := v_SqlConsulta + 'and ID_COB = ' + IntToStr(IDCOB);
    v_IDSOCIO := 0;
    sqlConsulta.SQL.Clear;
    sqlConsulta.SQL.Add(v_SqlConsulta);
    sqlConsulta.Open;
    if (not sqlConsulta.IsEmpty) then
    begin
        v_IDSOCIO := sqlConsulta.Fields[0].AsInteger;
        v_DIAPGTO := sqlConsulta.Fields[1].AsInteger;
        v_FAIXA   := sqlConsulta.Fields[2].AsInteger;
    end;
  finally
    sqlConsulta.Free;
  end;
end;

constructor TCobrancaCls.Create;
begin
  // ************************
end;

destructor TCobrancaCls.Destroy;
begin
  // ************************
  inherited;
end;

function TCobrancaCls.executaSql(strSql: String): Boolean;
var ErrorCode: Integer;
begin
  ErrorCode := dm.SQLObitos.ExecuteDirect(strSql);
  if ErrorCode = 0 then
  begin
    Result := True;
  end;

  if ErrorCode <> 0 then
  begin
    Result := False;
    raise Exception.Create( 'Error: code = ' + IntToStr( ErrorCode ) )
  end;
end;

function TCobrancaCls.GeraCobPorDia(PLANO: string; GRUPO: string; INSC_INI,
  INSC_FIN, N_PARC: Integer; EMISSAO, VENCIMENTO: TDateTime; IDCOB,
  TOTALPEND: Integer): Integer;
  var
    I, J : Integer;
    N_TITULO : string;
begin
  v_ProximoVenc := VENCIMENTO;
  v_QTDE := 0;
  try
    sql_1 :=  TSqlQuery.Create(nil);
    sql_1.SQLConnection := dm.SQLObitos;
    v_QTDE := buscaPLANO(PLANO); // Dias Para o PLANO (30, 60, 90)... 
    for I := INSC_INI to INSC_FIN do
    begin
      buscaSocio(GRUPO, I, IDCOB, VENCIMENTO);
      if (v_IDSOCIO <> 0) then
      begin
        v_NF := buscaNFSERIE(PLANO);
        DecodeDate(VENCIMENTO,ano,mes,dia);
        dia := v_DIAPGTO;
        v_ProximoVenc := EncodeDate(ano,mes,dia);
        for J := 1 to N_PARC do
        begin
          v_Valor  := buscaFAIXA(v_FAIXA);
          v_Titulo := buscaNumTitulo();
          InserirRec(v_IDSOCIO,v_Valor, v_Valor, v_Valor, J,v_ProximoVenc,
                    'Pendente',0,0,0,0,0,EMISSAO,v_Titulo,v_Titulo,'M',0,
                    v_IDSOCIO,0,'Ativo', 'MS');
          v_DataFinal := v_ProximoVenc;
          v_ProximoVenc := IncDay(v_ProximoVenc, v_QTDE);
          DecodeDate(v_ProximoVenc,ano,mes,dia);
          dia := v_DIAPGTO;
          v_ProximoVenc := EncodeDate(ano,mes,dia);
        end;
        updateDataUltimaParcela(v_DataFinal);
        updateNFSERIE(PLANO,v_NF);
      end;
    end;
  finally
    sql_1.Free;
  end;
end;

function TCobrancaCls.GeraCobPorFal(PLANO: string; LOTE: Integer;
  GRUPO: string; INSC_INI, INSC_FIN, N_PARC: Integer; EMISSAO,
  VENCIMENTO: TDateTime; SOMATITULOS: string; IDCOB,
  TOTALPEND: Integer): Integer;
begin
  // Titulos para Planos por Falecimento

end;

function TCobrancaCls.GeraTituloAvulso(PLANO, GRUPO: string; INSC_INI,
  INSC_FIN, N_PARC: Integer; VALORTITULO: Double; EMISSAO,
  VENCIMENTO: TDateTime; IDCOB : Integer): Integer;
  var
    I, J : Integer;
    N_TITULO : string;
begin
  v_ProximoVenc := VENCIMENTO;
  v_QTDE := 0;
  try
    sql_1 :=  TSqlQuery.Create(nil);
    sql_1.SQLConnection := dm.SQLObitos;
    for I := INSC_INI to INSC_FIN do
    begin
      buscaSocio(GRUPO, I, IDCOB, VENCIMENTO);
      if (v_IDSOCIO <> 0) then
      begin
        v_NF := buscaNFSERIE('AVULSO');
        for J := 1 to N_PARC do
        begin
          v_Valor  := VALORTITULO;
          v_Titulo := buscaNumTitulo();
          InserirRec(v_IDSOCIO,v_Valor, v_Valor, v_Valor, J,v_ProximoVenc,
                    'Pendente',0,0,0,0,0,EMISSAO,v_Titulo,v_Titulo,'M',0,
                    v_IDSOCIO,0,'Ativo', 'RC');
          v_DataFinal := v_ProximoVenc;
          v_ProximoVenc := IncMonth(v_ProximoVenc, 1);
        end;
        updateNFSERIE('AVULSO',v_NF);
      end;
    end;
  finally
    sql_1.Free;
  end;
end;

function TCobrancaCls.InserirRec(ID: Integer; VALOR_NF, VALOR_RECEBER,
  VALOR_A_REC: Double; PARCELA: Integer; VENCIMENTO: TDateTime;
  STATUS: string; VALOR_PAGO, VALOR_DIF, JUROS, DESCONTO, MULTA: Double;
  EMISSAO: TDateTime; TITULO, CODIGO: Integer; SERIE: string;
  VALOR_1VIA: Double; ID_SOCIO, ID_BANCO: Integer; SITUACAO,
  TIPO_DOC: string): Integer;
begin
  v_sqlInsert := 'INSERT INTO RECEBIMENTOS (' +
                 'ID, VALOR_NF, VALOR_RECEBER, VALOR_A_REC, PARCELA, ' +
                 'VENCIMENTO, STATUS, VALOR_PAGO, VALOR_DIF, JUROS, DESCONTO, MULTA, EMISSAO, ' +
                 'TITULO, CODIGO, SERIE,  VALOR_1VIA, ID_SOCIO, ID_BANCO, SITUACAO, TIPO_DOC, NOTAFISCAL) ' +
                 'VALUES(';
  v_sqlInsert := v_sqlInsert + IntToStr(ID) + ', ' + //ID
                QuotedStr(FloatToStr(VALOR_NF)) + ', ' + //VALOR_NF,
                QuotedStr(FloatToStr(VALOR_RECEBER)) + ', ' +//VALOR_RECEBER,
                QuotedStr(FloatToStr(VALOR_A_REC)) + ', ' +//VALOR_A_REC,
                IntToStr(PARCELA) + ', ' + //PARCELA,
                QuotedStr(FormatDateTime('mm/dd/yyyy',VENCIMENTO)) + ', ' +//VENCIMENTO,
                QuotedStr(STATUS) + ',' +//STATUS,
                QuotedStr(FloatToStr(VALOR_PAGO)) + ', ' +//VALOR_PAGO,
                QuotedStr(FloatToStr(VALOR_DIF)) + ', ' +//VALOR_DIF,
                QuotedStr(FloatToStr(JUROS)) + ', ' +//JUROS,
                QuotedStr(FloatToStr(DESCONTO)) + ', ' +//DESCONTO,
                QuotedStr(FloatToStr(MULTA)) + ', ' +//MULTA,
                QuotedStr(FormatDateTime('mm/dd/yyyy',EMISSAO)) + ', ' +//VENCIMENTO,//EMISSAO,
                IntToStr(TITULO) + ', ' + //TITULO,
                IntToStr(CODIGO) + ', ' + //CODIGO,
                QuotedStr(SERIE) + ', ' + //SERIE,
                QuotedStr(FloatToStr(VALOR_1VIA)) + ', ' + // VALOR_1VIA,
                IntToStr(ID_SOCIO) + ', ' + // ID_SOCIO,
                IntToStr(ID_BANCO) + ', ' + //ID_BANCO,
                QuotedStr(SITUACAO) + ', ' + //SITUACAO,
                QuotedStr(TIPO_DOC) + ',' + //TIPO_DOC
                IntToStr(v_NF) + ')'; //TIPO_DOC
                
  dm.SQLObitos.StartTransaction(TD);
  dm.SQLObitos.ExecuteDirect(v_sqlInsert);
  Try
    dm.SQLObitos.Commit(TD);
  except
    dm.SQLObitos.Rollback(TD); //on failure, undo the changes}
    MessageDlg('Erro no sistema, Desmarcar Titulo Falhou.', mtError,
       [mbOk], 0);
  end;

 // executaSql(v_sqlInsert);
end;

function TCobrancaCls.updateDataUltimaParcela(
  DATAULTIMA: TDateTime): TDateTime;
begin
  v_sqlInsert := 'UPDATE SOCIOS SET DTA_ULTIMA_PARCELA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',DATAULTIMA)) +
                   ' where ID_SOCIO = ' + IntTOStr(v_IDSOCIO);

  dm.SQLObitos.StartTransaction(TD);
  dm.SQLObitos.ExecuteDirect(v_sqlInsert);
  Try
    dm.SQLObitos.Commit(TD);
  except
    dm.SQLObitos.Rollback(TD); //on failure, undo the changes}
    MessageDlg('Erro no sistema, Desmarcar Titulo Falhou.', mtError,
       [mbOk], 0);
  end;
end;

function TCobrancaCls.updateNFSERIE(PLANO: string; NUNNF : Integer): Integer;
begin
  v_sqlInsert := 'UPDATE SERIES SET ULTIMO_NUMERO = ' + IntToStr(NUNNF + 1) +
                   ' where SERIE = ' + QuotedStr(PLANO);

  dm.SQLObitos.StartTransaction(TD);
  dm.SQLObitos.ExecuteDirect(v_sqlInsert);
  Try
    dm.SQLObitos.Commit(TD);
  except
    dm.SQLObitos.Rollback(TD); //on failure, undo the changes}
    MessageDlg('Erro no sistema, Desmarcar Titulo Falhou.', mtError,
       [mbOk], 0);
  end;

end;

end.
