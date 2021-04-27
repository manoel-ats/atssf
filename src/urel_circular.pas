unit uRel_Circular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  rpcompobase, rpvclreport, dxCore, dxButton, ExtCtrls,
  StdCtrls, SqlExpr, Provider, DB, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids;

type
  TfRel_Circular = class(TForm)
    Edit7: TEdit;
    Label14: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    dxButton1: TdxButton;
    dxButton3: TdxButton;
    VCLReport1: TVCLReport;
    Edit1: TEdit;
    Label1: TLabel;
    RB1: TRadioButton;
    RB2: TRadioButton;
    VCLReport2: TVCLReport;
    DBGrid1: TDBGrid;
    sqll: TSQLClientDataSet;
    sqllID_LOTE: TIntegerField;
    sqllLOTE: TIntegerField;
    sqllGRUPO: TStringField;
    sqllGEROU: TStringField;
    sqllN_FALEC: TIntegerField;
    dsl: TDataSource;
    Label2: TLabel;
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_Circular: TfRel_Circular;

implementation

uses UDM;

{$R *.dfm}

procedure TfRel_Circular.dxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfRel_Circular.dxButton1Click(Sender: TObject);
begin

 if RB1.Checked then
 begin
   VCLReport1.FileName := str_relatorio + 'circular.rep';
   if Edit7.Text <> '' then
      VCLReport1.Report.Params.ParamByName('PLOTE').Value :=
         StrToInt(Edit7.Text)
   else
   begin
    MessageDlg('Preencha o campo Lote .', mtWarning, [mbOK], 0);
    exit;
   end;
   if Edit1.Text <> '' then
      VCLReport1.Report.Params.ParamByName('PGRUPO').Value :=
         Edit1.Text
   else
   begin
      MessageDlg('Preencha o campo Grupo.', mtWarning, [mbOK], 0);
      exit
   end;
    VCLReport1.Execute;
 end;

 if RB2.Checked then
 begin
   VCLReport2.FileName := str_relatorio + 'circular_nova.rep';
   if Edit7.Text <> '' then
      VCLReport2.Report.Params.ParamByName('PLOTE').Value :=
         StrToInt(Edit7.Text)
   else
   begin
    MessageDlg('Preencha o campo Lote .', mtWarning, [mbOK], 0);
    exit;
   end;
   if Edit1.Text <> '' then
      VCLReport2.Report.Params.ParamByName('PGRUPO').Value :=
         Edit1.Text
   else
   begin
      MessageDlg('Preencha o campo Grupo.', mtWarning, [mbOK], 0);
      exit
   end;
    VCLReport2.Execute;
 end;


end;

procedure TfRel_Circular.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfRel_Circular.FormShow(Sender: TObject);
begin
  if sqll.Active then
     sqll.Close;
  sqll.Params[0].AsString := 'não';
  sqll.Open;
end;

end.
