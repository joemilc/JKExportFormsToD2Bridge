unit DemoD2Bridge_Session;

interface

uses
  System.SysUtils, System.Classes,
  Prism.SessionBase;

type
  TDemoD2BridgeSession = class(TPrismSessionBase)
  private

  public
   constructor Create(APrismSession: TPrismSession); override;  //OnNewSession
   destructor Destroy; override; //OnCloseSession
  end;


implementation

Uses
  D2Bridge.Instance,
  DemoD2BridgeWebApp;

{$R *.dfm}

constructor TDemoD2BridgeSession.Create(APrismSession: TPrismSession); //OnNewSession
begin
 inherited;

 //Your code

end;

destructor TDemoD2BridgeSession.Destroy; //OnCloseSession
begin
 //Close ALL DataBase connection
 //Ex: Dm.DBConnection.Close;

 inherited;
end;

end.

