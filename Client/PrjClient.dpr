program PrjClient;

uses
  MidasLib,
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uDMClient in 'uDMClient.pas' {DMClient: TDataModule},
  uFrmEmployee in 'uFrmEmployee.pas' {FrmEmployee},
  uFrmEditEmployee in 'uFrmEditEmployee.pas' {FrmEditEmployee},
  {$IFNDEF CLIENTSERVER}
  uCC in 'uCC.pas'
  {$ENDIF}
  {$IFDEF CLIENTSERVER}
  uDMServer in '..\DMServer\uDMServer.pas' {DMServer: TDSServerModule}
  {$ENDIF}
  ;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  {$IFDEF CLIENTSERVER}
  Application.CreateForm(TDMServer, DMServer);
  {$ENDIF}
  Application.CreateForm(TDMClient, DMClient);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
