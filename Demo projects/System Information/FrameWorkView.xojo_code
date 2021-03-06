#tag IOSView
Begin iosView FrameWorkView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "Loaded Bundles"
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 4, Label2, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Table1, 3, Searchfield, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Format          =   "0"
      Height          =   252.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   112
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   TextField1, 4, Label1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   TextField1, 2, <Parent>, 2, False, +1.00, 1, 1, -113, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Metal"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   410
      Visible         =   True
      Width           =   187.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 23, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Label1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   449
      Visible         =   False
      Width           =   280.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Label2, 4, TextField1, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   Label2, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Enter a framework name (without path)"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   372
      Visible         =   True
      Width           =   300.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 3, TextField1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button2, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Load"
      Enabled         =   True
      Height          =   30.0
      Left            =   222
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   410
      Visible         =   True
      Width           =   78.0
   End
   Begin iOSTextField Searchfield
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Searchfield, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Searchfield, 3, TopLayoutGuide, 4, False, +1.00, 2, 1, *kStdControlGapV, 
      AutoLayout      =   Searchfield, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Searchfield, 7, , 0, False, +1.00, 1, 1, 187, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   113
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Search"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   187.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  button = iOSToolButton.NewBordered("Load")
		  Toolbar.Add(button)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub showFrameworks()
		  Table1.RemoveAll
		  dim mybundles as AppleArray = AppleBundle.allbundles
		  mybundles = mybundles.SortWithBlock(new appleblock (AddressOf sortBundles))
		  dim cell as iostablecelldata
		  Table1.AddSection mybundles.Count.totext+ " open NSBundles"
		  dim count as integer = mybundles.count -1
		  for q as uinteger = 0 to count
		    dim mybundle as new AppleBundle(mybundles.PtrAtIndex (q))
		    dim identifier as text = mybundle.bundleidentifier
		    if Searchfield.text.Empty or not (Searchfield.text.Empty) and (identifier.IndexOf (Searchfield.Text) > -1) then
		      cell = new iOSTableCellData (identifier)
		      cell.tag = mybundle
		      Table1.AddRow 0, cell
		    end if
		  next
		   mybundles   = AppleBundle.AllFrameworks
		  mybundles = mybundles.SortWithBlock(new appleblock (AddressOf sortBundles))
		  Table1.AddSection mybundles.Count.totext+ " open NSFrameworks"
		   count  = mybundles.count -1
		  for q as uinteger = 0 to count
		    dim mybundle as new AppleBundle(mybundles.PtrAtIndex (q))
		    dim identifier as text = mybundle.bundleidentifier
		    if Searchfield.text.Empty or not (Searchfield.text.Empty) and (identifier.IndexOf (Searchfield.Text) > -1) then
		      cell = new iOSTableCellData (identifier)
		      cell.tag = mybundle
		      Table1.AddRow 1, cell
		    end if
		  next
		  
		  mybundles = applearray.makefromptr(applecfbundle.mainbundle.allbundles.cftyperef)
		  mybundles = mybundles.SortWithBlock(new appleblock (AddressOf sortcfBundles))
		  Table1.AddSection mybundles.Count.totext+ " open CFBundles"
		  count  = mybundles.count -1
		  for q as uinteger = 0 to count
		    dim mybundle as new AppleCFBundle(mybundles.PtrAtIndex (q))
		    dim identifier as text = mybundle.identifier
		    if Searchfield.text.Empty or not (Searchfield.text.Empty) and (identifier.IndexOf (Searchfield.Text) > -1) then
		      cell = new iOSTableCellData (identifier)
		      cell.tag = mybundle
		      Table1.AddRow 2, cell
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sortBundles(obj1 as ptr, obj2 as ptr) As FoundationFrameWork.nscomparisonresult
		  dim text1 as text = applebundle.getbundleIdentifier(obj1)
		  dim text2 as text = applebundle.getbundleIdentifier(obj2)
		  
		  if text1 < text2 then
		    return FoundationFrameWork.NSComparisonResult.Ascending
		  elseif  text1 > text2 then
		    Return FoundationFrameWork.NSComparisonResult.Descending
		  else
		    return FoundationFrameWork.NSComparisonResult.Same
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sortCFBundles(obj1 as ptr, obj2 as ptr) As FoundationFrameWork.nscomparisonresult
		  dim text1 as text = AppleCFBundle.CFBundleGetIdentifier(obj1)
		  dim text2 as text = AppleCFBundle.CFBundleGetIdentifier(obj2)
		  
		  if text1 < text2 then
		    return FoundationFrameWork.NSComparisonResult.Ascending
		  elseif  text1 > text2 then
		    Return FoundationFrameWork.NSComparisonResult.Descending
		  else
		    return FoundationFrameWork.NSComparisonResult.Same
		  end if
		End Function
	#tag EndMethod


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Open()
		  showFrameworks
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  if section = 2 then
		    dim v as new FrameWorkDetailView
		    v.myBundle = me.RowData(section, row).tag
		    v.showdetails
		    self.PushToSlide v
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  dim result as boolean = AppleLibSystem.LoadFramework (TextField1.text, true)
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
#tag Events Searchfield
	#tag Event
		Sub TextChange()
		  showFrameworks
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
