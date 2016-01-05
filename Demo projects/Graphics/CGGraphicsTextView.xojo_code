#tag IOSView
Begin iosView CGGraphicsTextView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "CGContext Text features"
   Top             =   0
   Begin iOScanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 4, AFontSmoothSW, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Canvas1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Height          =   251.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSSwitch AFontSmoothSW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AFontSmoothSW, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   AFontSmoothSW, 1, Canvas1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AFontSmoothSW, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   AFontSmoothSW, 4, AFontSPixPosSW, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   332
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 2, Canvas1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 3, AFontSmoothSW, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 86, 
      Enabled         =   True
      Height          =   30.0
      Left            =   86
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Font Smoothing"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   332
      Visible         =   True
      Width           =   214.0
   End
   Begin iOSSwitch AFontSPixPosSW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AFontSPixPosSW, 4, AFontSPixQSW, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   AFontSPixPosSW, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   AFontSPixPosSW, 1, AFontSmoothSW, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AFontSPixPosSW, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   371
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSlider SizeSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SizeSlider, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   SizeSlider, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   SizeSlider, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   SizeSlider, 7, , 0, False, +1.00, 1, 1, 280, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   400.0
      MinValue        =   2.0
      Scope           =   0
      Top             =   449
      Value           =   40.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 214, 
      AutoLayout      =   Label2, 3, AFontSPixPosSW, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   86
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Font SubPixel Positioning"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   371
      Visible         =   True
      Width           =   214.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 1, Label2, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 214, 
      AutoLayout      =   Label3, 3, AFontSPixPosSW, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   86
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Font SubPixel Quantization"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   410
      Visible         =   True
      Width           =   214.0
   End
   Begin iOSSwitch AFontSPixQSW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AFontSPixQSW, 4, SizeSlider, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   AFontSPixQSW, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   AFontSPixQSW, 1, SizeSlider, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AFontSPixQSW, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   410
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
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  dim help as new InfoView ("Here you see 3 advanced text context properties which admittedly don’t do that much - their effect depends on the type of font and size. But anyway - here they are ;)")
		  self.PushToCurl help
		  #pragma unused button
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  dim ga as new AppleCGContext (g)
		  g.TextFont = new iOSFont ("Helvetica Neue", SizeSlider.Value)
		  'dim myArray(49) AS NSRect
		  'for q as integer = 0 to 49
		  'myArray(q)=NSRect(math.RandomInt(0,me.Width/2), math.RandomInt (0, me.Height/2), math.RandomInt(0,me.Width/2), math.RandomInt(0, me.Height/2))
		  'next
		  'if Switch1.Value then
		  'ga.AddRects myArray
		  'ga.StrokePath
		  'else
		  'for q as integer= 0 to 49
		  'g.DrawRect myArray(q).origin.x, myArray(q).origin.y,myArray(q).size_.width, myArray(q).size_.height
		  'next
		  'end if
		  ga.AllowFontSmoothing = AFontSmoothSW.Value
		  ga.ShouldSmoothFonts = AFontSmoothSW.Value
		  ga.AllowFontSubpixelPositioning = AFontSPixPosSW.Value
		  ga.ShouldSubpixelPositionFonts = AFontSPixPosSW.Value
		  ga.AllowFontSubpixelQuantization = AFontSPixQSW.Value
		  ga.ShouldSubpixelQuantizeFonts = AFontSPixQSW.Value
		  
		  g.DrawTextBlock ( "The quick brown fox jumps over the lazy dog.", 10,50, me.Width - 20)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AFontSmoothSW
	#tag Event
		Sub ValueChanged()
		  canvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AFontSPixPosSW
	#tag Event
		Sub ValueChanged()
		  canvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SizeSlider
	#tag Event
		Sub ValueChanged()
		  Canvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AFontSPixQSW
	#tag Event
		Sub ValueChanged()
		  canvas1.Invalidate
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
