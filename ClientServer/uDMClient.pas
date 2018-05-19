unit uDMClient;

interface

uses
    System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
    Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider;

type
    TDMClient = class(TDataModule)
        cdsEMPLOYEE: TClientDataSet;
        cdsAUX: TClientDataSet;
        cdsEMPLOYEEEMP_NO: TSmallintField;
        cdsEMPLOYEEFIRST_NAME: TStringField;
        cdsEMPLOYEELAST_NAME: TStringField;
        cdsEMPLOYEEPHONE_EXT: TStringField;
        cdsEMPLOYEEHIRE_DATE: TSQLTimeStampField;
        cdsEMPLOYEEDEPT_NO: TStringField;
        cdsEMPLOYEEJOB_CODE: TStringField;
        cdsEMPLOYEEJOB_GRADE: TSmallintField;
        cdsEMPLOYEEJOB_COUNTRY: TStringField;
        cdsEMPLOYEESALARY: TFMTBCDField;
        cdsEMPLOYEEFULL_NAME: TStringField;
    private
    { Private declarations }
    public
    { Public declarations }
        function mediaSalario: Currency;
    end;

var
    DMClient: TDMClient;

implementation

uses
    uDMServer;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMClient }

function TDMClient.mediaSalario: Currency;
begin
    Result := DMServer.mediaSalario;
end;

end.

