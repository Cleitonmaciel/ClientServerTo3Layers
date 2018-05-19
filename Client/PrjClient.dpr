program PrjClient;

uses
  MidasLib,
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uDMClient in 'uDMClient.pas' {DMClient: TDataModule},
  uFrmEmployee in 'uFrmEmployee.pas' {FrmEmployee},
  uFrmEditEmployee in 'uFrmEditEmployee.pas' {FrmEditEmployee},
  uCC in 'uCC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMClient, DMClient);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
