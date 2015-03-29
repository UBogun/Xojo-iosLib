#tag IOSView
Begin iosView NotificationView Implements NotificationReceiver
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
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, 28, 
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 7, , 0, False, +1.00, 1, 1, 175, 
      AutoLayout      =   TextField1, 3, <Parent>, 3, False, +1.00, 1, 1, 43, 
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
      AutoLayout      =   HTMLViewer1, 7, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   HTMLViewer1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -29, 
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   HTMLViewer1, 8, , 0, False, +1.00, 1, 1, 190, 
      Height          =   190.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   261
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, TextField1, 2, False, +1.00, 1, 1, 43, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 65, 
      AutoLayout      =   Button1, 3, TextField1, 3, False, +1.00, 1, 1, 0, 
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
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Label1, 4, HTMLViewer1, 3, False, +1.00, 1, 1, -87, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 1, 1, 101, 
      Enabled         =   True
      Height          =   73.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Switch on the DebugLog view in Xojo’s IDE and tap on ""Goto"" to see WebProgressEstimations. Watch the back and forward buttons appear as you surf."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   101
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 98, 
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 1, HTMLViewer1, 1, False, +1.00, 1, 1, 0, 
      Caption         =   "Return"
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   450
      Visible         =   True
      Width           =   98.0
   End
   Begin iOSButton BackButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BackButton, 7, , 0, False, +1.00, 1, 1, 70, 
      AutoLayout      =   BackButton, 3, <Parent>, 3, False, +1.00, 1, 1, 73, 
      AutoLayout      =   BackButton, 1, Label1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   BackButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Back"
      Enabled         =   False
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   False
      Width           =   70.0
   End
   Begin iOSButton ForwardButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ForwardButton, 1, <Parent>, 1, False, +1.00, 1, 1, 98, 
      AutoLayout      =   ForwardButton, 7, , 0, False, +1.00, 1, 1, 70, 
      AutoLayout      =   ForwardButton, 3, <Parent>, 3, False, +1.00, 1, 1, 73, 
      AutoLayout      =   ForwardButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Forward"
      Enabled         =   False
      Height          =   30.0
      Left            =   98
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   False
      Width           =   70.0
   End
   Begin iOSButton ForwardButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ForwardButton1, 7, , 0, False, +1.00, 1, 1, 70, 
      AutoLayout      =   ForwardButton1, 3, <Parent>, 3, False, +1.00, 1, 1, 73, 
      AutoLayout      =   ForwardButton1, 1, <Parent>, 1, False, +1.00, 1, 1, 168, 
      AutoLayout      =   ForwardButton1, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Reload"
      Enabled         =   True
      Height          =   30.0
      Left            =   168
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   70.0
   End
   Begin iOSButton ForwardButton2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ForwardButton2, 1, <Parent>, 1, False, +1.00, 1, 1, 241, 
      AutoLayout      =   ForwardButton2, 7, , 0, False, +1.00, 1, 1, 70, 
      AutoLayout      =   ForwardButton2, 3, <Parent>, 3, False, +1.00, 1, 1, 73, 
      AutoLayout      =   ForwardButton2, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Stop"
      Enabled         =   True
      Height          =   30.0
      Left            =   241
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   70.0
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch1, 3, <Parent>, 3, False, +1.00, 1, 1, 214, 
      AutoLayout      =   Switch1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   214
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 2, Switch1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 3, <Parent>, 3, False, +1.00, 1, 1, 182, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "AirPlay"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   182
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch Switch2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch2, 1, <Parent>, 1, False, +1.00, 1, 1, 79, 
      AutoLayout      =   Switch2, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch2, 3, <Parent>, 3, False, +1.00, 1, 1, 214, 
      AutoLayout      =   Switch2, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   79
      LockedInPosition=   False
      Scope           =   0
      Top             =   214
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Label3, 3, <Parent>, 3, False, +1.00, 1, 1, 182, 
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, 79, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   79
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Inline"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   182
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch Switch3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch3, 1, <Parent>, 1, False, +1.00, 1, 1, 138, 
      AutoLayout      =   Switch3, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch3, 3, <Parent>, 3, False, +1.00, 1, 1, 214, 
      AutoLayout      =   Switch3, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   138
      LockedInPosition=   False
      Scope           =   0
      Top             =   214
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 1, <Parent>, 1, False, +1.00, 1, 1, 138, 
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Label4, 3, <Parent>, 3, False, +1.00, 1, 1, 182, 
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   138
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Autoplay"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   182
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Render
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Render, 1, <Parent>, 1, False, +1.00, 1, 1, 197, 
      AutoLayout      =   Render, 7, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Render, 3, <Parent>, 3, False, +1.00, 1, 1, 182, 
      AutoLayout      =   Render, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   197
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Render"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   182
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch Switch4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch4, 1, <Parent>, 1, False, +1.00, 1, 1, 197, 
      AutoLayout      =   Switch4, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch4, 3, <Parent>, 3, False, +1.00, 1, 1, 214, 
      AutoLayout      =   Switch4, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   197
      LockedInPosition=   False
      Scope           =   0
      Top             =   214
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Render1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Render1, 7, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Render1, 3, <Parent>, 3, False, +1.00, 1, 1, 182, 
      AutoLayout      =   Render1, 2, ForwardButton2, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Render1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   260
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Scale"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   182
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch Switch5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch5, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch5, 3, <Parent>, 3, False, +1.00, 1, 1, 214, 
      AutoLayout      =   Switch5, 2, ForwardButton2, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch5, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   260
      LockedInPosition=   False
      Scope           =   0
      Top             =   214
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim NotificationCenter as new iOSLibNotificationCenterWithInterface (NIL, NIL)
		  NotificationCenter.RegisterObserver self
		  // dim NotificationCenter as new iOSLibNotificationCenterWithInterface ("WebProgressEstimateChangedNotification", NIL)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ReveicedNotification()
		  // Part of the NotificationReceiver interface.
		  
		  BackButton.Enabled = HTMLViewer1.iosLibWebView.CanGoBack
		  BackButton.Visible = HTMLViewer1.iosLibWebView.CanGoBack
		  
		  ForwardButton.Enabled = HTMLViewer1.iosLibWebView.CanGoForward
		  ForwardButton.Visible = HTMLViewer1.iosLibWebView.CanGoForward
		  
		End Sub
	#tag EndMethod


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
		  self.close
		End Sub
	#tag EndEvent
	#tag Event
		Sub Close()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackButton
	#tag Event
		Sub Action()
		  HTMLViewer1.iosLibWebView.GoBack
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ForwardButton
	#tag Event
		Sub Action()
		  HTMLViewer1.iosLibWebView.GoForward
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ForwardButton1
	#tag Event
		Sub Action()
		  HTMLViewer1.Reload
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ForwardButton2
	#tag Event
		Sub Action()
		  HTMLViewer1.StopLoading
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch1
	#tag Event
		Sub Open()
		  me.value = HTMLViewer1.AllowAirplay
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.AllowAirplay = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch2
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.AllowInlineMediaPlayback = me.value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = HTMLViewer1.AllowInlineMediaPlayback
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch3
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.PlayMediaAutomatically = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value= HTMLViewer1.PlayMediaAutomatically
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch4
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.SuppressRenderWhileLoad = not me.value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.value = not (HTMLViewer1.SuppressRenderWhileLoad )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch5
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.ScalesPageToFit = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value= HTMLViewer1.ScalesPageToFit
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
