#tag IOSView
Begin iosView TextView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 1, 1, 197, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   197
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   TextArea1, 3, Canvas1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextArea1, 7, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   TextArea1, 1, Canvas1, 1, False, +1.00, 1, 1, 0, 
      Editable        =   True
      Height          =   200.0
      KeyboardType    =   "0"
      Left            =   39
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   322
      Visible         =   True
      Width           =   200.0
   End
   Begin iOScanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 39, 
      AutoLayout      =   Canvas1, 3, <Parent>, 3, False, +1.00, 1, 1, 114, 
      AutoLayout      =   Canvas1, 8, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   Canvas1, 7, , 0, False, +1.00, 1, 1, 200, 
      Height          =   200.0
      Left            =   39
      LockedInPosition=   False
      Scope           =   0
      Top             =   114
      Visible         =   True
      Width           =   200.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  Const Pi = 3.14159
		  
		  
		  dim t1 as date = date.Now
		  Dim arc As New iOSPath
		  
		  for q as integer =  0  to 10000
		    arc.AddArc(50, 50, 20, 0, Pi/2, False)
		  next
		  dim td1 as DateInterval = date.Now - t1
		  dim ref as Double = 100/td1.NanoSeconds
		  
		  dim t2 as date = date.now
		  Dim arc2 As New AppleCGMutablePath
		  
		  for q as integer =  0  to 10000
		    arc2.AddArc(50, 50, 20, 0, Pi/2, False)
		  next
		  dim td2 as DateInterval = date.Now - t2
		  dim ref2 as Double = ref * td2.NanoSeconds
		  
		  
		  
		  TextArea1.Text = "Xojo : "+td1.NanoSeconds.ToText+" (100%)"+EndOfline+"Accelerate: "+td2.NanoSeconds.totext + _
		  "("+ref2.ToText+"%)"
		  'dim myimage as new AppleImage (iosLibLogo)
		  'for q as UInteger = 0 to 100000
		  'dim myCGImage as AppleCGImage = myimage.toCGImage
		  'next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.BackgroundColor = &c5F08B000
		  me.BackgroundRadius = 8
		  dim newfont as new iosfont ("Chalkduster", 14)
		  me.Font = newfont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  Dim pic As New iOSBitmap(me.Width, me.Height, 8, false)
		  dim mypic as new AppleImage (iosLibLogo)
		  dim ga as new AppleCGContext (g)
		  'ga.SaveGraphicsState
		  
		  ga.InterpolationQuality = CGInterpolationQuality.High
		  pic.Graphics.DrawImage iosLibLogo, 0, 0
		  ga.SetShadow 2,2,5, &c6B3BB300
		  dim bm as CGBlendMode = ga.BlendMode
		  dim fn as double = ga.Flatness
		  break
		  ga.DrawImage nsrect (0,0,me.Width-10, me.Height-10), mypic.toCGImage
		  ga.RemoveShadow
		  g.LineColor = &c86676D00
		  g.LineWidth = 8
		  ga.LineCap = CGLineCap.Round
		  ga.BlendMode = CGBlendMode.Multiply
		  
		  'ga.DrawLine 5,5,me.Width-10, me.Height-10
		  g.DrawLine me.Width-10,5,5, me.Height-10
		  ga.TextDrawingMode = CGTextDrawingMode.Fill
		  g.DrawTextLine "TestTEXT", 0,80
		  'ga.RestoreGraphicsState
		  
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
