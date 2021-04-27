unit UJuntaPDF.SalvaArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants,Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls,ComCtrls,
  UJuntaPDF,Rel_obitos;

type
  TJuntaPDFSalvaArquivo = class(TObject)
  private
    FOwner: TJuntaPDF;
    FSaveDialog: TSaveDialog;
  public



    constructor Create(AJuntaPDF: TJuntaPDF);
    destructor Destroy; override;

    procedure Executa;
    function ExtensoMes(n: Integer): String;
  end;


implementation


{ TJuntaPDFSalvaArquivo }

constructor TJuntaPDFSalvaArquivo.Create(AJuntaPDF: TJuntaPDF);
begin
  Self.FOwner := AJuntaPDF;
  Self.FSaveDialog := TSaveDialog.Create(nil);
end;

destructor TJuntaPDFSalvaArquivo.Destroy;
begin
  FreeAndNil(FSaveDialog);
  Self.FOwner := nil;
  inherited;
end;


procedure TJuntaPDFSalvaArquivo.Executa;
var ondepdf ,datas , mia, mesextenso : string;
   dia,mes,ano,dia1,mes1,ano1: word;
   nAno,nMes,nDia:word;
    cMes:array[1..12] of string;
begin

  ondepdf := ExtractFilePath(Application.ExeName) + 'arquivos_pdf\';
  if not DirectoryExists(ondepdf)then
    CreateDir(ondepdf);

   decodedate(StrToDate(fRel_obitos.Data1.Text), ano, mes, dia);
   decodedate(StrToDate(fRel_obitos.Data2.Text ), ano1, mes1, dia1);

  cMes[01] := 'Janeiro';
  cMes[02] := 'Fevereiro';
  cMes[03] := 'Março';
  cMes[04] := 'Abril';
  cMes[05] := 'Maio';
  cMes[06] := 'Junho';
  cMes[07] := 'Julho';
  cMes[08] := 'Agosto';
  cMes[09] := 'Setembro';
  cMes[10] := 'Outubro';
  cMes[11] := 'Novembro';
  cMes[12] := 'Dezembro';
  decodedate(StrToDate(fRel_obitos.Data1.Text),nAno,nMes,nDia);
  if (nMes>=1) and (nMes<=12)then
  begin
    mesextenso:=cMes[nMes];
  end
  else
  begin
   mesextenso:='';
  end;




  // datas := IntToStr(dia);
  // datas := datas + IntToStr(mes);
 //  datas := datas + IntToStr(ano);
   datas := mesextenso ;
 //  datas := datas + IntToStr(dia1);
 //  datas := datas + IntToStr(mes1);
   datas := datas + IntToStr(ano1);


   mia := ondepdf + datas + '.pdf';// //+ fRel_obitos.Data1.Text +'_'+ fRel_obitos.Data2.Text +'.pdf';
 // if (Self.FSaveDialog.Execute()) then
//  begin
    FOwner.NomeArquivo := mia ;//'C:\home\atsscf\arquivos_pdf\' + fRel_obitos.Data1.Text +'_'+ fRel_obitos.Data2.Text +'.pdf'; //  Self.FSaveDialog.FileName;
 //  FOwner.NomeArquivo := Self.FSaveDialog.FileName;
//  end;
end;

function TJuntaPDFSalvaArquivo.ExtensoMes(n: Integer): String;

begin

end;

end.
