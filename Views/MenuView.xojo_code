#tag IOSView
Begin iosView MenuView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "iOSLib Menu"
   Top             =   0
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 7, , 0, False, +1.00, 1, 1, 65, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      ContentMode     =   "1"
      Height          =   51.0
      Image           =   "547002367"
      Left            =   235
      LockedInPosition=   False
      Scope           =   0
      Top             =   73
      Visible         =   True
      Width           =   65.0
   End
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 3, ImageView1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      Format          =   "0"
      Height          =   348.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   132
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Table1
	#tag Event
		Sub Open()
		  me.AddSection "iOSLibView (UIView)"
		  me.addrow 0, "Block animations"
		  me.AddSection "iOSLibCALayer (CALayer)"
		  me.AddRow 1, "Layer properties"
		  me.AddRow 1, "Transform properties"
		  me.addrow 1, "iOSLibCAGradientLayer"
		  me.AddSection "iOSLibNotificationCenter"
		  me.AddRow 2, "Shared Notifications"
		  me.AddSection "iOSLibHTMLViewer Extension"
		  me.AddRow 3, "UIWebView features"
		  me.AddSection "iOLibSCFBundle"
		  me.AddRow 4, "Open Bundles/Frameworks"
		  me.AddRow 4, "iOSLibIntrospection"
		  me.AddSection "Test Section"
		  me.AddRow 5, "Test"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  Dim selectedCell As iOSTableCellData = Me.RowData(section, row)
		  dim rowtext as text = selectedCell.Text
		  dim v3 as  iOSView
		  Select case rowtext
		  case "Block animations"
		    v3 = new BlockAnimateView
		  case "Layer properties"
		    v3= new CALayerAnimateView
		  case "Transform properties"
		    v3  = new TransformView
		  case "iOSLibCAGradientLayer"
		    v3 = new CAGradientLayerView
		  case "Shared Notifications", "UIWebView features"
		    v3 = new NotificationView
		  case "Open Bundles/Frameworks"
		    v3 = new FrameWorkView
		  case "iOSLibIntrospection"
		    v3 = new IntrospectionView
		  case "Test"
		    // for q as uinteger = 0 to 1000
		    v3 = new View2
		    // self.PushTo v3
		    // v3.Close
		    // next
		    // v3 = new View2
		  End Select
		  self.PushTo v3
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
