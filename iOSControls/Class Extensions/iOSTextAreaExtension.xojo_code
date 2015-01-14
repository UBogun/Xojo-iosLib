#tag Module
Protected Module iOSTextAreaExtension
	#tag Method, Flags = &h0
		Function AllowsStyledText(extends a as iOSTextArea) As Boolean
		  return iOSTextFieldExtension.getallowsEditingTextAttributes (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AllowsStyledText(extends a as iOSTextArea, assigns value as boolean)
		  iOSTextFieldExtension.setallowsEditingTextAttributes a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AlwaysBounceHorizontal(extends a as iOSTextArea) As Boolean
		  return getalwaysBounceHorizontal (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlwaysBounceHorizontal(extends a as iOSTextArea, assigns value as Boolean)
		  setalwaysBounceHorizontal a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AlwaysBounceVertical(extends a as iOSTextArea) As Boolean
		  return getalwaysBounceVertical (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlwaysBounceVertical(extends a as iOSTextArea, assigns value as Boolean)
		  setalwaysBounceVertical a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BouncesZoom(extends a as iOSTextArea) As Boolean
		  return getBouncesZoom (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BouncesZoom(extends a as iOSTextArea, assigns value as Boolean)
		  setBouncesZoom a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BouncingEnabled(extends a as iOSTextArea) As Boolean
		  return getBounces (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BouncingEnabled(extends a as iOSTextArea, assigns value as Boolean)
		  setBounces a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanCancelContentTouches(extends a as iOSTextArea) As Boolean
		  return getcanCancelContentTouches (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CanCancelContentTouches(extends a as iOSTextArea, assigns value as Boolean)
		  setcanCancelContentTouches a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearsOnInsertion(extends a as iOSTextArea) As boolean
		  return iOSTextFieldExtension.getclearsOnInsertion (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearsOnInsertion(extends a as iOSTextArea, assigns value as boolean)
		  iOSTextFieldExtension.setclearsOnInsertion a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContentInset(extends a as iOSTextArea) As UIEdgeInsets64Bit
		  return getcontentInset (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentInset(extends a as iOSTextArea, assigns value as UIEdgeInsets64Bit)
		  setcontentInset a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContentOffset(extends a as iOSTextArea) As Xojo.Core.Point
		  return CorePointExtension.fromGCPoint (getcontentOffset(a.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentOffset(extends a as iOSTextArea, assigns value as point)
		  setcontentOffset a.handle, value.tocgpoint, False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentOffsetAnimated(extends a as iOSTextArea, assigns value as point)
		  setcontentOffset a.handle, value.tocgpoint, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContentSize(extends a as iOSTextArea) As xojo.core.size
		  return CoreSizeExtension.fromCGSize (getcontentSize (a.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentSize(extends a as iOSTextArea, assigns value as xojo.core.size)
		  setcontentSize a.handle, value.tocgsize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DataDetectors(extends a as iOSTextArea) As DataDetectorType
		  dim d as  DataDetectorType
		  dim mytypes as uinteger = getdataDetectorTypes (a.Handle)
		  if mytypes = &hffffffff then
		    d.Address = true
		    d.All = true
		    d.CalendarEvent = true
		    d.Link = true
		    d.PhoneNumber = true
		  else
		    if mytypes.HasBit (0) then d.PhoneNumber = true
		    if mytypes.HasBit (1) then d.Link = true
		    if mytypes.HasBit (2) then d.Address = true
		    if mytypes.hasbit (3) then d.CalendarEvent = true
		  end if
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DataDetectors(extends a as iOSTextArea, all as boolean, phonenumber as boolean, Link as Boolean, Address as Boolean, CalendarEvent as Boolean)
		  dim mydetectors as uinteger
		  if all then 
		    mydetectors = &hffffffff
		  else
		    if phonenumber then mydetectors.SetBit (0)
		    if link then mydetectors.SetBit (1)
		    if Address then mydetectors.SetBit (2)
		    if CalendarEvent then mydetectors.SetBit (3)
		  end if
		  setdataDetectorTypes a.handle, mydetectors
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DataDetectors(extends a as iOSTextArea, assigns detectors as DataDetectorType)
		  dim mydetectors as uinteger
		  if detectors.All then 
		    mydetectors = &hffffffff
		  else
		    if detectors.phonenumber then mydetectors.SetBit (0)
		    if detectors.link then mydetectors.SetBit (1)
		    if detectors.Address then mydetectors.SetBit (2)
		    if detectors.CalendarEvent then mydetectors.SetBit (3)
		  end if
		  setdataDetectorTypes a.handle, mydetectors
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DecelerationRate(extends a as iOSTextArea) As Double
		  return getDecelerationRate (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DecelerationRate(extends a as iOSTextArea, assigns value as double)
		  setDecelerationRate a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DelaysContentTouches(extends a as iOSTextArea) As Boolean
		  return getdelaysContentTouches (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DelaysContentTouches(extends a as iOSTextArea, assigns value as Boolean)
		  setdelaysContentTouches a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DirectionalLockEnabled(extends a as iOSTextArea) As Boolean
		  return getdirectionalLockEnabled (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DirectionalLockEnabled(extends a as iOSTextArea, assigns value as boolean)
		  setdirectionalLockEnabled a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlashScrollIndicators(extends a as iOSTextArea)
		  flashScrollIndicators a.handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub flashScrollIndicators(id as ptr)
		  declare sub flashScrollIndicators lib UIKit selector "flashScrollIndicators" (id as ptr)
		  flashScrollIndicators id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getalwaysBounceHorizontal(id as ptr) As Boolean
		  declare function alwaysBounceHorizontal lib UIKit selector "alwaysBounceHorizontal" (id as ptr) as Boolean
		  return alwaysBounceHorizontal (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getalwaysBounceVertical(id as ptr) As Boolean
		  declare function alwaysBounceVertical lib UIKit selector "alwaysBounceVertical" (id as ptr) as Boolean
		  return alwaysBounceVertical (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getBounces(id as ptr) As Boolean
		  declare function bounces lib UIKit selector "bounces" (id as ptr) as Boolean
		  return bounces (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getBouncesZoom(id as ptr) As Boolean
		  declare function bouncesZoom lib UIKit selector "bouncesZoom" (id as ptr) as Boolean
		  return bouncesZoom (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getcanCancelContentTouches(id as ptr) As Boolean
		  declare function canCancelContentTouches lib UIKit selector "canCancelContentTouches" (id as ptr) as Boolean
		  return canCancelContentTouches (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getcontentInset(id as ptr) As UIEdgeInsets64Bit
		  #if target32bit
		    declare function contentInset lib UIKit selector "contentInset" (id as ptr) as UIEdgeInsets32Bit
		    dim myInsets as UIEdgeInsets32Bit = contentInset (id)
		    return Inset32toInset64 (myInsets)
		  #elseif target64bit
		    declare function contentInset lib UIKit selector "contentInset" (id as ptr) as UIEdgeInsets64Bit
		    return contentInset (id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getcontentOffset(id as ptr) As CGPoint
		  declare function contentOffset lib UIKit selector "contentOffset" (id as ptr) as cgpoint
		  return contentOffset (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getcontentSize(id as ptr) As CGSize
		  declare function contentSize lib UIKit selector "contentSize" (id as ptr) as CGSize
		  return contentSize (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getdataDetectorTypes(id as ptr) As uinteger
		  declare function dataDetectorTypes lib UIKit selector "dataDetectorTypes" (id as ptr) as uinteger
		  return dataDetectorTypes (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getdecelerating(id as ptr) As Boolean
		  declare function decelerating lib UIKit selector "isDecelerating" (id as ptr) as Boolean
		  return decelerating (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getDecelerationRate(id as ptr) As Double
		  #if target64bit
		    declare function decelerationRate lib UIKit selector "decelerationRate" (id as ptr) as double
		  #elseif Target32Bit
		    declare function decelerationRate lib UIKit selector "decelerationRate" (id as ptr) as single
		  #endif
		  return decelerationRate (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getdelaysContentTouches(id as ptr) As Boolean
		  declare function delaysContentTouches lib UIKit selector "delaysContentTouches" (id as ptr) as Boolean
		  return delaysContentTouches (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getdirectionalLockEnabled(id as ptr) As Boolean
		  declare function directionalLockEnabled lib UIKit selector "isDirectionalLockEnabled" (id as ptr) as Boolean
		  return directionalLockEnabled (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getdragging(id as ptr) As Boolean
		  declare function dragging lib UIKit selector "isDragging" (id as ptr) as Boolean
		  return dragging (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getindicatorStyle(id as ptr) As IndicatorStyle
		  declare function indicatorStyle lib UIKit selector "indicatorStyle" (id as ptr) as IndicatorStyle
		  return indicatorStyle (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getkeyboardDismissMode(id as ptr) As KBDismissMode
		  declare function keyboardDismissMode lib UIKit selector "keyboardDismissMode" (id as ptr) as KBDismissMode
		  return keyboardDismissMode (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getMaximumZoomScale(id as ptr) As double
		  #if target64bit
		    declare function maximumZoomScale_ lib UIKit selector "maximumZoomScale" (id as ptr) as double
		  #elseif Target32Bit
		    declare function maximumZoomScale_ lib UIKit selector "maximumZoomScale" (id as ptr) as single
		  #endif
		  return maximumZoomScale_ (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getMinimumZoomScale(id as ptr) As double
		  #if target64bit
		    declare function minimumZoomScale_ lib UIKit selector "minimumZoomScale" (id as ptr) as double
		  #elseif Target32Bit
		    declare function minimumZoomScale_ lib UIKit selector "minimumZoomScale" (id as ptr) as single
		  #endif
		  return minimumZoomScale_ ( id )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getPagingEnabled(id as ptr) As Boolean
		  declare function isPagingEnabled lib UIKit selector "isPagingEnabled" (id as ptr) as Boolean
		  return isPagingEnabled (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getScrollEnabled(id as ptr) As Boolean
		  declare function isScrollEnabled lib UIKit selector "isScrollEnabled" (id as ptr) as Boolean
		  return isScrollEnabled (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getScrollsToTop(id as ptr) As boolean
		  declare function ScrollsToTop lib UIKit selector "scrollsToTop" (id as ptr) as Boolean
		  return ScrollsToTop (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getSelectable(id as ptr) As Boolean
		  declare function isSelectable lib UIKit selector "isSelectable" (id as ptr) as Boolean
		  return isSelectable (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getselectedRange(id as ptr) As nsrange
		  declare function selectedRange lib UIKit selector "selectedRange" (id as ptr) as NSRange
		  return selectedRange (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getshowsHorizontalScrollIndicator(id as ptr) As Boolean
		  declare function showsHorizontalScrollIndicator lib UIKit selector "showsHorizontalScrollIndicator" (id as ptr) as Boolean
		  return showsHorizontalScrollIndicator (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getshowsVerticalScrollIndicator(id as ptr) As Boolean
		  declare function showsVerticalScrollIndicator lib UIKit selector "showsVerticalScrollIndicator" (id as ptr) as Boolean
		  return showsVerticalScrollIndicator (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTextContainerInset(id as ptr) As UIEdgeInsets64Bit
		  #if target32bit
		    declare function textContainerInset lib UIKit selector "textContainerInset" (id as ptr) as UIEdgeInsets32Bit
		    dim myInsets as UIEdgeInsets32Bit = textContainerInset (id)
		    return Inset32toInset64 (myInsets)
		  #elseif target64bit
		    declare function textContainerInset lib UIKit selector "textContainerInset" (id as ptr) as UIEdgeInsets64Bit
		    return textContainerInset (id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function gettracking(id as ptr) As Boolean
		  declare function tracking lib UIKit selector "isTracking" (id as ptr) as Boolean
		  return tracking (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getzoomBouncing(id as ptr) As Boolean
		  declare function isZoomBouncing lib UIKit selector "isZoomBouncing" (id as ptr) as Boolean
		  return isZoomBouncing (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getzooming(id as ptr) As Boolean
		  declare function isZooming lib UIKit selector "isZooming" (id as ptr) as Boolean
		  return isZooming (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getZoomScale(id as ptr) As double
		  #if target64bit
		    declare function zoomScale lib UIKit selector "zoomScale" (id as ptr) as double
		  #elseif target32bit
		    declare function zoomScale lib UIKit selector "zoomScale" (id as ptr) as single
		  #endif
		  return ZoomScale ( id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndicatorStyle(extends a as iOSTextArea) As IndicatorStyle
		  return getindicatorStyle (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IndicatorStyle(extends a as iOSTextArea, assigns value as indicatorstyle)
		  setindicatorStyle a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Inset32toInset64(myinsets as UIEdgeInsets32Bit) As UIEdgeInsets64Bit
		  dim newInset as UIEdgeInsets64Bit
		  newInset.Bottom = myInsets.Bottom
		  newInset.Left = myInsets.Left
		  newInset.Right = myInsets.Right
		  newInset.Top = myInsets.top
		  return newInset
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Inset64toInset32(value as UIEdgeInsets64Bit) As UIEdgeInsets32Bit
		  dim newinset as UIEdgeInsets32Bit
		  newInset.Bottom = value.Bottom
		  newInset.Left = value.Left
		  newInset.Right = value.Right
		  newInset.Top = value.top
		  return newinset
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDecelerating(extends a as iOSTextArea) As Boolean
		  return getdecelerating (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDragging(extends a as iOSTextArea) As Boolean
		  return getdragging (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsTouching(extends a as iOSTextArea) As Boolean
		  return gettracking (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsZoomBouncing(extends a as iOSTextArea) As Boolean
		  return getzoomBouncing (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsZooming(extends a as iOSTextArea) As Boolean
		  return getzooming (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function KeyboardDismissMode(extends a as iOSTextArea) As KBDismissMode
		  return getkeyboardDismissMode (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub KeyboardDismissMode(extends a as iOSTextArea, assigns value as KBDismissMode)
		  setkeyboardDismissMode a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MaximumZoomScale(extends a as iOSTextArea) As double
		  return getMaximumZoomScale (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaximumZoomScale(extends a as iOSTextArea, assigns value as double)
		  setMaximumZoomScale a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MinimumZoomScale(extends a as iOSTextArea) As double
		  return getMinimumZoomScale (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MinimumZoomScale(extends a as iOSTextArea, assigns value as double)
		  setMinimumZoomScale a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PagingEnabled(extends a as iOSTextArea) As Boolean
		  return getPagingEnabled (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PagingEnabled(extends a as iOSTextArea, assigns value as boolean)
		  setPagingEnabled a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScrollEnabled(extends a as iOSTextArea) As Boolean
		  return getScrollEnabled (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollEnabled(extends a as iOSTextArea, assigns value as boolean)
		  setScrollEnabled a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub scrollRangeToVisible(id as ptr,  range as NSRange)
		  declare sub scrollRangeToVisible_ lib UIKit selector "scrollRangeToVisible:" (id as ptr, range as NSRange)
		  scrollRangeToVisible_ id, range
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScrollRectToVisible(id as ptr, rect as CGRect, animated as boolean)
		  declare sub scrollRectToVisible_ lib UIKit selector "scrollRectToVisible:animated:" (id as ptr, rect as CGRect, animated as boolean)
		  scrollRectToVisible_ id, rect, animated
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToRange(extends a as iostextarea, aRange as NSrange)
		  scrollRangeToVisible a.Handle, aRange
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToRect(extends a as iostextarea, aRect as xojo.Core.Rect, animated as boolean = false)
		  ScrollRectToVisible a.Handle, arect.tocgrect, animated
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScrollToTopEnabled(extends a as iOSTextArea) As Boolean
		  return getScrollsToTop (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToTopEnabled(extends a as iOSTextArea, assigns value as boolean)
		  setScrollsToTop a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Selectable(extends a as iOSTextArea) As Boolean
		  return getSelectable (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Selectable(extends a as iOSTextArea, assigns value as boolean)
		  setSelectable a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setalwaysBounceHorizontal(id as ptr, value as boolean)
		  declare sub setalwaysBounceHorizontal lib UIKit selector "setAlwaysBounceHorizontal:" (id as ptr, value as Boolean)
		  setalwaysBounceHorizontal id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setalwaysBounceVertical(id as ptr, value as boolean)
		  declare sub setalwaysBounceVertical lib UIKit selector "setAlwaysBounceVertical:" (id as ptr, value as Boolean)
		  setalwaysBounceVertical id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBounces(id as ptr, value as boolean)
		  declare sub setBounces lib UIKit selector "setBounces:" (id as ptr, value as Boolean)
		  setbounces id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBouncesZoom(id as ptr, value as boolean)
		  declare sub setBouncesZoom lib UIKit selector "setBouncesZoom:" (id as ptr, value as Boolean)
		  setbouncesZoom id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setcanCancelContentTouches(id as ptr, value as boolean)
		  declare sub setcanCancelContentTouches lib UIKit selector "setCanCancelContentTouches:" (id as ptr, value as Boolean)
		  setcanCancelContentTouches id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setcontentInset(id as ptr,  value as UIEdgeInsets64Bit)
		  #if target32bit
		    declare sub setcontentInset lib UIKit selector "setContentInset:" (id as ptr, value as UIEdgeInsets32Bit)
		    setcontentInset id, Inset64toInset32 (value)
		  #elseif target64bit
		    declare sub setcontentInset lib UIKit selector "setContentInset:" (id as ptr, value as UIEdgeInsets64Bit)
		    setcontentInset id, value
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setcontentOffset(id as ptr, value as CGPoint, animated as boolean = false)
		  declare sub setcontentOffset lib UIKit selector "setContentOffset:animated:" (id as ptr, value as cgpoint, animated as boolean)
		  setcontentOffset id, value, animated
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setcontentSize(id as ptr, value as cgsize)
		  declare sub setcontentSize lib UIKit selector "setContentSize:" (id as ptr, value as CGSize)
		  setcontentSize id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setdataDetectorTypes(id as ptr, value as uinteger)
		  declare sub setdataDetectorTypes lib UIKit selector "setDataDetectorTypes:" (id as ptr, value as uinteger)
		  setdataDetectorTypes id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setDecelerationRate(id as ptr, value as double)
		  #if target64bit
		    declare sub setdecelerationRate lib UIKit selector "setDecelerationRate:" (id as ptr, value as double)
		  #elseif Target32Bit
		    declare sub setdecelerationRate lib UIKit selector "setDecelerationRate:" (id as ptr, value as single)
		  #endif
		  setdecelerationRate id, value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setdelaysContentTouches(id as ptr, value as boolean)
		  declare sub setdelaysContentTouches lib UIKit selector "setDelaysContentTouches:" (id as ptr, value as Boolean)
		  setdelaysContentTouches id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setdirectionalLockEnabled(id as ptr, value as boolean)
		  declare sub setdirectionalLockEnabled lib UIKit selector "setDirectionalLockEnabled:" (id as ptr, value as Boolean)
		  setdirectionalLockEnabled id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setindicatorStyle(id as ptr, value as indicatorstyle)
		  declare sub setindicatorStyle lib UIKit selector "setIndicatorStyle:" (id as ptr, value as IndicatorStyle)
		  setindicatorStyle id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setkeyboardDismissMode(id as ptr, value as KBDismissMode)
		  declare sub setkeyboardDismissMode lib UIKit selector "setKeyboardDismissMode:" (id as ptr, value as KBDismissMode)
		  setkeyboardDismissMode id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setMaximumZoomScale(id as ptr, value as double)
		  #if target64bit
		    declare sub setMaximumZoomScale_ lib UIKit selector "setMaximumZoomScale:" (id as ptr, value as double)
		  #elseif Target32Bit
		    declare sub setMaximumZoomScale_ lib UIKit selector "setMaximumZoomScale:" (id as ptr, value as single)
		  #endif
		  setMaximumZoomScale_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setMinimumZoomScale(id as ptr, value as double)
		  #if target64bit
		    declare sub setMinimumZoomScale_ lib UIKit selector "setMinimumZoomScale:" (id as ptr, value as double)
		  #elseif Target32Bit
		    declare sub setMinimumZoomScale_ lib UIKit selector "setMinimumZoomScale:" (id as ptr, value as single)
		  #endif
		  setMinimumZoomScale_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setPagingEnabled(id as ptr, value as boolean)
		  declare sub setPagingEnabled lib UIKit selector "setPagingEnabled:" (id as ptr, value as Boolean)
		  setPagingEnabled id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setScrollEnabled(id as ptr, value as Boolean)
		  declare sub scrollEnabled lib UIKit selector "setScrollEnabled:" (id as ptr, value as Boolean)
		  ScrollEnabled id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setScrollsToTop(id as ptr, value as boolean)
		  declare sub setScrollsToTop lib UIKit selector "setScrollsToTop:" (id as ptr, value as Boolean)
		  setScrollsToTop id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setSelectable(id as ptr, value as boolean)
		  declare sub setSelectable_ lib UIKit selector "setSelectable:" (id as ptr, value as Boolean)
		  setSelectable_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setselectedRange(id as ptr,  value as NSRange)
		  declare sub setSelectedRange lib UIKit selector "setSelectedRange:" (id as ptr, value as NSRange)
		  setselectedRange id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setshowsHorizontalScrollIndicator(id as ptr, value as boolean)
		  declare sub setshowsHorizontalScrollIndicator lib UIKit selector "setShowsHorizontalScrollIndicator:" (id as ptr, value as Boolean)
		  setshowsHorizontalScrollIndicator id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setshowsVerticalScrollIndicator(id as ptr, value as boolean)
		  declare sub setshowsVerticalScrollIndicator_ lib UIKit selector "setShowsVerticalScrollIndicator:" (id as ptr, value as Boolean)
		  setshowsVerticalScrollIndicator_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub settextContainerInset(id as ptr,  value as UIEdgeInsets64Bit)
		  #if target32bit
		    declare sub settextContainerInset_ lib UIKit selector "setTextContainerInset:" (id as ptr, value as UIEdgeInsets32Bit)
		    settextContainerInset_ id, Inset64toInset32 (value)
		  #elseif target64bit
		    declare sub settextContainerInset_ lib UIKit selector "setTextContainerInset:" (id as ptr, value as UIEdgeInsets64Bit)
		    settextContainerInset_ id, value
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setZoomScale(id as ptr, scale as double, animated as boolean)
		  #if target64bit
		    declare sub setZoomScale lib UIKit selector "setZoomScale:animated:" (id as ptr, scale as double, animated as boolean)
		  #elseif target32bit
		    declare sub setZoomScale lib UIKit selector "setZoomScale:animated:" (id as ptr, scale as single, animated as boolean)
		  #endif
		  setZoomScale id, scale, animated
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowsHorizontalScrollBar(extends a as iOSTextArea) As Boolean
		  return getshowsHorizontalScrollIndicator (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowsHorizontalScrollBar(extends a as iOSTextArea, assigns value as boolean)
		  setshowsHorizontalScrollIndicator a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowsVerticalScrollBar(extends a as iOSTextArea) As Boolean
		  return getshowsVerticalScrollIndicator (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowsVerticalScrollBar(extends a as iOSTextArea, assigns value as boolean)
		  setshowsVerticalScrollIndicator a.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextContainerInset(extends a as iOSTextArea) As UIEdgeInsets64Bit
		  return getTextContainerInset (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextContainerInset(extends a as iOSTextArea, assigns value as UIEdgeInsets64Bit)
		  settextcontainerinset a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextSelection(extends a as iOSTextArea) As nsrange
		  return getselectedRange (a.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextSelection(extends a as iOSTextArea, assigns value as NSRange)
		  setselectedRange a.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ZoomScale(extends a as iOSTextArea) As double
		  return getZoomScale (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomScale(extends a as iOSTextArea, assigns value as double)
		  setZoomScale a.Handle, value, false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomScaleAnimated(extends a as iOSTextArea, assigns value as double)
		  setZoomScale a.Handle, value, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomToRect(extends a as iostextarea, aRect as xojo.Core.Rect, animated as boolean = false)
		  zoomtoRect a.Handle, arect.tocgrect, animated
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub zoomtoRect(id as ptr, rect as CGRect, animated as boolean)
		  declare sub zoomToRect lib UIKit selector "zoomToRect:animated:" (id as ptr, rect as CGRect, animated as boolean)
		  zoomToRect id, rect, animated
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Me
		This is iOSTextArea Extension, an extension for Xojo iOS adding UIScrollView and UITextview features to an iOSTextArea
		
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
		
		– AllowsStyledText (Boolean): If True, allows to edit styled text information.
		
		– AlwaysBounceHorizontal (Boolean): If True, allows horizontal dragging when scrolling reaches the end of the content view. See AlwaysBounceVertical.
		
		– AlwaysBounceVertical (Boolean): If True and BouncingEnabled is True, allows verical dragging even if the content is smaller than the bounds of the scrollview.
		
		– BouncesZoom (Boolean): If True, the scrolling animates the rubberband return effect when the view zooms back to maximum or minimum.
		
		– BouncingEnabled (Boolean): Whether the scroll bounces past the edge and back again.
		
		– CanCancelContentTouches: If True, initiates a scroll that started with a touch that was registered by an underlying view. If False, the view will not scroll.
		
		– ClearsOnInsertion (Boolean): If true, replaces the text when the user inserts a new one.
		
		– ContentInset (UIEdgeInset): The inset in points for top.left, bottom and right indentation. I find this seems to work rather strange – maybe a problem of the 32/64 bit handling?
		
		– ContentOffset (Xojo.Core.Point): sets the offset of the contents. To raise indentation, feed it with negative values.
		
		– ContentOffsetAnimated (Xojo.Core.Point, write-only): same as above but animates the change.
		
		– ContentSize (Size): TheSize in Points of the view's content
		
		– DataDetectorTypes (DataDetectorType): The types of links that should be converted to clickable automatically.
		   This returns the correct type when set, but I couldn't make it work in the simulator …
		
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
		
		– ScrollEnabled (Boolean): Enables or Disables Touch Events for the Textarea. Once disabled, doesn't seem to recover …
		
		– ScrollToTopEnabled (Boolean): Enables the Tap on status bar gesture to scroll to the top.
		
		– Selectable (Boolean): Sets the user's ability to select content and interact with URLs and attachments.
		
		– ShowsHorizontalScrollbar (Boolean): Whether the horizontal scrollbar appears.
		
		– ShowsVerticalScrollbar (Boolean): Whether the vertical scrollbar appears.
		
		– TextContainerInset (UIEdgeInsets64Bit): The indent for the text view inside the control.
		
		– TextSelection (NSRange): Startlocation and length of the selected text.
		
		– ZoomScale (Double):The zoom scale of the content
		
		– ZoomScaleAnimated (Double, write-only): The content gets scaled with an animation.
		   Both don't seem to work with TextAreas. Probably only useful for other scrollViews. If it proves to be so, the Zoom objects should probably better be removed.
		
		
		
		
		* Methods *
		
		– flashScrollIndicators(): Shows the scroll bars temporarily
		
		– ScrollToRange (aRange asNSRange): Scrolls the text to show the selected range.
		
		– ScrollToRect (ARect as Rect, animated as boolean = false):
		   Scrolls the content view to the area defined by ARect.
		
		– ZoomToRect (ARect as Rect, animated as boolean = false):
		   Zooms the content view to the area defined by ARect if zoom factor is not beyond maximum or minium zoom scale.
		   Does not seem to work with TextAreas; willhave to check later.
		
		
		
		* TO BE DONE *
		
		For UIScrollView, the direct access to the GestureRecognizers is not implemented. And maybe a custom subclass of iOSTextArea containing Event Definitions would be useful.
		Except that, UIScrollView is implemented fully.
		
		For UITextiew, inputView and inPutAccessoryView are missing as well as read-only properties of layoutManager, textContainer and textStorage. Would be useful after the respective iOSClasses have been built.
		
		
	#tag EndNote


	#tag Structure, Name = DataDetectorType, Flags = &h0
		PhoneNumber as Boolean
		  Link as Boolean
		  Address as Boolean
		  CalendarEvent as Boolean
		All as Boolean
	#tag EndStructure


	#tag Enum, Name = IndicatorStyle, Type = Integer, Flags = &h1
		Default
		  Black
		White
	#tag EndEnum

	#tag Enum, Name = KBDismissMode, Type = Integer, Flags = &h1
		None
		  OnDrag
		Interactive
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
