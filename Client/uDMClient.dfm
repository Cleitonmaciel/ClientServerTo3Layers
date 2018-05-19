object DMClient: TDMClient
  OldCreateOrder = False
  Height = 220
  Width = 450
  object cdsEMPLOYEE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PEMP_NO'
        ParamType = ptInput
      end>
    ProviderName = 'dspEMPLOYEE'
    RemoteServer = pconServer
    Left = 128
    Top = 104
    object cdsEMPLOYEEEMP_NO: TSmallintField
      FieldName = 'EMP_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEMPLOYEEFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object cdsEMPLOYEELAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEMPLOYEEPHONE_EXT: TStringField
      FieldName = 'PHONE_EXT'
      Size = 4
    end
    object cdsEMPLOYEEHIRE_DATE: TSQLTimeStampField
      FieldName = 'HIRE_DATE'
      Required = True
    end
    object cdsEMPLOYEEDEPT_NO: TStringField
      FieldName = 'DEPT_NO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsEMPLOYEEJOB_CODE: TStringField
      FieldName = 'JOB_CODE'
      Required = True
      Size = 5
    end
    object cdsEMPLOYEEJOB_GRADE: TSmallintField
      FieldName = 'JOB_GRADE'
      Required = True
    end
    object cdsEMPLOYEEJOB_COUNTRY: TStringField
      FieldName = 'JOB_COUNTRY'
      Required = True
      Size = 15
    end
    object cdsEMPLOYEESALARY: TFMTBCDField
      FieldName = 'SALARY'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsEMPLOYEEFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 37
    end
  end
  object cdsAUX: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select EMP_NO, FIRST_NAME, LAST_NAME from EMPLOYEE where FIRST_N' +
      'AME like :FNAME'
    Params = <
      item
        DataType = ftString
        Name = 'FNAME'
        ParamType = ptInput
      end>
    ProviderName = 'dspAUX'
    RemoteServer = pconServer
    Left = 128
    Top = 40
  end
  object conServer: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxDatasnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/')
    Left = 48
    Top = 40
    UniqueId = '{5E3CE36C-434F-49FF-BC6C-2A2189B78429}'
  end
  object pconServer: TDSProviderConnection
    ServerClassName = 'TDMServer'
    SQLConnection = conServer
    Left = 48
    Top = 104
  end
end
