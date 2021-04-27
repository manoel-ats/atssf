unit uAcordos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, rpcompobase,
  rpvclreport;

type
  Tfacordos = class(TForm)
    dataini: TJvDateEdit;
    datafin: TJvDateEdit;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  facordos: Tfacordos;

implementation

uses UDM;


{$R *.dfm}

procedure Tfacordos.BitBtn1Click(Sender: TObject);

begin
   VCLReport1.FileName := str_relatorio + 'RESULTADO_ACORDO.rep';
   VCLReport1.Report.Params.ParamByName('DATAINI').Value := dataini.Text;
   VCLReport1.Report.Params.ParamByName('DATAFIN').Value := datafin.Text;
   VCLReport1.Execute;
 end;


end.
