unit uRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, StdCtrls, ExtCtrls, rpcompobase, rpvclreport,
  EExtenso, rplabelitem, VDOBasePrinter, VDODmPrinter, SqlExpr,
  Provider, DB, DBClient, DBLocal, DBLocalS, FMTBcd;

type
  TfRecibo = class(TForm)
    GroupBox1: TGroupBox;
    rbSim: TRadioButton;
    rbNao: TRadioButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    EvExtenso1: TEvExtenso;
    VCLReport1: TVCLReport;
    VCLReport2: TVCLReport;
    VCLReport3: TVCLReport;
    rbTicketi: TRadioButton;
    VDODmPrinter1: TVDODmPrinter;
    sdsCR: TSQLDataSet;
    dsp_CR: TDataSetProvider;
    cds_CR: TClientDataSet;
    cds_CRID_RECEBIMENTOS: TIntegerField;
    cds_CRID: TIntegerField;
    cds_CRVALOR_NF: TFloatField;
    cds_CRVALOR_RECEBER: TFloatField;
    cds_CRPARCELA: TIntegerField;
    cds_CRVENCIMENTO: TDateField;
    cds_CRDATA_PAG: TDateField;
    cds_CRSTATUS: TStringField;
    cds_CRVALOR_PAGO: TFloatField;
    cds_CRVALOR_DIF: TFloatField;
    cds_CRJUROS: TFloatField;
    cds_CRDESCONTO: TFloatField;
    cds_CRMULTA: TFloatField;
    cds_CREMISSAO: TDateField;
    cds_CRN_DOCUMENTO: TStringField;
    cds_CRCAIXA: TStringField;
    cds_CRFORMARECEBIMENTO: TStringField;
    cds_CRVALOR_A_REC: TFloatField;
    cds_CRTITULO: TIntegerField;
    cds_CRVALOR_1VIA: TFloatField;
    cds_CRID_SOCIO: TIntegerField;
    cds_CRLOTE: TIntegerField;
    cds_CRGEROU: TStringField;
    cds_CRDATA_DOC: TDateField;
    cds_CRGRUPO: TStringField;
    cds_CRID_BANCO: TIntegerField;
    cds_CRSITUACAO: TStringField;
    cds_CRTIPO_DOC: TStringField;
    cds_CRSELECIONOU: TStringField;
    cds_CRSERIE: TStringField;
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRCODIGO: TIntegerField;
    cds_CROBS: TGraphicField;
    cds_CRENTRADA: TFloatField;
    cds_CRCODCCUSTO: TSmallintField;
    cds_CRID_DEPREC: TIntegerField;
    cds_CRNOTAFISCAL: TIntegerField;
    cds_CRID_VENDA: TIntegerField;
    cds_CRID_ACORDO: TIntegerField;
    cds_CRN_BOLETO: TStringField;
    sdsCRID_RECEBIMENTOS: TIntegerField;
    sdsCRID: TIntegerField;
    sdsCRVALOR_NF: TFloatField;
    sdsCRVALOR_RECEBER: TFloatField;
    sdsCRPARCELA: TIntegerField;
    sdsCRVENCIMENTO: TDateField;
    sdsCRDATA_PAG: TDateField;
    sdsCRSTATUS: TStringField;
    sdsCRVALOR_PAGO: TFloatField;
    sdsCRVALOR_DIF: TFloatField;
    sdsCRJUROS: TFloatField;
    sdsCRDESCONTO: TFloatField;
    sdsCRMULTA: TFloatField;
    sdsCREMISSAO: TDateField;
    sdsCRN_DOCUMENTO: TStringField;
    sdsCRCAIXA: TStringField;
    sdsCRFORMARECEBIMENTO: TStringField;
    sdsCRVALOR_A_REC: TFloatField;
    sdsCRTITULO: TIntegerField;
    sdsCRVALOR_1VIA: TFloatField;
    sdsCRID_SOCIO: TIntegerField;
    sdsCRLOTE: TIntegerField;
    sdsCRGEROU: TStringField;
    sdsCRDATA_DOC: TDateField;
    sdsCRGRUPO: TStringField;
    sdsCRID_BANCO: TIntegerField;
    sdsCRSITUACAO: TStringField;
    sdsCRTIPO_DOC: TStringField;
    sdsCRSELECIONOU: TStringField;
    sdsCRSERIE: TStringField;
    sdsCRPERCENTUALJUROS: TFloatField;
    sdsCRPERCENTUALMULTA: TFloatField;
    sdsCRPERCENTUALDESCONTO: TFloatField;
    sdsCRVALOROUTROSACRESCIMOS: TFloatField;
    sdsCRCODIGO: TIntegerField;
    sdsCROBS: TGraphicField;
    sdsCRENTRADA: TFloatField;
    sdsCRCODCCUSTO: TSmallintField;
    sdsCRID_DEPREC: TIntegerField;
    sdsCRNOTAFISCAL: TIntegerField;
    sdsCRID_VENDA: TIntegerField;
    sdsCRID_ACORDO: TIntegerField;
    sdsCRN_BOLETO: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    cds_par: TSQLDataSet;
    cds_parPARAMETRO: TStringField;
    cds_parDESCRICAO: TStringField;
    cds_parCONFIGURADO: TStringField;
    cds_parPARAMETRO1: TStringField;
    cds_parPARAMETRO2: TStringField;
    cds_parPARAMETRO3: TStringField;
    cds_parPARAMETRO4: TStringField;
    cds_parPARAMETRO5: TStringField;
    cds_parPARAMETRO6: TStringField;
    cds_parPARAMETRO7: TStringField;
    cds_parPARAMETRO8: TStringField;
    cds_parPARAMETRO9: TStringField;
    Label3: TLabel;
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure rbSimClick(Sender: TObject);
    procedure rbNaoClick(Sender: TObject);
    procedure rbTicketiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRecibo: TfRecibo;
  total : string;
  receber : string;
  banco, l_pgto, texto, texto1, texto2, texto3 : string;
  Lote1, Insc11, Insc1_1, Cobr1 : Integer;
  Gpo1, socio1, marcou1 : String;
 
implementation

uses UDM, uReceber, uCad_Clientes, uReceber_MS, uSocios;

{$R *.dfm}

procedure TfRecibo.dxButton5Click(Sender: TObject);
var
  CONTADOR:Integer;
  F, IMPRESSORA:TextFile;
  ano, mes, dia : word;
  produto,nome,nomeA,Texto,Texto1,Texto2,Texto3 :string;
  Texto4,texto5, logradouro,cep,fone : string;
  total1 : double;
  text, text1 :TRpLabel;
  valor: double;
  I: Byte;
  J: Integer;
begin
  //********************************************************************************
  {** Aqui estou abrindo o form atraves do form de Cadastro de Óbitos}
  if receber = 'OBITO' then
  begin
      valor := dm.cds_CRVALOR_PAGO.AsFloat;
      total := '';
      total := EvExtenso1.GetExtenso(valor);
      VCLReport3.FileName := str_relatorio + 'Recibo_obito.rep';
      VCLReport3.Title := str_relatorio + 'Recibo_obito.rep';
      VCLReport3.Report.Params.ParamByName('PID').Value := dm.cds_CRID_RECEBIMENTOS.AsInteger;
      text:=TRpLabel(VCLReport3.Report.FindComponent('TRpLabel26'));
      if Assigned(text) then
        text.Text := total;
      VCLReport3.Execute;
  end;
  //********************************************************************************
  {** Aqui se ñ For nem de Sócios e nem de Óbitos}
  if (receber <> 'OBITO') and (receber <> 'Cliente') then
  begin
    if rbSim.Checked then
    begin
       if (not cds_par.Active) then
       cds_par.Open;

       if ( not cds_par.Locate('PARAMETRO','recibo', [loPartialKey])) then
       begin
        MessageDlg('insira o parâmetro "recibo"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
        exit;
       end;
       with VDODmPrinter1 do
       begin
          { Inicia o Documento }
          BeginDoc;
          Font.NLQFont := ntRoman;
          Font.Pitch := fp10cpp;
          // se for serra Artur
          if cds_parPARAMETRO1.AsString = 'serra1' then
          begin
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(28, DateToStr(dm.cds_CRVENCIMENTO.asDatetime));
            Print(70, DateToStr(dm.cds_CRVENCIMENTO.asDatetime), true);
            Print(03, dm.cds_CRGRUPO.asString);
            Print(45, dm.cds_CRGRUPO.asString, true);
            Print(03, fReceber.Edit2.Text);
            Print(32, '.'); //IntToStr(dm.cds_CRLOTE.AsInteger) + fReceber.Edit2.Text );
            Print(45, fReceber.Edit2.Text);
            Print(74, '.'); //IntToStr(dm.cds_CRLOTE.AsInteger) + fReceber.Edit2.Text, true);
          end;
          // se for serra Valinhos
          if cds_parPARAMETRO1.AsString = 'serra2' then
          begin
            Print(00,'',True);
            Print(30, IntToStr(dm.cds_CRLOTE.AsInteger) + fReceber.Edit2.Text);
            Print(72, IntToStr(dm.cds_CRLOTE.AsInteger) + fReceber.Edit2.Text, true);
            Print(00,'',True);
            Print(28, DateToStr(dm.cds_CRVENCIMENTO.asDatetime));
            Print(70, DateToStr(dm.cds_CRVENCIMENTO.asDatetime), true);
            Print(03, dm.cds_CRGRUPO.asString);
            Print(45, dm.cds_CRGRUPO.asString, true);
            Print(03, fReceber.Edit2.Text);
            Print(45, fReceber.Edit2.Text,true);
          end;
            Print(00,'',True);
            Print(00,'',True);
           { Altero o fonte }

            Font.Size := fsCondensed;
            Print(06, fReceber.Edit3.Text);
            Print(79, fReceber.Edit3.Text,true);
            if dm.cds_end.Active then
              dm.cds_end.Close;
            dm.cds_end.Params[0].AsInteger:= dm.cds_CRID_SOCIO.AsInteger;
            dm.cds_end.Open;
            if not dm.cds_end.IsEmpty then
            begin
              Print(06, dm.cds_endENDERECO.asString);
              Print(79, dm.cds_endENDERECO.asString,true);
              Print(06, dm.cds_endBAIRRO.asString + ' - ' + dm.cds_endMUNICIPIO.asString);
              Print(79, dm.cds_endBAIRRO.asString + ' - ' + dm.cds_endMUNICIPIO.asString,true);
            end
            else
            begin
               Print(00,'',True);
               Print(00,'',True);
            end;
            { Altero o fonte }
            Font.Size := fsDefault;
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(20, Format('%12.2F',[dm.cds_CRVALOR_PAGO.AsFloat]));
            Print(62, Format('%12.2F',[dm.cds_CRVALOR_PAGO.AsFloat]),true);
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            Print(00,'',True);
            EndDoc;
       end;
    end;

    if rbNao.Checked then
    begin
          valor := dm.cds_CRVALOR_PAGO.AsFloat;
          total := '';
          total := EvExtenso1.GetExtenso(valor);
          VCLReport2.FileName := str_relatorio + 'Recibo_novo.rep';
          VCLReport3.Title := str_relatorio + 'Recibo_novo.rep';
          text:=TRpLabel(VCLReport2.Report.FindComponent('TRpLabel26'));
          text1:=TRpLabel(VCLReport2.Report.FindComponent('TRpLabel27'));
          VCLReport2.Report.Params.ParamByName('PID').Value := dm.cds_CRID_RECEBIMENTOS.AsInteger;
          if Assigned(text) then
            text.Text := total;
          if Assigned(text1) then
            text1.Text := total;
          VCLReport2.Execute;
    end;
  end;
 //********************************************************************************
 {** aqui estou abrindo do pelo form Cadastro de Sócios}
  if receber = 'Cliente' then
  begin
     //**************************************************************************
     {** se for com papel timbrado}
     if socio1 = '1' then
     begin
       if cds_CR.Active then
          cds_cr.Close;
       cds_CR.CommandText := '';
       cds_cr.CommandText := sql;
       cds_cr.Open;
       Lote1 := cds_CRID_SOCIO.AsInteger;
       cds_cr.First;
       insc11 := cds_CRID_RECEBIMENTOS.AsInteger;
       cds_cr.Last;
       Insc1_1 := cds_CRID_RECEBIMENTOS.AsInteger;
     end;
     if rbSim.Checked then
     begin
       //***************************************************************************
       {** Abro a tabela PARAMETRO}
       if (not cds_par.Active) then
         cds_par.Open;
       //***************************************************************************
       {** busco na tabela parametros o recibo se é serra1 ou serra2
           Obs. fiz dois modelos de impressão, pq os papéis timbrados das cidades
           não são iguais}
       if ( not cds_par.Locate('PARAMETRO','recibo', [loPartialKey])) then
       begin
         MessageDlg('insira o parâmetro "recibo"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
         exit;
       end;
       //***************************************************************************
       {** Se o Parametro for serra1 imprimo o recibo_artur_mensal.rep}
       if cds_parPARAMETRO1.AsString = 'serra1' then
         VCLReport1.FileName := str_relatorio + 'recibo_artur_mensal.rep';
         VCLReport1.Title := str_relatorio + 'recibo_artur_mensal.rep';
       //***************************************************************************
       {** Se o Parametro for serra1 imprimo o recibo_valinhos_mensal.rep}
       if cds_parPARAMETRO1.AsString = 'serra2' then
         VCLReport1.FileName := str_relatorio + 'recibo_valinhos_mensal.rep';
         VCLReport1.Title := str_relatorio + 'recibo_valinhos_mensal.rep';
       VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
       //limpo os dois parametros
       VCLReport1.Report.Params.ParamByName('CODCLI').Value := Lote1; //Codigo do Sócio
       VCLReport1.Report.Params.ParamByName('CODREC').Value := NULL; //Cod.Recebimento primeiro
       VCLReport1.Report.Params.ParamByName('CODREC1').Value := NULL; //Cod.Recebimento ultimo
       if marcou1 = 'S' then
       begin
        VCLReport1.Report.Params.ParamByName('SELEC').Value := marcou1; //Selecionou
        //VCLReport1.Report.Params.ParamByName('PSTAT').Value := status; //Status
       end
       else
       begin
         VCLReport1.Report.Params.ParamByName('CODREC').Value := insc11; //Cod.Recebimento primeiro
         VCLReport1.Report.Params.ParamByName('CODREC1').Value := Insc1_1; //Cod.Recebimento ultimo
         VCLReport1.Report.Params.ParamByName('SELEC').Value := ''; //Selecionou
         //VCLReport1.Report.Params.ParamByName('PSTAT').Value := status; //Status
       end;
       VCLReport1.Execute;
     end; //end do rbSim
     //**************************************************************************
     // se for com papel em branco
     if rbNao.Checked then
     begin
       if (not cds_par.Active) then
         cds_par.Open;
       if ( not cds_par.Locate('PARAMETRO','recibo', [loPartialKey])) then
       begin
        MessageDlg('insira o parâmetro "recibo"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
        exit;
       end;
        valor := cds_CRVALOR_PAGO.AsFloat;
        total := '';
        total := EvExtenso1.GetExtenso(valor);
        VCLReport1.FileName := str_relatorio + 'Recibo_novo.rep';
        VCLReport1.Title := str_relatorio + 'Recibo_novo.rep';
        VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
        text:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel26'));
        text1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel27'));
        if Assigned(text) then
          text.Text := total;
        if Assigned(text1) then
          text1.Text := total;
       VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
       //limpo os dois parametros
       VCLReport1.Report.Params.ParamByName('CODREC').Value := NULL; //Cod.Recebimento primeiro
       VCLReport1.Report.Params.ParamByName('CODREC1').Value := NULL; //Cod.Recebimento ultimo

       VCLReport1.Report.Params.ParamByName('CODCLI').Value := Lote1; //Codigo do Sócio
       if marcou1 = 'S' then
       begin
        VCLReport1.Report.Params.ParamByName('SELC').Value := marcou1; //Selecionou
       end
       else
       begin
         VCLReport1.Report.Params.ParamByName('CODREC').Value := insc11; //Cod.Recebimento primeiro
         VCLReport1.Report.Params.ParamByName('CODREC1').Value := Insc1_1; //Cod.Recebimento ultimo
         VCLReport1.Report.Params.ParamByName('SELC').Value := ''; //Selecionou
       end;
       //VCLReport1.Report.Params.ParamByName('PSTAT').Value := status; //Status
       VCLReport1.Report.Params.ParamByName('N_COPIAS').Value := StrToInt(Edit1.Text); //Total de cópias

        VCLReport1.Execute;
     end;
     //********************************************************************************
     if rbTicketi.Checked then
     begin
       //***************************************************************************
       {** Abro a tabela PARAMETRO}
       if (not cds_par.Active) then
         cds_par.Open;
       //***************************************************************************
       {** busco na tabela parametros o recibo se é serra1 ou serra2
           Obs. fiz dois modelos de impressão, pq os papéis timbrados das cidades
           não são iguais}
       if ( not cds_par.Locate('PARAMETRO','recibo', [loPartialKey])) then
       begin
         MessageDlg('insira o parâmetro "recibo"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
         exit;
       end;
       //***************************************************************************
       {** Se o Parametro for serra1 imprimo o recibo_artur_mensal.rep}
       if cds_parPARAMETRO1.AsString = 'serra1' then
         VCLReport1.FileName := str_relatorio + 'recibo_epson.rep';
         VCLReport1.Title := str_relatorio + 'recibo_artur_mensal.rep';
       //***************************************************************************
       {** Se o Parametro for serra1 imprimo o recibo_valinhos_mensal.rep}
       if cds_parPARAMETRO1.AsString = 'serra2' then
         VCLReport1.FileName := str_relatorio + 'recibo_epson.rep';
         VCLReport1.Title := str_relatorio + 'recibo_epson.rep';
       VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
       //limpo os dois parametros
       VCLReport1.Report.Params.ParamByName('CODCLI').Value := Lote1; //Codigo do Sócio
       VCLReport1.Report.Params.ParamByName('CODREC').Value := NULL; //Cod.Recebimento primeiro
       VCLReport1.Report.Params.ParamByName('CODREC1').Value := NULL; //Cod.Recebimento ultimo
       if marcou1 = 'S' then
       begin
        VCLReport1.Report.Params.ParamByName('SELEC').Value := marcou1; //Selecionou
        //VCLReport1.Report.Params.ParamByName('PSTAT').Value := status; //Status
       end
       else
       begin
         VCLReport1.Report.Params.ParamByName('CODREC').Value := insc11; //Cod.Recebimento primeiro
         VCLReport1.Report.Params.ParamByName('CODREC1').Value := Insc1_1; //Cod.Recebimento ultimo
         VCLReport1.Report.Params.ParamByName('SELEC').Value := ''; //Selecionou
         //VCLReport1.Report.Params.ParamByName('PSTAT').Value := status; //Status
       end;
       VCLReport1.Execute;


     end;
  end;
end;

procedure TfRecibo.dxButton4Click(Sender: TObject);
begin
  close;
end;

procedure TfRecibo.rbSimClick(Sender: TObject);
begin
 if rbNao.Checked = true then
   rbNao.Checked := false;

 if rbTicketi.Checked = true then
   rbTicketi.Checked := false;
end;

procedure TfRecibo.rbNaoClick(Sender: TObject);
begin
 if rbSim.Checked = true then
   rbSim.Checked := false;

 if rbTicketi.Checked = true then
   rbTicketi.Checked := false;

end;

procedure TfRecibo.rbTicketiClick(Sender: TObject);
begin
 if rbNao.Checked = true then
   rbNao.Checked := false;

 if rbSim.Checked = true then
   rbSim.Checked := false;

end;

procedure TfRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (receber = 'Cliente') then
  begin
    //aqui mostro as mensalidade ***************************************
    if dm.cds_CR.Active then
      dm.cds_CR.Close;
    dm.cds_CR.Params[0].AsInteger := dm.cds_socioID_SOCIO.AsInteger;
    dm.cds_CR.Open;
  end;
end;

procedure TfRecibo.FormShow(Sender: TObject);
begin
    if(fSocios.tiporecibo = 'ticket') then
    begin
      rbTicketi.Checked := true;
    end;
end;

end.
