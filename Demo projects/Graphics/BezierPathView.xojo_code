#tag IOSView
Begin iosView BezierPathView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "AppleBezierPath"
   Top             =   0
   Begin iOSCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Canvas1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Canvas1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 3, False, +1.00, 1, 1, 0, 
      Height          =   415.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
   Begin xojo.Core.Timer Timer1
      Left            =   80
      LockedInPosition=   False
      Mode            =   "2"
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   4000
      Scope           =   0
      Tolerance       =   0
      Top             =   80
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  dim help as new InfoView ("AppleBezierPath (UIBezierPath by its native name) is what you already know as iOSPath. It would ne nice to be able to add the missing features to the Xojo class, but this lacks a handle property, so here is the full class as iOS object instead." +_
		  endofline + endofline+ "This demo only draws sone basic forms with a blendmode multiply and uses a transformation matrix to rotate them a bit-"+endofline +_
		  "You can of course add path segments too—from a variety of shapes—,  test for hits inside them, and a few things more.")
		  self.PushToCurl help
		  #pragma unused button
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  for q as integer = 0 to math.RandomInt (0, 30)
		    dim p as AppleBezierPath
		    select case math.RandomInt (0,3)
		    case 0
		      p = new AppleBezierPath (math.RandomInt(0, g.Width/4), math.RandomInt (0,g.Height/3), math.RandomInt(0,g.Width), math.RandomInt (0,g.Height))
		    case 1
		      p = AppleBezierPath.PathWithOval (FoundationFrameWork.nsmakerect(math.RandomInt(0, g.Width/4), math.RandomInt (0,g.Height/3), math.RandomInt(0,g.Width), math.RandomInt (0,g.Height)))
		    case 2
		      p = AppleBezierPath.PathWithRoundedRect (FoundationFrameWork.nsmakerect(math.RandomInt(0, g.Width/4), math.RandomInt (0,g.Height/3), math.RandomInt(0,g.Width), math.RandomInt (0,g.Height)), math.RandomInt (1,100))
		    case 3
		      dim r1 as double = math.RandomInt(0,360)
		      dim r2 as double = math.RandomInt(0,360)
		      dim radius as double = math.RandomInt (10, g.Height)
		      dim center as FoundationFrameWork.nspoint = FoundationFrameWork.nsmakepoint (math.RandomInt(0,g.Width), math.RandomInt (0,g.Height))
		      p = AppleBezierPath.PathWithArc (center, radius, r1, r2)
		    end select
		    dim segmentcount as integer = math.RandomInt(0,20)
		    dim linesegments() as double
		    for seg as integer = 0 to segmentcount
		      linesegments.Append (math.randomint(0,1000) / 100)
		    next
		    select case math.RandomInt (0,2)
		    case 0
		      p.LineCapStyle = CoreGraphicsFramework.CGLineCap.Butt
		    case  1
		      p.LineCapStyle = CoreGraphicsFramework.CGLineCap.Round
		    case 2
		      p.LineCapStyle = CoreGraphicsFramework.CGLineCap.Square
		    end select
		    
		    p.SetLineDash linesegments, segmentcount, 100
		    g.FillColor = RandomColor (0,255)
		    g.LineColor = RandomColor (0,255)
		    dim lw as double = math.randomint(100,1000)/100
		    p.LineWidth = lw
		    dim angle as double = math.RandomInt (0,900)/10
		    angle = angle.DegreeToRadian
		    p.ApplyTransform TransformExtension.CGAffineTransformMakeRotation (angle)
		    dim alpha as double = math.randomint(2,100)/100
		    p.StrokeWithBlendMode (CoreGraphicsFramework.CGBlendMode.Multiply, alpha)
		    alpha = math.randomint(2,100)/100
		    p.FillWithBlendMode (CoreGraphicsFramework.CGBlendMode.Multiply, alpha)
		    
		  next
		  
		  
		  
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
