object Form1: TForm1
  Left = 181
  Top = 186
  Width = 1305
  Height = 701
  Caption = 'Notepad'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object tresc: TMemo
    Left = 0
    Top = 0
    Width = 1289
    Height = 642
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyDown = trescKeyDown
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Caption = 'New    Ctrl+N'
        OnClick = New1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Open1: TMenuItem
        Caption = 'Open    Ctrl+O'
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = 'Save    Ctrl+S'
        OnClick = Save1Click
      end
      object Saveas1: TMenuItem
        Caption = 'Save as    Ctrl+Shift+S'
        OnClick = Saveas1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Paste1: TMenuItem
        Caption = 'Cut    Ctrl+X'
        OnClick = Paste1Click
      end
      object CopyCtrlC1: TMenuItem
        Caption = 'Copy    Ctrl+C'
        OnClick = CopyCtrlC1Click
      end
      object PasteCtrlV1: TMenuItem
        Caption = 'Paste    Ctrl+V'
        OnClick = PasteCtrlV1Click
      end
    end
    object Format1: TMenuItem
      Caption = 'Format'
      object linewrapping1: TMenuItem
        Caption = 'Line wrapping'
        Checked = True
        OnClick = linewrapping1Click
      end
      object Font1: TMenuItem
        Caption = 'Font'
        OnClick = Font1Click
      end
    end
    object View1: TMenuItem
      Caption = 'Help'
      object N3: TMenuItem
        Caption = 'Information'
        object Aboutprogram1: TMenuItem
          Caption = 'About program'
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Text files|*.txt|All files|*.*'
    Left = 56
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Text file|*.txt|Any file|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 96
    Top = 8
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 136
    Top = 8
  end
end
