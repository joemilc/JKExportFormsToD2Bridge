program DemoD2Bridge;

{$IFDEF D2BRIDGE}
 {$APPTYPE CONSOLE}
{$ENDIF}



uses
  Vcl.Forms,
  D2Bridge.ServerControllerBase in 'D2Bridge.ServerControllerBase.pas' {D2BridgeServerControllerBase: TDataModule},
  Prism.SessionBase in 'Prism.SessionBase.pas' {PrismSessionBase: TPrismSessionBase},
  DemoD2BridgeWebApp in 'DemoD2BridgeWebApp.pas' {DemoD2BridgeWebAppGlobal},
  DemoD2Bridge_Session in 'DemoD2Bridge_Session.pas' {DemoD2BridgeSession},
  D2BridgeFormTemplate in 'D2BridgeFormTemplate.pas',
  Unit_D2Bridge_Server_Console in 'Unit_D2Bridge_Server_Console.pas',
  Unit1 in '..\ProjetoDemo\Unit1.pas' {Form1},
  uFormComplexo in '..\ProjetoDemo\uFormComplexo.pas' {FormComplexo},
  uFormMedio in '..\ProjetoDemo\uFormMedio.pas' {FormMedio},
  uFormSimples in '..\ProjetoDemo\uFormSimples.pas' {FormSimples},
  Unit2 in '..\ProjetoDemo\Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar:= False;
  TD2BridgeServerConsole.Run
  
end.
