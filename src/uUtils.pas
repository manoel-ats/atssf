unit uUtils;

interface

uses Windows, Forms, Dialogs, Messages, SysUtils, Classes,
    DBXpress, DB, SqlExpr, DBClient, Provider, StdCtrls;

Type
  TUtils = class(TObject)
  private
    FPeriodoIni: String;
    FPeriodoFim: String;
  public
    bPausa: Boolean;
    function pegaIni: String;
    function pegaFim: String;
    function pegaMes: String;
    procedure criaIni(const Value: String);
    procedure criaFim(const Value: String);
    procedure criaMes(const Value: String);
    {Retorna a Data de ínicio do mês Informado (Janeiro, Fevereiro...)}
    property PeriodoIni: string read pegaIni write criaIni;
    {Retorna a Data de Fim do mês Informado (Janeiro, Fevereiro...)}
    property PeriodoFim: string read pegaFim write criaFim;


  end;


implementation


{ TUtils }

procedure TUtils.criaFim(const Value: String);
  var
   ano, mes, dia: word;
   data2 : TdateTime;
begin
  inherited;
    FPeriodoFim := value;
    Data2 := now;
    decodedate(Data2, ano, mes, dia);

    if (FPeriodoFim = 'Janeiro') then
      mes:=1;
    if FPeriodoFim = 'Fevereiro' then
      mes:=2;
    if FPeriodoFim = 'Março' then
      mes:=3;
    if FPeriodoFim = 'Abril' then
      mes:=4;
    if FPeriodoFim = 'Maio' then
      mes:=5;
    if FPeriodoFim = 'Junho' then
      mes:=6;
    if FPeriodoFim = 'Julho' then
      mes:=7;
    if FPeriodoFim = 'Agosto' then
      mes:=8;
    if FPeriodoFim = 'Setembro' then
      mes:=9;
    if FPeriodoFim = 'Outubro' then
      mes:=10;
    if FPeriodoFim = 'Novembro' then
      mes:=11;
    if FPeriodoFim = 'Dezembro' then
      mes:=12;

    dia:=31;
    if mes = 2 then
    if dia > 28 then
      dia:=28;

    if mes = 4 then
    if dia > 30 then
      dia:=30;

    if mes = 6 then
    if dia > 30 then
      dia:=30;

    if mes = 9 then
    if dia > 30 then
      dia:=30;

    if mes = 11 then
    if dia > 30 then
      dia:=30;

   Data2 := encodedate(ano, mes, dia);
   FPeriodoFim := DateTimeToStr(data2);
end;

procedure TUtils.criaIni(const Value: String);
  var
   ano, mes, dia: word;
   Data1 : TdateTime;
begin
  FPeriodoIni := Value;
  Data1 := now;
  decodedate(Data1, ano, mes, dia);
  dia:=1;
  if (FPeriodoIni = 'Janeiro') then
    mes:=1;
  if FPeriodoIni = 'Fevereiro' then
    mes:=2;
  if FPeriodoIni = 'Março' then
    mes:=3;
  if FPeriodoIni = 'Abril' then
    mes:=4;
  if FPeriodoIni = 'Maio' then
    mes:=5;
  if FPeriodoIni = 'Junho' then
    mes:=6;
  if FPeriodoIni = 'Julho' then
    mes:=7;
  if FPeriodoIni = 'Agosto' then
    mes:=8;
  if FPeriodoIni = 'Setembro' then
    mes:=9;
  if FPeriodoIni = 'Outubro' then
    mes:=10;
  if FPeriodoIni = 'Novembro' then
    mes:=11;
  if FPeriodoIni = 'Dezembro' then
    mes:=12;

  Data1 := encodedate(ano, mes, dia);
  FPeriodoIni := DateTimeToStr(data1);
end;

function TUtils.pegaFim: String;
begin
  Result := FPeriodoFim;
end;

function TUtils.pegaIni: String;
begin
  Result := FPeriodoIni;
end;



procedure TUtils.criaMes(const Value: String);
  var
   mes : String;
begin
  FPeriodoIni := Value;
  if (FPeriodoIni = 'Janeiro') then
    mes := '1';
  if FPeriodoIni = 'Fevereiro' then
    mes := '2';
  if FPeriodoIni = 'Março' then
    mes := '3';
  if FPeriodoIni = 'Abril' then
    mes := '4';
  if FPeriodoIni = 'Maio' then
    mes := '5';
  if FPeriodoIni = 'Junho' then
    mes := '6';
  if FPeriodoIni = 'Julho' then
    mes := '7';
  if FPeriodoIni = 'Agosto' then
    mes := '8';
  if FPeriodoIni = 'Setembro' then
    mes := '9';
  if FPeriodoIni = 'Outubro' then
    mes := '10';
  if FPeriodoIni = 'Novembro' then
    mes := '11';
  if FPeriodoIni = 'Dezembro' then
    mes := '12';
  FPeriodoIni := mes;
end;

function TUtils.pegaMes: String;
begin
  Result := FPeriodoIni;
end;

end.
