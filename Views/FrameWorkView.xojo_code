#tag IOSView
Begin iosView FrameWorkView
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
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 7, , 0, False, +1.00, 1, 1, 116, 
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 91, 
      ContentMode     =   "1"
      Height          =   91.0
      Image           =   "547002367"
      Left            =   184
      LockedInPosition=   False
      Scope           =   0
      Top             =   28
      Visible         =   True
      Width           =   116.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 1, 1, -4, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 129, 
      Caption         =   "Return to menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   446
      Visible         =   True
      Width           =   129.0
   End
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 8, , 0, False, +1.00, 1, 1, 308, 
      AutoLayout      =   Table1, 3, ImageView1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      Format          =   "0"
      Height          =   308.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   127
      Visible         =   True
      Width           =   320.0
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
#tag Events Table1
	#tag Event
		Sub Open()
		  me.AddSection "Open Bundles"
		  dim mybundles as iOSLibArray = iOSLibCFBundle.MainBundle.AllBundles
		  for q as uinteger = 0 to mybundles.Count -1
		    dim mybundle as new ioslibcfbundle(mybundles.PtrAtIndex (q))
		    me.AddRow 0, mybundle.Identifier
		  next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  dim mybundles as iOSLibArray = iOSLibCFBundle.MainBundle.AllBundles
		  dim mybundle as new ioslibcfbundle(mybundles.PtrAtIndex (row))
		  dim v as new FrameWorkDetailView 
		  v.myBundle = mybundle
		  v.showdetails
		  self.PushToSlide v
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
