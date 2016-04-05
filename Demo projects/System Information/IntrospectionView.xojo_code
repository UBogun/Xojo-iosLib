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
      AutoLayout      =   Table1, 3, AppleSearchBarControl1, 4, False, +1.00, 2, 1, *kStdControlGapV, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
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
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   AppleSearchBarControl1, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   AppleSearchBarControl1, 3, TopLayoutGuide, 4, False, +1.00, 2, 1, *kStdControlGapV, 
      AutoLayout      =   AppleSearchBarControl1, 8, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   AppleSearchBarControl1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      BarStyle        =   ""
      BookmarkButton  =   False
      CanBecomeFocused=   False
      CancelButton    =   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   82.0
      Hidden          =   False
      HorizontalSearchFieldBackgroundPositionAdjustment=   0.0
      HorizontalSearchTextPositionAdjustment=   0.0
      Left            =   20
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      Placeholder     =   ""
      PreservesSuperviewLayoutMargins=   False
      Prompt          =   ""
      Scope           =   0
      ScopeButtonTitles=   ""
      SearchbarStyle  =   ""
      SearchResultsButton=   False
      searchResultsButtonSelected=   False
      SearchText      =   ""
      SelectedButton  =   0
      ShowsScopeBar   =   False
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   73
      TranslatesAutoresizingMaskIntoConstraints=   False
      Translucent     =   False
      UserInteractionEnabled=   True
      VerticalSearchFieldBackgroundPositionAdjustment=   0.0
      VerticalSearchTextPositionAdjustment=   0.0
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
		    mclasses = Introspection.RegisteredClasses
		    mClasses.Sort
		    // dim mclassarray as applearray= AppleIntrospection.RegisteredClassesArray
		    // mclassarray = mclassarray.SortWithBlock(new AppleBlock(AddressOf sortClasses))
		    // dim count as uinteger = mclassarray.count -1
		    // for q as uinteger = 0 to Count
		    // mclasses.Append text.fromCString(ObjectiveCRuntime.class_getName(mclassarray.PtrAtIndex(q)), StandardTextEncoding)
		    // next
		  end if
		  dim count as uinteger = mClasses.Ubound +1
		  self.Title = count.totext +" Registered classes"
		  table1.AddSection( "Dummy                    ")
		  dim cell as iOSTableCellData
		  count = count -1
		  for q as uinteger = 0 to count 
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

	#tag Method, Flags = &h21
		Private Function sortClasses(obj1 as ptr, obj2 as ptr) As FoundationFrameWork.nscomparisonresult
		  declare function class_getName lib Obj_C (id as ptr) as CString
		  dim text1 as text = text.fromCString(class_getName(obj1), StandardTextEncoding)
		  dim text2 as text = text.fromCString(class_getName(obj2), StandardTextEncoding)
		  
		  if text1 < text2 then
		    return FoundationFrameWork.NSComparisonResult.Ascending
		  elseif  text1 > text2 then
		    Return FoundationFrameWork.NSComparisonResult.Descending
		  else
		    return FoundationFrameWork.NSComparisonResult.Same
		  end if
		End Function
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
