object DMServer: TDMServer
  OldCreateOrder = False
  Height = 284
  Width = 480
  object conEMPLOYEE: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver170.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=17.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver170.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=17.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False'
      
        'Database=127.0.0.1:C:\Program Files (x86)\Firebird\Firebird_2_5\' +
        'examples\empbuild\EMPLOYEE.FDB')
    Left = 33
    Top = 25
  end
  object dtsEMPLOYEE: TSQLDataSet
    CommandText = 'select * from EMPLOYEE where EMP_NO=:PEMP_NO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PEMP_NO'
        ParamType = ptInput
      end>
    SQLConnection = conEMPLOYEE
    Left = 129
    Top = 89
    object dtsEMPLOYEEEMP_NO: TSmallintField
      FieldName = 'EMP_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fldEMPLOYEEFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object fldEMPLOYEELAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object fldEMPLOYEEPHONE_EXT: TStringField
      FieldName = 'PHONE_EXT'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object fldEMPLOYEEHIRE_DATE: TSQLTimeStampField
      FieldName = 'HIRE_DATE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object fldEMPLOYEEDEPT_NO: TStringField
      FieldName = 'DEPT_NO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object fldEMPLOYEEJOB_CODE: TStringField
      FieldName = 'JOB_CODE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object dtsEMPLOYEEJOB_GRADE: TSmallintField
      FieldName = 'JOB_GRADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object fldEMPLOYEEJOB_COUNTRY: TStringField
      FieldName = 'JOB_COUNTRY'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object fldEMPLOYEESALARY: TFMTBCDField
      FieldName = 'SALARY'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object fldEMPLOYEEFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      ProviderFlags = [pfInUpdate]
      Size = 37
    end
  end
  object dspEMPLOYEE: TDataSetProvider
    DataSet = dtsEMPLOYEE
    Left = 224
    Top = 88
  end
  object dtsAUX: TSQLDataSet
    CommandText = 
      'select EMP_NO, FIRST_NAME, LAST_NAME from EMPLOYEE where FIRST_N' +
      'AME like :FNAME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'FNAME'
        ParamType = ptInput
      end>
    SQLConnection = conEMPLOYEE
    Left = 129
    Top = 25
  end
  object dspAUX: TDataSetProvider
    DataSet = dtsAUX
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 224
    Top = 24
  end
  object qryMediaSalario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select AVG(SALARY) as MEDIA_SALARIO from EMPLOYEE')
    SQLConnection = conEMPLOYEE
    Left = 128
    Top = 152
    object fldMediaSalarioMEDIA_SALARIO: TFMTBCDField
      FieldName = 'MEDIA_SALARIO'
      Precision = 18
      Size = 2
    end
  end
  object conSimulaServidor: TLocalConnection
    Left = 344
    Top = 104
  end
end
