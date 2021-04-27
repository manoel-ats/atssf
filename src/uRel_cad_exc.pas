unit uRel_cad_exc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr, Provider, DB, DBClient, DBLocal, DBLocalS, XPMenu,
  rpcompobase, rpvclreport, dxCore, dxButton, ExtCtrls, StdCtrls, Mask,
  ToolEdit, Buttons, FMTBcd ,comobj;

type
  TfRel_cad_exc = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Data1: TDateEdit;
    Data2: TDateEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    btnIncluidos: TdxButton;
    dxButton2: TdxButton;
    VCLReport1: TVCLReport;
    XPMenu1: TXPMenu;
    proc_dep: TSQLClientDataSet;
    proc_depID_DEP: TIntegerField;
    proc_depID_SOCIO: TIntegerField;
    proc_depNOME_DEP: TStringField;
    proc_depFALECIDO: TStringField;
    proc_depCODPAR: TFloatField;
    proc_depDTNASC: TDateField;
    proc_depDTFALEC: TDateField;
    proc_depID_PAR: TIntegerField;
    proc_depDESCRICAO: TStringField;
    proc_depGRUPO: TStringField;
    proc_depN_INSCRICAO: TIntegerField;
    proc_depSOBRENOME: TStringField;
    proc_depCARENCIA: TIntegerField;
    proc_depDTACADASTRO: TDateField;
    proc_mens: TSQLClientDataSet;
    proc_mensID_DEP: TIntegerField;
    proc_mensID_SOCIO: TIntegerField;
    proc_mensNOME_DEP: TStringField;
    proc_mensFALECIDO: TStringField;
    proc_mensCODPAR: TFloatField;
    proc_mensDTNASC: TDateField;
    proc_mensDTFALEC: TDateField;
    proc_mensID_PAR: TIntegerField;
    proc_mensCARENCIA: TIntegerField;
    proc_mensDTACADASTRO: TDateField;
    proc_mensDESCRICAO: TStringField;
    proc_mensGRUPO: TStringField;
    proc_mensN_INSCRICAO: TIntegerField;
    proc_mensSOBRENOME: TStringField;
    proc_mensTIPO_SOCIO: TStringField;
    btnexcluidos: TdxButton;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    sql: TSQLDataSet;
    sqlNOME_SOCIO: TStringField;
    sqlID_ENDERECO: TIntegerField;
    sqlID_SOCIO: TIntegerField;
    sqlENDERECO: TStringField;
    sqlCOMPLEMENTO: TStringField;
    sqlID_BAIRRO: TIntegerField;
    sqlID_MUNICIPIO: TIntegerField;
    sqlESTADO: TStringField;
    sqlCEP: TStringField;
    sqlDDD: TStringField;
    sqlFONE: TStringField;
    sqlFONE1: TStringField;
    sqlFAX: TStringField;
    sqlCXP: TStringField;
    sqlTIPOEND: TSmallintField;
    sqlBAIRRO: TStringField;
    sqlMUNICIPIO: TStringField;
    Label4: TLabel;
    procedure dxButton2Click(Sender: TObject);
    procedure btnIncluidosClick(Sender: TObject);
    procedure btnexcluidosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_cad_exc: TfRel_cad_exc;

implementation

uses UDM;

{$R *.dfm}

procedure TfRel_cad_exc.dxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TfRel_cad_exc.btnIncluidosClick(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'incluidos.rep';

   if Data1.Text <> '  /  /    ' then
     VCLReport1.Report.Params.ParamByName('DATAINI').Value := StrToDate(Data1.Text)
   else
     VCLReport1.Report.Params.ParamByName('DATAINI').Value := StrToDate('01/01/1001');

   if Data2.Text <> '  /  /    ' then
    VCLReport1.Report.Params.ParamByName('DATAFIN').Value := StrToDate(Data2.Text)
   else
     VCLReport1.Report.Params.ParamByName('DATAFIN').Value := StrToDate('31/12/9999');

   VCLReport1.Title := VCLReport1.FileName;
   VCLReport1.Execute;

end;

procedure TfRel_cad_exc.btnexcluidosClick(Sender: TObject);
begin
   VCLReport1.FileName := str_relatorio + 'excluidos.rep';

   if Data1.Text <> '  /  /    ' then
     VCLReport1.Report.Params.ParamByName('DATAINI').Value := StrToDate(Data1.Text)
   else
     VCLReport1.Report.Params.ParamByName('DATAINI').Value := StrToDate('01/01/1001');

   if Data2.Text <> '  /  /    ' then
    VCLReport1.Report.Params.ParamByName('DATAFIN').Value := StrToDate(Data2.Text)
   else
     VCLReport1.Report.Params.ParamByName('DATAFIN').Value := StrToDate('31/12/9999');

   VCLReport1.Title := VCLReport1.FileName;
   VCLReport1.Execute;
end;

procedure TfRel_cad_exc.BitBtn1Click(Sender: TObject);
var
MSWord ,DOC , DOCS : Variant;
finallinha:boolean;
i ,n  :Integer;
caminho1 : string;
begin

  if(sql.Active)then
  sql.Close;

  if(btnIncluidos.Visible = False) then
  begin
  sql.CommandText := ' select nome_socio , e.*  , b.BAIRRO , m.MUNICIPIO from socios s ' +
                     ' left outer join ENDERECO e on e.ID_SOCIO = s.ID_SOCIO ' +
                     ' left outer join BAIRRO b on b.ID_BAIRRO = e.ID_BAIRRO ' +
                     ' left outer join MUNICIPIO m on m.ID_MUNICIPIO = e.ID_MUNICIPIO ' +
                     ' where ((e.TIPOEND = 0) or (e.TIPOEND is null)) ' +
                     ' and situacao = ' + QuotedStr('Inativo') + ' and nome_socio is not null ' +
                     ' and dataexclusao between ' + QuotedStr(Formatdatetime('mm/dd/yy',StrToDate(Data1.Text))) +
                     ' and ' + QuotedStr(Formatdatetime('mm/dd/yy',StrToDate(Data2.Text))) +
                     ' order by m.municipio ' ;


  sql.CommandText := sql.CommandText ;

  end;

  if(btnexcluidos.Visible = False) then
  begin
  sql.CommandText := ' select nome_socio , e.*  , b.BAIRRO , m.MUNICIPIO from socios s ' +
                     ' left outer join ENDERECO e on e.ID_SOCIO = s.ID_SOCIO ' +
                     ' left outer join BAIRRO b on b.ID_BAIRRO = e.ID_BAIRRO ' +
                     ' left outer join MUNICIPIO m on m.ID_MUNICIPIO = e.ID_MUNICIPIO ' +
                     ' where ((e.TIPOEND = 0) or (e.TIPOEND is null)) ' +
                     ' and situacao = ' + QuotedStr('Ativo') + ' and nome_socio is not null ' +
                     ' and dtacadastro between ' + QuotedStr(Formatdatetime('mm/dd/yy',StrToDate(Data1.Text))) +
                     ' and ' + QuotedStr(Formatdatetime('mm/dd/yy',StrToDate(Data2.Text))) +
                     ' order by m.municipio ' ;


  sql.CommandText := sql.CommandText ;
  end;


  sql.Open;

  {sera usada a uses COMOBJ}
  { Abre o Word }
  MSWord := CreateOleObject('Word.Application');
  {não visualizar Microsoft Word}
 // MSWord.Visible:=false;

  Docs:= MSWord.Documents;
  caminho1 := (ExtractFilePath(Application.ExeName)+ '6080.doc');

  { Abre documento em anexo junto ao  exe}
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ '6080.doc' ); //'a5.doc');//'Doc1.doc') ;//'Etiqueta_Pimaco_6181.doc');
  CopyFile(Pchar(caminho1),Pchar(caminho1),True);
  finallinha:=false;{Essa variavel foi criada para controlar o avanço de para cada celula da coluna }
  sql.First;

  if finallinha=false then
  begin
    for i := 0 to (StrToInt(Edit1.Text)-1) do
    begin
      MSWord.Selection.MoveRight(12);
    end;
    finallinha:=true;
  end;

  n := 1 ;
  while not sql.Eof do
  begin

    { Escreve na  célula }
    MSWord.Selection.Font.Name := 'Times New Roman';
    MSWord.Selection.Font.Size := 8;
    MSWord.Selection.Font.Bold := True;

    MSWord.Selection.TypeText(Text :=trim(sqlNOME_SOCIO.AsString)
                                      +#13+trim (sqlENDERECO.AsString )
                                   //   +#13+trim ('CX.POSTAL  :' + ds2COMPLEMENTO.AsString)
                                      +#13+trim ('BAIRRO  :' + sqlBAIRRO.AsString)
                                      +#13+trim (sqlMUNICIPIO.AsString +'-' + sqlESTADO.AsString  + ' - ' + sqlCEP.AsString)
                                    //  +#13+trim (IntToStr(n))
                                       );
    // MSWord.Selection.MoveRight(12);
    if finallinha=false then
      begin
        // Pula 1 celula
        MSWord.Selection.MoveRight(12);
        finallinha:=true;
      end
    else

    begin
      // vai para a proxima celula
      MSWord.Selection.MoveRight(12);
      finallinha:=false;
    end;     

    sql.Next;

    n := n + 1;
  end;
  {visualizar Microsoft word }
  MSWord.Visible:=true;
  Doc := Docs.Open(caminho1);
  Doc.SaveAs('C:\home\atsscf\Etiquetas Geradas\Etiquetas.doc')
end;


end.
