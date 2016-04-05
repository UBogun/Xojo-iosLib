#tag IOSView
Begin iosView IntrospectionMethodsView
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
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
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
		Sub Constructor(intro as AppleIntrospection, classname as text, type as DetailType)
		  // Calling the overridden superclass constructor.
		  try
		    Introspection =  intro
		    me.Type = type
		  catch err
		    
		  end try
		  Super.Constructor
		  self.Title = classname+ " Methods"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub showClasses(filter as text = "")
		  Table1.RemoveAll
		  if IntroSpection <> NIL then
		    dim cell as  iOSTableCellData
		    select case Type
		    case DetailType.Methods
		      dim mymethods() as AppleMethod = Introspection.Methods
		      dim count as uinteger = mymethods.Ubound + 1
		      Table1.AddSection (count.totext+" Methods")
		      for q as uinteger = 0 to count -1
		        dim myname as text =mymethods(q).Name
		        cell = new iOSTableCellData (myname, "", NIL, iostablecelldata.accessorytypes.detail)
		        cell.Tag = mymethods(q)
		        table1.AddRow (0, cell)
		      next
		    case DetailType.Ivars
		      dim mymethods() as AppleIvar = Introspection.Ivars
		      dim count as uinteger = mymethods.Ubound + 1
		      Table1.AddSection (count.totext+" Ivars")
		      for q as uinteger = 0 to count -1
		        dim myname as text =mymethods(q).Name
		        cell = new iOSTableCellData (myname, "", NIL, iostablecelldata.accessorytypes.detail)
		        cell.Tag = mymethods(q)
		        table1.AddRow (0, cell)
		      next
		    case DetailType.Properties
		      dim mymethods() as AppleProperty = Introspection.Properties
		      dim count as uinteger = mymethods.Ubound + 1
		      Table1.AddSection (count.totext+" Properties")
		      for q as uinteger = 0 to count -1
		        dim myname as text =mymethods(q).Name
		        cell = new iOSTableCellData (myname, "", NIL, iostablecelldata.accessorytypes.detail)
		        cell.Tag = mymethods(q)
		        table1.AddRow (0, cell)
		      next
		    end select
		  end if
		  #Pragma Unused filter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sortMethods(obj1 as AppleMethod, obj2 as AppleMethod) As FoundationFrameWork.nscomparisonresult
		  if obj1.Name < obj2.Name then
		    return FoundationFrameWork.NSComparisonResult.Ascending
		  elseif obj1.Name > obj2.name then
		    Return FoundationFrameWork.NSComparisonResult.Descending
		  else
		    return FoundationFrameWork.NSComparisonResult.Same
		  end if
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Introspection As AppleIntrospection
	#tag EndProperty

	#tag Property, Flags = &h0
		Type As introspectionmethodsview.DetailType
	#tag EndProperty


	#tag Enum, Name = DetailType, Type = Integer, Flags = &h0
		Methods
		  Ivars
		Properties
	#tag EndEnum


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Open()
		  showClasses
		End Sub
	#tag EndEvent
	#tag Event
		Sub AccessoryAction(section As Integer, row As Integer)
		  select case type
		  case DetailType.Methods
		    dim mymethod as AppleMethod = me.RowData(section,row).Tag
		    dim nv as new IntrospectionMethodView (mymethod, type)
		    self.pushto nv
		  case DetailType.Properties
		    dim mymethod as AppleProperty = me.RowData(section,row).Tag
		    dim nv as new IntrospectionMethodView (mymethod, type)
		    self.pushto nv
		  case DetailType.Ivars
		    dim mymethod as AppleIvar = me.RowData(section,row).Tag
		    dim nv as new IntrospectionMethodView (mymethod, type)
		    self.pushto nv
		  end select
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
	#tag ViewProperty
		Name="Type"
		Group="Behavior"
		Type="introspectionmethodsview.DetailType"
		EditorType="Enum"
		#tag EnumValues
			"0 - Methods"
			"1 - Ivars"
			"2 - Properties"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
