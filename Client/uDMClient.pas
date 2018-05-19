unit uDMClient;

interface

uses
    System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
    Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Data.DbxDatasnap, Data.DBXCommon,
    IPPeerClient, Datasnap.DSConnect, uCC;

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
        conServer: TSQLConnection;
        pconServer: TDSProviderConnection;
    private
    { Private declarations }
    // Client Module
        FInstanceOwner: Boolean;
        FDMServerClient: TDMServerClient;
        function GetDMServerClient: TDMServerClient;
    public
    { Public declarations }
        function mediaSalario: Currency;
        // Client Module
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
        property DMServerClient: TDMServerClient read GetDMServerClient write FDMServerClient;
    end;

var
    DMClient: TDMClient;

implementation

{$IFDEF CLIENTSERVER}
uses
    uDMServer;
{$ENDIF}

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMClient }

function TDMClient.mediaSalario: Currency;
begin
    {$IFDEF CLIENTSERVER}
    Result := DMServer.mediaSalario;
    {$ENDIF}
    {$IFNDEF CLIENTSERVER}
    Result := DMServerClient.mediaSalario;
    {$ENDIF}
end;

constructor TDMClient.Create(AOwner: TComponent);
{$IFDEF CLIENTSERVER}
var
    cds: TClientDataSet;
    I: Integer;
{$ENDIF}
begin
    inherited;
    FInstanceOwner := True;
    {$IFDEF CLIENTSERVER}
    for I := 0 to ComponentCount - 1 do
    begin
        if Components[I] is TClientDataSet then
        begin
            cds := Components[I] as TClientDataSet;
            cds.RemoteServer := DMServer.conSimula3Camadas;
        end;
    end;
    {$ENDIF}
end;

destructor TDMClient.Destroy;
begin
    FDMServerClient.Free;
    inherited;
end;

function TDMClient.GetDMServerClient: TDMServerClient;
begin
    if FDMServerClient = nil then
    begin
        conServer.Open;
        FDMServerClient := TDMServerClient.Create(conServer.DBXConnection, FInstanceOwner);
    end;
    Result := FDMServerClient;
end;

end.

