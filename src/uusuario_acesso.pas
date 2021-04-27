unit uUsuario_acesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxCore, dxButton, ExtCtrls, XPMenu, StdCtrls, DBCtrls,
  ComCtrls;

type
  Tfusuario_acesso = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    XPMenu1: TXPMenu;
    Panel1: TPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    DtSrc: TDataSource;
    dxButton3: TdxButton;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    DBRadioGroup20: TDBRadioGroup;
    DBRadioGroup21: TDBRadioGroup;
    DBRadioGroup22: TDBRadioGroup;
    DBRadioGroup25: TDBRadioGroup;
    DBRadioGroup26: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    DBRadioGroup27: TDBRadioGroup;
    DBRadioGroup28: TDBRadioGroup;
    DBRadioGroup29: TDBRadioGroup;
    DBRadioGroup30: TDBRadioGroup;
    DBRadioGroup31: TDBRadioGroup;
    procedure DtSrcStateChange(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fusuario_acesso: Tfusuario_acesso;

implementation

uses UDM;

{$R *.dfm}

procedure Tfusuario_acesso.DtSrcStateChange(Sender: TObject);
begin
  dxButton1.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  dxButton2.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  dxButton3.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
end;

procedure Tfusuario_acesso.dxButton3Click(Sender: TObject);
begin
  close;
end;

procedure Tfusuario_acesso.dxButton2Click(Sender: TObject);
begin
//  dm.cds_acesso.ApplyUpdates(0);
end;

end.
