#tag IOSView
Begin iosView iosScrollView
   BackButtonTitle =   "return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin ioslibscrollview AppleScrollViewControl1
      Alpha           =   1.0
      AlwaysBounceHorizontal=   True
      AlwaysBounceVertical=   True
      AutoLayout      =   AppleScrollViewControl1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   AppleScrollViewControl1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AppleScrollViewControl1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AppleScrollViewControl1, 2, <Parent>, 2, False, +1.00, 2, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      Bounces         =   True
      BouncesZoom     =   True
      CanCancelContentTouches=   True
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentScaleFactor=   1.0
      DecelerationRate=   0.9979999999999999982236
      DelaysContentTouches=   False
      DirectionalLock =   False
      ExclusiveTouch  =   False
      Height          =   415.0
      Hidden          =   False
      Left            =   0.0
      LockedInPosition=   False
      MaximumZoomScale=   5.0
      MinimumZoomScale=   1.0
      MultipleTouchEnabled=   False
      Opaque          =   False
      PagingEnabled   =   False
      Scope           =   0
      ScrollEnabled   =   True
      ScrollsToTop    =   True
      ShowsHorizontalScrollIndicator=   True
      ShowsVerticalScrollIndicator=   True
      Tag             =   0
      Top             =   65.0
      UserInteractionEnabled=   True
      Visible         =   False
      Width           =   320.0
      Zoomable        =   True
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
		  button = iOSToolButton.NewBordered("Stitch views")
		  Toolbar.Add button
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  if button.Caption = "Help" then
		    dim i as new InfoView("AppleScrollView and its custom control iOSLibScrollView allow you to scroll and zoom any content – the contentView is basically just a view and convenience methods exist to get one from an iOSImage, an iOSControl or a complete iOSView."+ eol+ _
		    "Try dragging, pinching and double/two-finger taps on the view"+ eol +eol+ _
		    "With the stitch button a few views existing in this project are combined to one big vertically scrollable UI")
		    self.PushToCurl i
		  else
		    dim v1 as new menuview
		    dim v2 as new TextFieldView
		    dim v3 as new buttonview
		    dim v4 as new SearchFieldView
		    AppleScrollViewControl1.SetMultiViewScrollContent  (v1, v2, v3, v4)
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
