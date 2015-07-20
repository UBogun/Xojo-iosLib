#tag IOSView
Begin iosView FontPreview
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   TextArea1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      Editable        =   True
      Height          =   399.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "The quick brown fox jumped over the lazy dog. „Oh, welch Zynismus!“, quiekte Xavers jadegrüne Bratpfanne."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   40
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h1000
		Sub Constructor(Fontname As Text)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  self.Title = Fontname
		  TextArea1.TextFont = new iOSFont (fontname, 40)
		End Sub
	#tag EndMethod


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
