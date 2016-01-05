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
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 8, <Parent>, 8, False, +0.50, 1, 1, 0, 
      AutoLayout      =   ImageView1, 3, <Parent>, 3, False, +1.00, 1, 1, 58, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      ContentMode     =   "1"
      Height          =   240.0
      Image           =   "857282559"
      Left            =   20.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   58.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 1, 1, -37, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      Caption         =   "Info"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   24
      Top             =   -37
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 3.0e+1, 
      AutoLayout      =   Button2, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button2, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      Caption         =   "v 0.8.0"
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c435B9600
      TextFont        =   ""
      TextSize        =   20
      Top             =   20
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSLabeliOSLibEnhanced Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustFontSize  =   False
      AllowTightening =   False
      AutoLayout      =   Label1, 3, BottomLayoutGuide, 3, False, +1.00, 1, 1, -50, 
      AutoLayout      =   Label1, 2, ImageView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 1, ImageView1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Highlighted     =   False
      HighlightedTextColor=   &c44444400
      Left            =   20.0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      MinimumScaleFactor=   0.0
      NumberOfLines   =   0
      Scope           =   0
      ShadowColor     =   &cBFBFBF00
      ShadowXOffset   =   1.0
      ShadowYOffset   =   1.0
      Text            =   "2015, 2016 by Ulrich Bogun, xojoblog.me"
      TextAlignment   =   "1"
      TextColor       =   &c13131300
      TextFont        =   "System Bold		"
      TextSize        =   14
      Top             =   430.0
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  AnimateColorBlock
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AnimateColorBlock()
		  dim b as new appleblock (addressof animatecolorblock)
		  dim acolor as color = RandomColor (200, 250)
		  dim option as new AppleViewAnimationOption
		  option.AllowUserInteraction = true
		  me.view.AppleView.AnimateColor (acolor.toapplecolor, Option, 5, appleview.UIVIewAnimationCurve.EaseInEaseOut, 0, b)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub buttonmove()
		  dim newrect as FoundationFrameWork.NSRect = Button1.view.Frame
		  newrect.Origin.y = ImageView1.view.Frame.Size_.height +  ImageView1.view.Frame.Size_.height /3
		  dim options as new AppleViewAnimationOption
		  options.AllowUserInteraction = true
		  button1.view.SpringAnimateFrame (newrect , options, 0.3, 10, 5)
		  Button2.FadeIn (5)
		  
		  
		  // dim session as new AppleAVAudioSession
		  // dim result as boolean = session.Setcategory (AppleAVAudioSession.kAVAudioSessionCategoryPlayAndRecord)
		  // dim result2 as boolean = session.SetMode (AppleAVAudioSession.kAVAudioSessionModeDefault)
		  // 
		  // session.RequestRecordPermission
		  // // session.PreferredSampleRate = 48000.0
		  // // session.PreferredIOBufferDuration = 0.35
		  // dim result3 as boolean = session.OverrideOutputAudioPort (AppleAVAudioSession.AVAudioSessionPortOverride.Speaker)
		  // dim result4 as Boolean = session.SetPreferredInputNumberOfChannels (5)
		  // // session.PreferredOutputNumberOfChannels = 5
		  // // static m as new AppleAVAudioEngine
		  // // dim i as AppleAVAudioInputNode = m.InputNode
		  // // i.InstallTap (1, 32000, Nil, new appleblock(AddressOf i.AVAudioNodeTapBlockTemplate))
		  // // m.DisconnectNodeInput (i)
		  // break
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  me.View.SetScale 80
		  me.AnimateSize 0.5, 0.5, 2
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Open()
		  Timer.CallLater (2000, AddressOf buttonmove)
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  dim v2 as new InfoView ( "Hello and welcome to iOSLib!"+eol+eol+ _
		  "This is a library extending Xojo iOS by Declares. There's many of them, some snippets, some already mighty libraries."+eol+ _
		  "You should definitely check them out on forum.xojo.com."+eol+"So why another iOSLib?"+eol+ _
		  "Special about iOSLib is it goes into the depth not into the height, at least for now. This means you will find a lot of additions to already existing Xojo controls. "+ eol + _
		  "And what's more is I try to add convenience methods to the most frequently used methods. This means you mostly do not have to dig into the mysteries of iOS API calls but can use Xojo controls and Xojo-like methods and properties." +eol + _
		  "But if you want to explore iOS, you will find many iOS classes rebuilt as Xojo classes, even those that do not really exist in the API like Core Foundation objects. "+ _
		  "This makes it easy to view them in debugger."+eol+eol + eol + _
		  "To use, simply drag the iOSLib folder into your project." + eol +  _
		  "You can find the most recent version and a documentation in form of the GitHub Wiki on https://github.com/UBogun/Xojo-iosLib." + eol + _
		  "But make sure to examine the demo projects too as they will often give you an idea on how to use iOSLib's features.")
		  
		  v2.View.ModalPresentationStyle = appleview.UIViewModalPresentationStyle.PopOver
		  self.PushToCover v2
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  static animator as new AppleDynamicAnimator (self)
		  static gravity as new AppleGravityBehavior (me)
		  gravity.AngleInDegrees = 140
		  gravity.Magnitude = 0.2
		  dim collision as new AppleCollisionBehavior (me)
		  collision.TranslatesReferenceBoundsIntoBoundary = true
		  animator.AddBehavior gravity
		  animator.AddBehavior collision
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.alpha = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label1
	#tag Event
		Sub Open()
		  me.Alpha = 0
		  me.view.AnimateAlpha 1, AppleViewAnimationOption.OptionNone, 1, appleview.UIVIewAnimationCurve.EaseInEaseOut, 5
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
