#tag IOSView
Begin iosView iosScrollView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin AppleScrollViewer AppleScrollViewControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AlwaysBounceHorizontal=   True
      AlwaysBounceVertical=   True
      AutoLayout      =   AppleScrollViewControl1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   AppleScrollViewControl1, 2, <Parent>, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   AppleScrollViewControl1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AppleScrollViewControl1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      BackgroundColor =   &cFFFFFF00
      Bounces         =   True
      BouncesZoom     =   True
      CanCancelContentTouches=   False
      Decelerating    =   False
      DecelerationRate=   1.0
      DirectionalLock =   False
      Dragging        =   False
      Height          =   460.0
      Left            =   0
      LockedInPosition=   False
      MaximumZoomScale=   5.0
      MinimumZoomScale=   0.1000000000000000055511
      PagingEnabled   =   False
      Scope           =   0
      ScrollEnabled   =   True
      ScrollsToTop    =   True
      ShowsHorizontalScrollIndicator=   True
      ShowsVerticalScrollIndicator=   True
      Top             =   20
      Tracking        =   False
      Visible         =   True
      Width           =   320.0
      Zoomable        =   True
      ZoomBouncing    =   False
      Zooming         =   False
      ZoomOnDoubleTap =   True
      ZoomScale       =   1.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim button as iOSToolButton
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add button
		  button = iOSToolButton.NewBordered("Attach view")
		  Toolbar.Add button
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  if button.Caption = "Help" then
		    dim i as new InfoView("AppleScrollView and its custom control AppleScrollViewer allow you to scroll and zoom any content – the contentView is basically just a view and convenience methods exist to get one from an iOSImage, an iOSControl or a complete iOSView."+ EndOfline+ _
		    "Try dragging, zooming and double/two-finger taps on the view"+ EndOfline +EndOfline+ _
		    "Next would be to try to stitch together one big view from different views so we can have a UI that goes beyond a devices' borders")
		    self.PushToCurl i
		  else
		    dim v1 as new menuview
		    dim v2 as new TextFieldView
		    dim v3 as new buttonview
		    AppleScrollViewControl1.SetMultiViewScrollContent  (v1, v2, v3)
		  end if
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private InterActiveContent As iOSView
	#tag EndProperty

	#tag Property, Flags = &h21
		Private InterActiveContent1 As iOSView
	#tag EndProperty


#tag EndWindowCode

#tag Events AppleScrollViewControl1
	#tag Event
		Sub Open()
		  me.ScrollContent = iosliblogo
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
