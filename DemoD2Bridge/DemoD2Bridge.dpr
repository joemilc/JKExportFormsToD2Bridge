program DemoD2Bridge;

{$IFDEF D2BRIDGE}
 //{$APPTYPE CONSOLE}
{$ENDIF}



uses
  Vcl.Forms,
  D2Bridge.Instance,
  D2Bridge.ServerControllerBase in 'D2Bridge.ServerControllerBase.pas' {D2BridgeServerControllerBase: TDataModule},
  Prism.SessionBase in 'Prism.SessionBase.pas' {PrismSessionBase: TPrismSessionBase},
  DemoD2BridgeWebApp in 'DemoD2BridgeWebApp.pas' {DemoD2BridgeWebAppGlobal},
  DemoD2Bridge_Session in 'DemoD2Bridge_Session.pas' {DemoD2BridgeSession},
  D2BridgeFormTemplate in 'D2BridgeFormTemplate.pas',
  Unit_D2Bridge_Server in 'Unit_D2Bridge_Server.pas',
  Unit1 in 'Unit1.pas' {Form1},
  uFormComplexo in 'uFormComplexo.pas' {fFormComplexo},
  uFormSimples in 'uFormSimples.pas' {fFormSimples},
  uFormMedio in 'uFormMedio.pas' {fFormMedio};

{$R *.res}

{$IFNDEF D2BRIDGE}
var
  Unit1: TForm1;
{$ENDIF}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar:= True;
  {$IFNDEF D2BRIDGE}
  Application.CreateForm(TForm1, Unit1);
  Application.CreateForm(TfFormSimples, fFormSimples);
  Application.CreateForm(TfFormMedio, fFormMedio);
  Application.CreateForm(TfFormComplexo, fFormComplexo);
  D2BridgeInstance.AddInstace(Unit1);
  Application.Run;
  {$ELSE}
  Application.CreateForm(TForm_D2Bridge_Server, Form_D2Bridge_Server);
  Application.CreateForm(TfFormSimples, fFormSimples);
  Application.Run;
  {$ENDIF}
end.
