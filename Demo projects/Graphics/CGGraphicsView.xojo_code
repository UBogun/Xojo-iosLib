#tag IOSView
Begin iosView CGGraphicsView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "CGShapes"
   Top             =   0
   Begin iOScanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Canvas1, 4, ArcSW, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Canvas1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Height          =   338.0
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
      Period          =   15
      Scope           =   0
      Tolerance       =   0
      Top             =   60
   End
   Begin iOSSwitch ArcSW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ArcSW, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   ArcSW, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -30, 
      AutoLayout      =   ArcSW, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   ArcSW, 1, Canvas1, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   419
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch ArctoPointSW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ArctoPointSW, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   ArctoPointSW, 9, Canvas1, 2, False, +0.37, 2, 1, 0, 
      AutoLayout      =   ArctoPointSW, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   ArctoPointSW, 3, ArcSW, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      Left            =   85
      LockedInPosition=   False
      Scope           =   0
      Top             =   419
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch CurveSW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   CurveSW, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   CurveSW, 9, Canvas1, 2, False, +0.65, 2, 1, 0, 
      AutoLayout      =   CurveSW, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   CurveSW, 3, ArcSW, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      Left            =   169
      LockedInPosition=   False
      Scope           =   0
      Top             =   419
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch QuadCurveSW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   QuadCurveSW, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   QuadCurveSW, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   QuadCurveSW, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   QuadCurveSW, 3, ArcSW, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      Top             =   419
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 4, Label2, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 2, ArcSW, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Arc"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   450
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 9, ArctoPointSW, 9, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   Label2, 3, Label4, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   70
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ArctoPoint"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   450
      Visible         =   True
      Width           =   82.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label3, 9, CurveSW, 9, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 66, 
      AutoLayout      =   Label3, 3, Label4, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   162
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Curve"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   450
      Visible         =   True
      Width           =   66.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label4, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Label4, 9, QuadCurveSW, 9, False, +1.00, 2, 1, -5, 
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 83, 
      Enabled         =   True
      Height          =   30.0
      Left            =   228
      LockedInPosition=   False
      Scope           =   0
      Text            =   "QuadCurve"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   450
      Visible         =   True
      Width           =   83.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("Spawn")
		  Toolbar.Add(button)
		  
		  initShapes
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  if button.Caption = "Help" then
		    dim help as new InfoView ("These are some of the vector shapes that are supported by iOSGraphicsExtension painted with blendmode multiply." + EndOfline+ _
		    "You are not restricted to using them as single shapes. Instead, create a complex shape as a combination of several forms and then stroke or fill it.")
		    self.PushToCurl help
		  else
		    initShapes
		  end if
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub initShapes()
		  for q as integer = 0 to 15
		    arcs.Append new CGAnimatedArc (Canvas1.Width*2, Canvas1.height*2)
		    curves.Append new CGAnimatedcurve (Canvas1.Width*2, Canvas1.height*2)
		    QuadCurves.Append new CGAnimatedQuadcurve (Canvas1.Width*3, Canvas1.height*4)
		    ArcstoPoints.Append new CGAnimatedArctoPoint (Canvas1.Width*3, Canvas1.height*3)
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Arcs() As CGAnimatedArc
	#tag EndProperty

	#tag Property, Flags = &h0
		ArcstoPoints() As CGAnimatedArctoPoint
	#tag EndProperty

	#tag Property, Flags = &h0
		Curves() As CGAnimatedCurve
	#tag EndProperty

	#tag Property, Flags = &h0
		QuadCurves() As CGAnimatedQuadcurve
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  dim t1 as date = date.now
		  dim ga as new AppleCGContext (g)
		  ga.BlendMode = CGBlendMode.Multiply
		  
		  if ArcSW.Value then
		    for each arc as CGAnimatedArc in arcs
		      g.LineWidth = arc.LineWidth
		      ga.LineCap = arc.cap
		      g.LineColor = arc.MyColor
		      ga.AddArc arc.x, arc.Y, arc.Radius, arc.StartAngle, arc.Endangle, arc.cw
		      ga.StrokePath
		      arc.Mutate
		    next
		  end if
		  
		  if ArctoPointSW.Value then
		    for each curve as CGAnimatedQuadcurve in quadcurves
		      g.LineWidth = curve.LineWidth
		      ga.LineCap = curve.cap
		      g.LineColor = curve.MyColor
		      ga.MoveToPoint curve.sx, curve.sy
		      ga.AddQuadCurveToPoint curve.CPX, curve.cpy, curve.x, curve.y
		      ga.StrokePath
		      curve.Mutate
		    next
		  end if
		  
		  if CurveSW.Value then
		    for each curve as CGAnimatedcurve in curves
		      g.LineWidth = curve.LineWidth
		      ga.LineCap = curve.cap
		      g.LineColor = curve.MyColor
		      ga.MoveToPoint curve.sx, curve.sy
		      ga.AddCurveToPoint curve.CP1X, curve.cp1y, curve.CP2X, curve.cp2y, curve.x, curve.y
		      ga.StrokePath
		      curve.Mutate
		    next
		  end if
		  
		  if QuadCurveSW.value then
		    for each arc as CGAnimatedArctoPoint in ArcstoPoints
		      g.LineWidth = arc.LineWidth
		      ga.LineCap = arc.cap
		      g.LineColor = arc.MyColor
		      ga.MoveToPoint arc.sx, arc.sy
		      ga.AddArcToPoint arc.x, arc.y, arc.x1, arc.y1, arc.Radius
		      ga.StrokePath
		      arc.Mutate
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
		  Canvas1.Invalidate
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
