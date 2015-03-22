#tag IOSView
Begin iosView SplashView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSImageView ImageView1
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 243, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      ContentMode     =   "1"
      Height          =   243.0
      Image           =   "547002367"
      Left            =   20.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   28.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label1
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 3, ImageView1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label1, 2, ImageView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 1, ImageView1, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20.0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "2015 by Ulrich Bogun, xojoblog.me"
      TextAlignment   =   "1"
      TextColor       =   &c0F237700
      TextFont        =   ""
      TextSize        =   12
      Top             =   279.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton Button1
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 3, , 0, False, +1.00, 1, 1, -37, 
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      Caption         =   "Info"
      Enabled         =   True
      Height          =   30.0
      Left            =   110.0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   -37.0
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button2
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button2, 3, <Parent>, 3, False, +1.00, 1, 1, 388, 
      AutoLayout      =   Button2, 9, <Parent>, 9, False, +1.00, 2, 1, 0, 
      Caption         =   "Menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   110.0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   388.0
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub buttonmove()
		  dim newrect as NSRect = Button1.iOSLibView.Frame
		  newrect.Origin.y = 350
		  dim options as new iOSLibViewAnimationOption
		  options.AllowUserInteraction = true
		  button1.iOSLibView.SpringAnimateFrame (newrect , options, 0.3, 10, 5)
		  Button2.iOSLibView.TransitionWithAlpha 1, iOSLibView.UIVIewAnimationTransition.FlipFromLeft, iOSLibViewAnimationOption.OptionNone, 2
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  me.iOSLibView.SetScale 80
		  me.AnimateSize 0.5, 0.5, 3
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label1
	#tag Event
		Sub Open()
		  me.Alpha = 0
		  me.iOSLibView.AnimateAlpha 1, iOSLibViewAnimationOption.OptionNone, 1, iOSLibView.UIVIewAnimationCurve.EaseInEaseOut, 3
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Open()
		  Timer.CallLater (3000, AddressOf buttonmove)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  dim v2 as new InfoView
		  self.PushToCurl v2
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Open()
		  me.Alpha = 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  dim v2 as new MenuView
		  self.PushToSlide v2
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
