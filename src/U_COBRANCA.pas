unit U_COBRANCA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MMJPanel, Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvSpin, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit;

type
  TF_COBRANCA = class(TForm)
    MMJPanel2: TMMJPanel;
    MMJPanel1: TMMJPanel;
    grp1: TGroupBox;
    JvDatePickerEdit1: TJvDatePickerEdit;
    JvDatePickerEdit2: TJvDatePickerEdit;
    grp2: TGroupBox;
    cbb1: TComboBox;
    grp3: TGroupBox;
    edt1: TEdit;
    JvSpinEdit1: TJvSpinEdit;
    JvSpinEdit2: TJvSpinEdit;
    btn1: TBitBtn;
    grp4: TGroupBox;
    JvDatePickerEdit3: TJvDatePickerEdit;
    JvDatePickerEdit4: TJvDatePickerEdit;
    grp5: TGroupBox;
    JvSpinEdit3: TJvSpinEdit;
    btn2: TBitBtn;
    MMJPanel3: TMMJPanel;
    MMJPanel4: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    btn9: TSpeedButton;
    btn3: TSpeedButton;
    grp6: TGroupBox;
    JvSpinEdit4: TJvSpinEdit;
    grp7: TGroupBox;
    cbb2: TComboBox;
    rg1: TRadioGroup;
    grp8: TGroupBox;
    cbb3: TComboBox;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    btn6: TSpeedButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    JvSpinEdit6: TJvSpinEdit;
    ComboBox1: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_COBRANCA: TF_COBRANCA;

implementation

{$R *.dfm}

end.
