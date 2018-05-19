unit uFrmMain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
    Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
    TFrmMain = class(TForm)
        Menu: TMainMenu;
        Cadastros1: TMenuItem;
        Employee1: TMenuItem;
        procedure Employee1Click(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses
    uFrmEmployee;

procedure TFrmMain.Employee1Click(Sender: TObject);
begin
    FrmEmployee := TFrmEmployee.Create(Application);
    try
        FrmEmployee.ShowModal;
    finally
        FreeAndNil(FrmEmployee);
    end;
end;

end.

