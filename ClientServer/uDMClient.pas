unit uDMClient;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider;

type
  TDMClient = class(TDataModule)
    conEMPLOYEE: TSQLConnection;
    qryEMPLOYEE: TSQLDataSet;
    cdsEMPLOYEE: TClientDataSet;
    dspEMPLOYEE: TDataSetProvider;
    qryAUX: TSQLDataSet;
    cdsAUX: TClientDataSet;
    dspAUX: TDataSetProvider;
    cdsEMPLOYEEEMP_NO: TSmallintField;
    cdsEMPLOYEEFIRST_NAME: TStringField;
    cdsEMPLOYEELAST_NAME: TStringField;
    qryEMPLOYEEEMP_NO: TSmallintField;
    qryEMPLOYEEFIRST_NAME: TStringField;
    qryEMPLOYEELAST_NAME: TStringField;
    qryEMPLOYEEPHONE_EXT: TStringField;
    qryEMPLOYEEHIRE_DATE: TSQLTimeStampField;
    qryEMPLOYEEDEPT_NO: TStringField;
    qryEMPLOYEEJOB_CODE: TStringField;
    qryEMPLOYEEJOB_GRADE: TSmallintField;
    qryEMPLOYEEJOB_COUNTRY: TStringField;
    qryEMPLOYEESALARY: TFMTBCDField;
    qryEMPLOYEEFULL_NAME: TStringField;
    cdsEMPLOYEEPHONE_EXT: TStringField;
    cdsEMPLOYEEHIRE_DATE: TSQLTimeStampField;
    cdsEMPLOYEEDEPT_NO: TStringField;
    cdsEMPLOYEEJOB_CODE: TStringField;
    cdsEMPLOYEEJOB_GRADE: TSmallintField;
    cdsEMPLOYEEJOB_COUNTRY: TStringField;
    cdsEMPLOYEESALARY: TFMTBCDField;
    cdsEMPLOYEEFULL_NAME: TStringField;
    qryMediaSalario: TSQLQuery;
    qryMediaSalarioMEDIA_SALARIO: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
    function mediaSalario(): Currency;
  end;

var
  DMClient: TDMClient;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMClient }

function TDMClient.mediaSalario: Currency;
begin
  qryMediaSalario.Open();
  result := qryMediaSalario.Fields[0].AsCurrency;
  qryMediaSalario.Close();
end;

end.
