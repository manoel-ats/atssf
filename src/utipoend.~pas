unit utipoend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, DBClient,
  Provider, SqlExpr;

type
  Tftipoend = class(TForm)
    sqlCK: TSQLDataSet;
    sqlCKID_SOCIO: TIntegerField;
    dspCK: TDataSetProvider;
    cdsCk: TClientDataSet;
    sqlCKNOME_SOCIO: TStringField;
    sqlCKN_INSCRICAO: TIntegerField;
    sqlCKGRUPO: TStringField;
    sqlCKTIPOEND: TSmallintField;
    sqlCKENDERECO: TStringField;
    cdsCkID_SOCIO: TIntegerField;
    cdsCkNOME_SOCIO: TStringField;
    cdsCkN_INSCRICAO: TIntegerField;
    cdsCkGRUPO: TStringField;
    cdsCkTIPOEND: TSmallintField;
    cdsCkENDERECO: TStringField;
    dsCK: TDataSource;
    DBGrid1: TDBGrid;
    sqlCKTIPO: TStringField;
    cdsCkTIPO: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftipoend: Tftipoend;

implementation

{$R *.dfm}

procedure Tftipoend.FormShow(Sender: TObject);
begin
   if(cdsCk.Active)then
     cdsCk.Close;
   cdsCk.Open;
end;

end.
