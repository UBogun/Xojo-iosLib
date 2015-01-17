#tag IOSView
Begin iosView EffectView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "UIVisualEffects"
   Top             =   0
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 1, 1, 417, 
      Caption         =   "Return to Menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   417
      Visible         =   True
      Width           =   -110.0
   End
   Begin iosrectangle Rectangle1
      AutoLayout      =   Rectangle1, 8, , 0, False, +1.00, 1, 1, 257, 
      AutoLayout      =   Rectangle1, 3, <Parent>, 3, False, +1.00, 1, 1, 91, 
      AutoLayout      =   Rectangle1, 7, , 0, False, +1.00, 1, 1, 419, 
      AutoLayout      =   Rectangle1, 1, <Parent>, 1, False, +1.00, 1, 1, 66, 
      BorderColor     =   &c00000000
      BorderWidth     =   2.0
      CornerHeight    =   0.0
      CornerWidth     =   0.0
      FillColor       =   &cFFFFFF00
      Height          =   257.0
      Left            =   66.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   91.0
      Visible         =   True
      Width           =   419.0
   End
   Begin iosrectangle Rectangle2
      AutoLayout      =   Rectangle2, 8, , 0, False, +1.00, 1, 1, 257, 
      AutoLayout      =   Rectangle2, 7, , 0, False, +1.00, 1, 1, 419, 
      AutoLayout      =   Rectangle2, 1, <Parent>, 1, False, +1.00, 1, 1, 271, 
      AutoLayout      =   Rectangle2, 3, <Parent>, 3, False, +1.00, 1, 1, 281, 
      BorderColor     =   &c00000000
      BorderWidth     =   2.0
      CornerHeight    =   0.0
      CornerWidth     =   0.0
      FillColor       =   &cFFFFFF00
      Height          =   257.0
      Left            =   271.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   281.0
      Visible         =   True
      Width           =   419.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  DismissModal true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Rectangle1
	#tag Event
		Sub Open()
		  dim myeffect as new UIVisualEffectView (UIVisualEffectView.EffectType.Blur, UIVisualEffectView.BlurEffectStyle.Dark)
		  iOSControlExtension.setFrame myeffect.Handle, iOSControlExtension.getFrame(me.Handle)
		  
		  // me.AddSubview (myeffect.Handle)
		  // me.BackgroundColor = &c22443300
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Rectangle2
	#tag Event
		Sub Open()
		  me.backgroundcolor = &c000000ff
		  dim myeffect as new UIVisualEffectView (UIVisualEffectView.EffectType.Vibrancy, UIVisualEffectView.BlurEffectStyle.Dark)
		  iOSControlExtension.setFrame myeffect.Handle, iOSControlExtension.getFrame(me.Handle)
		  iOSControlExtension.setBounds myeffect.Handle, iOSControlExtension.getBounds(me.Handle)
		  // dim mycolor as color = &c44223300
		  // iOSControlExtension.setBackgroundColor myeffect.ContentView, mycolor.toUIColor
		  // me.AddSubview myeffect.Handle
		  
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
