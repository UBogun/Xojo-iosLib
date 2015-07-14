#tag IOSView
Begin iosView ScrollView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   "AppleScrollView"
   Title           =   ""
   Top             =   0
   Begin AppleScrollViewer AppleScrollViewer1
      AutoLayout      =   AppleScrollViewer1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AppleScrollViewer1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AppleScrollViewer1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AppleScrollViewer1, 4, BottomLayoutGuide, 3, False, +1.00, 1, 1, 0, 
      Compatibility   =   ""
      Height          =   415.0
      Left            =   0.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   65.0
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  
		  button = iOSToolButton.NewBordered("Show View")
		  Toolbar.Add(button)
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  if button.Caption = "Help" then
		    dim help as new InfoView ("AppleScrollView is a full-featured implementation of UISCrollView with the custom control AppleScrollViewer. You can zoom in via doubletap and out via two-finger tap, scroll and pinch-zoom in and out of the content which can be any view." + EndOfline+ _
		    "Convenience conversions on the custom control help you to assing an image, a control or a view to the content of the view."+endofline + _
		    "Please see the documentation for all properties, methods and events"+endofline+ _
		    "The other button loads a complete test view into the content.")
		    self.PushToCurl help
		  else
		    dim cc as new ScaleView
		    AppleScrollViewer1.ScrollContent = cc
		    scv= cc
		  end if
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		SCV As ScaleView
	#tag EndProperty


#tag EndWindowCode

#tag Events AppleScrollViewer1
	#tag Event
		Sub Open()
		  me.ScrollContent = iosliblogo
		  me.BackgroundColor = &cffffff00
		  
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
