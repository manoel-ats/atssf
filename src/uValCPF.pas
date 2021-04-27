unit uValCPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids, DBGrids,
  StdCtrls, Buttons, rpcompobase, rpvclreport, ExtCtrls;

type
  TfValCPF = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    dsCPF: TDataSource;
    cdsCPF: TClientDataSet;
    dspCPF: TDataSetProvider;
    sqlCPF: TSQLDataSet;
    sqlCPFOK: TStringField;
    sqlCPFGRUPO: TStringField;
    sqlCPFN_INSCRICAO: TStringField;
    sqlCPFNOMECLIENTE: TStringField;
    cdsCPFOK: TStringField;
    cdsCPFGRUPO: TStringField;
    cdsCPFN_INSCRICAO: TStringField;
    cdsCPFNOMECLIENTE: TStringField;
    VCLReport1: TVCLReport;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fValCPF: TfValCPF;

implementation

uses UDM;

{$R *.dfm}

procedure TfValCPF.BitBtn1Click(Sender: TObject);
begin
   VCLReport1.Title := str_relatorio + 'validar_cpf.rep';
   VCLReport1.FileName := str_relatorio + 'validar_cpf.rep';
   VCLReport1.Execute;
end;

procedure TfValCPF.BitBtn2Click(Sender: TObject);
begin
    if (cdsCPF.Active) then
      cdsCPF.Close;
    cdsCPF.Open;
end;

procedure TfValCPF.BitBtn4Click(Sender: TObject);
begin
   VCLReport1.Title := str_relatorio + 'validar_cpf_dep.rep';
   VCLReport1.FileName := str_relatorio + 'validar_cpf_dep.rep';
   VCLReport1.Execute;
end;

end.
