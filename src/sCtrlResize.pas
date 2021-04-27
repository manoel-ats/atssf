unit sCtrlResize;

interface

uses StdCtrls, Controls, Forms, Buttons, RXCtrls;

procedure CtrlResize(var Sender: TForm); export;

implementation

procedure CtrlResize(var Sender: TForm);
//Aqui vc especifica a resolução que vc
//desenvolveu o aplicativo
const
  iWidth = 800;
  iHeight = 600;
var
  i : Integer;
begin
    with Sender do
    for i := 0 to ComponentCount -1 do
    begin { Varre todos os componentes do form que possam ser redefinidos (classe TWinControl) }
      if Components[i] is TWinControl then
      begin { Redefine os componentes em proporção ao original }
        TWinControl(Components[i]).Width := Round(TWinControl(Components[i]).Width * (Screen.Width / iWidth));
        TWinControl(Components[i]).Height := Round(TWinControl(Components[i]).Height * (Screen.Height / iHeight));
        TWinControl(Components[i]).Left := Round(TWinControl(Components[i]).Left * (Screen.Width / iWidth));
        TWinControl(Components[i]).Top := Round(TWinControl(Components[i]).Top * (Screen.Height / iHeight));
      end
      else
      if Components[i] is TLabel then
      begin { Redefine os componentes em proporção ao original }
        TLabel(Components[i]).Width := Canvas.TextWidth(TLabel(Components[i]).Caption); // Round(TWinControl(Components[i]).Width * (Screen.Width / iWidth));
        TLabel(Components[i]).Height := Canvas.TextHeight(TLabel(Components[i]).Caption); // Round(TWinControl(Components[i]).Height * (Screen.Height / iHeight));
        TLabel(Components[i]).Left := Round(TWinControl(Components[i]).Left * (Screen.Width / iWidth));
        TLabel(Components[i]).Top := Round(TWinControl(Components[i]).Top * (Screen.Height / iHeight));
      end;

      if Components[i] is TSpeedButton then
      begin { Redefine os componentes em proporção ao original }
        TSpeedButton(Components[i]).Width := Round(TSpeedButton(Components[i]).Width * (Screen.Width / iWidth));
        TSpeedButton(Components[i]).Height := Round(TSpeedButton(Components[i]).Height * (Screen.Height / iHeight));
        TSpeedButton(Components[i]).Left := Round(TSpeedButton(Components[i]).Left * (Screen.Width / iWidth));
        TSpeedButton(Components[i]).Top := Round(TSpeedButton(Components[i]).Top * (Screen.Height / iHeight));
      end;

      if Components[i] is TRxLabel then
      begin { Redefine os componentes em proporção ao original }
        TRxLabel(Components[i]).Width := Canvas.TextWidth(TRxLabel(Components[i]).Caption); // Round(TWinControl(Components[i]).Width * (Screen.Width / iWidth));
        TRxLabel(Components[i]).Height := Canvas.TextHeight(TRxLabel(Components[i]).Caption); // Round(TWinControl(Components[i]).Height * (Screen.Height / iHeight));
        TRxLabel(Components[i]).Left := Round(TWinControl(Components[i]).Left * (Screen.Width / iWidth));
        TRxLabel(Components[i]).Top := Round(TWinControl(Components[i]).Top * (Screen.Height / iHeight));
      end;

    end;
    //Para não alterar o tamanho e posição do form
    //Comente as linhas abaixo
   { Redefine o Formulário }
    Sender.Width := Round(Sender.Width * (Screen.Width / iWidth));
    Sender.Height := Round(Sender.Height * (Screen.Height / iHeight));
    Sender.Top := Round(Sender.Top * (Screen.Height / iHeight));
    Sender.Left := Round(Sender.Left * (Screen.Width / iWidth));
   
   { Altera o tamanho da Fonte do Formulário }
   Sender.Font.Size := Round(Sender.Font.Size * (Screen.Height / iHeight));
end;


end.


 