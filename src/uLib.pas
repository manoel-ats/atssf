unit uLib;

interface

uses
  Db, DbTables, MidasLib, Windows, Forms, Dialogs,
  Messages, SysUtils, SqlExpr, Classes, DBXpress, Provider, DBClient;

type
  TPatches = class(TObject)
  private
    { Private declarations }
    FPatch: string;
    FConexao: TSqlConnection;
    Fsds: TSQLDataSet;
    Fdsp: TDataSetProvider;
    Fcds: TClientDataSet;
    function ConectarAoBanco: Boolean;
    procedure Desconectar;
    procedure removerSql(script : string);
    function GetPatch: string;
    procedure SetPatch(const Value: string);
  public
    { Public declarations }
    function Execute: Boolean;
    property Patch: string read GetPatch write SetPatch;
  end;

implementation

{ TPatches }

function TPatches.Execute: Boolean;
var
  ArqAux            : TextFile;
  Log               : TextFile;
  LogTxt            : string;
  I                 : Integer;
  Lin               : string;
  FraseSQL          : string;
  Conjunto          : TStringList;
  Transacao         : TTransactionDesc;
begin
  Result := False;
  if not ConectarAoBanco then
    Exit;
  if not FileExists(FPatch) then
  begin
    MessageBox(0, PChar('O arquivo de patch não existe ou o seu caminho está incorreto.' + #13#13 +
      FPatch), 'Erro', MB_ICONERROR);
    Exit;
  end;
  Conjunto := TStringList.Create;
  // Coloquei isso aqui pra remover os sql que já foram inseridos no banco
  removerSql(FPatch);
  FraseSQL := '';
  AssignFile(ArqAux, FPatch);
  Reset(ArqAux);
  while not EOF(ArqAux) do
  begin
    ReadLn(ArqAux, Lin);
    FraseSQL := FraseSQL + Lin;
    if Pos(';', FraseSQL) > 0 then
    begin
      Conjunto.Add(FraseSQL);
      FraseSQL := '';
    end
    else
      FraseSQL := FraseSQL + ' ';
  end;
  CloseFile(ArqAux);

  {Cria ou abre o arquivo de Log}
  LogTxt := ExtractFilePath(Application.ExeName) + Copy(ExtractFileName(FPatch), 1,
    Length(ExtractFileName(FPatch))-6) + '.log';
  AssignFile(Log, LogTxt);
  FileMode := $0002;
  ReWrite(Log);

  for I := 0 to Conjunto.Count - 1 do
  begin
    try
      Transacao.TransactionID := 1;
      Transacao.IsolationLevel := xilREADCOMMITTED;
      FConexao.StartTransaction(Transacao);
      FConexao.ExecuteDirect(Conjunto[I]);
      FConexao.Commit(Transacao);
      WriteLn(Log, Copy(ExtractFileName(FPatch), 1, Length(ExtractFileName(FPatch)) - 6) + ': ' +
        ' Sucesso: ' + Trim(Conjunto[I]));
      Result := True;
    except on E: Exception do
      begin
        FConexao.Rollback(Transacao);
        WriteLn(Log, Copy(ExtractFileName(FPatch), 1, Length(ExtractFileName(FPatch)) - 6) + ': ' +
          ' Erro:    ' + Trim(Conjunto[I]));
        WriteLn(Log, '> > >  ' + E.Message);
        Continue;
      end;
    end;
  end;
  Desconectar;
  CloseFile(Log);
end;

function TPatches.ConectarAoBanco: Boolean;
begin
  try
    if not Assigned(FConexao) then
    begin
      FConexao := TSqlConnection.Create(Application);
      with FConexao do
      begin
        Connected := False;
        ConnectionName := 'semp';
        DriverName := 'UIB FireBird15';
        GetDriverFunc := 'getSQLDriverINTERBASE';
        LoadParamsFromIniFile('dbxconnections.ini');
        LibraryName := 'dbexpUIBfire15.dll';
        VendorLib := 'FBCLIENT.DLL';
        { *** Original da Revista ***
        ConnectionName := 'INTERBASE';
        DriverName := 'Interbase';
        GetDriverFunc := 'getSQLDriverINTERBASE';
        LibraryName := 'dbexpint.dll';
        LoginPrompt := False;
        Params.Clear;
        Params.Add('DriverName=Interbase');
        Params.Add('Database=127.0.0.1/3050:C:\Developer Delphi\Databases\Patches.fdb');
        Params.Add('RoleName=RoleName');
        Params.Add('User_Name=SYSDBA');
        Params.Add('Password=masterkey');
        Params.Add('ServerCharSet=');
        Params.Add('SQLDialect=1');
        Params.Add('BlobSize=-1');
        Params.Add('CommitRetain=False');
        Params.Add('WaitOnLocks=True');
        Params.Add('ErrorResourceFile=');
        Params.Add('LocaleCode=0000');
        Params.Add('Interbase TransIsolation=ReadCommited');
        Params.Add('Trim Char=False');
        VendorLib := 'gds32.dll';
        }
      end;
    end;
    FConexao.Connected := True;
    Result := True;
  except on E: Exception do
    begin
      MessageDlg('Ocorreu um erro ao conectar-se ao banco.' + #13 +
        E.Message, mtError, [mbOk], 0);
      Result := False;
    end;
  end;
end;

procedure TPatches.Desconectar;
begin
  if Assigned(FConexao) and FConexao.Connected then
  begin
    FConexao.Connected := False;
    FConexao.Free;
    FConexao := nil;
  end;
end;

function TPatches.GetPatch: string;
begin
  Result := FPatch;
end;

procedure TPatches.SetPatch(const Value: string);
begin
  FPatch := Value;
  if not FileExists(FPatch) then
  begin
    MessageBox(0, PChar('O arquivo de patch não existe ou o seu caminho está incorreto.' + #13#13 +
      FPatch), 'Erro', MB_ICONERROR);
    Abort;
  end;
end;

procedure TPatches.removerSql(script :string);
begin
  try
    if not Assigned(Fsds) then
    begin
      Fsds := TSQLDataSet.Create(Application);
      Fdsp := TDataSetProvider.Create(Application);
      Fcds := TClientDataSet.Create(Application);
      Fsds.SQLConnection := FConexao;
      Fsds.CommandText := 'SELECT script, dataExecutado FROM atualizaBd';
      Fsds.Open;
      Fdsp.DataSet := Fsds;
      Fcds.ProviderName := 'Fdsp';
      Fcds.Open;
      with Fsds do
      begin
        if(Fcds.Locate('script',script, [loCaseInsensitive])) then
          DeleteFile(ExtractFilePath(Application.ExeName) + script)
        else begin
          FConexao.ExecuteDirect('Insert into atualizaBd values(' +
            QuotedStr(script) + ',' + QuotedStr(FormatDateTime('mm/dd/yyyy',now)) + ')' );
        end;
      end;
    end;
  except on E: Exception do
    begin
      MessageDlg('Ocorreu um erro ao abrir a tabela atualizaBd.' + #13 +
        E.Message, mtError, [mbOk], 0);
    end;
  end;

end;

end.

