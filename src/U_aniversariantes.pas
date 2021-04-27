unit U_aniversariantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit,
  ExtCtrls, Menus, rpcompobase, rpvclreport ,comobj;

type
  TF_aniversariantes = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    JvDateEdit1: TJvDateEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    btn4: TBitBtn;
    p_aniversarios: TDataSetProvider;
    ds_aniversarios: TClientDataSet;
    s_aniversarios: TSQLDataSet;
    ds_aniversariosNOME: TStringField;
    ds_aniversariosDATA_NASC: TDateField;
    ds_aniversariosGRUPO: TStringField;
    ds_aniversariosINSCRICAO: TIntegerField;
    ds_aniversariosID_SOCIO: TIntegerField;
    ds_aniversariosIDADE: TIntegerField;
    d_aniversarios: TDataSource;
    pm1: TPopupMenu;
    ImpContas: TMenuItem;
    Recibo: TMenuItem;
    ds_aniversariosENDERECO: TStringField;
    ds_aniversariosBAIRRO: TStringField;
    ds_aniversariosMUNICIPIO: TStringField;
    ds_aniversariosCEP: TStringField;
    ds_aniversariosUF: TStringField;
    VCLReport1: TVCLReport;
    ImprimirCarta1: TMenuItem;
    edt1: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure ImpContasClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirCarta1Click(Sender: TObject);
    procedure ReciboClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_aniversariantes: TF_aniversariantes;

implementation

uses UDM;

{$R *.dfm}

procedure TF_aniversariantes.btn1Click(Sender: TObject);
var
   XY: TPoint;
begin
     XY := Point(100, 0);
     XY := btn1.ClientToScreen(XY);
     pm1.Popup(XY.X, XY.Y + btn1.Height - 2);
end;

procedure TF_aniversariantes.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TF_aniversariantes.ImpContasClick(Sender: TObject);
begin
    VCLReport1.Filename := str_relatorio + 'rel_aniversariantes.rep';
    VCLReport1.Title:= str_relatorio + 'rel_aniversariantes.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.SQLObitos;
    VCLReport1.Report.Params.ParamByName('DATA_CONSULTA').Value := JvDateEdit1.Date;
    VCLReport1.Execute;
end;

procedure TF_aniversariantes.btn3Click(Sender: TObject);
begin
  if (ds_aniversarios.Active) then
      ds_aniversarios.Close;
  ds_aniversarios.Params[0].AsDate := JvDateEdit1.Date;
  ds_aniversarios.Open;    
end;

procedure TF_aniversariantes.btn4Click(Sender: TObject);
begin
  if (ds_aniversarios.Active) then
      ds_aniversarios.Close;
end;

procedure TF_aniversariantes.FormShow(Sender: TObject);
begin
   JvDateEdit1.Date := Now;
end;

procedure TF_aniversariantes.ImprimirCarta1Click(Sender: TObject);
begin
    VCLReport1.Filename := str_relatorio + 'carta_aniversario.rep';
    VCLReport1.Title := str_relatorio + 'carta_aniversario.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.SQLObitos;
    VCLReport1.Report.Params.ParamByName('DATA_CONSULTA').Value := JvDateEdit1.Date;
    VCLReport1.Execute;
end;

procedure TF_aniversariantes.ReciboClick(Sender: TObject);
var
MSWord: Variant;
finallinha:boolean;
i :Integer;
begin
  {sera usada a uses COMOBJ}
  { Abre o Word }
  MSWord := CreateOleObject('Word.Application');
  {não visualizar Microsoft Word}
  MSWord.Visible:=false;

  { Abre documento em anexo junto ao  exe}
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ '6080.doc' ); //'a5.doc');//'Doc1.doc') ;//'Etiqueta_Pimaco_6181.doc');
  finallinha:=false;{Essa variavel foi criada para controlar o avanço de para cada celula da coluna }
  ds_aniversarios.First;

  if finallinha=false then
  begin
    for i := 0 to (StrToInt(edt1.Text)-1) do
    begin
      MSWord.Selection.MoveRight(12);
    end;
    finallinha:=true;
  end;

  while not ds_aniversarios.Eof do
  begin

   // else
   // /begin
   //   { vai para a proxima celula }
   //   MSWord.Selection.MoveRight(12);
   //   finallinha:=false;
   // end;

    { Escreve na  célula }
    MSWord.Selection.TypeText(Text := trim(ds_aniversariosNOME.AsString)
                                      +#13+trim (ds_aniversariosENDERECO.AsString)
                                      +#13+trim (ds_aniversariosMUNICIPIO.AsString +'-' + ds_aniversariosUF.AsString )
                                      +#13+trim (ds_aniversariosCEP.AsString)
                                       );
    if finallinha=false then
      begin
        { Pula 1 celula}
        MSWord.Selection.MoveRight(12);
        finallinha:=true;
      end
    else
    begin
      { vai para a proxima celula }
      MSWord.Selection.MoveRight(12);
      finallinha:=false;
    end;
    ds_aniversarios.Next;
  end;
  {visualizar Microsoft word }
  MSWord.Visible:=true;

end;


end.
