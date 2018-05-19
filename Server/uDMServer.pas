unit uDMServer;

interface

uses
    System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.SqlExpr,
    Datasnap.Provider, Data.DB, Datasnap.DBClient, Datasnap.Win.TConnect,
    DataSnap.DSProviderDataModuleAdapter, Datasnap.DSServer, Datasnap.DSAuth;

type
    TDMServer = class(TDSServerModule)
        conEMPLOYEE: TSQLConnection;
        dtsEMPLOYEE: TSQLDataSet;
        dtsEMPLOYEEEMP_NO: TSmallintField;
        fldEMPLOYEEFIRST_NAME: TStringField;
        fldEMPLOYEELAST_NAME: TStringField;
        fldEMPLOYEEPHONE_EXT: TStringField;
        fldEMPLOYEEHIRE_DATE: TSQLTimeStampField;
        fldEMPLOYEEDEPT_NO: TStringField;
        fldEMPLOYEEJOB_CODE: TStringField;
        dtsEMPLOYEEJOB_GRADE: TSmallintField;
        fldEMPLOYEEJOB_COUNTRY: TStringField;
        fldEMPLOYEESALARY: TFMTBCDField;
        fldEMPLOYEEFULL_NAME: TStringField;
        dspEMPLOYEE: TDataSetProvider;
        dtsAUX: TSQLDataSet;
        dspAUX: TDataSetProvider;
        qryMediaSalario: TSQLQuery;
        fldMediaSalarioMEDIA_SALARIO: TFMTBCDField;
    private
    { Private declarations }
    public
    { Public declarations }
        function mediaSalario: Currency;
    end;

var
    DMServer: TDMServer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMServer }

function TDMServer.mediaSalario: Currency;
begin
    qryMediaSalario.Open;
    Result := qryMediaSalario.Fields[0].AsCurrency;
    qryMediaSalario.Close;
end;

end.

