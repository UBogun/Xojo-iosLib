#tag IOSView
Begin iosView View2
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSLIbCanvas iOSLIbCanvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   iOSLIbCanvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 8, 
      AutoLayout      =   iOSLIbCanvas1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbCanvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbCanvas1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -60, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   "0"
      ContentScaleFactor=   1.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   392.0
      Hidden          =   False
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      Tag             =   0
      TintAdjustmentMode=   "0"
      Top             =   28
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
      Begin iOSLabeliOSLibEnhanced iOSLabeliOSLibEnhanced1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AdjustFontSize  =   False
         AllowTightening =   False
         AutoLayout      =   iOSLabeliOSLibEnhanced1, 8, , 0, False, +1.00, 1, 1, 64, 
         AutoLayout      =   iOSLabeliOSLibEnhanced1, 7, , 0, False, +1.00, 1, 1, 183, 
         AutoLayout      =   iOSLabeliOSLibEnhanced1, 1, iOSLIbCanvas1, 1, False, +1.00, 1, 1, 42, 
         AutoLayout      =   iOSLabeliOSLibEnhanced1, 3, iOSLIbCanvas1, 3, False, +1.00, 1, 1, *kStdGapCtlToViewV, 
         BaselineAdjustment=   "2"
         Enabled         =   True
         Height          =   64.0
         Highlighted     =   False
         HighlightedTextColor=   &c44444400
         Left            =   42
         LineBreakMode   =   "0"
         LockedInPosition=   False
         MinimumScaleFactor=   0.0
         MultilineMaxWidth=   0.0
         NumberOfLines   =   0
         PanelIndex      =   0
         Parent          =   "iOSLIbCanvas1"
         Scope           =   0
         ShadowColor     =   &c000000FF
         ShadowXOffset   =   0.0
         ShadowYOffset   =   0.0
         Text            =   ""
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         TextFont        =   ""
         TextSize        =   "0"
         Top             =   48
         Visible         =   True
         Width           =   183.0
      End
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, 211, 
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 1, 1, -*kStdGapCtlToViewV, 
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   30.0
      Left            =   211
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Contextpaint(width as double, height as double)
		  dim p as  AppleBezierPath = AppleBezierPath.PathWithOval (FoundationFrameWork.NSMakeRect (0,0,Width, height))
		  AppleColor.GreenColor.SetStrokeAndFill
		  p.FillWithBlendMode (CoreGraphicsFramework.CGBlendMode.Multiply, 0.6)
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events iOSLIbCanvas1
	#tag Event
		Sub Shown()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Draw(Rect  as xojo.core.rect)
		  // dim p as new AppleBezierPath
		  // p.MoveToPoint FoundationFrameWork.NSMakePoint (0,0)
		  // p.AddCurve FoundationFrameWork.NSMakePoint (me.Width, me.Height), FoundationFrameWork.NSMakePoint (me.Width /3, 0), _
		  // FoundationFrameWork.NSMakePoint (me.Width /1.5, me.Height)
		  // p.Flatness = 500
		  // p.Stroke
		  // 
		  // AppleColor.RedColor.SetStroke
		  // p = new AppleBezierPath
		  // p.MoveToPoint FoundationFrameWork.NSMakePoint (0,0)
		  // p.AddCurve FoundationFrameWork.NSMakePoint (me.Width, me.Height), FoundationFrameWork.NSMakePoint (me.Width /3, 0), _
		  // FoundationFrameWork.NSMakePoint (me.Width /1.5, me.Height)
		  // p.Flatness = 0
		  // p.Stroke
		  
		  dim pic as  AppleImage = AppleImage.ImageFromContext (FoundationFrameWork.nsmakesize(300,450), AddressOf contextpaint)
		  pic.DrawAtPoint FoundationFrameWork.NSMakePoint (20,20)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  for q as integer = 1 to 100000
		    dim a as new AppleBezierPath
		  next
		  
		  
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
