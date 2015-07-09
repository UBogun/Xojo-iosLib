#tag IOSView
Begin iosView CAKEyframeView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "CAKeyframeAnimation"
   Top             =   0
   Begin ioslibpicker HTMLViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   HTMLViewer1, 8, , 0, False, +1.00, 1, 1, 162, 
      AutoLayout      =   HTMLViewer1, 2, <Parent>, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   HTMLViewer1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      Height          =   162.0
      Left            =   0
      LockedInPosition=   False
      NumberOfComponents=   0
      Scope           =   0
      SelectedColumn  =   0
      SelectionText   =   ""
      Top             =   318
      Visible         =   True
      Width           =   320.0
   End
   Begin ioslibgradientview Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 4, HTMLViewer1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 2, 1, *kStdControlGapV, 
      AutoLayout      =   Canvas1, 7, <Parent>, 7, False, +1.00, 1, 1, 0, 
      Height          =   237.0
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   "0"
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
   Begin iosimageview animationcanvas
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   animationcanvas, 4, HTMLViewer1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   animationcanvas, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   animationcanvas, 2, <Parent>, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   animationcanvas, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      ContentMode     =   "4"
      Height          =   237.0
      Image           =   "1965512703"
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   "0"
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Start")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("Stop")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("Pause")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("Resume")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  select case button.Caption
		  case "Start"
		    Animate
		  case "Stop"
		    animationcanvas.CoreAnimationLayer.RemoveAllAnimations
		  case "Pause"
		    animationcanvas.CoreAnimationLayer.PauseAnimation
		  case "Resume"
		    animationcanvas.CoreAnimationLayer.ResumeAnimation
		  else
		    dim help as new InfoView ("A CAKeyframeAnimation lets you animate a CALayer property the same way you can with a CABasicAnimation but this time along a path. You can choose between three CGPath forms: "+ _
		    "Circle, Rect and Rounded Rect, but CGPath offers a lot of method for custom paths. You are not bound to position changes, the path is taken as a value function over animation time to calculate the animation value – in other words, you can animate colors, borders etc. too."+endofline+ _
		    "The RotationMode property lets you choose between 3 kinds of auto-rotation while the object is animated – towards the center, away from it or none. There are still a few properties missing to influence the cubic computation mode but I hope it's enough for a first start."+endofline + _
		    "Try adding several animations at once – this works too!")
		    self.PushToCurl help
		  end Select
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Animate()
		  dim myanimation1 as new AppleCAKeyframeAnimation (AppleCAAnimation.Properties.Position)
		  dim newrect as new rect (25,25, Canvas1.width-50,Canvas1.Height-25)
		  dim calcmode as text = HTMLViewer1.Caption (2)
		  select case calcmode
		  case "Circle"
		    myanimation1.Path = new AppleCGPathEllipse (newrect.tonsrect)
		  case "Rect"
		    myanimation1.Path = new AppleCGPathRect (newrect.tonsrect)
		  case "Rounded Rect"
		    myanimation1.Path = new AppleCGPathRoundedRect (newrect.tonsrect, newrect.Width/3, newrect.height/3)
		  end select
		  
		  myanimation1.Duration = 3
		  myanimation1.RepeatCount = 33
		  calcmode   = HTMLViewer1.Caption (0)
		  select case calcmode
		  case "Paced"
		    myanimation1.CalculationMode = AppleCAKeyframeAnimation.ValueCalculationModes.Paced
		  case "Linear"
		    myanimation1.CalculationMode = AppleCAKeyframeAnimation.ValueCalculationModes.Linear
		  case "Cubic"
		    myanimation1.CalculationMode = AppleCAKeyframeAnimation.ValueCalculationModes.Cubic
		  case "Cubic Paced"
		    myanimation1.CalculationMode = AppleCAKeyframeAnimation.ValueCalculationModes.CubicPaced
		  case "Discrete"
		    myanimation1.CalculationMode = AppleCAKeyframeAnimation.ValueCalculationModes.Discrete
		  end select
		  calcmode = HTMLViewer1.Caption(1)
		  select case calcmode
		  case "Auto"
		    myanimation1.RotationMode = AppleCAKeyframeAnimation.RotationModes.RotateAuto
		  case "Reverse"
		    myanimation1.RotationMode = AppleCAKeyframeAnimation.RotationModes.RotateAutoReverse
		  case "None"
		    myanimation1.RotationMode = AppleCAKeyframeAnimation.RotationModes.None
		  end select
		  animationcanvas.CoreAnimationLayer.AddAnimation myanimation1
		  animationcanvas.CoreAnimationLayer.ContentsScale = 2.5
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events HTMLViewer1
	#tag Event
		Sub Open()
		  me.addcolumn (Array("Linear","Paced", "Cubic", "Cubic Paced", "Discrete"))
		  me.AddColumn(Array("Auto","Reverse", "None"))
		  me.AddColumn(Array("Circle","Rect", "Rounded Rect"))
		  
		  me.SelectedRow(0) = 1
		  me.SelectedRow(1) = 5
		  me.dataSource.setRowHeight (0,26)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Sub Open()
		  dim colorarray as new AppleMutableArray (2)
		  colorarray.Addobject new AppleCGColor(&c11205400)
		  colorarray.Addobject new AppleCGColor( &c0D112700)
		  me.GradientLayer.colors = colorarray
		  
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
