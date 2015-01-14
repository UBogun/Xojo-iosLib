#tag IOSView
Begin iosView TRansitionEndView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "Transition View"
   Top             =   0
   Begin iOSRectangle Rectangle1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Rectangle1, 8, <Parent>, 8, False, +0.50, 1, 1, 0, 
      AutoLayout      =   Rectangle1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Rectangle1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      BorderColor     =   &c00000000
      BorderWidth     =   0.0
      CornerHeight    =   0.0
      CornerWidth     =   0.0
      FillColor       =   &cFFFFFF00
      Height          =   512.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   -32
      Visible         =   True
      Width           =   768.0
      Begin iOSButton Button2
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   Button2, 1, Rectangle1, 1, False, +1.00, 1, 1, 442, 
         AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 206, 
         AutoLayout      =   Button2, 4, CSH, 4, False, +1.00, 1, 1, 0, 
         AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
         Caption         =   "set preferred size"
         Enabled         =   True
         Height          =   30.0
         Left            =   442
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Scope           =   0
         TextColor       =   &c007AFF00
         TextFont        =   ""
         TextSize        =   0
         Top             =   6
         Visible         =   True
         Width           =   206.0
      End
      Begin iOSTextField CSH
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   CSH, 1, Rectangle1, 1, False, +1.00, 1, 1, 314, 
         AutoLayout      =   CSH, 7, , 0, False, +1.00, 1, 1, 73, 
         AutoLayout      =   CSH, 3, Rectangle1, 3, False, +1.00, 1, 1, 37, 
         AutoLayout      =   CSH, 8, , 0, True, +1.00, 1, 1, 31, 
         Enabled         =   True
         Height          =   31.0
         KeyboardType    =   "0"
         Left            =   314
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Password        =   False
         PlaceHolder     =   "Height"
         Scope           =   0
         Text            =   "Untitled"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         TextFont        =   ""
         TextSize        =   0
         Top             =   5
         Visible         =   True
         Width           =   73.0
      End
      Begin iOSTextField CSW
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   CSW, 1, Rectangle1, 1, False, +1.00, 1, 1, 233, 
         AutoLayout      =   CSW, 7, , 0, False, +1.00, 1, 1, 73, 
         AutoLayout      =   CSW, 3, Rectangle1, 3, False, +1.00, 1, 1, 37, 
         AutoLayout      =   CSW, 8, , 0, True, +1.00, 1, 1, 31, 
         Enabled         =   True
         Height          =   31.0
         KeyboardType    =   "0"
         Left            =   233
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Password        =   False
         PlaceHolder     =   "Width"
         Scope           =   0
         Text            =   "Untitled"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         TextFont        =   ""
         TextSize        =   0
         Top             =   5
         Visible         =   True
         Width           =   73.0
      End
      Begin iOSLabel Label1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   Label1, 1, Rectangle1, 1, False, +1.00, 1, 1, 37, 
         AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 188, 
         AutoLayout      =   Label1, 3, Rectangle1, 3, False, +1.00, 1, 1, 37, 
         AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
         Enabled         =   True
         Height          =   30.0
         Left            =   37
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Scope           =   0
         Text            =   "Preferred Content Size (w/h)"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         TextFont        =   ""
         TextSize        =   0
         Top             =   5
         Visible         =   True
         Width           =   188.0
      End
      Begin iOSButton Button1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   Button1, 1, Rectangle1, 1, False, +1.00, 1, 1, 30, 
         AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 7.28e+2, 
         AutoLayout      =   Button1, 3, Rectangle1, 3, False, +1.00, 1, 1, 172, 
         AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
         Caption         =   "Return"
         Enabled         =   True
         Height          =   30.0
         Left            =   30
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Scope           =   0
         TextColor       =   &c007AFF00
         TextFont        =   ""
         TextSize        =   0
         Top             =   140
         Visible         =   True
         Width           =   728.0
      End
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim mysize as xojo.core.size = self.PreferredContentSize
		  CSW.text = mysize.Width.ToText
		  csh.text = mysize.Height.ToText
		  BackgroundColor = &cFFFFFFFF
		  Opaque = false
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Button2
	#tag Event
		Sub Action()
		  dim preferredSize as new xojo.core.size (double.fromtext(csw.text), double.fromtext(csh.Text))
		  PreferredContentSize = preferredSize
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  self.DismissModal true
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
