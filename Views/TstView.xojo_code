#tag IOSView
Begin iosView TstView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 1, TopLayoutGuide, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ImageView1, 3, <Parent>, 3, False, +1.00, 1, 1, 51, 
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 160, 
      AutoLayout      =   ImageView1, 7, , 0, False, +1.00, 1, 1, 160, 
      ContentMode     =   "0"
      Height          =   160.0
      Image           =   "0"
      Left            =   -512
      LockedInPosition=   False
      Scope           =   0
      Top             =   51
      Visible         =   True
      Width           =   160.0
   End
   Begin iOSLibGradientView iOSLibGradientView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   iOSLibGradientView1, 1, ImageView1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibGradientView1, 3, <Parent>, 3, False, +1.00, 1, 1, 250, 
      AutoLayout      =   iOSLibGradientView1, 8, , 0, False, +1.00, 1, 1, 161, 
      AutoLayout      =   iOSLibGradientView1, 2, ImageView1, 2, False, +1.00, 1, 1, 0, 
      Height          =   161.0
      Left            =   -512
      LockedInPosition=   False
      Scope           =   0
      Top             =   250
      Visible         =   True
      Width           =   160.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim ViewLayer as CString = ImageView1.iOSLibView.LayerClassName
		  dim gradientlayer as cstring = iOSLibGradientView1.iOSLibView.LayerClassName
		  break
		End Sub
	#tag EndEvent


#tag EndWindowCode

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
