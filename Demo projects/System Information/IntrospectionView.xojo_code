#tag IOSView
Begin iosView IntrospectionView
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
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 3, AppleSearchBarControl1, 4, False, +1.00, 2, 1, *kStdControlGapV, 
      Format          =   "0"
      Height          =   317.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   163
      Visible         =   True
      Width           =   320.0
   End
   Begin ioslibsearchbar AppleSearchBarControl1
      Alpha           =   1.0
      AutoLayout      =   AppleSearchBarControl1, 3, TopLayoutGuide, 4, False, +1.00, 2, 1, *kStdControlGapV, 
      AutoLayout      =   AppleSearchBarControl1, 8, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   AppleSearchBarControl1, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   AppleSearchBarControl1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      BookmarkButton  =   False
      CancelButton    =   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentScaleFactor=   1.0
      ExclusiveTouch  =   False
      Height          =   82.0
      Hidden          =   False
      Left            =   20.0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      Placeholder     =   ""
      Prompt          =   ""
      Scope           =   0
      ScopeButtonTitles=   ""
      SearchResultsButton=   False
      SearchText      =   ""
      SelectedButton  =   0
      ShowsScopeBar   =   False
      Tag             =   0
      TintColor       =   &c00000000
      Top             =   73.0
      Translucent     =   False
      UserInteractionEnabled=   True
      Visible         =   False
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub showClasses(filter as text = "")
		  Table1.RemoveAll
		  if mClasses.Ubound = -1 then
		    mClasses = AppleIntrospection.RegisteredClasses
		    mclasses.sort
		  end if
		  dim count as uinteger = mClasses.Ubound +1
		  self.Title = count.totext +" Registered classes"
		  table1.AddSection( "Dummy                    ")
		  dim cell as iOSTableCellData
		  for q as uinteger = 0 to count -1
		    dim myname as text =mClasses (q)
		    cell = new iOSTableCellData (myname, "", NIL, iostablecelldata.accessorytypes.detail)
		    if not filter.empty  then
		      if AppleSearchBarControl1.SelectedButton = 0 then
		        if myname.IndexOf (filter) = 0 then
		          table1.AddRow (0, cell)
		        end if
		      else
		        if myname.IndexOf (filter) > -1 then
		          table1.AddRow (0, cell)
		        end if
		      end if
		    else
		      table1.AddRow (0, cell)
		    end if
		  next
		  Table1.SectionTitle (0)=  table1.RowCount(0).totext + " Classes"
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Introspection As AppleIntrospection
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
		Sub AccessoryAction(section As Integer, row As Integer)
		  dim Classname as text = me.RowData(section, row).Text
		  dim iv as new IntrospectionDetailView (Classname)
		  self.PushTo iv
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppleSearchBarControl1
	#tag Event
		Sub Open()
		  me.SetScopeButtonTitles ("Starts with", "Contains")
		  me.ShowsScopeBar = true
		  me.Placeholder = "Search classes"
		End Sub
	#tag EndEvent
	#tag Event
		Sub ScopeButtonSelectionChanged(index as integer)
		  showClasses (me.SearchText)
		  #pragma unused index
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged(searchtext as text)
		  showClasses (SearchText)
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
