#tag IOSView
Begin iosView ScaleView
   BackButtonTitle =   "test"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 9, <Parent>, 9, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Switch1, 3, <Parent>, 3, False, +1.00, 1, 1, 37, 
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   134
      LockedInPosition=   False
      Scope           =   0
      Top             =   37
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSOval Oval1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Oval1, 2, <Parent>, 2, False, +1.00, 1, 1, -46, 
      AutoLayout      =   Oval1, 8, , 0, False, +1.00, 1, 1, 165, 
      AutoLayout      =   Oval1, 4, <Parent>, 4, False, +1.00, 1, 1, -*kStdGapCtlToViewV, 
      AutoLayout      =   Oval1, 7, , 0, False, +1.00, 1, 1, 188, 
      BorderColor     =   &c00000000
      BorderWidth     =   2.0
      FillColor       =   &cFFFFFF00
      Height          =   165.0
      Left            =   86
      LockedInPosition=   False
      Scope           =   0
      Top             =   295
      Visible         =   True
      Width           =   188.0
   End
   Begin iOSRectangle Rectangle1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Rectangle1, 3, Switch1, 4, False, +1.00, 1, 1, 8, 
      AutoLayout      =   Rectangle1, 4, Oval1, 3, False, +1.00, 1, 1, 8, 
      AutoLayout      =   Rectangle1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      BorderColor     =   &c00000000
      BorderWidth     =   2.0
      CornerHeight    =   0.0
      CornerWidth     =   0.0
      FillColor       =   &c0F237700
      Height          =   227.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   76
      Visible         =   True
      Width           =   280.0
      Begin iOSSlider Slider2
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   Slider2, 1, Rectangle1, 1, False, +1.00, 1, 1, 46, 
         AutoLayout      =   Slider2, 3, Rectangle1, 3, False, +1.00, 1, 1, 29, 
         AutoLayout      =   Slider2, 8, , 0, True, +1.00, 1, 1, 23, 
         AutoLayout      =   Slider2, 7, , 0, False, +1.00, 1, 1, 200, 
         Enabled         =   True
         Height          =   23.0
         Left            =   66
         LockedInPosition=   False
         MaxValue        =   100.0
         MinValue        =   0.0
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Scope           =   0
         Top             =   105
         Value           =   50.0
         Visible         =   True
         Width           =   200.0
      End
      Begin iOSLabel Label1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   Label1, 1, Rectangle1, 1, False, +1.00, 1, 1, 20, 
         AutoLayout      =   Label1, 3, Rectangle1, 3, False, +1.00, 1, 1, 78, 
         AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 84, 
         AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 231, 
         Enabled         =   True
         Height          =   84.0
         Left            =   40
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Scope           =   0
         Text            =   "This a a complete iOSView that was loaded into the content of the scrollview. You see that it works no matter how you scale it."
         TextAlignment   =   "0"
         TextColor       =   &cF3EFDB00
         TextFont        =   ""
         TextSize        =   0
         Top             =   154
         Visible         =   True
         Width           =   231.0
      End
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  if me.value Then
		    Oval1.FillColor = ColorExtension.RandomColor(0,255)
		  else
		    oval1.FillColor = &cFFFFFF00
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider2
	#tag Event
		Sub ValueChanged()
		  Rectangle1.Alpha = me.Value / 100
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
