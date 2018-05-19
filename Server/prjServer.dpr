program prjServer;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uFrmMain in 'uFrmMain.pas' {Form1},
  uSC in 'uSC.pas' {SC: TDataModule},
  uDMServer in 'uDMServer.pas' {DMServer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSC, SC);
  Application.CreateForm(TDMServer, DMServer);
  Application.Run;
end.

