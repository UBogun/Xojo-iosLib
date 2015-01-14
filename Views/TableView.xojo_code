#tag IOSView
Begin iosView TableView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "TableView"
   Top             =   0
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Label3, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Label3, 3, <Parent>, 3, False, +1.00, 1, 1, 91, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 58, 
      Enabled         =   True
      Height          =   58.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "This is just to give you some ideas of what the iOsTable extension brings to each iOSTable. A few more funtions and methods are included –please see the notes inside the module."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   91
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 141, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 2, 1, 20, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      Caption         =   "Return to menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   141.0
   End
   Begin iostable TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 1, 1, 336, 
      AutoLayout      =   TextArea1, 3, <Parent>, 3, False, +1.00, 1, 1, 147, 
      AutoLayout      =   TextArea1, 2, Label3, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 1, Label3, 1, False, +1.00, 1, 1, 0, 
      Editable        =   True
      Height          =   336.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   147
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch1, 1, TextArea1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch1, 3, TextArea1, 4, False, +1.00, 1, 1, 40, 
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   523
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, Switch1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 2, 1, 110, 
      AutoLayout      =   Label1, 3, Switch1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   79
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Scroll Enabled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   523
      Visible         =   True
      Width           =   110.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 1, Switch2, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label4, 2, Label9, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   Label4, 3, Switch2, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   443
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Bounces Zoom"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   523
      Visible         =   True
      Width           =   117.0
   End
   Begin iOSSwitch Switch2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch2, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch2, 1, TextArea1, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch2, 3, TextArea1, 4, False, +1.00, 1, 1, 40, 
      AutoLayout      =   Switch2, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   384
      LockedInPosition=   False
      Scope           =   0
      Top             =   523
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSTextField ContentOffsetX
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ContentOffsetX, 1, Label5, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ContentOffsetX, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ContentOffsetX, 3, Label5, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ContentOffsetX, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   176
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "X"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   562
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label5, 1, Switch1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label5, 7, , 0, False, +1.00, 1, 1, 148, 
      AutoLayout      =   Label5, 3, Switch1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Content Offset (X/Y):"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   562
      Visible         =   True
      Width           =   148.0
   End
   Begin iOSTextField ContentOffsetY
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ContentOffsetY, 1, ContentOffsetX, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ContentOffsetY, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ContentOffsetY, 3, Label5, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ContentOffsetY, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   275
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Y"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   562
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 4, Label5, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button2, 3, ContentOffsetY, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button2, 1, Switch2, 1, False, +1.00, 1, 1, 0, 
      Caption         =   "Set"
      Enabled         =   True
      Height          =   30.0
      Left            =   384
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   562
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSSwitch animatedSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   animatedSwitch, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   animatedSwitch, 3, ContentOffsetX, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   animatedSwitch, 1, Button2, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   animatedSwitch, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   492
      LockedInPosition=   False
      Scope           =   0
      Top             =   562
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label6, 3, Switch1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label6, 2, TextArea1, 2, False, +1.00, 1, 1, -103, 
      AutoLayout      =   Label6, 1, animatedSwitch, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label6, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   551
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Animated"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   562
      Visible         =   True
      Width           =   94.0
   End
   Begin iOSLabel Label7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label7, 4, ContentinsetTop, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label7, 3, animatedSwitch, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label7, 2, ContentOffsetY, 1, False, +1.00, 2, 1, 2, 
      AutoLayout      =   Label7, 1, Switch1, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Content Inset (Top//Left/Bottom/Right)"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   601
      Visible         =   True
      Width           =   257.0
   End
   Begin iOSTextField ContentinsetTop
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ContentinsetTop, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ContentinsetTop, 3, Label7, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ContentinsetTop, 1, Label7, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ContentinsetTop, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   285
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Top"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   601
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSTextField ContentInsetLeft
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ContentInsetLeft, 1, ContentinsetTop, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ContentInsetLeft, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ContentInsetLeft, 3, ContentinsetTop, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ContentInsetLeft, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   384
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Left"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   601
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSTextField ContentInsetBottom
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ContentInsetBottom, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   ContentInsetBottom, 1, ContentInsetLeft, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ContentInsetBottom, 3, ContentinsetTop, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ContentInsetBottom, 7, , 0, False, +1.00, 1, 1, 91, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   483
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Bottom"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   601
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSTextField ContentInsetRight
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ContentInsetRight, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ContentInsetRight, 3, ContentInsetBottom, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ContentInsetRight, 1, ContentInsetBottom, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ContentInsetRight, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   582
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Right"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   601
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 1, ContentInsetRight, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 1, 1, 64, 
      AutoLayout      =   Button3, 3, ContentInsetRight, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Set"
      Enabled         =   True
      Height          =   30.0
      Left            =   681
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   601
      Visible         =   True
      Width           =   64.0
   End
   Begin iOSButton Button5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button5, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button5, 1, Label6, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button5, 3, Label6, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button5, 7, , 0, False, +1.00, 1, 1, 64, 
      Caption         =   "Refresh"
      Enabled         =   True
      Height          =   30.0
      Left            =   653
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   562
      Visible         =   True
      Width           =   64.0
   End
   Begin iOSSwitch Switch3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch3, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch3, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Switch3, 3, Label7, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Switch3, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   640
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label8, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label8, 3, Switch3, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label8, 7, , 0, False, +1.00, 1, 1, 422, 
      AutoLayout      =   Label8, 1, Switch3, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      Enabled         =   True
      Height          =   30.0
      Left            =   79
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ScrollToTop Enabled (Tap on status bar to scroll to the top row)"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   640
      Visible         =   True
      Width           =   422.0
   End
   Begin iOSSwitch DirectionalSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   DirectionalSwitch, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   DirectionalSwitch, 1, Label8, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   DirectionalSwitch, 3, Label8, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   DirectionalSwitch, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   509
      LockedInPosition=   False
      Scope           =   0
      Top             =   640
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label9
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label9, 3, DirectionalSwitch, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label9, 1, DirectionalSwitch, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label9, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   568
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Directional Lock"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   640
      Visible         =   True
      Width           =   -8.0
   End
   Begin iOSTextField ScrollRectLeft
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ScrollRectLeft, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ScrollRectLeft, 3, Scrollbutton, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   ScrollRectLeft, 1, Scrollbutton, 2, False, +1.00, 2, 1, *kStdControlGapH, 
      AutoLayout      =   ScrollRectLeft, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   133
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Left"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   679
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSTextField Scrollrecttop
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Scrollrecttop, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   Scrollrecttop, 3, ScrollRectLeft, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Scrollrecttop, 1, ScrollRectLeft, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Scrollrecttop, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   232
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Top"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   679
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSButton Scrollbutton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Scrollbutton, 7, , 0, False, +1.00, 1, 1, 105, 
      AutoLayout      =   Scrollbutton, 3, Switch3, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Scrollbutton, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Scrollbutton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Scroll To Rect"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   679
      Visible         =   True
      Width           =   105.0
   End
   Begin iOSTextField ScrollrectHeigth
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ScrollrectHeigth, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ScrollrectHeigth, 3, ScrollRectWidth, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ScrollrectHeigth, 1, ScrollRectWidth, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ScrollrectHeigth, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   430
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Heigth"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   679
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSTextField ScrollRectWidth
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ScrollRectWidth, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ScrollRectWidth, 3, Scrollrecttop, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ScrollRectWidth, 1, Scrollrecttop, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ScrollRectWidth, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   331
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Width"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   679
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSSwitch Switch4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch4, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch4, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Switch4, 3, Scrollbutton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Switch4, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   717
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label12
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label12, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label12, 3, Switch4, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label12, 2, Button1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label12, 1, Switch4, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      Enabled         =   True
      Height          =   30.0
      Left            =   79
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Paging"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   717
      Visible         =   True
      Width           =   82.0
   End
   Begin iOSLabel Label13
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label13, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label13, 3, Switch5, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label13, 7, , 0, False, +1.00, 1, 1, 83, 
      AutoLayout      =   Label13, 1, Switch5, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      Enabled         =   True
      Height          =   30.0
      Left            =   256
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Bounces"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   523
      Visible         =   True
      Width           =   83.0
   End
   Begin iOSSwitch Switch5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch5, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch5, 3, Label4, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch5, 1, Label1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Switch5, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   197
      LockedInPosition=   False
      Scope           =   0
      Top             =   523
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label14
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label14, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label14, 3, Label12, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label14, 7, , 0, False, +1.00, 1, 1, 124, 
      AutoLayout      =   Label14, 1, <Parent>, 1, False, +1.00, 1, 1, 162, 
      Enabled         =   True
      Height          =   30.0
      Left            =   162
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Always bounce …"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   717
      Visible         =   True
      Width           =   124.0
   End
   Begin iOSSwitch alwysBH
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   alwysBH, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   alwysBH, 3, Label14, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   alwysBH, 1, Label14, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   alwysBH, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   294
      LockedInPosition=   False
      Scope           =   0
      Top             =   717
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label15
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label15, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label15, 3, alwysBH, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label15, 7, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   Label15, 1, alwysBH, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      Enabled         =   True
      Height          =   30.0
      Left            =   353
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Horizontal"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   717
      Visible         =   True
      Width           =   82.0
   End
   Begin iOSSwitch alwysBV
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   alwysBV, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   alwysBV, 1, Label15, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   alwysBV, 3, alwysBH, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   alwysBV, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   443
      LockedInPosition=   False
      Scope           =   0
      Top             =   717
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSButton Button6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button6, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button6, 1, Label16, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button6, 3, Scrollbutton1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Button6, 7, , 0, False, +1.00, 1, 1, 152, 
      Caption         =   "Flash Scrollbars"
      Enabled         =   True
      Height          =   30.0
      Left            =   568
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   717
      Visible         =   True
      Width           =   152.0
   End
   Begin iOSSegmentedControl IndicatorControl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   IndicatorControl, 3, Switch4, 4, False, +1.00, 1, 1, 26, 
      AutoLayout      =   IndicatorControl, 2, Scrollrecttop, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   IndicatorControl, 1, Switch4, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   IndicatorControl, 8, , 0, True, +1.00, 1, 1, 29, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Default\n\nTrue\rBlack\n\nFalse\rWhite\n\nFalse"
      Top             =   774
      Value           =   0
      Visible         =   True
      Width           =   204.0
   End
   Begin iOSLabel Label17
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label17, 3, IndicatorControl, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label17, 1, IndicatorControl, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label17, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   232
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ContentSize"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   774
      Visible         =   True
      Width           =   -232.0
   End
   Begin iOSTextField ContentSizeW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ContentSizeW, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ContentSizeW, 3, Label17, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ContentSizeW, 1, Label17, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ContentSizeW, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   8
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "X"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   774
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSTextField ContentSizeH
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ContentSizeH, 7, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ContentSizeH, 3, ContentSizeW, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ContentSizeH, 1, ContentSizeW, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ContentSizeH, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   107
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Y"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   774
      Visible         =   True
      Width           =   91.0
   End
   Begin iOSButton Button7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button7, 7, , 0, False, +1.00, 1, 1, 64, 
      AutoLayout      =   Button7, 3, ContentSizeH, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button7, 1, ContentSizeH, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button7, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Set"
      Enabled         =   True
      Height          =   30.0
      Left            =   206
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   774
      Visible         =   True
      Width           =   64.0
   End
   Begin iOSLabel Label18
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label18, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label18, 3, IndicatorControl, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label18, 2, Label14, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   Label18, 1, IndicatorControl, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Deceleration Rate:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   811
      Visible         =   True
      Width           =   134.0
   End
   Begin iOSTextField DecRate
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   DecRate, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   DecRate, 3, Label18, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   DecRate, 2, alwysBH, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   DecRate, 1, Label18, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   162
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "< 1"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   811
      Visible         =   True
      Width           =   124.0
   End
   Begin iOSButton Button8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button8, 7, , 0, False, +1.00, 1, 1, 64, 
      AutoLayout      =   Button8, 3, DecRate, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button8, 1, DecRate, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button8, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Set"
      Enabled         =   True
      Height          =   30.0
      Left            =   294
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   811
      Visible         =   True
      Width           =   64.0
   End
   Begin iOSButton Scrollbutton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Scrollbutton1, 7, , 0, False, +1.00, 1, 1, 105, 
      AutoLayout      =   Scrollbutton1, 3, ScrollrectHeigth, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Scrollbutton1, 1, ScrollrectHeigth, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Scrollbutton1, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Zoom To Rect"
      Enabled         =   True
      Height          =   30.0
      Left            =   529
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   679
      Visible         =   True
      Width           =   105.0
   End
   Begin iOSSwitch Switch6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch6, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch6, 3, Switch1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch6, 1, Label4, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Switch6, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   568.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   523.0
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label20
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label20, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label20, 1, Switch6, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label20, 3, Switch6, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label20, 7, , 0, False, +1.00, 1, 1, 117, 
      Enabled         =   True
      Height          =   30.0
      Left            =   627.0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Delays Touch"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   523.0
      Visible         =   True
      Width           =   117.0
   End
   Begin iOSLabel Label16
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label16, 1, alwysBV, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label16, 2, Switch6, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Label16, 3, alwysBV, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label16, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   502
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   "nil"
      Scope           =   0
      Text            =   "Vertical"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   717
      Visible         =   True
      Width           =   58.0
   End
   Begin iOSButton Button9
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button9, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button9, 1, RowHeightText, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button9, 3, RowHeightText, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button9, 7, , 0, False, +1.00, 1, 1, 64, 
      Caption         =   "Set"
      Enabled         =   True
      Height          =   30.0
      Left            =   529.0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   811.0
      Visible         =   True
      Width           =   64.0
   End
   Begin iOSLabel Label21
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label21, 1, Button8, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label21, 7, , 0, False, +1.00, 1, 1, 87, 
      AutoLayout      =   Label21, 3, Button8, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label21, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   366.0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Row Height:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   811.0
      Visible         =   True
      Width           =   87.0
   End
   Begin iOSTextField RowHeightText
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   RowHeightText, 1, Label21, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   RowHeightText, 2, Scrollbutton1, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   RowHeightText, 3, Label21, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   RowHeightText, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   461.0
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   811.0
      Visible         =   True
      Width           =   60.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  UpdateValues
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub UpdateValues()
		  ContentOffsetX.text = TextArea1.ContentOffset.x.ToText(locale.Current, "#.###")
		  ContentOffsetY.text = TextArea1.ContentOffset.y.ToText(locale.Current, "#.###")
		  // 
		  dim myoffset as UIEdgeInsets64Bit = TextArea1.ContentInset
		  ContentinsetTop.text = myoffset.Top.totext(locale.Current, "#.###")
		  ContentInsetBottom.text = myoffset.Bottom.totext(locale.Current, "#.###")
		  ContentInsetLeft.text = myoffset.Left.totext(locale.Current, "#.###")
		  ContentInsetRight.text = myoffset.Right.totext(locale.Current, "#.###")
		  // 
		  dim cSize as size = TextArea1.ContentSize
		  ContentSizeW.text = cSize.Width.totext(locale.Current, "###.##")
		  ContentSizeH.text = cSize.Height.totext(locale.Current, "###.##")
		  // 
		  DecRate.text = TextArea1.DecelerationRate.ToText
		  
		  RowHeightText.text = TextArea1.RowHeight.ToText
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  
		  self.DismissModal (true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextArea1
	#tag Event
		Sub Open()
		  me.BackgroundColor = &c435B9600
		  me.RowHeight = 65
		  me.AddSection ("First Section")
		  for q as integer = 1 to 100
		    me.AddRow (0, new iOSTableCellData (q.ToText+". Line"))
		  next
		  me.MaximumZoomScale = 500
		  me.MinimumZoomScale = 0.01
		  UpdateValues
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  TextArea1.ScrollEnabled = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch2
	#tag Event
		Sub ValueChanged()
		  TextArea1.BouncesZoom = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = TextArea1.BouncesZoom
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  dim mypoint as new point (double.FromText(ContentOffsetX.Text), double.FromText (ContentOffsetY.text))
		  if animatedSwitch.value then 
		    TextArea1.ContentOffsetAnimated =  mypoint
		  else
		    TextArea1.ContentOffset =  mypoint
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events animatedSwitch
	#tag Event
		Sub ValueChanged()
		  // TextArea1.BouncesZoom = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  // me.Value = TextArea1.BouncesZoom
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Action()
		  dim myinset as  UIEdgeInsets64Bit
		  myinset.Bottom = double.fromtext(ContentInsetBottom.Text)
		  myinset.Top = double.fromtext(ContentinsetTop.Text)
		  myinset.Left = double.fromtext(ContentInsetLeft.Text)
		  myinset.Right = double.fromtext(ContentInsetRight.Text)
		  TextArea1.ContentInset = myinset
		  UpdateValues
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button5
	#tag Event
		Sub Action()
		  UpdateValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch3
	#tag Event
		Sub ValueChanged()
		  TextArea1.ScrollToTopEnabled = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.value = TextArea1.ScrollToTopEnabled
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DirectionalSwitch
	#tag Event
		Sub ValueChanged()
		  TextArea1.DirectionalLockEnabled = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = TextArea1.DirectionalLockEnabled
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Scrollbutton
	#tag Event
		Sub Action()
		  dim myrect  as  new rect( double.fromtext(ScrollRectLeft.Text), double.fromtext(Scrollrecttop.Text),double.fromtext(ScrollRectWidth.Text), double.fromtext(ScrollrectHeigth.Text))
		  TextArea1.ScrollToRect (myrect, true)
		  UpdateValues
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch4
	#tag Event
		Sub ValueChanged()
		  TextArea1.PagingEnabled = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.value = TextArea1.PagingEnabled
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch5
	#tag Event
		Sub ValueChanged()
		  TextArea1.BouncingEnabled = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = TextArea1.BouncingEnabled
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events alwysBH
	#tag Event
		Sub ValueChanged()
		  TextArea1.alwaysBounceHorizontal = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = TextArea1.AlwaysBounceHorizontal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events alwysBV
	#tag Event
		Sub ValueChanged()
		  TextArea1.alwaysBounceVertical = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = TextArea1.AlwaysBounceVertical
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button6
	#tag Event
		Sub Action()
		  TextArea1.FlashScrollIndicators
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IndicatorControl
	#tag Event
		Sub ValueChanged()
		  select case me.Value
		  case 0
		    TextArea1.IndicatorStyle = iOSTextAreaExtension.IndicatorStyle.Default
		  case 1
		    TextArea1.IndicatorStyle = iOSTextAreaExtension.IndicatorStyle.Black
		  case 2
		    TextArea1.IndicatorStyle = iOSTextAreaExtension.IndicatorStyle.White
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button7
	#tag Event
		Sub Action()
		  dim mysize as new size (double.FromText(ContentSizeW.text), double.FromText(ContentSizeH.text))
		  TextArea1.ContentSize = mysize
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button8
	#tag Event
		Sub Action()
		  TextArea1.DecelerationRate = double.FromText (DecRate.text)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Scrollbutton1
	#tag Event
		Sub Action()
		  dim myrect  as  new rect( double.fromtext(ScrollRectLeft.Text), double.fromtext(Scrollrecttop.Text),double.fromtext(ScrollRectWidth.Text), double.fromtext(ScrollrectHeigth.Text))
		  TextArea1.ZoomToRect (myrect, true)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch6
	#tag Event
		Sub ValueChanged()
		  TextArea1.DelaysContentTouches = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = TextArea1.DelaysContentTouches
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button9
	#tag Event
		Sub Action()
		  TextArea1.rowheight = double.FromText (RowHeightText.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
