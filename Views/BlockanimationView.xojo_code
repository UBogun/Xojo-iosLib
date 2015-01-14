#tag IOSView
Begin iosView BlockanimationView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "Block Animations"
   Top             =   0
   Begin iOSButton AFrameButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AFrameButton, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   AFrameButton, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   AFrameButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   AFrameButton, 4, ARotationButton, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      Caption         =   "Animate Frame"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   404
      Visible         =   True
      Width           =   100.0
   End
   Begin customUIImageView ImageView
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      ContentMode     =   "4"
      Height          =   -432.0
      Image           =   "1375790137"
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   432
      Visible         =   True
      Width           =   93.0
   End
   Begin iostextfield DurationField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   DurationField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   DurationField, 4, Label4, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   DurationField, 7, , 0, False, +1.00, 2, 1, 43, 
      AutoLayout      =   DurationField, 2, Label3, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   89
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "sec."
      Scope           =   0
      Text            =   "2"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   72
      Visible         =   True
      Width           =   43.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 64, 
      AutoLayout      =   Label1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Duration"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   64.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 21, 
      AutoLayout      =   Label2, 3, Label1, 4, False, +1.00, 2, 1, *kStdControlGapV, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 46, 
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   21.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Frame:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   111
      Visible         =   True
      Width           =   46.0
   End
   Begin iostextfield FXField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   FXField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   FXField, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   FXField, 3, Label2, 4, False, +1.00, 2, 1, 5, 
      AutoLayout      =   FXField, 7, , 0, False, +1.00, 2, 1, 45, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "8"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "x"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   12
      Top             =   137
      Visible         =   True
      Width           =   45.0
   End
   Begin iostextfield FYField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   FYField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   FYField, 1, FXField, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   FYField, 2, FXField, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   FYField, 3, FXField, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "8"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "y"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   12
      Top             =   176
      Visible         =   True
      Width           =   45.0
   End
   Begin iostextfield FWField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   FWField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   FWField, 1, FYField, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   FWField, 2, FYField, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   FWField, 3, FYField, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "8"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "w"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   12
      Top             =   215
      Visible         =   True
      Width           =   45.0
   End
   Begin iostextfield FHField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   FHField, 1, FWField, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   FHField, 2, FWField, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   FHField, 3, FWField, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   FHField, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "8"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "h"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   12
      Top             =   254
      Visible         =   True
      Width           =   45.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 58, 
      AutoLayout      =   Label3, 3, Label2, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Label3, 1, Label2, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 21, 
      Enabled         =   True
      Height          =   21.0
      Left            =   74
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Bounds:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   111
      Visible         =   True
      Width           =   58.0
   End
   Begin iostextfield BHField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BHField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   BHField, 2, BWField, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BHField, 3, FHField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BHField, 7, , 0, False, +1.00, 1, 1, 45, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   74
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "h"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   254
      Visible         =   True
      Width           =   45.0
   End
   Begin iostextfield BWField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BWField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   BWField, 2, BYField, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BWField, 3, FWField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BWField, 7, , 0, False, +1.00, 1, 1, 45, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   74
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "w"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   215
      Visible         =   True
      Width           =   45.0
   End
   Begin iostextfield BXField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BXField, 1, Label3, 1, False, +1.00, 2, 1, 0, 
      AutoLayout      =   BXField, 7, , 0, False, +1.00, 1, 1, 45, 
      AutoLayout      =   BXField, 3, FXField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BXField, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   74
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "x"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   137
      Visible         =   True
      Width           =   45.0
   End
   Begin iostextfield BYField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BYField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   BYField, 2, BXField, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BYField, 3, FYField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BYField, 7, , 0, False, +1.00, 1, 1, 45, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   74
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "y"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   176
      Visible         =   True
      Width           =   45.0
   End
   Begin iOSButton ABoundsButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ABoundsButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   ABoundsButton, 1, AFrameButton, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ABoundsButton, 3, AFrameButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ABoundsButton, 7, , 0, False, +1.00, 1, 1, 114, 
      Caption         =   "Animate Bounds"
      Enabled         =   True
      Height          =   30.0
      Left            =   128
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   404
      Visible         =   True
      Width           =   114.0
   End
   Begin iOSSwitch Begincurrent
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Begincurrent, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Begincurrent, 3, Label1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Begincurrent, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Begincurrent, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   31.0
      Left            =   953
      LockedInPosition=   False
      Scope           =   0
      Top             =   73
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 2, Begincurrent, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 127, 
      AutoLayout      =   Label4, 3, Begincurrent, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 4, Label3, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      Enabled         =   True
      Height          =   30.0
      Left            =   818
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Begin from current"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   127.0
   End
   Begin iOSLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label5, 7, , 0, False, +1.00, 1, 1, 163, 
      AutoLayout      =   Label5, 3, Repeat, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label5, 2, Repeat, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   782
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Repeat"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   112
      Visible         =   True
      Width           =   163.0
   End
   Begin iOSSwitch Repeat
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Repeat, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Repeat, 3, Begincurrent, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Repeat, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Repeat, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   953
      LockedInPosition=   False
      Scope           =   0
      Top             =   112
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch AutoReverse
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AutoReverse, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   AutoReverse, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   AutoReverse, 3, Repeat, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   AutoReverse, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   953
      LockedInPosition=   False
      Scope           =   0
      Top             =   151
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label6, 7, , 0, False, +1.00, 1, 1, 163, 
      AutoLayout      =   Label6, 3, AutoReverse, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label6, 2, AutoReverse, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Label6, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   782
      LockedInPosition=   False
      Scope           =   0
      Text            =   "AutoReverse"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   151
      Visible         =   True
      Width           =   163.0
   End
   Begin iOSButton SBoundsButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SBoundsButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   SBoundsButton, 7, , 0, False, +1.00, 1, 1, 86, 
      AutoLayout      =   SBoundsButton, 3, ABoundsButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   SBoundsButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Set Bounds"
      Enabled         =   True
      Height          =   30.0
      Left            =   918
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   404
      Visible         =   True
      Width           =   86.0
   End
   Begin iOSButton SFrameButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SFrameButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   SFrameButton, 2, SBoundsButton, 1, False, +1.00, 4, 1, -16, 
      AutoLayout      =   SFrameButton, 3, SBoundsButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   SFrameButton, 7, , 0, False, +1.00, 1, 1, 73, 
      Caption         =   "Set Frame"
      Enabled         =   True
      Height          =   30.0
      Left            =   829
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   404
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSSegmentedControl AnimationOptControl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AnimationOptControl, 7, , 0, False, +1.00, 1, 1, 215, 
      AutoLayout      =   AnimationOptControl, 1, <Parent>, 1, False, +1.00, 2, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   AnimationOptControl, 8, , 0, True, +1.00, 1, 1, 29, 
      AutoLayout      =   AnimationOptControl, 4, SFrameButton, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "InOut\n\nTrue\rIn\n\nFalse\rOut\n\nFalse\rLinear\n\nFalse"
      Top             =   367
      Value           =   0
      Visible         =   True
      Width           =   215.0
   End
   Begin ioslabel TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 1, AnimationOptControl, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 2, SBoundsButton, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 4, AnimationOptControl, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 2, 1, 97, 
      Enabled         =   False
      Height          =   97.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "See the Apple in the upper middle? Choose diffferent settings and animate them. Try the switches to the right and the animation options below. To override an animation that is set to repeat, switch ""begin from current"" off and start another animation with different positions. This will not work always though.The second segmented control is useful if you swith on ""Transitions"""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   262
      Visible         =   True
      Width           =   984.0
      Begin iostextfield TrF0
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   TrF0, 8, , 0, False, +1.00, 1, 1, 31, 
         AutoLayout      =   TrF0, 2, VelocityField, 2, False, +1.00, 2, 1, 0, 
         AutoLayout      =   TrF0, 3, VelocityField, 4, False, +1.00, 1, 1, 28, 
         AutoLayout      =   TrF0, 7, , 0, False, +1.00, 1, 1, 45, 
         Enabled         =   False
         Height          =   31.0
         KeyboardType    =   "2"
         Left            =   959
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "TextArea1"
         Password        =   False
         PlaceHolder     =   "0"
         Scope           =   0
         Text            =   "0"
         TextAlignment   =   "1"
         TextColor       =   &c06001C00
         TextFont        =   ""
         TextSize        =   0
         Top             =   327
         Visible         =   True
         Width           =   45.0
      End
      Begin iostextfield TRFB
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   TRFB, 8, , 0, False, +1.00, 2, 1, 31, 
         AutoLayout      =   TRFB, 2, TrF0, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
         AutoLayout      =   TRFB, 3, TrF0, 3, False, +1.00, 1, 1, 0, 
         AutoLayout      =   TRFB, 7, , 0, False, +1.00, 1, 1, 79, 
         Enabled         =   False
         Height          =   31.0
         KeyboardType    =   "2"
         Left            =   872
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "TextArea1"
         Password        =   False
         PlaceHolder     =   "0"
         Scope           =   0
         Text            =   "0"
         TextAlignment   =   "1"
         TextColor       =   &c06001C00
         TextFont        =   ""
         TextSize        =   0
         Top             =   327
         Visible         =   True
         Width           =   79.0
      End
      Begin iostextfield TRFA
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   TRFA, 2, TRFB, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
         AutoLayout      =   TRFA, 7, , 0, False, +1.00, 1, 1, 79, 
         AutoLayout      =   TRFA, 3, TRFB, 3, False, +1.00, 1, 1, 0, 
         AutoLayout      =   TRFA, 8, , 0, False, +1.00, 1, 1, 31, 
         Enabled         =   False
         Height          =   31.0
         KeyboardType    =   "2"
         Left            =   785
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "TextArea1"
         Password        =   False
         PlaceHolder     =   "0"
         Scope           =   0
         Text            =   "0"
         TextAlignment   =   "1"
         TextColor       =   &c06001C00
         TextFont        =   ""
         TextSize        =   0
         Top             =   327
         Visible         =   True
         Width           =   79.0
      End
   End
   Begin iOSLabel AnimationEndedLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AnimationEndedLabel, 4, TextArea1, 4, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   AnimationEndedLabel, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AnimationEndedLabel, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   AnimationEndedLabel, 7, , 0, False, +1.00, 2, 1, 250, 
      Enabled         =   True
      Height          =   30.0
      Left            =   387
      LockedInPosition=   False
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   321
      Visible         =   True
      Width           =   250.0
   End
   Begin iostextfield BGColorField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BGColorField, 8, , 0, False, +1.00, 1, 1, 36, 
      AutoLayout      =   BGColorField, 1, TextArea1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BGColorField, 2, BHField, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BGColorField, 3, Label7, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Enabled         =   True
      Height          =   36.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   322
      Visible         =   True
      Width           =   99.0
   End
   Begin iOSLabel Label7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label7, 8, , 0, False, +1.00, 1, 1, 21, 
      AutoLayout      =   Label7, 1, BGColorField, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label7, 3, BHField, 4, False, +1.00, 2, 1, *kStdControlGapV, 
      AutoLayout      =   Label7, 7, , 0, False, +1.00, 1, 1, 137, 
      Enabled         =   True
      Height          =   21.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "BackgroundColor:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   293
      Visible         =   True
      Width           =   137.0
   End
   Begin iOSButton SFrameButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SFrameButton1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   SFrameButton1, 2, SFrameButton, 1, False, +1.00, 4, 1, -*kStdControlGapH, 
      AutoLayout      =   SFrameButton1, 3, SFrameButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   SFrameButton1, 7, , 0, False, +1.00, 1, 1, 92, 
      Caption         =   "Set BGColor"
      Enabled         =   True
      Height          =   30.0
      Left            =   729
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   404
      Visible         =   True
      Width           =   92.0
   End
   Begin iOSButton AColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AColorButton, 1, ABoundsButton, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   AColorButton, 7, , 0, False, +1.00, 1, 1, 119, 
      AutoLayout      =   AColorButton, 3, ABoundsButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AColorButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Animate BGColor"
      Enabled         =   True
      Height          =   30.0
      Left            =   250
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   404
      Visible         =   True
      Width           =   119.0
   End
   Begin iOSSwitch Spring
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Spring, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Spring, 3, AutoReverse, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Spring, 2, AutoReverse, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Spring, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   953
      LockedInPosition=   False
      Scope           =   0
      Top             =   190
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label8, 8, , 0, False, +1.00, 2, 1, 30, 
      AutoLayout      =   Label8, 2, Spring, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   Label8, 3, Spring, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label8, 7, , 0, False, +1.00, 1, 1, 135, 
      Enabled         =   True
      Height          =   30.0
      Left            =   810
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Spring Animation"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   190
      Visible         =   True
      Width           =   135.0
   End
   Begin iOSLabel Label9
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label9, 7, , 0, False, +1.00, 1, 1, 41, 
      AutoLayout      =   Label9, 3, Label4, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label9, 1, DurationField, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label9, 4, Label4, 4, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   140
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Delay"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   41.0
   End
   Begin iostextfield DelayField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   DelayField, 1, Label9, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   DelayField, 7, , 0, False, +1.00, 1, 1, 43, 
      AutoLayout      =   DelayField, 3, Label9, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   DelayField, 8, , 0, False, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   189
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "sec."
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   43.0
   End
   Begin iostextfield DampingField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   DampingField, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   DampingField, 1, Spring, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   DampingField, 3, Spring, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   DampingField, 7, , 0, False, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   953
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "1.0"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   229
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label10
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label10, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label10, 2, DampingField, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Label10, 3, Spring, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Enabled         =   True
      Height          =   30.0
      Left            =   837
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Damping Ratio"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   229
      Visible         =   True
      Width           =   108.0
   End
   Begin iOSLabel Label11
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label11, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label11, 2, VelocityField, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Label11, 3, DampingField, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label11, 7, , 0, False, +1.00, 1, 1, 108, 
      Enabled         =   True
      Height          =   30.0
      Left            =   837
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Velocity"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   268
      Visible         =   True
      Width           =   108.0
   End
   Begin iostextfield VelocityField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   VelocityField, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   VelocityField, 1, DampingField, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   VelocityField, 2, DampingField, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   VelocityField, 3, DampingField, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   953
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "1.0"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   268
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSButton ResetButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ResetButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ResetButton, 7, , 0, False, +1.00, 1, 1, 67, 
      AutoLayout      =   ResetButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   ResetButton, 4, SBoundsButton, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      Caption         =   "Reset"
      Enabled         =   True
      Height          =   30.0
      Left            =   937
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   366
      Visible         =   True
      Width           =   67.0
   End
   Begin iOSLabel Label12
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label12, 8, , 0, False, +1.00, 1, 1, 21, 
      AutoLayout      =   Label12, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label12, 3, BGColorField, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label12, 7, , 0, False, +1.00, 1, 1, 137, 
      Enabled         =   True
      Height          =   21.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Rotation:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   366
      Visible         =   True
      Width           =   137.0
   End
   Begin iostextfield RotationField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   RotationField, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   RotationField, 7, , 0, False, +1.00, 1, 1, 99, 
      AutoLayout      =   RotationField, 3, Label12, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   RotationField, 8, , 0, False, +1.00, 1, 1, 36, 
      Enabled         =   True
      Height          =   36.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Angle"
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   395
      Visible         =   True
      Width           =   99.0
   End
   Begin iOSLabel Label13
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label13, 4, TRFA, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Label13, 8, , 0, False, +1.00, 1, 1, 21, 
      AutoLayout      =   Label13, 1, TRFA, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label13, 7, , 0, False, +1.00, 1, 1, 137, 
      Enabled         =   True
      Height          =   21.0
      Left            =   785
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Transformation"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   298
      Visible         =   True
      Width           =   137.0
   End
   Begin iOSButton ARotationButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ARotationButton, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, -*kStdControlGapV, 
      AutoLayout      =   ARotationButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   ARotationButton, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Caption         =   "Animate Rotation"
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
      Width           =   -248.0
   End
   Begin iostextfield TrF01
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TrF01, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   TrF01, 1, TrF0, 1, False, +1.00, 2, 1, 0, 
      AutoLayout      =   TrF01, 3, TrF0, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TrF01, 7, , 0, False, +1.00, 1, 1, 45, 
      Enabled         =   False
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   959
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "0"
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   366
      Visible         =   True
      Width           =   45.0
   End
   Begin iostextfield TrF1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TrF1, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   TrF1, 1, TrFTY, 2, False, +1.00, 2, 1, *kStdControlGapH, 
      AutoLayout      =   TrF1, 3, TrF01, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TrF1, 7, , 0, False, +1.00, 1, 1, 45, 
      Enabled         =   False
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   959
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "1"
      Scope           =   0
      Text            =   "1"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   405
      Visible         =   True
      Width           =   45.0
   End
   Begin iostextfield TrFTY
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TrFTY, 1, TrFD, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TrFTY, 7, , 0, False, +1.00, 1, 1, 79, 
      AutoLayout      =   TrFTY, 3, TrF1, 3, False, +1.00, 1, 1, 1, 
      AutoLayout      =   TrFTY, 8, , 0, False, +1.00, 1, 1, 31, 
      Enabled         =   False
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   872
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "1"
      Scope           =   0
      Text            =   "1"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   406
      Visible         =   True
      Width           =   79.0
   End
   Begin iostextfield TrFD
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TrFD, 2, TrF01, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   TrFD, 7, , 0, False, +1.00, 1, 1, 79, 
      AutoLayout      =   TrFD, 3, TrF01, 3, False, +1.00, 1, 1, 1, 
      AutoLayout      =   TrFD, 8, , 0, False, +1.00, 1, 1, 31, 
      Enabled         =   False
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   872
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "0"
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   367
      Visible         =   True
      Width           =   79.0
   End
   Begin iostextfield TrFC
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TrFC, 2, TRFA, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   TrFC, 7, , 0, False, +1.00, 1, 1, 79, 
      AutoLayout      =   TrFC, 3, TRFA, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TrFC, 8, , 0, False, +1.00, 1, 1, 31, 
      Enabled         =   False
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   785
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "0"
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   366
      Visible         =   True
      Width           =   79.0
   End
   Begin iostextfield TrFTX
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TrFTX, 1, TrFC, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TrFTX, 7, , 0, False, +1.00, 1, 1, 79, 
      AutoLayout      =   TrFTX, 3, TrFC, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TrFTX, 8, , 0, False, +1.00, 1, 1, 31, 
      Enabled         =   False
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   785
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "1"
      Scope           =   0
      Text            =   "1"
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   405
      Visible         =   True
      Width           =   79.0
   End
   Begin iOSButton Setrotationbutton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Setrotationbutton, 7, , 0, False, +1.00, 2, 1, 100, 
      AutoLayout      =   Setrotationbutton, 3, ARotationButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Setrotationbutton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Setrotationbutton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Set Rotation"
      Enabled         =   True
      Height          =   30.0
      Left            =   904
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   100.0
   End
   Begin iostextfield CXField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   CXField, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   CXField, 1, BXField, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   CXField, 3, BXField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   CXField, 7, , 0, False, +1.00, 1, 1, 45, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   127
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "x"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   137
      Visible         =   True
      Width           =   45.0
   End
   Begin iOSLabel CenterLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   CenterLabel, 8, , 0, False, +1.00, 1, 1, 21, 
      AutoLayout      =   CenterLabel, 1, CXField, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   CenterLabel, 3, Label3, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   CenterLabel, 7, , 0, False, +1.00, 1, 1, 58, 
      Enabled         =   True
      Height          =   21.0
      Left            =   127
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Center:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   111
      Visible         =   True
      Width           =   58.0
   End
   Begin iostextfield CYField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   CYField, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   CYField, 1, CXField, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   CYField, 3, BYField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   CYField, 7, , 0, False, +1.00, 1, 1, 45, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "2"
      Left            =   127
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "y"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c06001C00
      TextFont        =   ""
      TextSize        =   0
      Top             =   176
      Visible         =   True
      Width           =   45.0
   End
   Begin iOSButton SetCenterbutton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SetCenterbutton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   SetCenterbutton, 2, Setrotationbutton, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   SetCenterbutton, 3, Setrotationbutton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   SetCenterbutton, 7, , 0, False, +1.00, 1, 1, 86, 
      Caption         =   "Set Center"
      Enabled         =   True
      Height          =   30.0
      Left            =   810
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   86.0
   End
   Begin iOSButton ACenterButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ACenterButton, 7, , 0, False, +1.00, 1, 1, 112, 
      AutoLayout      =   ACenterButton, 3, ARotationButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ACenterButton, 1, ARotationButton, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ACenterButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Animate Center"
      Enabled         =   True
      Height          =   30.0
      Left            =   -220
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   112.0
   End
   Begin iOSLabel Label14
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label14, 7, , 0, False, +1.00, 1, 1, 137, 
      AutoLayout      =   Label14, 3, RotationField, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label14, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label14, 8, , 0, False, +1.00, 1, 1, 21, 
      Enabled         =   True
      Height          =   21.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Alpha:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   439
      Visible         =   True
      Width           =   137.0
      Begin iOSLabel Label17
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   Label17, 3, Label14, 3, False, +1.00, 1, 1, 0, 
         AutoLayout      =   Label17, 1, Label14, 1, False, +1.00, 1, 1, 0, 
         AutoLayout      =   Label17, 7, , 0, False, +1.00, 1, 1, 137, 
         AutoLayout      =   Label17, 8, , 0, False, +1.00, 1, 1, 21, 
         Enabled         =   True
         Height          =   21.0
         Left            =   20
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Label14"
         Scope           =   0
         Text            =   "Alpha:"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         TextFont        =   ""
         TextSize        =   0
         Top             =   439
         Visible         =   True
         Width           =   137.0
      End
   End
   Begin iostextfield Alphafield
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Alphafield, 7, , 0, False, +1.00, 1, 1, 99, 
      AutoLayout      =   Alphafield, 3, Label14, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Alphafield, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Alphafield, 8, , 0, False, +1.00, 1, 1, 36, 
      Enabled         =   True
      Height          =   36.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Angle"
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   468
      Visible         =   True
      Width           =   99.0
   End
   Begin iOSButton AAlphaButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AAlphaButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   AAlphaButton, 1, ACenterButton, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   AAlphaButton, 3, ACenterButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AAlphaButton, 7, , 0, False, +1.00, 1, 1, 112, 
      Caption         =   "Animate Alpha"
      Enabled         =   True
      Height          =   30.0
      Left            =   -100
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   112.0
   End
   Begin iOSButton SetAlphaButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SetAlphaButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   SetAlphaButton, 2, SetCenterbutton, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   SetAlphaButton, 3, SetCenterbutton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   SetAlphaButton, 7, , 0, False, +1.00, 1, 1, 86, 
      Caption         =   "Set Alpha"
      Enabled         =   True
      Height          =   30.0
      Left            =   716
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   86.0
   End
   Begin iOSSegmentedControl TransitionOptControl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TransitionOptControl, 1, AnimationOptControl, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   TransitionOptControl, 7, , 0, False, +1.00, 1, 1, 431, 
      AutoLayout      =   TransitionOptControl, 3, AnimationOptControl, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TransitionOptControl, 8, , 0, True, +1.00, 1, 1, 29, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   243
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "None\n\nTrue\rLeft\n\nFalse\rRight\n\nFalse\rUp\n\nFalse\rDown\n\nFalse\rDissolve\n\nFalse\rTop\n\nFalse\rBottom\n\nFalse"
      Top             =   367
      Value           =   0
      Visible         =   True
      Width           =   431.0
   End
   Begin iOSButton TestButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TestButton, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   TestButton, 2, CenterLabel, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TestButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   TestButton, 4, TextArea1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      Caption         =   "Return to Menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   224
      Visible         =   True
      Width           =   165.0
   End
   Begin iOSLabel Label15
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label15, 7, , 0, False, +1.00, 1, 1, 127, 
      AutoLayout      =   Label15, 3, Transistions, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label15, 2, Transistions, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Label15, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   624
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Transitions"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   127.0
   End
   Begin iOSSwitch Transistions
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Transistions, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Transistions, 2, Label4, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Transistions, 3, Begincurrent, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Transistions, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   759
      LockedInPosition=   False
      Scope           =   0
      Top             =   73
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iostextfield ScaleField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ScaleField, 7, , 0, False, +1.00, 1, 1, 99, 
      AutoLayout      =   ScaleField, 3, Label18, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ScaleField, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   ScaleField, 8, , 0, False, +1.00, 1, 1, 36, 
      Enabled         =   True
      Height          =   36.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Factor"
      Scope           =   0
      Text            =   "100"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   541
      Visible         =   True
      Width           =   99.0
   End
   Begin iOSButton SetScaleButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SetScaleButton, 3, AAlphaButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   SetScaleButton, 1, AAlphaButton, 1, False, +1.00, 1, 1, 100, 
      AutoLayout      =   SetScaleButton, 7, , 0, False, +1.00, 1, 1, 112, 
      AutoLayout      =   SetScaleButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Set Scale"
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   112.0
   End
   Begin iOSLabel Label18
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label18, 7, , 0, False, +1.00, 1, 1, 137, 
      AutoLayout      =   Label18, 3, Alphafield, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label18, 1, TestButton, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label18, 8, , 0, False, +1.00, 1, 1, 21, 
      Enabled         =   True
      Height          =   21.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Scale:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   512
      Visible         =   True
      Width           =   137.0
   End
   Begin iOSButton AnimateScaleButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AnimateScaleButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   AnimateScaleButton, 1, AColorButton, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   AnimateScaleButton, 3, AColorButton, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AnimateScaleButton, 7, , 0, False, +1.00, 1, 1, 81, 
      Caption         =   "An. Scale"
      Enabled         =   True
      Height          =   30.0
      Left            =   377
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   404
      Visible         =   True
      Width           =   81.0
   End
   Begin TransitionView TransitionView1
      BackButtonTitle =   "Back"
      Left            =   60
      LockedInPosition=   False
      NavigationBarVisible=   True
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      TabTitle        =   ""
      Title           =   "View Transitions"
      Top             =   60
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  UpdateValues
		  dim handle as ptr= self.Handle
		  dim vchandle as ptr= self.ViewControllerHandle
		  // dim mycanvas as  iOSLayoutConstraint
		  // dim myarray(2) as ptr
		  dim mydesc as text = iOSControlExtension.description (handle)
		  dim myclass as text = iOSControlExtension.description (Handle)
		  dim mysuperclass as text = iOSControlExtension.description (iOSControlExtension.getsuperclass(Handle))
		  dim mytag as integer = ImageView.Tag
		  // UIImageView.transitionFromView (self.handle, v2.Handle, 2, 0, NIL)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function AnimationOptionValue() As ioscontrolextension.AnimationCurve
		  Select case AnimationOptControl.Value
		  case 0
		    return iOSControlExtension.AnimationCurve.easeIneaseOut
		  case 1
		    return iOSControlExtension.AnimationCurve.EaseIn
		  case 2
		    return iOSControlExtension.AnimationCurve.EaseOut
		  case 3
		    return iOSControlExtension.AnimationCurve.Linear
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ClearAnimationCompleted()
		  AnimationEndedLabel.text = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ResetFrame()
		  dim myrect as new xojo.core.rect (330,150, 100,100)
		  ImageView.frame = myrect
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ResetTransformation()
		  dim seconds as single = single.FromText (DurationField.text)
		  dim options as UInteger = imageview.AnimationOptions (false, false, Begincurrent.value, repeat.value, AutoReverse.value, _
		  false, false, false, false, false, AnimationOptionValue)
		  options = options or TransitionOptionValue
		  dim delay as double = double.FromText (DelayField.text)
		  
		  ImageView.AnimateResetTransformation seconds, options, delay, Transistions.value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TransitionOptionValue() As UInteger
		  dim result as uinteger = TransitionOptControl.Value
		  return result.shiftleft(20)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateTransform(t as timer = NIL)
		  #pragma unused t
		  
		  dim mytransform as CGAffineTransform= ImageView.Transform
		  
		  TrFA.Text = mytransform.a.ToText(locale.Current, "#.####")
		  TrFB.Text = mytransform.b.ToText(locale.Current, "#.####")
		  TrFc.Text = mytransform.c.ToText(locale.Current, "#.####")
		  TrFD.Text = mytransform.d.ToText(locale.Current, "#.####")
		  TrFTx.Text = mytransform.tx.ToText(locale.Current, "#.####")
		  TrFTY.Text = mytransform.ty.ToText(locale.Current, "#.####")
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateValues()
		  dim myframe as xojo.core.rect = ImageView.Frame
		  FXField.text = myframe.Origin.X.ToText(locale.Current, "###")
		  FYField.text = myframe.Origin.Y.ToText(locale.Current, "###")
		  FWField.text = myframe.Width.ToText(locale.Current, "###")
		  FHField.Text = myframe.Height.ToText(locale.Current, "###")
		  
		  myframe = ImageView.Bounds
		  BXField.text = myframe.Origin.X.ToText(locale.Current, "###")
		  BYField.text = myframe.Origin.Y.ToText(locale.Current, "###")
		  BWField.text = myframe.Width.ToText(locale.Current, "###")
		  BHField.Text = myframe.Height.ToText(locale.Current, "###")
		  
		  dim mycenter as xojo.Core.Point = ImageView.Center
		  CXField.text = mycenter.X.ToText(locale.Current, "###")
		  CYField.text = mycenter.Y.ToText(locale.Current, "###")
		  
		  
		  BGColorField.text = ImageView.BackgroundColor.totext
		  
		  Alphafield.text = ImageView.Alpha.ToText(locale.Current, "#.####")
		  
		  UpdateTransform
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events AFrameButton
	#tag Event
		Sub Action()
		  dim x as Single = Single.FromText (FXField.text)
		  dim y as Single = Single.FromText (FYField.text)
		  dim w as Single = Single.FromText (FwField.text)
		  dim h as Single = Single.FromText (FhField.text)
		  dim seconds as double = double.FromText (DurationField.text)
		  dim delay as double = double.FromText (DelayField.text)
		  dim dampingRatio as double = double.FromText (DampingField.text)
		  dim velocity as double = double.FromText (VelocityField.text)
		  
		  dim options as UInteger = imageview.AnimationOptions (false, false, Begincurrent.value, repeat.value, AutoReverse.value, _
		  false, false, false, false, false, AnimationOptionValue)
		  options = options or TransitionOptionValue
		  
		  dim newrect as new xojo.core.rect(x,y,w,h)
		  if Spring.value then
		    ImageView.AnimateSpring (newrect, seconds, dampingRatio, velocity,  options, delay, false)
		  else
		    ImageView.Animate (newrect, seconds, false, options, delay, Transistions.value)
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImageView
	#tag Event
		Sub Open()
		  dim scaledimage as iOSImage = Apfel
		  scaledimage = scaledimage.Scaledimage (5)
		  me.image = scaledimage
		  me.HighlightedImage =  Apfelchrom
		  me.BackgroundColor = &cffffffff
		  ResetFrame
		  dim animimages() as iosimage =me.AnimationImages
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub AnimationFinished(animationCompleted as boolean)
		  AnimationEndedLabel.text = "Animation ended "+if (animationCompleted,"successfully", "incomplete")
		  xojo.core.timer.CallLater (1200, AddressOf clearanimationcompleted)
		  UpdateValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ABoundsButton
	#tag Event
		Sub Action()
		  dim x as Single = Single.FromText (bXField.text)
		  dim y as Single = Single.FromText (bYField.text)
		  dim w as Single = Single.FromText (bwField.text)
		  dim h as Single = Single.FromText (bhField.text)
		  dim seconds as single = single.FromText (DurationField.text)
		  dim delay as double = double.FromText (DelayField.text)
		  dim dampingRatio as double = double.FromText (DampingField.text)
		  dim velocity as double = double.FromText (VelocityField.text)
		  
		  dim options as UInteger = imageview.AnimationOptions (false, false, Begincurrent.value, repeat.value, AutoReverse.value, _
		  false, false, false, false, false, AnimationOptionValue)
		  options = options or TransitionOptionValue
		  
		  dim newrect as new xojo.core.rect(x,y,w,h)
		  if Spring.value then
		    ImageView.AnimateSpring (newrect, seconds, dampingRatio, velocity,  options, delay, true)
		  else
		    ImageView.Animate (newrect, seconds, true, options, delay, Transistions.value)
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SBoundsButton
	#tag Event
		Sub Action()
		  dim x as Single = Single.FromText (bXField.text)
		  dim y as Single = Single.FromText (bYField.text)
		  dim w as Single = Single.FromText (bwField.text)
		  dim h as Single = Single.FromText (bhField.text)
		  
		  dim newrect as new xojo.core.rect(x,y,w,h)
		  ImageView.bounds = newrect
		  UpdateValues
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SFrameButton
	#tag Event
		Sub Action()
		  dim x as Single = Single.FromText (FXField.text)
		  dim y as Single = Single.FromText (fYField.text)
		  dim w as Single = Single.FromText (fwField.text)
		  dim h as Single = Single.FromText (fhField.text)
		  
		  dim newrect as new xojo.core.rect(x,y,w,h)
		  ImageView.frame = newrect
		  UpdateValues
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SFrameButton1
	#tag Event
		Sub Action()
		  ImageView.BackgroundColor = BGColorField.text.ColorFromHex
		  UpdateValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AColorButton
	#tag Event
		Sub Action()
		  dim seconds as single = single.FromText (DurationField.text)
		  dim options as UInteger = imageview.AnimationOptions (false, false, Begincurrent.value, repeat.value, AutoReverse.value, _
		  false, false, false, false, false, AnimationOptionValue)
		  options = options or TransitionOptionValue
		  
		  dim delay as double = double.FromText (DelayField.text)
		  dim dampingRatio as double = double.FromText (DampingField.text)
		  dim velocity as double = double.FromText (VelocityField.text)
		  
		  dim newcolor as color = BGColorField.text.ColorFromHex
		  if Spring.value then 
		    ImageView.AnimateSpring (newcolor, seconds,  dampingRatio, velocity, options, delay)
		  else
		    ImageView.Animate (newcolor, seconds,  options, delay, Transistions.value)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ResetButton
	#tag Event
		Sub Action()
		  ResetFrame
		  ResetTransformation
		  UpdateValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ARotationButton
	#tag Event
		Sub Action()
		  dim angle as single = single.FromText (RotationField.text)
		  dim seconds as double = double.FromText (DurationField.text)
		  dim delay as double = double.FromText (DelayField.text)
		  dim dampingRatio as double = double.FromText (DampingField.text)
		  dim velocity as double = double.FromText (VelocityField.text)
		  
		  dim options as UInteger = imageview.AnimationOptions (false, false, Begincurrent.value, repeat.value, AutoReverse.value, _
		  false, false, false, false, false, AnimationOptionValue)
		  options = options or TransitionOptionValue
		  
		  if Spring.value then
		    ImageView.AnimateSpring (angle, seconds, dampingRatio, velocity,  options, delay)
		  else
		    ImageView.animate (angle, seconds, options, delay, not (Begincurrent.value), Transistions.value)
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Setrotationbutton
	#tag Event
		Sub Action()
		  dim angle as Single = Single.FromText (RotationField.text)
		  
		  // if Spring.value then
		  // ImageView.AnimateSpring (newrect, seconds, dampingRatio, velocity,  options, delay, false)
		  // else
		  ImageView.rotate (angle)
		  UpdateValues
		  // end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SetCenterbutton
	#tag Event
		Sub Action()
		  dim mycenter as new xojo.core.point  (Single.FromText (CXField.text), single.FromText(CYField.text))
		  
		  // if Spring.value then
		  // ImageView.AnimateSpring (newrect, seconds, dampingRatio, velocity,  options, delay, false)
		  // else
		  ImageView.center =mycenter
		  UpdateValues
		  // end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ACenterButton
	#tag Event
		Sub Action()
		  dim mycenter as new xojo.core.point  (Single.FromText (CXField.text), single.FromText(CYField.text))
		  dim seconds as double = double.FromText (DurationField.text)
		  dim delay as double = double.FromText (DelayField.text)
		  dim dampingRatio as double = double.FromText (DampingField.text)
		  dim velocity as double = double.FromText (VelocityField.text)
		  
		  dim options as UInteger = imageview.AnimationOptions (false, false, Begincurrent.value, repeat.value, AutoReverse.value, _
		  false, false, false, false, false, AnimationOptionValue)
		  options = options or TransitionOptionValue
		  
		  if Spring.value then
		    ImageView.AnimateSpring (mycenter, seconds, dampingRatio, velocity,  options, delay)
		  else
		    ImageView.Animate (mycenter, seconds, options, delay, Transistions.value)
		  end if
		  UpdateValues
		  // end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AAlphaButton
	#tag Event
		Sub Action()
		  dim myalpha as double = double.FromText (Alphafield.text)
		  dim seconds as double = double.FromText (DurationField.text)
		  dim delay as double = double.FromText (DelayField.text)
		  dim dampingRatio as double = double.FromText (DampingField.text)
		  dim velocity as double = double.FromText (VelocityField.text)
		  
		  dim options as UInteger = imageview.AnimationOptions (false, false, Begincurrent.value, repeat.value, AutoReverse.value, _
		  false, false, false, false, false, AnimationOptionValue)
		  options = options or TransitionOptionValue
		  
		  if Spring.value then
		    ImageView.AnimateSpring (myalpha, seconds, dampingRatio, velocity,  options, delay)
		  else
		    ImageView.Animate (myalpha, seconds, options, delay, Transistions.value)
		  end if
		  UpdateValues
		  // end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SetAlphaButton
	#tag Event
		Sub Action()
		  dim myalpha as double = double.FromText (Alphafield.text)
		  
		  // if Spring.value then
		  // ImageView.AnimateSpring (newrect, seconds, dampingRatio, velocity,  options, delay, false)
		  // else
		  ImageView.Alpha =myalpha
		  UpdateValues
		  // end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TestButton
	#tag Event
		Sub Action()
		  self.DismissModal (true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SetScaleButton
	#tag Event
		Sub Action()
		  dim myscale as double = double.FromText (ScaleField.text)
		  
		  // if Spring.value then
		  // ImageView.AnimateSpring (newrect, seconds, dampingRatio, velocity,  options, delay, false)
		  // else
		  ImageView.Scale myscale, 0, Begincurrent.value
		  UpdateValues
		  // end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AnimateScaleButton
	#tag Event
		Sub Action()
		  dim myscale as double = double.FromText (ScaleField.text)
		  dim seconds as double = double.FromText (DurationField.text)
		  dim delay as double = double.FromText (DelayField.text)
		  dim dampingRatio as double = double.FromText (DampingField.text)
		  dim velocity as double = double.FromText (VelocityField.text)
		  
		  dim options as UInteger = imageview.AnimationOptions (false, false, Begincurrent.value, repeat.value, AutoReverse.value, _
		  false, false, false, false, false, AnimationOptionValue)
		  options = options or TransitionOptionValue
		  
		  if Spring.value then
		    ImageView.AnimateSpring (myscale, 0, seconds, dampingRatio, velocity,  options, delay, false)
		  else
		    ImageView.Animate (myscale, 0, seconds, options, delay, Begincurrent.value, Transistions.value)
		  end if
		  
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
