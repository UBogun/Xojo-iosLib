#tag IOSView
Begin iosView CGGraphicsDrawRectsView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "CGContext DrawRects"
   Top             =   0
   Begin iOScanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Canvas1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Canvas1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -55, 
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
      AutoLayout      =   Switch1, 3, Canvas1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch1, 1, Canvas1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
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
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 2, Canvas1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 86, 
      AutoLayout      =   Label1, 3, Switch1, 3, False, +1.00, 1, 1, 0, 
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
		  dim help as new InfoView ("Here you can see the speed difference between a series of 50 iOSGraphics.DrawRect calls against one DrawRects call by iOSGraphicsExtension." + endofline + _
		  "Please note that a lot of time is spent doing the conversions. If you work on a MutableMemoryBlock containing the NSRect data from beginning on, this method is even faster. But this is valid for the DrawRect method too.")
		  self.PushToCurl help
		  #pragma unused button
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub showSwitchValue()
		  Label1.text = if (Switch1.Value, "DrawRects", "Several DrawRect calls")
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  dim ga as new AppleCGContext (g)
		  
		  g.LineWidth = 2
		  dim t1 as date = date.now
		  dim myArray(49) AS NSRect
		  for q as integer = 0 to 49
		    myArray(q)=NSRect(math.RandomInt(0,me.Width/2), math.RandomInt (0, me.Height/2), math.RandomInt(0,me.Width/2), math.RandomInt(0, me.Height/2))
		  next
		  if Switch1.Value then
		    ga.AddRects myArray
		    ga.StrokePath
		  else
		    for q as integer= 0 to 49
		      g.DrawRect myArray(q).origin.x, myArray(q).origin.y,myArray(q).size_.width, myArray(q).size_.height
		    next
		  end if
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
