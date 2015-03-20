#tag IOSView
Begin iosView View2
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTextField TextField1
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 3, <Parent>, 3, False, +1.00, 1, 1, 43, 
      AutoLayout      =   TextField1, 7, , 0, False, +1.00, 1, 1, 175, 
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, 28, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   28.0
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   43.0
      Visible         =   True
      Width           =   175.0
   End
   Begin iOSHTMLViewer HTMLViewer1
      AutoLayout      =   HTMLViewer1, 8, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   HTMLViewer1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   HTMLViewer1, 7, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      Height          =   320.0
      Left            =   0.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   160.0
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton Button1
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 3, TextField1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button1, 1, TextField1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   30.0
      Left            =   211.0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   43.0
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim NotificationCenter as new iOSLibNotificationCenter ("", nil)
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
