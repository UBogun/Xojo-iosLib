#tag Class
 Attributes ( incomplete = "uIVisualEffect missing" ) Protected Class AppleTableView
Inherits AppleScrollView
	#tag Method, Flags = &h0
		Attributes( hidden )  Sub AddiOSTable(Table as iOSTable)
		  iOSTableViewDict.value(id) =  WeakRef.create (table)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddReusableCell(CellIdentifier As cfstringRef, IndexPath as AppleIndexPath) As AppleTableViewCell
		  return AppleTableViewCell.MakeFromPtr (dequeueReusableCellWithIdentifierforPath (id, CellIdentifier, IndexPath.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BeginUpdates()
		  BeginUpdates id
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub beginUpdates Lib UIKitLibName Selector "beginUpdates" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Cell(IndexPath as AppleIndexPath) As AppleTableViewCell
		  return AppleTableViewCell.MakefromPtr (getcellForRowAtIndexPath (id, IndexPath.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Cell(row as uinteger, section as uinteger) As AppleTableViewCell
		  return cell (AppleIndexPath.IndexPathForRow (row, section))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckDelegate()
		  dim del as AppleObject = me.Delegate_
		  dim delclass as text = text.fromCString (ObjectiveCRuntime.object_getClassName (del.id), StandardTextEncoding)
		  if iOSTableViewDict = nil then iOSTableViewDict = new dictionary
		  if  delclass <> "iOSLibUITableDelegate" then
		    dim NewDel as new AppleTableViewDelegate ()
		    me.Delegate_ = newdel
		    me.DataSource = NewDel
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(frame as FoundationFrameWork.nsrect, style as UITableViewStyle)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleScrollView
		  // Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleScrollView
		  // Constructor() -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    Super.Constructor (initwithFrame(alloc(classptr), frame, style))
		  #elseif Target32Bit
		    Super.Constructor (initwithFrame32(alloc(classptr), frame.tonsrect32, style))
		  #endif
		  MHasOwnership = true
		  CheckDelegate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor(id as ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleScrollView
		  // Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleScrollView
		  // Constructor() -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (id)
		  CheckDelegate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteRows(IndexPaths as Applearray, animated as boolean = false)
		  deleteRowsatIndexPaths(id, IndexPaths.id, animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub deleteRowsAtIndexPaths Lib UIKitLibName Selector "deleteRowsAtIndexPaths:withRowAnimation:" (id as ptr, indexpaths as ptr, animated as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function dequeueReusableCellWithIdentifier Lib UIKitLibName Selector "dequeueReusableCellWithIdentifier:" (id as ptr, identifier as CFStringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function dequeueReusableCellWithIdentifierforPath Lib UIKitLibName Selector "dequeueReusableCellWithIdentifier:forIndexPath:" (id as ptr, identifier as CFStringRef, IndexPath as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function dequeueReusableHeaderFooterViewWithIdentifier Lib UIKitLibName Selector "dequeueReusableHeaderFooterViewWithIdentifier:" (id as ptr, identifier as CFStringRef) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub deselectRow(indexpath as AppleIndexPath, animated as boolean = false)
		  deselectRowAtIndexPath (id, indexpath.id, Animated)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deselectRow(row as uinteger, section as uinteger,  animated as boolean = false)
		  deselectRow (AppleIndexPath.IndexPathForRow (row, section), Animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub deselectRowAtIndexPath Lib UIKitLibName Selector "deselectRowAtIndexPath:animated:" (id as ptr, indexpath as ptr, animated as boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub EndUpdates()
		  EndUpdates id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub endUpdates Lib UIKitLibName Selector "endUpdates" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function FooterView(Section as Integer) As AppleTableViewHeaderFooterView
		  return AppleTableViewHeaderFooterView.MakefromPtr (getFooterViewForSection(id, section))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getallowsMultipleSelection Lib UIKitLibName Selector "allowsMultipleSelection" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getallowsMultipleSelectionDuringEditing Lib UIKitLibName Selector "allowsMultipleSelectionDuringEditing" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getallowsSelection Lib UIKitLibName Selector "allowsSelection" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getallowsSelectionDuringEditing Lib UIKitLibName Selector "allowsSelectionDuringEditing" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getcellForRowAtIndexPath Lib UIKitLibName Selector "cellForRowAtIndexPath:" (id as ptr, indexpath as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getcellLayoutMarginsFollowReadableWidth Lib UIKitLibName Selector "cellLayoutMarginsFollowReadableWidth" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getdataSource Lib UIKitLibName Selector "dataSource" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getestimatedRowHeight Lib UIKitLibName Selector "estimatedRowHeight" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getestimatedRowHeight32 Lib UIKitLibName Selector "estimatedRowHeight" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getestimatedSectionFooterHeight Lib UIKitLibName Selector "estimatedSectionFooterHeight" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getestimatedSectionFooterHeight32 Lib UIKitLibName Selector "estimatedSectionFooterHeight" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getestimatedSectionHeaderHeight Lib UIKitLibName Selector "estimatedSectionHeaderHeight" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getestimatedSectionHeaderHeight32 Lib UIKitLibName Selector "estimatedSectionHeaderHeight" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getfooterViewForSection Lib UIKitLibName Selector "footerViewForSection:" (id as ptr, section as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getheaderViewForSection Lib UIKitLibName Selector "headerViewForSection:" (id as ptr, section as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindexPathForCell Lib UIKitLibName Selector "indexPathForCell:" (id as ptr, cell as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindexPathForRowAtPoint Lib UIKitLibName Selector "indexPathForRowAtPoint:" (id as ptr, point as FoundationFrameWork . nspoint) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindexPathForRowAtPoint32 Lib UIKitLibName Selector "indexPathForRowAtPoint:" (id as ptr, point as FoundationFrameWork . nspoint32Bit) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindexPathForSelectedRow Lib UIKitLibName Selector "indexPathForSelectedRow" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindexPathsForRowsInRect Lib UIKitLibName Selector "indexPathsForRowsInRect:" (id as ptr, rect as FoundationFrameWork . nsrect) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindexPathsForRowsInRect32 Lib UIKitLibName Selector "indexPathsForRowsInRect:" (id as ptr, rect as FoundationFrameWork . nsrect32Bit) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindexPathsForSelectedRows Lib UIKitLibName Selector "indexPathsForSelectedRows" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getindexPathsForVisibleRows Lib UIKitLibName Selector "indexPathsForVisibleRows" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getnumberOfSections Lib UIKitLibName Selector "numberOfSections" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrectForFooterInSection Lib UIKitLibName Selector "rectForFooterInSection:" (id as ptr, section as integer) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrectForFooterInSection32 Lib UIKitLibName Selector "rectForFooterInSection:" (id as ptr, section as integer) As FoundationFrameWork.nsrect32bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrectForHeaderInSection Lib UIKitLibName Selector "rectForHeaderInSection:" (id as ptr, section as integer) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrectForHeaderInSection32 Lib UIKitLibName Selector "rectForHeaderInSection:" (id as ptr, section as integer) As FoundationFrameWork.nsrect32bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrectForRowAtIndexPath Lib UIKitLibName Selector "rectForRowAtIndexPath:" (id as ptr, indexpath as ptr) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrectForRowAtIndexPath32 Lib UIKitLibName Selector "rectForRowAtIndexPath:" (id as ptr, indexpath as ptr) As FoundationFrameWork.nsrect32bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrectForSection Lib UIKitLibName Selector "rectForSection:" (id as ptr, section as integer) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrectForSection32 Lib UIKitLibName Selector "rectForSection:" (id as ptr, section as integer) As FoundationFrameWork.nsrect32bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getremembersLastFocusedIndexPath Lib UIKitLibName Selector "remembersLastFocusedIndexPath" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function GetReusableCell(CellIdentifier As cfstringRef) As AppleTableViewCell
		  return AppleTableViewCell.MakeFromPtr (dequeueReusableCellWithIdentifier (id, CellIdentifier))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetReusableHeaderFooterView(CellIdentifier As cfstringRef) As AppleTableViewHeaderFooterView
		  return AppleTableViewHeaderFooterView.MakeFromPtr (dequeueReusableHeaderFooterViewWithIdentifier (id, CellIdentifier))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrowHeight Lib UIKitLibName Selector "rowHeight" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getrowHeight32 Lib UIKitLibName Selector "rowHeight" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getsectionFooterHeight Lib UIKitLibName Selector "sectionFooterHeight" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getsectionFooterHeight32 Lib UIKitLibName Selector "sectionFooterHeight" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getsectionHeaderHeight Lib UIKitLibName Selector "sectionHeaderHeight" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getsectionHeaderHeight32 Lib UIKitLibName Selector "sectionHeaderHeight" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getsectionIndexBackgroundColor Lib UIKitLibName Selector "sectionIndexBackgroundColor" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getsectionIndexColor Lib UIKitLibName Selector "sectionIndexColor" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getsectionIndexMinimumDisplayRowCount Lib UIKitLibName Selector "sectionIndexMinimumDisplayRowCount" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getsectionIndexTrackingBackgroundColor Lib UIKitLibName Selector "sectionIndexTrackingBackgroundColor" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getseparatorColor Lib UIKitLibName Selector "separatorColor" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getseparatorStyle Lib UIKitLibName Selector "separatorStyle" (id as ptr) As UITableViewSeparatorStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getStyle Lib UIKitLibName Selector "style" (id as ptr) As UITableViewStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function gettableFooterView Lib UIKitLibName Selector "tableFooterView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function gettableHeaderView Lib UIKitLibName Selector "tableHeaderView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getvisibleCells Lib UIKitLibName Selector "visibleCells" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function HeaderView(Section as Integer) As AppleTableViewHeaderFooterView
		  return AppleTableViewHeaderFooterView.MakefromPtr (getheaderViewForSection(id, section))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexPath(Cell as AppleTableViewCell) As AppleIndexPath
		  return AppleIndexPath.MakeFromPtr (getindexpathforcell (id, cell.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexPath(Point as FoundationFrameWork.nspoint) As AppleIndexPath
		  #if Target64Bit
		    return AppleIndexPath.MakeFromPtr (getindexpathforrowatpoint (id, point))
		  #elseif Target32Bit
		    return AppleIndexPath.MakeFromPtr (getindexpathforrowatpoint32 (id, point.tonspoint32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexPaths(Rect as FoundationFrameWork.nsrect) As applearray
		  #if Target64Bit
		    return applearray.MakeFromPtr (getindexPathsForRowsInRect (id, rect))
		  #elseif Target32Bit
		    return applearray.MakeFromPtr (getindexPathsForRowsInRect32 (id, rect.tonsrect32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonaccessoryButtonTappedForRowWithIndexPath(indexpath as ptr)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informonaccessoryButtonTappedForRowWithIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    RaiseEvent AccessoryAction (myindex)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informoncommitEditingStyle(style as AppleTableViewCell.UITableViewCellEditingStyle, indexpath as ptr)
		  break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidDeselectRowAtIndexPath(indexpath as ptr)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informondidDeselectRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    RaiseEvent didDeselectRow (myindex)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidEndEditingRowAtIndexPath(indexpath as ptr)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informondidEndEditingRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    RaiseEvent EditFinished (myindex)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidSelectRowAtIndexPath(indexpath as ptr)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informondidselectRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    RaiseEvent didSelectRow (myindex)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnEditAction(action as AppleTableViewRowAction, indexpath as AppleIndexPath)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informOnEditAction (action, indexpath)
		  else
		    RaiseEvent EditAction (action, indexpath)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informoneditActionsForRowAtIndexPath(indexpath as ptr) As Ptr
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return mytable.informoneditActionsForRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    return RaiseEvent EditActions (myindex)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informoneditingStyleForRowAtIndexPath(indexpath as ptr) As AppleTableViewCell.UITableViewCellEditingStyle
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return mytable.informoneditingStyleForRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    dim usedefault as boolean = true
		    dim result as AppleTableViewCell.UITableViewCellEditingStyle = RaiseEvent EditStyle (myindex, usedefault)
		    return if (usedefault, AppleTableViewCell.UITableViewCellEditingStyle.Delete, result)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonestimatedheightForFooterInSection(section as uinteger) As double
		  dim mytable as iOSLibTable = me.iOSLibTable
		  dim result as double
		  if mytable <> nil then
		    result  = mytable.informonestimatedheightForFooterInSection (section)
		  else
		    result = RaiseEvent estimatedFooterHeight (section)
		  end if
		  return if (result = 0.0, raiseevent FooterHeight(section), result)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonestimatedheightForHeaderInSection(section as uinteger) As double
		  dim mytable as iOSLibTable = me.iOSLibTable
		  dim result as double
		  if mytable <> nil then
		    result  = mytable.informonestimatedheightForHeaderInSection (section)
		  else
		    result = RaiseEvent estimatedHeaderHeight (section)
		  end if
		  return if (result = 0.0, raiseevent HeaderHeight(section), result)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonestimatedheightForRowAtIndexPath(indexpath as ptr) As double
		  dim mytable as iOSLibTable = me.iOSLibTable
		  dim myIndex as new AppleIndexPath (indexpath)
		  dim result as double
		  if mytable <> nil then
		    result  = mytable.informonestimatedheightForRowAtIndexPath (indexpath)
		  else
		    result = RaiseEvent EstimatedHeightForRow (myindex)
		  end if
		  return if (result = 0.0, me.AutomaticDimension, result)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonheightForFooterInSection(section as uinteger) As double
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return mytable.informonheightForFooterInSection (section)
		  else
		    return  RaiseEvent FooterHeight (section)
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonheightForHeaderInSection(section as uinteger) As double
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return mytable.informonheightForHeaderInSection (section)
		  else
		    return  RaiseEvent HeaderHeight (section)
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonheightForRowAtIndexPath(indexpath as ptr) As double
		  dim mytable as iOSLibTable = me.iOSLibTable
		  dim myIndex as new AppleIndexPath (indexpath)
		  dim result as double
		  if mytable <> nil then
		    result  = mytable.informonheightForRowAtIndexPath (indexpath)
		  else
		    result = RaiseEvent HeightForRow (myindex)
		  end if
		  return if (result = 0.0, me.RowHeight, result)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonindentationLevelForRowAtIndexPath(indexpath as ptr) As double
		  dim mytable as iOSLibTable = me.iOSLibTable
		  dim myIndex as new AppleIndexPath (indexpath)
		  if mytable <> nil then
		    return mytable.informonindentationLevelForRowAtIndexPath (indexpath)
		  else
		    return RaiseEvent IndentRow (myindex)
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonshouldIndentWhileEditingRowAtIndexPath(indexpath as ptr) As boolean
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return not mytable.informonshouldIndentWhileEditingRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    return not (RaiseEvent ShouldNotIndent (myindex))
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informontargetIndexPathForMoveFromRowAtIndexPath(sourcepath as ptr, targetpath as ptr) As ptr
		  dim mytable as iOSLibTable = me.iOSLibTable
		  dim result as appleindexpath
		  if mytable <> nil then
		    result = AppleIndexPath.MakeFromPtr(mytable.informontargetIndexPathForMoveFromRowAtIndexPath (sourcepath, targetpath))
		  else
		    dim source as new AppleIndexPath (sourcepath)
		    dim target as appleindexpath = AppleIndexPath.MakeFromPtr(Targetpath)
		    result  = RaiseEvent MoveRow (source, target)
		    if result = nil then result = target
		  end if
		  return if (result = nil, nil, result.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonviewForFooterInSection(section as uinteger) As ptr
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return mytable.informonviewForFooterInSection (section)
		  else
		    dim newview as appleview = RaiseEvent ViewForFooter (section)
		    return if (newview = nil, nil, newview.id)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonviewForHeaderInSection(section as uinteger) As ptr
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return mytable.informonviewForHeaderInSection (section)
		  else
		    dim newview as appleview = RaiseEvent ViewForHeader (section)
		    return if (newview = nil, nil, newview.id)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillBeginEditingRowAtIndexPath(indexpath as ptr)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informonwillBeginEditingRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    RaiseEvent willEdit (myindex)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonwillDeselectRowAtIndexPath(indexpath as ptr) As ptr
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return mytable.informonwillDeselectRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    dim newindex as appleindexpath = RaiseEvent willDeselectRow (myindex)
		    return if (newindex = nil , nil, newindex.id) 
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillDisplayCell(cell as ptr, indexpath as ptr)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informonwillDisplayCell (cell, indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    dim mycell as AppleTableViewCell = AppleTableViewCell.MakefromPtr (cell)
		    RaiseEvent WillDisplayCell (mycell, myindex)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillDisplayFooter(header as ptr, section as uinteger)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informonwillDisplayFooter (header, section)
		  else
		    dim myheader as appleview = appleview.MakefromPtr (header)
		    RaiseEvent WillDisplayFooter (myheader, section)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillDisplayHeader(header as ptr, section as uinteger)
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    mytable.informonwillDisplayHeader (header, section)
		  else
		    dim myheader as appleview = appleview.MakefromPtr (header)
		    RaiseEvent WillDisplayHeader (myheader, section)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonwillSelectRowAtIndexPath(indexpath as ptr) As ptr
		  dim mytable as iOSLibTable = me.iOSLibTable
		  if mytable <> nil then
		    return mytable.informonwillSelectRowAtIndexPath (indexpath)
		  else
		    dim myIndex as new AppleIndexPath (indexpath)
		    dim newindex as appleindexpath = RaiseEvent willSelectRow (myindex)
		    if newindex = nil then 
		      return myIndex.id
		    else
		      return newindex.id
		    end if
		  end if
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function initWithFrame Lib UIKitLibName Selector "initWithFrame:style:" (id as ptr, frame as FoundationFrameWork . nsrect, style as UITableViewStyle) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function initWithFrame32 Lib UIKitLibName Selector "initWithFrame:style:" (id as ptr, frame as FoundationFrameWork . nsrect32Bit, style as UITableViewStyle) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub InsertRows(IndexPaths as Applearray, animated as boolean = false)
		  insertRowsatIndexPaths(id, IndexPaths.id, animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub insertRowsAtIndexPaths Lib UIKitLibName Selector "insertRowsAtIndexPaths:withRowAnimation:" (id as ptr, indexpaths as ptr, animated as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Function iOSLibTable() As ioslibtable
		  if iOSTableViewDict.HasKey (id) then
		    dim wr as WeakRef = iOSTableViewDict.value(id)
		    if wr <> nil then
		      dim Table as iOSLibTable = iOSLibTable(wr.Value)
		      return table
		    end if
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveRow(IndexPath as appleindexpath, NewIndexPath as appleindexpath)
		  moveRowAtIndexPath (id, IndexPath.id, NewIndexPath.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveRow(row as uinteger, section as uinteger, newrow as UInteger, newsection as uinteger)
		  moveRow (AppleIndexPath.IndexPathForRow(row, section), AppleIndexPath.IndexPathForRow(newrow, newsection))
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub moveRowAtIndexPath Lib UIKitLibName Selector "moveRowAtIndexPath:toIndexPath:" (id as ptr, indexpath as ptr, newIndexPath as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub MoveSection(section as integer, toSection as Integer)
		  MoveSection (id, section, toSection)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub moveSection Lib UIKitLibName Selector "moveSection:toSection:" (id as ptr, section as integer, toSection as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function numberOfRowsInSection(Section as Integer) As Integer
		  Declare Function numberOfRowsInSection lib UIKitLibName selector "numberOfRowsInSection:" _
		  (id as ptr, section as integer) as Integer
		  return numberOfRowsInSection (id, section)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RectForFooter(Section as integer) As FoundationFrameWork.nsrect
		  #if Target64Bit
		    return getrectForfooterinSection (id, section)
		  #elseif Target32Bit
		    return getrectForfooterinSection32 (id, section).tonsrect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RectForHeader(Section as integer) As FoundationFrameWork.nsrect
		  #if Target64Bit
		    return getrectForheaderinSection (id, section)
		  #elseif Target32Bit
		    return getrectForheaderinSection32 (id, section).tonsrect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RectForRow(Indexpath as AppleIndexPath) As FoundationFrameWork.nsrect
		  #if Target64Bit
		    return getrectForRowAtIndexPath (id, indexpath.id)
		  #elseif Target32Bit
		    return getrectForRowAtIndexPath32 (id, indexpath.id).tonsrect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RectForRow(row as uinteger, section as uinteger) As FoundationFrameWork.nsrect
		  return RectForRow (AppleIndexPath.IndexPathForRow (row, section))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RectForSection(Section as integer) As FoundationFrameWork.nsrect
		  #if Target64Bit
		    return getrectForSection (id, section)
		  #elseif Target32Bit
		    return getrectForSection32 (id, section).tonsrect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterClass(AnObject as AppleObject, identifier as text)
		  RegisterClass (Anobject.classptr, identifier)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub registerClass Lib UIKitLibName Selector "registerClass:forCellReuseIdentifier:" (id as ptr, classptr as ptr, identifier as cfstringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RegisterClass(ClassPtr as Ptr, identifier as text)
		  RegisterClass (id, classptr, identifier)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub registerClassForHeader Lib UIKitLibName Selector "registerClass:forHeaderFooterViewReuseIdentifier:" (id as ptr, aClass as Ptr, identifier as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C20666F72207265676973746572696E6720746865206D616E746C6520694F5355736572436F6E74726F6C2E
		Attributes( hidden )  Sub RegisterControl(ParentControl as iOSLibTextfield)
		  if XojoControls = nil then XojoControls = new Dictionary
		  XojoControls.Value (id) = weakref.create(parentcontrol)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterHeaderFooter(Nib as applenib, identifier as CFStringRef)
		  RegisterNibForHeader (id, nib.id, identifier)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterHeaderFooter(anObject as appleobject, identifier as CFStringRef)
		  RegisterHeaderFooter (anObject.ClassPtr, identifier)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterHeaderFooter(classptr as ptr, identifier as CFStringRef)
		  registerClassForHeader (id, classptr, identifier)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterNib(Nib as applenib, identifier as text)
		  registernib (id, nib.id, identifier)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub registerNib Lib UIKitLibName Selector "registerNib:forCellReuseIdentifier:" (id as ptr, nib as ptr, identifier as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub registerNibForHeader Lib UIKitLibName Selector "registerNib:forHeaderFooterViewReuseIdentifier:" (id as ptr, aClass as Ptr, identifier as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub ReloadData()
		  reloadData id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub reloadData Lib UIKitLibName Selector "reloadData" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub ReloadRows(indexpaths as applearray, animated as boolean = false)
		  reloadRowsAtIndexPaths (id, IndexPaths.id, animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub reloadRowsAtIndexPaths Lib UIKitLibName Selector "reloadRowsAtIndexPaths:withRowAnimation:" (id as ptr, indexpaths as ptr, animated as boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub ReloadSectionIndexTitles()
		  reloadSectionIndexTitles id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub reloadSectionIndexTitles Lib UIKitLibName Selector "reloadSectionIndexTitles" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemoveiOSTable()
		  iOSTableViewDict.Remove(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToNearestRow(scrollposition as UITableViewScrollPosition = uitableviewscrollposition.none, animated as boolean = false)
		  scrollToNearestSelectedRowAtScrollPosition (id, scrollposition, animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub scrollToNearestSelectedRowAtScrollPosition Lib UIKitLibName Selector "scrollToNearestSelectedRowAtScrollPosition:animated:" (id as ptr, scrollposition as UITableViewScrollPosition, animated as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub ScrollToRow(indexpath as AppleIndexPath, scrollposition as UITableViewScrollPosition = uitableviewscrollposition.none, animated as boolean = false)
		  scrollToRowAtIndexPath (id, indexpath.id, scrollposition, Animated)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToRow(row as uinteger, section as uinteger, scrollposition as UITableViewScrollPosition = uitableviewscrollposition.none, animated as boolean = false)
		  scrollToRow (AppleIndexPath.IndexPathForRow (row, section), scrollposition, Animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub scrollToRowAtIndexPath Lib UIKitLibName Selector "scrollToRowAtIndexPath:atScrollPosition:animated:" (id as ptr, indexpath as ptr, scrollposition as UITableViewScrollPosition, animated as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub selectRow(indexpath as AppleIndexPath, scrollposition as UITableViewScrollPosition = uitableviewscrollposition.none, animated as boolean = false)
		  selectRowAtIndexPath (id, indexpath.id, Animated, scrollposition)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub selectRow(row as uinteger, section as uinteger, scrollposition as UITableViewScrollPosition = uitableviewscrollposition.none, animated as boolean = false)
		  selectRow (AppleIndexPath.IndexPathForRow (row, section), scrollposition, animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub selectRowAtIndexPath Lib UIKitLibName Selector "selectRowAtIndexPath:animated:scrollPosition:" (id as ptr, indexpath as ptr, animated as boolean, scrollposition as UITableViewScrollPosition)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setallowsMultipleSelection Lib UIKitLibName Selector "setAllowsMultipleSelection:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setallowsMultipleSelectionDuringEditing Lib UIKitLibName Selector "setAllowsMultipleSelectionDuringEditing:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setallowsSelection Lib UIKitLibName Selector "setAllowsSelection:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setallowsSelectionDuringEditing Lib UIKitLibName Selector "setAllowsSelectionDuringEditing:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setcellLayoutMarginsFollowReadableWidth Lib UIKitLibName Selector "setCellLayoutMarginsFollowReadableWidth:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setdataSource Lib UIKitLibName Selector "setDataSource:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub SetEditingAnimated(editing as Boolean, animated as boolean = true)
		  SetEditingAnimated (id, editing, animated)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setEditingAnimated Lib UIKitLibName Selector "setEditing:animated:" (id as ptr, editing as Boolean, animated as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setestimatedRowHeight Lib UIKitLibName Selector "setEstimatedRowHeight:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setestimatedRowHeight32 Lib UIKitLibName Selector "setEstimatedRowHeight:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setestimatedSectionFooterHeight Lib UIKitLibName Selector "setEstimatedSectionFooterHeight:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setestimatedSectionFooterHeight32 Lib UIKitLibName Selector "setEstimatedSectionFooterHeight:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setestimatedSectionHeaderHeight Lib UIKitLibName Selector "setEstimatedSectionHeaderHeight:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setestimatedSectionHeaderHeight32 Lib UIKitLibName Selector "setEstimatedSectionHeaderHeight:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setremembersLastFocusedIndexPath Lib UIKitLibName Selector "setRemembersLastFocusedIndexPath:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setrowHeight Lib UIKitLibName Selector "setRowHeight:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setrowHeight32 Lib UIKitLibName Selector "setRowHeight:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setsectionFooterHeight Lib UIKitLibName Selector "setSectionFooterHeight:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setsectionFooterHeight32 Lib UIKitLibName Selector "setSectionFooterHeight:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setsectionHeaderHeight Lib UIKitLibName Selector "setSectionHeaderHeight:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setsectionHeaderHeight32 Lib UIKitLibName Selector "setSectionHeaderHeight:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setsectionIndexBackgroundColor Lib UIKitLibName Selector "setSectionIndexBackgroundColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setsectionIndexColor Lib UIKitLibName Selector "setSectionIndexColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setsectionIndexMinimumDisplayRowCount Lib UIKitLibName Selector "setSectionIndexMinimumDisplayRowCount:" (id as ptr, value as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setsectionIndexTrackingBackgroundColor Lib UIKitLibName Selector "setSectionIndexTrackingBackgroundColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setseparatorColor Lib UIKitLibName Selector "setSeparatorColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setseparatorStyle Lib UIKitLibName Selector "setSeparatorStyle:" (id as ptr, value as UITableViewSeparatorStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub settableFooterView Lib UIKitLibName Selector "setTableFooterView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub settableHeaderView Lib UIKitLibName Selector "setTableHeaderView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit)) or  (TargetWeb and (Target32Bit)) or  (TargetDesktop and (Target32Bit)) or  (TargetIOS and (Target32Bit))
		Attributes( hidden ) Declare Function UITableViewAutomaticDimension Lib uikitlibname () As single
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event AccessoryAction(IndexPath as Appleindexpath)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidDeselectRow(IndexPath as Appleindexpath)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidSelectRow(IndexPath as Appleindexpath)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EditAction(action as appletableviewrowaction, IndexPath as Appleindexpath)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EditActions(IndexPath as Appleindexpath) As Ptr
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EditFinished(IndexPath as Appleindexpath)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EditStyle(IndexPath as Appleindexpath, byref useDefault as boolean) As AppleTableViewCell.UITableViewCellEditingStyle
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EstimatedFooterHeight(section as uinteger) As Double
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EstimatedHeaderHeight(section as uinteger) As Double
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EstimatedHeightForRow(IndexPath as Appleindexpath) As Double
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FooterHeight(section as uinteger) As Double
	#tag EndHook

	#tag Hook, Flags = &h0
		Event HeaderHeight(section as uinteger) As Double
	#tag EndHook

	#tag Hook, Flags = &h0
		Event HeightForRow(IndexPath as Appleindexpath) As Double
	#tag EndHook

	#tag Hook, Flags = &h0
		Event IndentRow(IndexPath as Appleindexpath) As Integer
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MoveRow(SourcePath as AppleindexPath, TargetPath as AppleIndexPath) As AppleIndexPath
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotIndent(IndexPath as Appleindexpath) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ViewForFooter(Section as UInteger) As AppleView
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ViewForHeader(Section as UInteger) As AppleView
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillDeselectRow(IndexPath as Appleindexpath) As AppleIndexPath
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillDisplayCell(Cell as appletableviewcell, IndexPath as Appleindexpath)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillDisplayFooter(footer as appleview, Section as uinteger)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillDisplayHeader(header as appleview, Section as uinteger)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillEdit(IndexPath as Appleindexpath)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillSelectRow(IndexPath as Appleindexpath) As AppleIndexPath
	#tag EndHook


	#tag Note, Name = Status
		incomplete:
		
		UIVisual EffectView missing for separatorEffect
		NSIndexSet missing for section handling
		
		
		
		- tableView:titleForDeleteConfirmationButtonForRowAtIndexPath event not implemented. Would remove the localized delete string for a rarely needed feature.
		Use the  EditAction event instead. 
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getallowsMultipleSelection (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setallowsMultipleSelection (id, value)
			End Set
		#tag EndSetter
		AllowsMultipleSelection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getallowsMultipleSelectionDuringEditing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setallowsMultipleSelectionDuringEditing (id, value)
			End Set
		#tag EndSetter
		AllowsMultipleSelectionDuringEditing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getallowsSelection (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setallowsSelection (id, value)
			End Set
		#tag EndSetter
		AllowsSelection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getallowsSelectionDuringEditing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setallowsSelectionDuringEditing (id, value)
			End Set
		#tag EndSetter
		AllowsSelectionDuringEditing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Const VarName as text = "UITableViewAutomaticDimension"
			  static Result as Double
			  if result = 0 then
			    #if Target64Bit
			      result = AppleLibSystem.SystemConstantDouble (VarName, UIKitPath)
			    #elseif Target32Bit
			      result= AppleLibSystem.SystemConstantSingle (VarName, UIKitPath)
			    #endif
			  end if
			  return result
			End Get
		#tag EndGetter
		AutomaticDimension As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleview.MakeFromPtr (UIKitFramework.getbackgroundview(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setbackgroundview id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFrameWork.NSSelectorFromString("cellLayoutMarginsFollowReadableWidth")) then
			    return getcellLayoutMarginsFollowReadableWidth (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFrameWork.NSSelectorFromString("setCellLayoutMarginsFollowReadableWidth:")) then
			    setcellLayoutMarginsFollowReadableWidth (id, value)
			  end if
			End Set
		#tag EndSetter
		CellMarginsFollowReadableWidth As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UITableView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr (getdatasource(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setdatasource id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		DataSource As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleobject.MakeFromPtr (getDelegate (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Delegate_ As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return UIKitFramework.getEditing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setEditing (id, value)
			End Set
		#tag EndSetter
		Editing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getestimatedRowHeight(id)
			  #elseif Target32Bit
			    return getestimatedRowHeight32(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setestimatedRowHeight(id, value)
			  #elseif Target32Bit
			    setestimatedRowHeight32(id, value)
			  #endif
			End Set
		#tag EndSetter
		EstimatedRowHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getestimatedSectionFooterHeight(id)
			  #elseif Target32Bit
			    return getestimatedSectionFooterHeight32(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setestimatedSectionFooterHeight(id, value)
			  #elseif Target32Bit
			    setestimatedSectionFooterHeight32(id, value)
			  #endif
			End Set
		#tag EndSetter
		EstimatedSectionFooterHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getestimatedSectionHeaderHeight(id)
			  #elseif Target32Bit
			    return getestimatedSectionHeaderHeight32(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setestimatedSectionHeaderHeight(id, value)
			  #elseif Target32Bit
			    setestimatedSectionHeaderHeight32(id, value)
			  #endif
			End Set
		#tag EndSetter
		EstimatedSectionHeaderHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleIndexPath.MakeFromPtr (getindexPathForSelectedRow(id))
			End Get
		#tag EndGetter
		IndexPathForSelectedRow As AppleIndexPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr (getindexPathsForSelectedRows(id))
			End Get
		#tag EndGetter
		IndexPathsForSelectedRows As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getindexPathsForVisibleRows(id))
			End Get
		#tag EndGetter
		IndexPathsForVisibleRows As AppleArray
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared iOSTableViewDict As dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getnumberOfSections (id)
			End Get
		#tag EndGetter
		NumberOfSections As integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getremembersLastFocusedIndexPath (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setremembersLastFocusedIndexPath (id, value)
			End Set
		#tag EndSetter
		RemembersLastFocus As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getRowheight(id)
			  #elseif Target32Bit
			    return getrowheight32(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setRowheight(id, value)
			  #elseif Target32Bit
			    setrowheight32(id, value)
			  #endif
			End Set
		#tag EndSetter
		RowHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getsectionFooterHeight(id)
			  #elseif Target32Bit
			    return getsectionFooterHeight32(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setsectionFooterHeight(id, value)
			  #elseif Target32Bit
			    setsectionFooterHeight32(id, value)
			  #endif
			End Set
		#tag EndSetter
		SectionFooterHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return getsectionHeaderHeight(id)
			  #elseif Target32Bit
			    return getsectionHeaderHeight32(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setsectionHeaderHeight(id, value)
			  #elseif Target32Bit
			    setsectionHeaderHeight32(id, value)
			  #endif
			End Set
		#tag EndSetter
		SectionHeaderHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applecolor.MakeFromPtr (getsectionIndexbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsectionIndexbackgroundColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		SectionIndexBackgroundColor As Applecolor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applecolor.MakeFromPtr (getsectionIndexColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsectionIndexColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		SectionIndexColor As Applecolor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getsectionIndexMinimumDisplayRowCount (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsectionIndexMinimumDisplayRowCount (id, value)
			End Set
		#tag EndSetter
		SectionIndexMinimumDisplayRowCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applecolor.MakeFromPtr (getsectionIndextrackingbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsectionIndextrackingbackgroundColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		SectionIndexTrackingBackgroundColor As Applecolor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applecolor.MakeFromPtr (getseparatorcolor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setseparatorColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		SeparatorColor As Applecolor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return uikitframework.getseparatorinset(id)
			  #elseif Target32Bit
			    return uikitframework.getseparatorinset32(id).toUIEdgeInset
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    UIKitFramework.setseparatorinset(id, value)
			  #elseif Target32Bit
			    UIKitFramework.setseparatorinset32(id, value.toUIEDgeinset32)
			  #endif
			End Set
		#tag EndSetter
		SeparatorInset As foundationFramework.UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getseparatorStyle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setseparatorStyle id, value
			End Set
		#tag EndSetter
		SeparatorStyle As UITableViewSeparatorStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getstyle(id)
			End Get
		#tag EndGetter
		Style As UITableViewStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleview.MakeFromPtr (gettableFooterView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settableFooterView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		TableFooterView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleview.MakeFromPtr (gettableHeaderView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settableHeaderView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		TableHeaderView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getvisibleCells(id))
			End Get
		#tag EndGetter
		VisibleCells As AppleArray
	#tag EndComputedProperty


	#tag Enum, Name = UITableViewScrollPosition, Type = Integer, Flags = &h0
		None
		  Top
		  Middle
		Bottom
	#tag EndEnum

	#tag Enum, Name = UITableViewSeparatorStyle, Type = Integer, Flags = &h0
		None
		  SingleLine
		SingleLineEtched
	#tag EndEnum

	#tag Enum, Name = UITableViewStyle, Type = Integer, Flags = &h0
		Plain
		Grouped
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsMultipleSelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsMultipleSelectionDuringEditing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsSelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsSelectionDuringEditing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlwaysBounceHorizontal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlwaysBounceVertical"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticDimension"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bounces"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BouncesZoom"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanCancelContentTouches"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CellMarginsFollowReadableWidth"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlsCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Decelerating"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DecelerationRate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DelaysContentTouches"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DirectionalLock"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dragging"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EstimatedRowHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EstimatedSectionFooterHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EstimatedSectionHeaderHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndicatorStyle"
			Group="Behavior"
			Type="UIScrollViewIndicatorStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Black"
				"2 - White"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyboardDismissMode"
			Group="Behavior"
			Type="UIScrollViewKeyboardDismissMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - OnDrag"
				"2 - Interactive"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumZoomScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumZoomScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfSections"
			Group="Behavior"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PagingEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemembersLastFocus"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RestorationIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollsToTop"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SectionFooterHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SectionHeaderHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SectionIndexMinimumDisplayRowCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SeparatorStyle"
			Group="Behavior"
			Type="UITableViewSeparatorStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - SingleLine"
				"2 - SingleLineEtched"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsHorizontalScrollIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsVerticalScrollIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Style"
			Group="Behavior"
			Type="UITableViewStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Plain"
				"1 - Grouped"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tracking"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Zoomable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZoomBouncing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Zooming"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZoomOnDoubleTap"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZoomScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
