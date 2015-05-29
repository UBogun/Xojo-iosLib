#tag IOSView
Begin iosView WebViewerView Implements AppleEventReceiver
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "iOSLibHTMLViewer"
   Top             =   0
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 2, GoButton, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   TextField1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, 28, 
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
      Top             =   73
      Visible         =   True
      Width           =   157.0
   End
   Begin iOSLibHTMLViewerWithInterface HTMLViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   HTMLViewer1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   HTMLViewer1, 2, <Parent>, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   HTMLViewer1, 3, AirSwitch, 4, False, +1.00, 2, 1, 20, 
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      Height          =   241.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   231
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton GoButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   GoButton, 7, , 0, False, +1.00, 1, 1, 53, 
      AutoLayout      =   GoButton, 2, StopButton, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   GoButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   GoButton, 1, TextField1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   GoButton, 3, TextField1, 3, False, +1.00, 1, 1, 0, 
      Caption         =   "Goto"
      Enabled         =   True
      Height          =   30.0
      Left            =   193
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   53.0
   End
   Begin iOSButton BackButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BackButton, 1, <Parent>, 1, False, +1.00, 2, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   BackButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   BackButton, 7, , 0, False, +1.00, 1, 1, 70, 
      AutoLayout      =   BackButton, 3, TextField1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Caption         =   "Back"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   112
      Visible         =   False
      Width           =   70.0
   End
   Begin iOSButton ForwardButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ForwardButton, 1, BackButton, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   ForwardButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   ForwardButton, 7, , 0, False, +1.00, 1, 1, 70, 
      AutoLayout      =   ForwardButton, 3, BackButton, 3, False, +1.00, 1, 1, 0, 
      Caption         =   "Forward"
      Enabled         =   True
      Height          =   30.0
      Left            =   98
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   112
      Visible         =   False
      Width           =   70.0
   End
   Begin iOSButton ForwardButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ForwardButton1, 7, , 0, False, +1.00, 1, 1, 70, 
      AutoLayout      =   ForwardButton1, 1, GoButton, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ForwardButton1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   ForwardButton1, 3, BackButton, 3, False, +1.00, 1, 1, 0, 
      Caption         =   "Reload"
      Enabled         =   True
      Height          =   30.0
      Left            =   193
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   112
      Visible         =   True
      Width           =   70.0
   End
   Begin iOSButton StopButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   StopButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   StopButton, 3, TextField1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   StopButton, 7, , 0, False, +1.00, 1, 1, 46, 
      AutoLayout      =   StopButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      Caption         =   "Stop"
      Enabled         =   True
      Height          =   30.0
      Left            =   254
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   46.0
   End
   Begin iOSSwitch AirSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AirSwitch, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   AirSwitch, 3, Label2, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AirSwitch, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   AirSwitch, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   180
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, -1, 
      AutoLayout      =   Label2, 3, BackButton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 2, AirSwitch, 2, False, +1.00, 1, 1, -1, 
      Enabled         =   True
      Height          =   30.0
      Left            =   -1
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "AirPlay"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   150
      Visible         =   True
      Width           =   71.0
   End
   Begin iOSSwitch InlineSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   InlineSwitch, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   InlineSwitch, 3, AirSwitch, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   InlineSwitch, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   InlineSwitch, 1, HTMLViewer1, 2, False, +0.25, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      Left            =   80
      LockedInPosition=   False
      Scope           =   0
      Top             =   180
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Label3, 1, HTMLViewer1, 2, False, +0.25, 1, 1, 0, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label3, 3, Label2, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   80
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Inline"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   150
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch AutoPlaySwicth
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AutoPlaySwicth, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   AutoPlaySwicth, 3, InlineSwitch, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AutoPlaySwicth, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   AutoPlaySwicth, 1, HTMLViewer1, 2, False, +0.50, 1, 1, -20, 
      Enabled         =   True
      Height          =   31.0
      Left            =   140
      LockedInPosition=   False
      Scope           =   0
      Top             =   180
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label4, 3, Label2, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Label4, 1, HTMLViewer1, 2, False, +0.50, 1, 1, -20, 
      Enabled         =   True
      Height          =   30.0
      Left            =   140
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Autoplay"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   150
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Render
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Render, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Render, 3, Label3, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Render, 7, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Render, 1, HTMLViewer1, 2, False, +0.60, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   192
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Render"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   150
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch RenderSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   RenderSwitch, 9, HTMLViewer1, 2, False, +0.70, 2, 1, 0, 
      AutoLayout      =   RenderSwitch, 3, AutoPlaySwicth, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   RenderSwitch, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   RenderSwitch, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   198
      LockedInPosition=   False
      Scope           =   0
      Top             =   180
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Render1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Render1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Render1, 3, Label2, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Render1, 7, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Render1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   30.0
      Left            =   249
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Scale"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   150
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch ScaleSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ScaleSwitch, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   ScaleSwitch, 3, AirSwitch, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ScaleSwitch, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   ScaleSwitch, 2, StopButton, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      Top             =   180
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  
		  HTMLViewer1.RegisterObserver (self)
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  dim help as new InfoView ("Does this look exactly like the NotificationsView? Yes, but its different – the viewer is not a Xojo iOSHTMLViewer but a custom control named iOSLibHTMLViewer. This owns a delegate that sends four different events to the control: "+endofline+ _
		  "ShouldStart (with a Enumeration value telling you what Webkit event caused the update. The delegate returns true which means »load« but you could extend the implementation on your demands."+endofline+ _
		  "Did Start"+endofline +"Did Finish"+EndOfline+"Failed"+endofline +"Shouldstart carries the request too and Failed a NSError object."+EndOfline+EndOfline+ _
		  "Handling the custom control is a bit more complicated as usual because I reused the AppleWebView class which is used for the HTMLViewExtension too, so you have to address the control via its Viewer property which is the representation of its instance.")
		  self.PushToCurl help
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ReceivedEvent(Details as AppleArray)
		  // Part of the NotificationReceiver interface.
		  // You could analyze the event here, but returning on shouldload could be a bit difficult. I would therefore advise to subclass AppleWebView itself according to your needs.
		  
		  BackButton.AppleView.Hidden = not (HTMLViewer1.viewer.CanGoBack)
		  
		  ForwardButton.AppleView.Hidden = not (HTMLViewer1.viewer.CanGoForward)
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events HTMLViewer1
	#tag Event
		Function ShouldStart(Request as appleurlrequest, navigationtype as AppleWebView.UIWebViewNavigationType) As boolean
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events GoButton
	#tag Event
		Sub Action()
		  dim myURL as new AppleURL (TextField1.text)
		  dim myRequest as new AppleURLRequest (myurl)
		  HTMLViewer1.Viewer.LoadRequest myRequest
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackButton
	#tag Event
		Sub Action()
		  HTMLViewer1.viewer.GoBack
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ForwardButton
	#tag Event
		Sub Action()
		  HTMLViewer1.viewer.GoForward
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ForwardButton1
	#tag Event
		Sub Action()
		  HTMLViewer1.Viewer.Reload
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StopButton
	#tag Event
		Sub Action()
		  HTMLViewer1.viewer.StopLoading
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AirSwitch
	#tag Event
		Sub Open()
		  me.value = HTMLViewer1.Viewer.MediaPlaybackAllowsAirPlay
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.Viewer.MediaPlaybackAllowsAirPlay = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InlineSwitch
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.viewer.AllowsInlineMediaPlayback = me.value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = HTMLViewer1.Viewer.AllowsInlineMediaPlayback
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AutoPlaySwicth
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.viewer.MediaPlaybackRequiresUserAction = not (me.Value)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value= not (HTMLViewer1.Viewer.MediaPlaybackRequiresUserAction)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RenderSwitch
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.viewer.SuppressesIncrementalRendering = not me.value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.value = not (HTMLViewer1.viewer.SuppressesIncrementalRendering )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScaleSwitch
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.viewer.ScalesPageToFit = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value= HTMLViewer1.Viewer.ScalesPageToFit
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
