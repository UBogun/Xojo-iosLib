#tag Module
Protected Module iOSTableExtension
	#tag Method, Flags = &h0
		Function AlwaysBounceHorizontal(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getalwaysBounceHorizontal (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlwaysBounceHorizontal(extends a as iostable, assigns value as Boolean)
		  iOSTextAreaExtension.setalwaysBounceHorizontal a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AlwaysBounceVertical(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getalwaysBounceVertical (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlwaysBounceVertical(extends a as iostable, assigns value as Boolean)
		  iOSTextAreaExtension.setalwaysBounceVertical a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BouncesZoom(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.getBouncesZoom (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BouncesZoom(extends a as iostable, assigns value as Boolean)
		  iOSTextAreaExtension.setBouncesZoom a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BouncingEnabled(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getBounces (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BouncingEnabled(extends a as iostable, assigns value as Boolean)
		  iOSTextAreaExtension.setBounces a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanCancelContentTouches(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.getcanCancelContentTouches (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CanCancelContentTouches(extends a as iostable, assigns value as Boolean)
		  iOSTextAreaExtension.setcanCancelContentTouches a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Cell(extends a as iostable, row as integer, section as integer) As Ptr
		  dim IP as new NSIndexPath (row, section)
		  return getcellForRowAtIndexPath (a.Handle, IP)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CellBackgroundColor(extends a as iostable, row as integer, section as integer, assigns aColor as color)
		  dim aCell as Ptr = a.cell (row, section)
		  setcellbackgroundcolor (acell, acolor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CellsBackgroundColor(extends a as iOSTable, assigns aColor as color)
		  for section as integer = 0 to a.SectionCount - 1
		    for row as integer = 0 to a.RowCount (section) -1
		      dim aCell as Ptr = a.cell (row, section)
		      setcellbackgroundcolor acell, acolor
		    next
		  next
		  // timer.CallLater 200, AddressOf a.reloaddata
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContentInset(extends a as iOSTable) As UIEdgeInsets64Bit
		  return iOSTextAreaExtension.getcontentInset (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentInset(extends a as iostable, assigns value as UIEdgeInsets64Bit)
		  iOSTextAreaExtension.setcontentInset a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContentOffset(extends a as iostable) As Xojo.Core.Point
		  return CorePointExtension.fromGCPoint (iOSTextAreaExtension.getcontentOffset(a.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentOffset(extends a as iostable, assigns value as point)
		  iOSTextAreaExtension.setcontentOffset a.handle, value.tocgpoint, False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentOffsetAnimated(extends a as iostable, assigns value as point)
		  iOSTextAreaExtension.setcontentOffset a.handle, value.tocgpoint, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContentSize(extends a as iostable) As xojo.core.size
		  return CoreSizeExtension.fromCGSize (iOSTextAreaExtension.getcontentSize (a.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentSize(extends a as iostable, assigns value as xojo.core.size)
		  iOSTextAreaExtension.setcontentSize a.handle, value.tocgsize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DataSourcePtr(extends a as iOSTable) As Ptr
		  return getdataSource (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DecelerationRate(extends a as iostable) As Double
		  return iOSTextAreaExtension.getDecelerationRate (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DecelerationRate(extends a as iostable, assigns value as double)
		  iOSTextAreaExtension.setDecelerationRate a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DelaysContentTouches(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.getdelaysContentTouches (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DelaysContentTouches(extends a as iostable, assigns value as Boolean)
		  iOSTextAreaExtension.setdelaysContentTouches a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DirectionalLockEnabled(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getdirectionalLockEnabled (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DirectionalLockEnabled(extends a as iostable, assigns value as boolean)
		  iOSTextAreaExtension.setdirectionalLockEnabled a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlashScrollIndicators(extends a as iostable)
		  iOSTextAreaExtension.flashScrollIndicators a.handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FooterViewForSection(extends a as iostable, section as integer) As Ptr
		  return getFooterViewForSection (a.handle, section)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getbackgroundView(id as ptr) As Ptr
		  declare function backgroundView lib uikit selector "backgroundView" (id as ptr) as Ptr
		  return backgroundView (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getcellForRowAtIndexPath(id as ptr, IndexPath as NSIndexPath) As Ptr
		  declare function cellForRowAtIndexPath lib uikit selector "cellForRowAtIndexPath:" (id as ptr, indexpath as ptr) as Ptr
		  return cellForRowAtIndexPath (id, indexpath.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getdataSource(id as ptr) As Ptr
		  declare function dataSource lib uikit selector "dataSource" (id as ptr) as Ptr
		  return dataSource (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getFooterViewForSection(id as ptr, section as integer) As Ptr
		  declare function footerViewForSection lib uikit selector "footerViewForSection:" (id as ptr, section as integer) as Ptr
		  return footerViewForSection (id, section)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getheaderViewForSection(id as ptr, section as integer) As Ptr
		  declare function headerViewForSection lib uikit selector "headerViewForSection:" (id as ptr, section as integer) as Ptr
		  return headerViewForSection (id, section)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getindexPathForCell(id as ptr, cell as ptr) As Ptr
		  declare function indexPathForCell_ lib uikit selector "indexPathForCell:" (id as ptr, cell as ptr) as Ptr
		  return indexPathForCell_ (id, cell)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getRowHeight(id as ptr) As double
		  #if target64bit
		    declare function rowHeight lib uikit selector "rowHeight" (id as ptr) as double
		  #elseif Target32Bit
		    declare function rowHeight lib uikit selector "rowHeight" (id as ptr) as single
		  #endif
		  return rowheight (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getSectionFooterHeight(id as ptr) As double
		  #if target64bit
		    declare function sectionFooterHeight lib uikit selector "sectionFooterHeight" (id as ptr) as double
		  #elseif Target32Bit
		    declare function sectionFooterHeight lib uikit selector "sectionFooterHeight" (id as ptr) as single
		  #endif
		  return sectionFooterHeight (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getSectionHeaderHeight(id as ptr) As double
		  #if target64bit
		    declare function sectionHeaderHeight lib uikit selector "sectionHeaderHeight" (id as ptr) as double
		  #elseif Target32Bit
		    declare function sectionHeaderHeight lib uikit selector "sectionHeaderHeight" (id as ptr) as single
		  #endif
		  return sectionHeaderHeight (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getSeparatorColor(id as ptr) As Ptr
		  declare function separatorColor lib uikit selector "separatorColor" (id as ptr) as Ptr
		  return separatorColor (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getseparatorInset(id as ptr) As UIEdgeInsets64Bit
		  #if target32bit
		    declare function separatorInset lib UIKit selector "separatorInset" (id as ptr) as UIEdgeInsets32Bit
		    dim myInsets as UIEdgeInsets32Bit = separatorInset (id)
		    return iOSTextAreaExtension.Inset32toInset64 (myInsets)
		  #elseif target64bit
		    declare function separatorInset lib UIKit selector "separatorInset" (id as ptr) as UIEdgeInsets64Bit
		    return separatorInset (id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getSeparatorStyle(id as ptr) As SeparatorStyles
		  declare function separatorStyle lib uikit selector "separatorStyle" (id as ptr) as SeparatorStyles
		  return separatorStyle (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function gettableFooterView(id as ptr) As Ptr
		  declare function tableFooterView lib uikit selector "tableFooterView" (id as ptr) as Ptr
		  return tableFooterView (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function gettableHeaderView(id as ptr) As Ptr
		  declare function tableHeaderView lib uikit selector "tableHeaderView" (id as ptr) as Ptr
		  return tableHeaderView (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HeaderViewForSection(extends a as iostable, section as integer) As Ptr
		  return getheaderViewForSection (a.handle, section)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexPathForCell(extends a as iostable, cell as iOSTableCellData) As NSIndexPath
		  // return new NSIndexPath (getindexPathForCell (a.Handle, cell.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndicatorStyle(extends a as iOSTable) As iostextareaextension.IndicatorStyle
		  return iOSTextAreaExtension.getindicatorStyle (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IndicatorStyle(extends a as iostable, assigns value as iOSTextAreaExtension.indicatorstyle)
		  iOSTextAreaExtension.setindicatorStyle a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDecelerating(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.getdecelerating (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDragging(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getdragging (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsTouching(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.gettracking (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsZoomBouncing(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.getzoomBouncing (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsZooming(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.getzooming (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function KeyboardDismissMode(extends a as iostable) As iostextareaextension.KBDismissMode
		  return iOSTextAreaExtension.getkeyboardDismissMode (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub KeyboardDismissMode(extends a as iostable, assigns value as iostextareaextension.KBDismissMode)
		  iOSTextAreaExtension.setkeyboardDismissMode a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MaximumZoomScale(extends a as iostable) As double
		  return iostextareaextension.getMaximumZoomScale (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaximumZoomScale(extends a as iostable, assigns value as double)
		  iostextareaextension.setMaximumZoomScale a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MinimumZoomScale(extends a as iostable) As double
		  return iOSTextAreaExtension.getMinimumZoomScale (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MinimumZoomScale(extends a as iostable, assigns value as double)
		  iOSTextAreaExtension.setMinimumZoomScale a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PagingEnabled(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getPagingEnabled (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PagingEnabled(extends a as iostable, assigns value as boolean)
		  iOSTextAreaExtension.setPagingEnabled a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowHeight(extends a as iOSTable) As double
		  return getRowHeight (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RowHeight(extends a as iOSTable, assigns value as double)
		  setRowHeight a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScrollEnabled(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.getScrollEnabled (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollEnabled(extends a as iostable, assigns value as boolean)
		  iOSTextAreaExtension.setScrollEnabled a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToRange(extends a as iostable, aRange as NSrange)
		  iOSTextAreaExtension.scrollRangeToVisible a.Handle, aRange
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToRect(extends a as iostable, aRect as xojo.Core.Rect, animated as boolean = false)
		  iOSTextAreaExtension.ScrollRectToVisible a.Handle, arect.tocgrect, animated
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScrollToTopEnabled(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getScrollsToTop (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToTopEnabled(extends a as iostable, assigns value as boolean)
		  iOSTextAreaExtension.setScrollsToTop a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionFooterHeight(extends a as iOSTable) As double
		  return getSectionFooterHeight (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SectionFooterHeight(extends a as iOSTable, assigns value as double)
		  setsectionFooterHeight a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionHeaderHeight(extends a as iOSTable) As double
		  return getSectionHeaderHeight (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SectionHeaderHeight(extends a as iOSTable, assigns value as double)
		  setsectionHeaderHeight a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Selectable(extends a as iOSTable) As Boolean
		  return iOSTextAreaExtension.getSelectable (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Selectable(extends a as iostable, assigns value as boolean)
		  iOSTextAreaExtension.setSelectable a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SeparatorColor(extends a as iostable) As color
		  return getSeparatorColor (a.handle).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SeparatorColor(extends a as iostable, assigns value as color)
		  setSeparatorColor a.handle, value.touicolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SeparatorInset(extends a as iostable) As UIEdgeInsets64Bit
		  return getseparatorInset (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SeparatorInset(extends a as iostable, assigns value as UIEdgeInsets64Bit)
		  setseparatorInset a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SeparatorStyle(extends a as iostable) As SeparatorStyles
		  return getSeparatorStyle (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SeparatorStyle(extends a as iostable, assigns value as SeparatorStyles)
		  setSeparatorStyle a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setbackgroundView(id as ptr, value as ptr)
		  declare sub setbackgroundView_ lib uikit selector "setBackgroundView:" (id as ptr, value as ptr)
		  setbackgroundView_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCellBackgroundColor(cell as ptr, aColor as color)
		  iOSControlExtension.setBackgroundColor (cell, acolor.touicolor)
		  dim bgview as ptr = getbackgroundView (cell) // the background view feature doesn't help. This all has to be redone once a datasource cell paint event is available.
		  if bgview = nil then
		    dim newview as new uiview (CoreRectExtension.fromCGRect (iOSControlExtension.getBounds(cell)))
		    setbackgroundView cell, newview.id
		  end if
		  
		  iOSControlExtension.setBackgroundColor getbackgroundView (Cell), aColor.toUIColor // setting the color for bg view too.
		  dim mycolor as color = iOSControlExtension.getBackgroundColor(cell).tocolor // and looking what color is really inside now
		  system.debuglog if (mycolor = aColor, "Colors match", "Colors don't match")+" : "+aColor.totext+", "+mycolor.totext
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setRowHeight(id as ptr, value as double)
		  #if target64bit
		    declare sub setRowHeight lib uikit selector "setRowHeight:" (id as ptr, value as double)
		  #elseif Target32Bit
		    declare sub setRowHeight lib uikit selector "setRowHeight:" (id as ptr, value as single)
		  #endif
		  setrowheight id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setsectionFooterHeight(id as ptr, value as double)
		  #if target64bit
		    declare sub setsectionFooterHeight_ lib uikit selector "setSectionFooterHeight:" (id as ptr, value as double)
		  #elseif Target32Bit
		    declare sub setsectionFooterHeight_ lib uikit selector "setSectionFooterHeight:" (id as ptr, value as single)
		  #endif
		  setSectionFooterHeight_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setsectionHeaderHeight(id as ptr, value as double)
		  #if target64bit
		    declare sub setSectionHeaderHeight_ lib uikit selector "setSectionHeaderHeight:" (id as ptr, value as double)
		  #elseif Target32Bit
		    declare sub setSectionHeaderHeight_ lib uikit selector "setSectionHeaderHeight:" (id as ptr, value as single)
		  #endif
		  setSectionHeaderHeight_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setSeparatorColor(id as ptr, value as ptr)
		  declare sub setSeparatorColor_ lib uikit selector "setSeparatorColor:" (id as ptr, value as ptr)
		  setSeparatorColor_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setseparatorInset(id as ptr, value as UIEdgeInsets64Bit)
		  #if target32bit
		    declare sub setSeparatorInset_ lib UIKit selector "setSeparatorInset:" (id as ptr, value as UIEdgeInsets32Bit)
		    setSeparatorInset_ id, iOSTextAreaExtension.Inset64toInset32 (value)
		  #elseif target64bit
		    declare sub setSeparatorInset_ lib UIKit selector "setSeparatorInset:" (id as ptr, value as UIEdgeInsets64Bit)
		    setSeparatorInset_ id, value
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setSeparatorStyle(id as ptr, value as SeparatorStyles)
		  declare sub setseparatorStyle_ lib uikit selector "setSeparatorStyle:" (id as ptr, value as SeparatorStyles)
		  setseparatorStyle_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub settableFooterView(id as ptr, value as ptr)
		  declare sub settableFooterView_ lib uikit selector "setTableFooterView:" (id as ptr, value as ptr)
		  settableFooterView_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub settableHeaderView(id as ptr, value as ptr)
		  declare sub settableHeaderView_ lib uikit selector "setTableHeaderView:" (id as ptr, value as ptr)
		  settableHeaderView_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowsHorizontalScrollBar(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getshowsHorizontalScrollIndicator (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowsHorizontalScrollBar(extends a as iostable, assigns value as boolean)
		  iOSTextAreaExtension.setshowsHorizontalScrollIndicator a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowsVerticalScrollBar(extends a as iostable) As Boolean
		  return iOSTextAreaExtension.getshowsVerticalScrollIndicator (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowsVerticalScrollBar(extends a as iostable, assigns value as boolean)
		  iOSTextAreaExtension.setshowsVerticalScrollIndicator a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TableFooterView(extends a as iOSTable) As Ptr
		  return gettableFooterView (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TableFooterView(extends a as iOSTable, assigns value as ptr)
		  settableFooterView a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TableHeaderView(extends a as iOSTable) As Ptr
		  return gettableHeaderView (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TableHeaderView(extends a as iOSTable, assigns value as ptr)
		  settableHeaderView a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewHandle(extends a as iOSTable) As Ptr
		  return getbackgroundView (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ViewHandle(extends a as iOSTable, assigns value as ptr)
		  setbackgroundView a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ZoomScale(extends a as iostable) As double
		  return iOSTextAreaExtension.getZoomScale (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomScale(extends a as iostable, assigns value as double)
		  iOSTextAreaExtension.setZoomScale a.Handle, value, false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomScaleAnimated(extends a as iostable, assigns value as double)
		  iOSTextAreaExtension.setZoomScale a.Handle, value, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomToRect(extends a as iostable, aRect as xojo.Core.Rect, animated as boolean = false)
		  iOSTextAreaExtension.zoomtoRect a.Handle, arect.tocgrect, animated
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Me
		This is iOSTable Extension, an extension for Xojo iOS adding UIScrollView features to an iosTable.
		UITableView features will follow.
		
		* NOTE: This module makes use of the iOSTextArea module where the basic methods are defined. Do not remove the latter! *
		Because of this, most functions implemented here can be found in the iOSTextArea moudle too.
		
		You will find that the properties-as-methods refer to separate protected methods. 
		While this may seem complicated, you can always use them in your own classes in case you need to call them on a different object than id/handle.
		Hopefully this will help saving you from recreating the same lines of code again and again.
		
		This is part of the iOSControls library for easy-to-use Xojo iOS,extensions, to find on xojoblog.me.
		
		
		
		Disclaimer
		This software is delivered AS IS. You are free to use it in your project, modify it according to your needs and you are very welcome to share your contributions too.
		I can not guarantee for data loss, computer problems and all that stuff that may arise from using the classes and methods, but I do guarantee that I use them myself
		in my projects and have not experienced such. Therefore the usual legal warning: Use at your own risk!
		
		
		Copyright
		Written 2015 by Ulrich Bogun, xojoblog.me. This is a private project not connected to my job as german Xojo evangelist.
		This all is only possible because of the tremendous help of some extraordinary gurus sharing their wisdom on forum.xojo.com and, of course, the guys behind MacOSLib.
		Therefore a copyright would be very stange and wrong. Again: iOSCOntrols are free to use and modify.
		
		However, you surely can imagine this took me (and will probably take) a lot of time, and I want to continue refining the classes and adding more to them.
		If you use the classes and find them useful, feel absolutely free to send me a "keep it up"-contribution via PayPal to bogun@satzservice.de.
		The amount is completely up to you and every sum will be appreciated regardless of its height.
		If you cannot afford a few bucks or don't want to: Hey, that's still ok!
		Maybe you like to send me a line abot their use or add a "Uses iOSControls …" line to your splashscreen.
		And if not you’re still not a bad guy. Enjoy, share, contribute.
		
		
		--------------------------------------------------------------------------------------------------------------------------------------------------------------
		
		
		* USE *
		
		Drop the iosLib folder somewhere into your project folder. That's all.
		
		
		
		* Properties *
		
		– AlwaysBounceHorizontal (Boolean): If True, allows horizontal dragging when scrolling reaches the end of the content view. See AlwaysBounceVertical.
		
		– AlwaysBounceVertical (Boolean): If True and BouncingEnabled is True, allows verical dragging even if the content is smaller than the bounds of the scrollview.
		
		– BouncesZoom (Boolean): If True, the scrolling animates the rubberband return effect when the view zooms back to maximum or minimum.
		   Zooming doesn't seem to work in TableViews. Will probably remove these features once this has been confirmed.
		
		– BouncingEnabled (Boolean): Whether the scroll bounces past the edge and back again.
		
		– CanCancelContentTouches: If True, initiates a scroll that started with a touch that was registered by an underlying view. If False, the view will not scroll.
		
		– CellBackgroundColor (row, section) (Color): Lets you set the backgroundcolor for the cell in row/section.
		   * There seems to be an error, the cell colors are not consistent and change when you scroll back & forth. *
		
		– ContentInset (UIEdgeInset): The inset in points for top.left, bottom and right indentation. I find this seems to work rather strange – maybe a problem of the 32/64 bit handling?
		
		– ContentOffset (Xojo.Core.Point): sets the offset of the contents. To raise indentation, feed it with negative values.
		
		– ContentOffsetAnimated (Xojo.Core.Point, write-only): same as above but animates the change.
		
		– ContentSize (Size): TheSize in Points of the view's content
		
		– DataSourcePtr (Ptr, Read-only): The dataSource object of the table. Could basically be a write function too but you would have to design a custom DataSource object.
		   Used for row handling by some functions.
		
		– DelaysContentTouches (Boolean): If true, holds back a touch event until it is sure it is no scroll event (or it is one).
		
		– DirectionalLockEnabled (Boolean): Locks the scrolling direction to the one the user started.
		
		– DecelerationRate (Double): How fast the scroll loses velocity. Useful values are between 0.990 and 0.998.
		
		– IndicatorStyle (IndicatorStyle): Lets you chose between default, black and white scrollbars.
		
		– IsDecelerating (Boolean, Read-only): True if the view is in scroll motion after the user has lifted his finger.
		
		– IsDragging (Boolean, Read-only): True if the user has begun a scroll movement. True may be delayed.
		
		– IsTouching (Boolean, Read-only): True if the user has touched the controlbut not yet started a scroll movement.
		
		– IsZoomBouncing (Boolean, Read-Only): True when the scroll zoom has exceeded the limits (See MinimumZoomScale and MaximumZoomScale) and is currently zooming back.
		
		– IsZooming (Boolean, Read-Only): True if the view is currently zooming in our out.
		
		– KeyboardDismissMode (KBDismissMode): Lets you chose the way in which the keyboard is dismissed once a scroll drag starts.
		
		– MaximumZoomScale (Double): The highest allowed zoom scale.
		
		– MinimumZoomScale (Double): The lowest allowed zoom scale.
		
		– PagingEnabled (Boolean): It true, the scrolls stops on multiples of its bounds when scrolling.
		
		– RowHeight (Double): Sets the height of the rows. Only works during table open event.
		
		– ScrollEnabled (Boolean): Enables or Disables Touch Events for the Textarea. Once disabled, doesn't seem to recover …
		
		– ScrollToTopEnabled (Boolean): Enables the Tap on status bar gesture to scroll to the top.
		
		– SectionFooterHeight (Double): The height of section footers.
		
		– SectionHeaderHeight (Double): The height of section headers.
		
		– Selectable (Boolean): Sets the user's ability to select content and interact with URLs and attachments.
		
		– SeparatorColor (Color): Lets you set the row separator line color
		
		– SeparatorInset (UIEdgeInsets64Bit): The default inset for all cells in the table. Only left and right values are used.
		
		– SeparatorStyle (SeparatorStyles): Lets you chose between No, SingleLine and Etched Single Line Style.
		
		– ShowsHorizontalScrollbar (Boolean): Whether the horizontal scrollbar appears.
		
		– ShowsVerticalScrollbar (Boolean): Whether the vertical scrollbar appears.
		
		– TableFooterView (Ptr): Ptr to an accessory view below the table. Standard is NIL.
		
		– TableHeaderView (Ptr): Ptr to an accessory view above the table. Standard is NIL.
		
		– ViewHandle (Ptr): A Ptr to the table's background view which is placed behind all cells etc. Set to NIL if you want to set the table's backgroundcolor.
		
		– ZoomScale (Double): The zoom scale of the content
		
		– ZoomScaleAnimated (Double, write-only): The content gets scaled with an animation.
		   Both don't seem to work with iosTables. Probably only useful for other scrollViews. If it proves to be so, the Zoom objects should probably better be removed.
		
		
		
		
		* Methods *
		
		– flashScrollIndicators(): Shows the scroll bars temporarily
		
		– FooterViewForSection (Section as Integer): A Ptr to the section's footer view
		
		– HeaderiewForSection (Section as Integer): A Ptr to the section's header view
		
		– ScrollToRange (aRange asNSRange): Scrolls the text to show the selected range.
		
		– ScrollToRect (ARect as Rect, animated as boolean = false):
		   Scrolls the content view to the area defined by ARect.
		
		– ZoomToRect (ARect as Rect, animated as boolean = false):
		   Zooms the content view to the area defined by ARect if zoom factor is not beyond maximum or minium zoom scale.
		   Does not seem to work with TextAreas; willhave to check later.
		
		
		
		* TO BE DONE *
		
		For UIScrollView, the direct access to the GestureRecognizers is not implemented. And maybe a custom subclass of iOSTextArea containing Event Definitions would be useful.
		Except that, UIScrollView is implemented fully.
		
		For UITableView, the whole implementation is missing.
		
		
	#tag EndNote


	#tag Enum, Name = SeparatorStyles, Type = Integer, Flags = &h1
		None
		  SingleLine
		SingleLineEtched
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
