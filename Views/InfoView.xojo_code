#tag IOSView
Begin iosView InfoView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSImageView ImageView1
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 91, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 7, , 0, False, +1.00, 1, 1, 116, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      ContentMode     =   "1"
      Height          =   91.0
      Image           =   "547002367"
      Left            =   184.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   28.0
      Visible         =   True
      Width           =   116.0
   End
   Begin iOSTextArea TextArea1
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 1, 1, 275, 
      AutoLayout      =   TextArea1, 10, <Parent>, 10, False, +1.00, 1, 1, 38, 
      AutoLayout      =   TextArea1, 2, ImageView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      Editable        =   True
      Height          =   275.0
      KeyboardType    =   "0"
      Left            =   20.0
      LockedInPosition=   False
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   140.5
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton Button1
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 1, 1, -*kStdGapCtlToViewV, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 129, 
      AutoLayout      =   Button1, 1, TextArea1, 1, False, +1.00, 1, 1, 0, 
      Caption         =   "Return to menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   20.0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430.0
      Visible         =   True
      Width           =   129.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  // Set up the Navigation Bar
		  button = iOSToolButton.NewPlain("Return to menu")
		  Toolbar.Add(button)
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextArea1
	#tag Event
		Sub Open()
		  me.text = "Hello and welcome to iOSLib!"+EndOfline+EndOfline+ _
		  "This is a library extending Xojo iOS by Declares. There's many of them, some snippets, some already mighty libraries."+endofline+ _
		  "You should definitely check them out on forum.xojo.com."+endofline+"So why another iOSLib?"+Endofline+ _
		  "Special about iOSLib is it goes into the depth not into the height, at least for now. This means you will find a lot of additions to already existing Xojo controls. "+ endofline + _
		  "And what's more is I try to add convenience methods to the most frequently used methods. This means you mostly do not have to dig into the mysteries of iOS API calls but can use Xojo controls and Xojo-like methods and properties." +endofline + _
		  "But if you want to explore iOS, you will find many iOS classes rebuilt as Xojo classes, even those that do not really exist in the API like Core Foundation objects. "+ _
		  "This makes it easy to view them in debugger."+endofline+EndOfline + _
		  "You can find the most recent version and a documentation in form of the GitHub Wiki on https://github.com/UBogun/Xojo-iosLib." + EndOfline + _
		  "But make sure to examine the demo views too as they will often give you an idea on how to use iOSLib's features."
		  me.ScrollEnabled = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  self.Dismiss (true)
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
