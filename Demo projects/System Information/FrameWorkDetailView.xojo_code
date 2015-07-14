#tag IOSView
Begin iosView FrameWorkDetailView
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
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 129, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 1, 1, -4, 
      Caption         =   "Return"
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
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 3, <Parent>, 3, False, +1.00, 2, 1, 36, 
      AutoLayout      =   Table1, 8, , 0, False, +1.00, 1, 1, 221, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      Format          =   "0"
      Height          =   221.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   36
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   TextArea1, 4, Button1, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 1, 1, 161, 
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Editable        =   True
      Height          =   161.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   277
      Visible         =   True
      Width           =   280.0
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


	#tag Method, Flags = &h0
		Sub showdetails()
		  table1.AddSection "Bundle: "+myBundle.Identifier
		  table1.AddRow 0, "Executable "+if (myBundle.ExecutableIsLoaded, "loaded","NOT LOADED")
		  table1.AddRow 0,"Development Region: "+myBundle.DevelopmentRegion
		  table1.AddRow 0,"Package Type: "+text.fromCString (myBundle.PackageType, StandardTextEncoding)
		  table1.AddRow 0,"Package Creator: "+text.fromCString (myBundle.packageCreator, StandardTextEncoding)
		  
		  TextArea1.text = "Description:  "+ myBundle.Description
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		myBundle As AppleCFBundle
	#tag EndProperty


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
