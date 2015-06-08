#tag IOSView
Begin iosView FontDetailView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Format          =   "0"
      Height          =   407.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h1000
		Sub constructor(fontfamily as text)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  showFonts (fontfamily)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub showFonts(fontfamily as text)
		  Table1.RemoveAll
		  
		  dim myfonts() as text = iOSFontExtension.FontsInFamily(fontfamily)
		  myfonts.Sort
		  dim count as uinteger = myfonts.Ubound +1
		  self.Title = count.totext +" Fonts in family "+fontfamily
		  table1.AddSection( "Fonts")
		  for q as uinteger = 0 to count -1
		    dim myname as text =myfonts (q)
		    table1.AddRow (0, new iOSTableCellData (myname, "", NIL, iostablecelldata.accessorytypes.detail))
		  next
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub AccessoryAction(section As Integer, row As Integer)
		  dim fontName as text = me.RowData(section, row).Text
		  dim iv as new fontpreview (fontname)
		  self.PushTo iv
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
