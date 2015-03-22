#tag IOSView
Begin iosView NotificationView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 3, <Parent>, 3, False, +1.00, 1, 1, 43, 
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, 28, 
      AutoLayout      =   TextField1, 7, , 0, False, +1.00, 1, 1, 175, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   28
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "http://xojoblog.me"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   43
      Visible         =   True
      Width           =   175.0
   End
   Begin iOSHTMLViewer HTMLViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   HTMLViewer1, 8, , 0, False, +1.00, 1, 1, 302, 
      AutoLayout      =   HTMLViewer1, 7, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   HTMLViewer1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      Height          =   302.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   178
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 3, TextField1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 1, TextField1, 2, False, +1.00, 1, 1, 43, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 65, 
      Caption         =   "Goto"
      Enabled         =   True
      Height          =   30.0
      Left            =   246
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   43
      Visible         =   True
      Width           =   65.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Label1, 4, HTMLViewer1, 3, False, +1.00, 1, 1, -24, 
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 1, 1, 93, 
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   61.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Switch on the DebugLog view in Xojos IDE and tap on ""Goto"" to see WebProgressEstimations."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   93
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 1, TextField1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button2, 3, <Parent>, 3, False, +1.00, 1, 1, 149, 
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 98, 
      Caption         =   "Return"
      Enabled         =   True
      Height          =   30.0
      Left            =   211
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   149
      Visible         =   True
      Width           =   98.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim NotificationCenter as new iOSLibNotificationCenter ("WebProgressEstimateChangedNotification", NIL)
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private NotificationCenter As iOSLibNotificationCenter
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  HTMLViewer1.LoadURL TextField1.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  self.Dismiss true
		End Sub
	#tag EndEvent
	#tag Event
		Sub Close()
		  
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
