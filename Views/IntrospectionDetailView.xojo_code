#tag IOSView
Begin iosView IntrospectionDetailView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 4, TextArea1, 3, False, +1.00, 2, 1, -20, 
      Format          =   "0"
      Height          =   319.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 2, 1, 60, 
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 2, 1, -11, 
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 1, 1, 11, 
      AutoLayout      =   TextArea1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -*kStdControlGapV, 
      Editable        =   True
      Height          =   60.0
      KeyboardType    =   "0"
      Left            =   11
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   10
      Top             =   412
      Visible         =   True
      Width           =   298.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor(classname as Text)
		  // Calling the overridden superclass constructor.
		  try
		    IntroSpectionInstance = NSClassFromString (classname)
		    Introspection = new iOSLibIntrospection (IntroSpectionInstance)
		    dim methods() as iOSLibMethod = Introspection.Methods
		  catch err
		    
		  end try
		  Super.Constructor
		  self.Title = classname
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub showClasses(filter as text = "")
		  Table1.RemoveAll
		  if IntroSpectionInstance <> NIL then
		    TextArea1.text = "Originated from: "+IntroSpection.OriginatedFromFramework
		    Table1.AddSection (If (IntroSpection.isMetaClass, "is Meta Class: "+Introspection.MetaclassName, "is no Meta Class"))
		    Table1.AddSection ("Superclass: "+IntroSpection.SuperclassName)
		    table1.AddSection ("Version: "+Introspection.ClassVersion.ToText)
		    table1.AddSection ("Instance size: "+Introspection.InstanceSize.totext+" Bytes")
		    dim cell as new iOSTableCellData
		    dim mymethods() as iOSLibMethod = Introspection.Methods
		    dim count as uinteger = mymethods.Ubound + 1
		    cell = new iOSTableCellData (count.totext+" Methods", "", NIL, if (count > 0, iostablecelldata.accessorytypes.detail,iOSTableCellData.AccessoryTypes.None))
		    table1.addrow( 3, cell)
		    count = Introspection.Ivars.Ubound + 1
		    table1.addrow( 3, count.totext + " Ivars")
		    count = Introspection.Properties.Ubound + 1
		    table1.addrow( 3, count.totext + " Properties")
		    
		    
		    // dim cell as iOSTableCellData
		    // for q as uinteger = 0 to count -1
		    // dim myname as text =mymethods(q).Name
		    // cell = new iOSTableCellData (myname, "", NIL, iostablecelldata.accessorytypes.detail)
		    // table1.AddRow (4, cell)
		    // next
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Introspection As iOSLibIntrospection
	#tag EndProperty

	#tag Property, Flags = &h21
		Private IntroSpectionInstance As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mClasses() As Text
	#tag EndProperty


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Open()
		  showClasses
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  // dim Classname as text = me.RowData(section, row).Text
		  
		  // break
		End Sub
	#tag EndEvent
	#tag Event
		Sub AccessoryAction(section As Integer, row As Integer)
		  dim mv as new IntrospectionMethodsView (Introspection.ClassName)
		  self.pushto mv
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
