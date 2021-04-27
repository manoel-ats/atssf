unit uMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvBaseEdits, Mask, JvExMask, JvToolEdit, Buttons,
  ExtCtrls, MMJPanel, FMTBcd, DB, SqlExpr, DBClient, Provider, Grids,
  DBGrids, JvExDBGrids, JvDBGrid;

type
  TfMovCaixa = class(TForm)
    MMJPanel2: TMMJPanel;
    Label5: TLabel;
    Label4: TLabel;
    btnAbrir: TBitBtn;
    btnFechar: TBitBtn;
    btnSair: TBitBtn;
    btnSaida: TBitBtn;
    btnEntrada: TBitBtn;
    Consulta: TBitBtn;
    eddata3: TJvDateEdit;
    eddata2: TJvDateEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edValor: TJvCalcEdit;
    edData: TJvDateEdit;
    edhist: TEdit;
    ComboBox1: TComboBox;
    Label6: TLabel;
    sPlano: TSQLDataSet;
    sPlanoCODIGO: TIntegerField;
    sPlanoCONTA: TStringField;
    sPlanoCONTAPAI: TStringField;
    sPlanoNOME: TStringField;
    sPlanoCONSOLIDA: TStringField;
    sPlanoDESCRICAO: TStringField;
    sPlanoRATEIO: TStringField;
    sPlanoCODREDUZIDO: TStringField;
    sPlanoREDUZRECEITA: TStringField;
    JvDBGrid1: TJvDBGrid;
    sCaixa: TSQLDataSet;
    sCaixaDTAPAGTO: TDateField;
    sCaixaORDEM: TSmallintField;
    sCaixaDESCRICAO: TStringField;
    sCaixaVALORC: TFloatField;
    sCaixaVALORD: TFloatField;
    sCaixaVALOR: TFloatField;
    sCaixaCONTACONTABIL: TStringField;
    sCaixaCAIXA: TStringField;
    sCaixaCODCONTA: TStringField;
    sCaixaFORMA: TStringField;
    sCaixaN_DOC: TStringField;
    sCaixaORDENA: TSmallintField;
    dCaixa: TDataSetProvider;
    cCaixa: TClientDataSet;
    cCaixaDTAPAGTO: TDateField;
    cCaixaORDEM: TSmallintField;
    cCaixaDESCRICAO: TStringField;
    cCaixaVALORC: TFloatField;
    cCaixaVALORD: TFloatField;
    cCaixaVALOR: TFloatField;
    cCaixaCONTACONTABIL: TStringField;
    cCaixaCAIXA: TStringField;
    cCaixaCODCONTA: TStringField;
    cCaixaFORMA: TStringField;
    cCaixaN_DOC: TStringField;
    cCaixaORDENA: TSmallintField;
    dsrcaixa: TDataSource;
    sPlano1: TSQLDataSet;
    sPlano1CODIGO: TIntegerField;
    sPlano1CONTA: TStringField;
    sPlano1CONTAPAI: TStringField;
    sPlano1NOME: TStringField;
    sPlano1CONSOLIDA: TStringField;
    sPlano1DESCRICAO: TStringField;
    sPlano1RATEIO: TStringField;
    sPlano1CODREDUZIDO: TStringField;
    sPlano1REDUZRECEITA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCaixa;
    procedure FecharCaixa;
    procedure saidaCaixa;
    procedure entradaCaixa;    
  public
    { Public declarations }
  end;

var
  fMovCaixa: TfMovCaixa;

implementation

uses UDm;

{$R *.dfm}

procedure TfMovCaixa.FormShow(Sender: TObject);
var
  codigoCaixa : string;
begin
  //------Pego do Parametro o cadigo para listar os Caixas ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTARCAIXA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    codigoCaixa := dm.cds_parametroDADOS.AsString;
    sPlano.close;
    sPlano.Params[0].AsString := codigoCaixa;
    sPlano.Open;
    sPlano.First;
    ComboBox1.Items.Clear;
    while not sPlano.Eof do
    begin
       ComboBox1.Items.Add(sPlanoNOME.AsString);
       sPlano.Next;
    end;
    sPlano.Close;
  end
  else
  begin
    MessageDlg('é preciso cadastrar Parametro LISTARCAIXA, com a conta pai para CAIXAS.', mtConfirmation, [mbok], 0);
    exit;
  end;
end;

procedure TfMovCaixa.btnAbrirClick(Sender: TObject);
begin
  if (dm.varStatusCaixa = 0) Then
    MessageDlg('Caixa Precisa ser Fechado', mtWarning, [mbOK], 0)
  else
    AbrirCaixa;
end;

procedure TfMovCaixa.AbrirCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
begin
     var_usuario := usulog;
    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    // Busco Codigo Caixa
    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',ComboBox1.Text);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA CAIXA
    sPlano1.Close;
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'ABERTURA DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0002'); //CONTA ABERTURA DE CAIXA
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'ABERTURA DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

  if (cCaixa.Active) then
    cCaixa.Close;
  // Peda o número do primeiro lancamento
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  cCaixa.Params[2].AsInteger := 33;
  cCaixa.Open;
  dm.varStatusCaixa := 1;


end;

procedure TfMovCaixa.entradaCaixa;
begin

end;

procedure TfMovCaixa.FecharCaixa;
begin

end;

procedure TfMovCaixa.saidaCaixa;
begin

end;

procedure TfMovCaixa.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
