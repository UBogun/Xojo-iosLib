#tag IOSView
Begin iosView FrameWorkView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 1, 1, -4, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 117, 
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
      Width           =   117.0
   End
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 8, , 0, False, +1.00, 1, 1, 308, 
      AutoLayout      =   Table1, 3, <Parent>, 3, False, +1.00, 1, 1, 35, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      Format          =   "0"
      Height          =   308.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   35
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSTextField TextField1
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 3, <Parent>, 3, False, +1.00, 1, 1, 377, 
      AutoLayout      =   TextField1, 2, <Parent>, 2, False, +1.00, 1, 1, -113, 
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, 6, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   6.0
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Metal"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   377.0
      Visible         =   True
      Width           =   201.0
   End
   Begin iOSLabel Label1
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 49, 
      AutoLayout      =   Label1, 3, , 0, False, +1.00, 1, 1, 431, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Label1, 1, TextField1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      Enabled         =   True
      Height          =   49.0
      Left            =   215.0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   431.0
      Visible         =   False
      Width           =   100.0
   End
   Begin iOSLabel Label2
      AutoLayout      =   Label2, 4, <Parent>, 4, False, +1.00, 1, 1, -111, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, 6, 
      Enabled         =   True
      Height          =   30.0
      Left            =   6.0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Enter a framework name (without path)"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   339.0
      Visible         =   True
      Width           =   314.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 3, <Parent>, 3, False, +1.00, 1, 1, 378, 
      AutoLayout      =   Button2, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 1, 1, 222, 
      Caption         =   "Load"
      Enabled         =   True
      Height          =   30.0
      Left            =   222.0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   378.0
      Visible         =   True
      Width           =   78.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub showFrameworks()
		  Table1.RemoveAll
		  dim mybundles as iOSLibArray = iOSLibCFBundle.MainBundle.AllBundles
		  Table1.AddSection mybundles.Count.totext+ " open bundles"
		  
		  for q as uinteger = 0 to mybundles.Count -1
		    dim mybundle as new ioslibcfbundle(mybundles.PtrAtIndex (q))
		    Table1.AddRow 0, mybundle.Identifier
		  next
		End Sub
	#tag EndMethod


#tag EndWindowCode

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
		  showFrameworks
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
		  #Pragma unused section
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  dim result as boolean = iOSLibSystem.LoadFramework (TextField1.text, true)
		  label1.Visible = true
		  label1.text = TextField1.text+" load "+if (result, "successful", "failed")
		  showFrameworks
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
