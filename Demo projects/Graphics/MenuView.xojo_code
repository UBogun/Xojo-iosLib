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
      AutoLayout      =   ImageView1, 7, , 0, False, +1.00, 1, 1, 65, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 51, 
      ContentMode     =   "1"
      Height          =   51.0
      Image           =   "1702440959"
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
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Table1, 3, ImageView1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
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
		  me.AddSection "AppleView (UIView)"
		  me.addrow 0, "Block animations"
		  me.addrow 0, "AppleCIFilter"
		  me.AddSection "AppleCALayer (CALayer)"
		  me.AddRow 1, "CAPropertyAnimations"
		  me.AddRow 1, "CAKeyframeAnimations"
		  me.addrow 1, "AppleCAGradientLayer"
		  me.addrow 1, "AppleCAEmitterLayer"
		  me.AddSection "CoreGraphics / iOSGraphics"
		  me.AddRow 2, "iOSGraphics"
		  
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
		  case "CAPropertyAnimations"
		    v3= new CALayerAnimateView
		  case "CAKeyframeAnimations"
		    v3  = new CAKEyframeView
		  case "AppleCAGradientLayer"
		    v3 = new CAGradientLayerView
		  case "AppleCIFilter"
		    v3 = new CiFilterView
		  case "iOSGraphics"
		    v3 = new iOSGraphicsView
		  case "AppleCAEmitterLayer"
		    v3 = new CAEmitterLayerView
		  End Select
		  if v3 <> nil then self.PushTo v3
		  v3 = nil
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
