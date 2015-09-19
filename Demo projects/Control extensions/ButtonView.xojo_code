#tag IOSView
Begin iosView ButtonView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 112, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 1, 1, 47, 
      AutoLayout      =   Button1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Caption         =   "This is one big button, isn't it?"
      Enabled         =   True
      Height          =   112.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   47
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 3, Button1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Label1, 2, Button1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   305.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Tap and hold the button to see iOS change its properties by state. See the iOSButtonExtension for convenience methods to access additional features for iOSButtons and the AppleButton class for the full feature set. Feel free to add more convenience methods (and to add them to the project)."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   167
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.BackgroundColor = &c5F08B000
		  me.BackgroundRadius = 24
		  me.NormalTextColor = &cFFFFFF00
		  me.NormalTextShadowColor = &c22222400
		  me.TitleLabel.ShadowOffset = FoundationFrameWork.NSMakeSize (2,4)
		  me.NormalImage = Birnebuntklein
		  me.AdjustTextSize = true
		  me.highlightedCaption = "with properties for different states!"
		  me.highlightedTextColor = &cFFFE3B00
		  me.Textlines =3
		  me.ReverseTextShadowOnTap = true
		  me.BorderWidth = 2
		  me.Font = new iosfont ("Chalkduster",22)
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
