unit uAtualizaSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, DB, SqlExpr, DBClient, Provider, DBXpress,
  FileCtrl;

type
  TfAtualizaSistema = class(TForm)
    BitBtn1: TBitBtn;
    sds: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds: TClientDataSet;
    Label1: TLabel;
    Label2: TLabel;
    lblAtualizacoes: TLabel;
    flbPatches: TFileListBox;
    flbLogs: TFileListBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    tabela,  tipo, Versao: string;
    campo : variant;
    TD: TTransactionDesc;
    { Public declarations }
    function VersaoAtual: String;
  end;

var
  fAtualizaSistema: TfAtualizaSistema;

implementation

uses udm, uSplash, uLib;

{$R *.dfm}

procedure TfAtualizaSistema.FormCreate(Sender: TObject);
var versaoSistema, sp, script: string;
  I : Integer;
  Patchs : TPatches;
begin
  // apaga arquivos de log do sistema
{  flbLogs.Directory := ExtractFilePath(Application.ExeName);
  flbLogs.Mask := '*.log';
  for I := 0 to flbLogs.Items.Count-1 do
    DeleteFile(ExtractFilePath(Application.ExeName) + flbLogs.Items[I]);

  versaoSistema := VersaoAtual;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
 } // Verificando o sistema
{  if (versaoSistema = '1.0.0.0') then
  begin
    try
 }     { --------------------------}
      { Atualiza TABELAS E CAMPOS }
      // para esta versao os arquivos serão todos 1000xxxxxx.sql
 {     flbPatches.Directory := ExtractFilePath(Application.ExeName) + 'scripts';
      flbPatches.Mask := '1000*.sql';

      flbLogs.Directory := ExtractFilePath(Application.ExeName) + 'scripts';
      flbLogs.Mask := '*1000.log';
      flbLogs.Update;
      if flbPatches.Count = 0 then
        MessageDlg('Não existem patches para serem aplicados.', mtInformation, [mbOk], 0);
      Patchs := TPatches.Create;
      for I := 0 to flbPatches.Count - 1 do
      begin
        Patchs.Patch := ExtractFilePath(Application.ExeName)  + 'scripts\' + flbPatches.Items[I];
        lblAtualizacoes.Caption := 'Aplicando patch ' + flbPatches.Items[I];
        Patchs.Execute;
      end;
      lblAtualizacoes.Caption := '';
      MessageDlg('Script de atualização executado.', mtInformation, [mbOk], 0);
      flbLogs.Directory := ExtractFilePath(Application.ExeName)  + '\scripts';
      flbLogs.Mask := '1000*.log';
      flbLogs.Update;
 }     { --------------------------}
 {     exit; // só pra teste

      fSplash.Label5.Caption := 'Aguarde. Atualizando o Sistema...';
      dm.SQLObitos.StartTransaction(TD);
      dm.SQLObitos.ExecuteDirect('UPDATE TABINSTITUICAO SET VERSAO = ' + QuotedStr(versao));
      dm.SQLObitos.Commit(TD);
      versaoSistema := '1.0.3.2';
    except
      dmDados.scCap.Rollback(TD);
    end;
  end;
  }
{  if (versaoSistema <> versao) then
  begin
     if (versaoSistema = '1.03') then
     begin
       versaoSistema := '1.0.3.0';
     end;
     if (versaoSistema = '1.0.3.0') then
     begin
        fSplash1.Label3.Caption := 'Aguarde. Atualizando o Sistema';
        if (cds.Active) then
          cds.Close;
 }       { Tabela : TABVTR_EFETIVO  }
 {       tabela := 'TABVTR_EFETIVO ';
        campo := 'COD_SETOR';
        tipo  := 'INTEGER';
        cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
          ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
        cds.Open;
     if (versaoSistema = '1.0.3.6') then
     begin
       fSplash1.Label3.Caption := 'Aguarde. Atualizando o Sistema';
  }      { Executando Scripts }
  {      sp := 'C:\home\cap\scripts\08_2007naoDados.sql';
        if (not FileExists(sp)) then
        begin
           MessageDlg('Script não encontrado , informe o responsável pelo programa ! (' + SP + ')', mtWarning, [mbOK], 0);
           exit;
        end;
        memo1.Lines.LoadFromFile(sp);
        script := PChar(memo1.Lines.GetText);
        dmdados.scCap.StartTransaction(TD);
        try
          if (dmdados.scCap.ExecuteDirect(script) = 0) then
          begin
            dmdados.scCap.Commit(TD);
          end;
        except
          dmdados.scCap.Rollback(TD);
           MessageDlg('Erro no Script, informe o responsável pelo programa !', mtWarning, [mbOK], 0);
           exit;
        end;

        sp := 'C:\home\cap\scripts\08_2007sp_rel_geral.sql';
        if (not FileExists(sp)) then
        begin
           MessageDlg('Script não encontrado , informe o responsável pelo programa ! (' + SP + ')', mtWarning, [mbOK], 0);
           exit;
        end;
        memo1.Lines.LoadFromFile(sp);
        script := PChar(memo1.Lines.GetText);
        dmdados.scCap.StartTransaction(TD);
        try
          if (dmdados.scCap.ExecuteDirect(script) = 0) then
          begin
            dmdados.scCap.Commit(TD);
          end;
        except
          dmdados.scCap.Rollback(TD);
           MessageDlg('Erro no Script, informe o responsável pelo programa !', mtWarning, [mbOK], 0);
           exit;
        end;

       try
         dmDados.scCap.StartTransaction(TD);
         dmDados.scCap.ExecuteDirect('UPDATE TABINSTITUICAO SET VERSAO = ' + QuotedStr('1.0.3.7'));
         dmDados.scCap.Commit(TD);
         versaoSistema := '1.0.3.7';
       except
         dmDados.scCap.Rollback(TD);
       end;
     end;
   }


  //end;
end;

function TfAtualizaSistema.VersaoAtual: String;
begin

{  try

    if (cds.Active) then
      cds.Close;
 }   { Tabela : TABINSTITUICAO  }
{    tabela := 'TABINSTITUICAO ';
    campo := 'VERSAO';
    tipo  := 'VARCHAR(10)';
    cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
      ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
    cds.Open;
    if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
    begin
      try
        tabela := 'TABINSTITUICAO ';
        campo := 'VERSAO';
        tipo  := 'VARCHAR(10)';
        dmDados.scCap.StartTransaction(TD);
        dmDados.scCap.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
        dmDados.scCap.Commit(TD);
        dmDados.scCap.StartTransaction(TD);
        dmDados.scCap.ExecuteDirect('UPDATE TABINSTITUICAO SET VERSAO = ' + QuotedStr('1.0.3.0'));
        dmDados.scCap.Commit(TD);
      except
        dmDados.scCap.Rollback(TD);
      end;

    end;
 }
    { Atualizando o Sistema }
 {
    if (cds.Active) then
      cds.Close;
    cds.CommandText := 'SELECT VERSAO FROM TABINSTITUICAO';
    cds.Open;
    result := cds.Fields[0].AsString;
  except
    result := '0';
  end;
  }
end;

end.
