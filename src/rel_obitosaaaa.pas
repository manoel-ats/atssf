unit Rel_obitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, rpcompobase, rpvclreport, dxCore, dxButton, ExtCtrls,
  Mask, ToolEdit, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TfRel_obitos = class(TForm)
    Label7: TLabel;
    Label8: TLabel;
    Data1: TDateEdit;
    Data2: TDateEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    dxButton2: TdxButton;
    VCLReport1: TVCLReport;
    Label25: TLabel;
    ComboBox1: TComboBox;
    dxButton3: TdxButton;
    cdsPDF: TClientDataSet;
    dspPDF: TDataSetProvider;
    sqlPDF: TSQLDataSet;
    cdsPDFID: TIntegerField;
    cdsPDFSERIE: TStringField;
    VCLReport2: TVCLReport;
    cdsPDFFALECIDO: TStringField;
    cdsPDFDATA_FAL: TDateField;
    dxButton4: TdxButton;
    OpenDialog1: TOpenDialog;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_obitos: TfRel_obitos;

implementation

uses UDM,UJuntaPDF;

{$R *.dfm}

procedure TfRel_obitos.dxButton1Click(Sender: TObject);
begin
  if ComboBox1.Text = '' then
  begin
    MessageDlg('Pôr favor preencha o campo "Tipo Óbito"', mtWarning, [mbOK], 0);
    exit
  end;
  if Data1.Text = '  /  /    ' then
  begin
    MessageDlg('Pôr favor preencha o campo "Data Inicio"', mtWarning, [mbOK], 0);
    exit
  end;
  if Data2.Text = '  /  /    ' then
  begin
    MessageDlg('Pôr favor preencha o campo "Data Fim"', mtWarning, [mbOK], 0);
    exit
  end;

    VCLReport1.FileName := str_relatorio + 'rel_obitos.rep';

    VCLReport1.Report.Params.ParamByName('DATA1').Value :=
      StrToDate(Data1.Text);
    VCLReport1.Report.Params.ParamByName('DATA2').Value :=
      StrToDate(Data2.Text);
    if ComboBox1.Text = 'Oficial' then
      VCLReport1.Report.Params.ParamByName('PDOC').Value := 'A';
    if ComboBox1.Text = 'ñ Oficial' then
      VCLReport1.Report.Params.ParamByName('PDOC').Value := 'B';
    if ComboBox1.Text = 'Oficial C' then
      VCLReport1.Report.Params.ParamByName('PDOC').Value := 'C';
    if ComboBox1.Text = 'Todos' then
      VCLReport1.Report.Params.ParamByName('PDOC').Value := 't';

    VCLReport1.Title := VCLReport1.FileName;
     VCLReport1.Execute;
end;

procedure TfRel_obitos.dxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfRel_obitos.dxButton3Click(Sender: TObject);
begin
  cdsPDF.Close;
  cdsPDF.Params[0].AsDate := StrToDate(Data1.Text);
  cdsPDF.Params[1].AsDate := StrToDate(Data2.Text);
  cdsPDF.Open;

  while not cdsPDF.Eof do
  begin
    if (not cdsPDF.IsEmpty) then
    begin
      if (cdsPDFSERIE.AsString = 'A') then
      begin
        VCLReport2.FileName := str_relatorio + 'dec_obitoPDF.rep';
        VCLReport2.Report.Params.ParamByName('PID').Value :=  cdsPDFID.AsInteger;
        VCLReport2.Title := VCLReport2.FileName;
        //VCLReport2.SaveToPDF((ExtractFileDir(Application.ExeName)+'\arquivos_pdf\')+ cdsPDFID.AsString+ '_'+ cdsPDFSERIE.AsString+ '_'+ cdsPDFFALECIDO.AsString +'.pdf');
        VCLReport2.SaveToPDF((ExtractFileDir(Application.ExeName)+'\arquivos_pdf\')+ cdsPDFID.AsString +'.pdf');

      end;
      if (cdsPDFSERIE.AsString = 'B') then
      begin
        VCLReport2.FileName := str_relatorio + 'nao_oficialPDF.rep';
        VCLReport2.Report.Params.ParamByName('PID').Value := cdsPDFID.AsInteger;
        VCLReport2.Title := VCLReport2.FileName;
       // VCLReport2.SaveToPDF((ExtractFileDir(Application.ExeName)+'\arquivos_pdf\')+ cdsPDFID.AsString+ '_'+ cdsPDFSERIE.AsString+'_'+ cdsPDFFALECIDO.AsString +'.pdf');
        VCLReport2.SaveToPDF((ExtractFileDir(Application.ExeName)+'\arquivos_pdf\')+ cdsPDFID.AsString +'.pdf');
      end;
      if (cdsPDFSERIE.AsString = 'C') then
      begin
        VCLReport2.FileName := str_relatorio + 'oficialCOSMOPDF.rep';
        VCLReport2.Report.Params.ParamByName('PID').Value := cdsPDFID.AsInteger;
        VCLReport2.Title := VCLReport2.FileName;
       // VCLReport2.SaveToPDF((ExtractFileDir(Application.ExeName)+'\arquivos_pdf\')+ cdsPDFID.AsString+ '_'+ cdsPDFSERIE.AsString+'_'+ cdsPDFFALECIDO.AsString +'.pdf');
        VCLReport2.SaveToPDF((ExtractFileDir(Application.ExeName)+'\arquivos_pdf\')+ cdsPDFID.AsString +'.pdf');
      end;

    end;
    cdsPDF.Next;
  end;

  MessageDlg('Arquivos Gerados Com Sucesso.', mtInformation, [mbOK], 0);

end;

procedure TfRel_obitos.FormCreate(Sender: TObject);
var caminho : string;
begin
  caminho := ExtractFilePath(Application.ExeName) + '\arquivos_pdf\';
  if not DirectoryExists(caminho)then
    CreateDir(caminho);
end;

procedure TfRel_obitos.dxButton4Click(Sender: TObject);
var
  LJuntaPDf: TJuntaPDF;
begin
  dxButton4.Enabled := False;
  LJuntaPDf := TJuntaPDF.Create;
  try
    LJuntaPDf.SelecionaArquivos();
    LJuntaPDf.SalvaArquivo;
    LJuntaPDf.Executa;
  finally
    FreeAndNil(LJuntaPDf);
    dxButton4.Enabled := true;
    MessageDlg('Arquivo PDF, Gerado com Suesso.', mtInformation, [mbOK], 0);
  end;
end;

end.
