object FPrincipalConversor: TFPrincipalConversor
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Manuten'#231#227'o Banco - Vs 07/09/2021'
  ClientHeight = 232
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 79
    Width = 892
    Height = 153
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Limpar Banco'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 884
        Height = 122
        Align = alClient
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 882
          Height = 121
          Align = alTop
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Gauge1: TGauge
            Left = 16
            Top = 59
            Width = 841
            Height = 36
            ForeColor = clAqua
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Progress = 0
          end
          object Button2: TButton
            Left = 16
            Top = 7
            Width = 266
            Height = 46
            Caption = 'Limpar Banco >>>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button2Click
          end
          object Button1: TButton
            Left = 320
            Top = 7
            Width = 266
            Height = 46
            Caption = 'Limpar Movimenta'#231#227'o >>>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button1Click
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 79
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 21
      Top = 12
      Width = 91
      Height = 18
      Caption = 'Banco de Dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object EditBanco: TEdit
      Left = 21
      Top = 34
      Width = 617
      Height = 26
      Color = 14803425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object FDConnectionFirebird: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Password=masterkey'
      'User_Name=SYSDBA')
    LoginPrompt = False
    Left = 616
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'fbclient.dll'
    Left = 728
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 744
    Top = 120
  end
  object CDSGravaMovtoEstoque: TFDQuery
    CachedUpdates = True
    Connection = FDConnectionFirebird
    Left = 624
    Top = 104
  end
  object QryExecuta: TFDQuery
    CachedUpdates = True
    Connection = FDConnectionFirebird
    Left = 368
    Top = 132
  end
end
