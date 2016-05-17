#tag IOSView
Begin iosView SegControlView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSSegmentedControl SegmentedControl1
      AutoLayout      =   SegmentedControl1, 8, , 0, True, +1.00, 1, 1, 29, 
      AutoLayout      =   SegmentedControl1, 7, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   SegmentedControl1, 1, , 0, False, +1.00, 1, 1, 60, 
      AutoLayout      =   SegmentedControl1, 3, , 0, False, +1.00, 1, 1, 122, 
      Enabled         =   True
      Height          =   29.0
      Left            =   60.0
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "1\n\nFalse\r2 which is the first subview\n\nFalse"
      Top             =   122.0
      Value           =   -1
      Visible         =   True
      Width           =   200.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events SegmentedControl1
	#tag Event
		Sub ValueChanged()
		  dim s as AppleSegmentedControl = me.AppleView
		  dim sub1 as appleview = appleview.MakeFromPtr (s.SubViews.PtrAtIndex(0))
		  sub1.TintColor = new AppleColor (&c1AB20300)
		  dim subsub1 as AppleLabel= AppleLabel.MakeFromPtr (sub1.SubViews.PtrAtIndex(1))
		  subsub1.TextColor = new AppleColor(&cDA770000)
		  subsub1.ShadowColor = new applecolor (&c0F237700)
		  subsub1.ShadowOffset = FoundationFrameWork.NSMakeSize(1,1)
		  subsub1.NumberOfLines = 2
		  subsub1.AdjustsFontSizeToFitWidth = true
		  subsub1.Font = new AppleFont (new iosFont("Times New Roman", 10))
		  subsub1.HighlightedTextColor = new applecolor (&cFCF42900)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
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
