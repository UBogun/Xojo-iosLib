#tag IOSView
Begin iosView CGGraphicsDrawLinesView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "CGContext DrawLines"
   Top             =   0
   Begin iOScanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Canvas1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -55, 
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Canvas1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Height          =   352.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
   Begin xojo.Core.Timer Timer1
      Left            =   60
      LockedInPosition=   False
      Mode            =   "2"
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   10
      Scope           =   0
      Tolerance       =   0
      Top             =   60
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 1, Canvas1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch1, 3, Canvas1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   433
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 86, 
      AutoLayout      =   Label1, 3, Switch1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 2, Canvas1, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   86
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   433
      Visible         =   True
      Width           =   214.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  
		  timer1.Mode = Timer.Modes.Multiple
		  showSwitchValue
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  dim help as new InfoView ("Here you can see the speed difference between a series of 50 iOSGraphics.DrawLine calls against one DrawLines call by iOSGraphicsExtension." + endofline + _
		  "Please note that a lot of time is spent doing the conversions. If you work on a MutableMemoryBlock containing the NSPoint data from beginning on, this method is even faster."+EndOfline+EndOfline+ _
		  "Probably unnoticable because it draws too fast: iOSGraphicsExtensions adds LineCap and LineJoin styles to iOSGraphics too. And without shadow on the lines it draws much faster of course.")
		  self.PushToCurl help
		  #pragma unused button
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub showSwitchValue()
		  Label1.text = if (Switch1.Value, "DrawLines", "Several Draw Line calls")
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  // dim mypic as new AppleImage (iosLibLogo)
		  dim ga as new AppleCGContext (g)
		  
		  // ga.InterpolationQuality = CGInterpolationQuality.High
		  ga.SetShadow 2,2,5, &c6B3BB300 // paints a shadow for the following graphics
		  // ga.DrawtiledImage nsrect (0,0,20, 20), mypic.toCGImage
		  // ga.RemoveShadow // don't paint shadow anymore
		  // g.LineColor = &c86676D00
		  // g.LineWidth = 8
		  ga.LineCap = CGLineCap.Round
		  ga.LineJoin = CGLineJoin.Round
		  // ga.BlendMode = CGBlendMode.Multiply // overlay the next graphcis
		  //
		  // ga.DrawradialGradient (array(&c435B9600,&cDA770000, &c07710000,  &cEAFBFE00, &cB0BBB100), nspoint (30,30), 20, nspoint (me.width, me.Height), 50, true)
		  // g.DrawLine me.Width-10,5,5, me.Height-10
		  // ga.TextDrawingMode = CGTextDrawingMode.Fill
		  // g.DrawTextLine "TestTEXT", 0,80
		  // g.FillColor = &cDA770000
		  g.LineWidth = 10
		  // g.LineColor = &c06001C00
		  dim t1 as date = date.now
		  dim myArray(49) AS FoundationFrameWork.NSPoint
		  for q as integer = 0 to 49
		    myArray(q)=FoundationFrameWork.NSMakePoint(q*me.Width/49, math.RandomInt (0, me.Height))
		  next
		  if Switch1.Value then
		    ga.AddLines myArray
		    ga.StrokePath
		  else
		    for q as integer= 1 to 49
		      g.DrawLine myArray(q-1).x, myArray(q-1).y,myArray(q).x, myArray(q).y
		    next
		  end if
		  ga.RemoveShadow
		  dim dt as DateInterval = date.now - t1
		  dim sec as double = dt.NanoSeconds / 1000000000.0
		  dim FPS as double = 1/sec
		  g.DrawTextLine ( sec.ToText +" seconds drawing time = "+fps.ToText+" FPS", 0, me.Height - 20)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  canvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  showSwitchValue
		  
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
