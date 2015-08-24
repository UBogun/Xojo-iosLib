#tag Class
Protected Class AppleScrollView
Inherits AppleView
	#tag Method, Flags = &h0
		Sub AnimateContentOffset(value as NSPoint)
		  #if Target64Bit
		    Declare sub setContentOffsetAnimated lib UIKit selector "setContentOffset:animated:" (id as ptr, value as NSPoint, animated as boolean)
		    setContentOffsetAnimated (id, value, true)
		  #elseif Target32Bit
		    Declare sub setContentOffsetAnimated lib UIKit selector "setContentOffset:animated:" (id as ptr, value as NSPoint32Bit, animated as boolean)
		    setContentOffsetAnimated (id, value.toNSPoint32, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CenterContentView()
		  // Courtesy of http://www.raywenderlich.com/10518/how-to-use-uiscrollview-to-scroll-and-zoom-content
		  
		  if me.ContentView <> nil then
		    dim boundsSize as nssize = me.bounds.Size_
		    dim contentsFrame as nsrect = me.contentView.frame
		    
		    if (contentsFrame.size_.width < boundsSize.width) then
		      contentsFrame.origin.x = (boundsSize.width - contentsFrame.size_.width) / 2.0
		    else
		      contentsFrame.origin.x = 0.0
		    end if
		    
		    if (contentsFrame.size_.height < boundsSize.height) then
		      contentsFrame.origin.y = (boundsSize.height - contentsFrame.size_.height) / 2.0
		    else
		      contentsFrame.origin.y = 0.0
		    end if
		    contentView.frame = contentsFrame
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame As NSRect)
		  Super.Constructor (DoInitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  if Observers = nil then Observers = new xojo.Core.Dictionary
		  Delegate_ = self
		  
		  dim mDoubleTapRecognizer as new AppleTapGestureRecognizer (self, NSSelectorFromString(doubleTapReceived))
		  mDoubleTapRecognizer.NumberOfTapsRequired = 2
		  mDoubleTapRecognizer.NumberOfTouchesRequired = 1
		  AddGestureRecognizer mDoubleTapRecognizer
		  
		  dim mTwoFingerTapRecognizer as new AppleTapGestureRecognizer (self, NSSelectorFromString(twoFingerTapReceived))
		  mTwoFingerTapRecognizer.NumberOfTapsRequired = 1
		  mTwoFingerTapRecognizer.NumberOfTouchesRequired = 2
		  AddGestureRecognizer mTwoFingerTapRecognizer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame As NSRect, observer as AppleNSEventReceiver)
		  Constructor (aFrame)
		  RegisterObserver (observer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership then
		    ContentView = NIL
		    RemoveAllGestureRecognizers
		    super.Destructor
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlashScrollIndicators()
		  Declare sub flashScrollIndicators lib UIKit selector "flashScrollIndicators" (id as ptr)
		  flashScrollIndicators id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidAddSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidAddSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidEndDecelerating(pid as ptr, sel as ptr, Scroller as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informondidEndDecelerating
		  #Pragma Unused  sel
		  #Pragma unused Scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEndDragging(pid as ptr, sel as ptr, scroller as Ptr, decelerate as Boolean)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidEndDrag (decelerate)
		  
		  #Pragma Unused  sel
		  #Pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEndScrollingAnimation(pid as ptr, sel as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonScrollingEnded
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidEndZooming32(pid as ptr, sel as ptr, scroller as Ptr, view as Ptr, scale as single)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidEndZoom (view, scale)
		  #Pragma Unused  sel
		  #pragma unused Scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidEndZooming64(pid as ptr, sel as ptr, scroller as Ptr, view as Ptr, scale as Double)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidEndZoom (view, scale)
		  
		  
		  #Pragma Unused  sel
		  #pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToSuperview(pid as ptr, sel as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidMoveToSuperview
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToWindow(pid as ptr, sel as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidMoveToWindow
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidScroll(pid as ptr, sel as ptr, scroller as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informOnDidScroll
		  
		  #Pragma Unused  sel
		  #pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didScrollToTop(pid as ptr, sel as ptr, scroller as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informOnDidScrollToTop
		  
		  #Pragma Unused  sel
		  #pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidZoom(pid as ptr, sel as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidZoom
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DoubleTapReceived(pid as ptr, sel as ptr)
		  // Courtesy of http://www.raywenderlich.com/10518/how-to-use-uiscrollview-to-scroll-and-zoom-content
		  
		  dim ego as new AppleScrollView (pid)
		  
		  dim PointInView As NSPoint = ego.DoubleTapRecognizer.LocationOfTouchInView (0, ego.contentview)
		  dim newZoomScale as double = ego.zoomScale * 1.5
		  newZoomScale = MIN(newZoomScale, ego.maximumZoomScale)
		  
		  dim scrollViewSize as nssize = ego.bounds.size_
		  
		  dim w as double = scrollViewSize.width / newZoomScale
		  dim h as double = scrollViewSize.height / newZoomScale
		  dim x as double = pointInView.x - (w / 2.0)
		  dim y as double = pointInView.y - (h / 2.0)
		  
		  dim rectToZoomTo as nsrect = NSREct(x, y, w, h)
		  ego.ZoomToRect rectToZoomTo
		  ego.informonDoubleTap
		  
		  #pragma unused SEL
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DrawRect32(pid as ptr, sel as ptr, rect as NSRect32Bit)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDrawRect (rect.toNSRect)
		  
		  
		  
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DrawRect64(pid as ptr, sel as ptr, rect as NSRect)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDrawRect (rect)
		  
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_LayoutSubviews(pid as ptr, sel as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonlayoutSubviews
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionBeganWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonMotionBeganwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionCancelledWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonMotionCancelledwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionEndedWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonMotionEndedwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_shouldScrollToTop(pid as ptr, sel as ptr, Scroller as Ptr) As Boolean
		  dim ego as new AppleScrollView (pid)
		  return ego.informonShouldScrollToTop
		  
		  #Pragma Unused  sel
		  #Pragma unused Scroller
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesBeganWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonTouchesBeganwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesCancelledWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonTouchesCancelledwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesEndedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonTouchesEndedwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesMovedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonTouchesMovedwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_TouchesShouldBegin(id as ptr, sel as ptr, Touches as Ptr, anEvent as Ptr, View as Ptr) As Boolean
		  dim ego as new AppleScrollView (id)
		  return ego.informonTouchesShouldBegin (touches, anEvent, View)
		  break
		  #Pragma Unused  sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TwoFingerTapReceived(pid as ptr, sel as ptr)
		  // Courtesy of http://www.raywenderlich.com/10518/how-to-use-uiscrollview-to-scroll-and-zoom-content
		  
		  dim ego as new AppleScrollView (pid)
		  
		  dim newZoomScale as double = ego.zoomScale / 1.5
		  newZoomScale = MAX(newZoomScale, ego.minimumZoomScale)
		  ego.SetZoomScale newZoomScale
		  
		  ego.informonTwoFingerTap
		  
		  #pragma unused SEL
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_ViewForZoomingInScrollView(id as ptr, sel as ptr, scroller as Ptr) As Ptr
		  dim ego as new AppleScrollView (id)
		  return if (ego.ContentView = NIL, NIL,  ego.ContentView.id )
		  #Pragma Unused  sel
		  #Pragma Unused  scroller
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_WillBeginDecelerating(pid as ptr, sel as ptr, Scroller as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillBeginDecelerating
		  #Pragma Unused  sel
		  #Pragma unused Scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_WillBeginDragging(pid as ptr, sel as ptr, Scroller as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillBeginDragging
		  #Pragma Unused  sel
		  #Pragma unused Scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willBeginZooming(pid as ptr, sel as ptr, scroller as ptr, view as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillBeginZooming(View)
		  #Pragma Unused  scroller
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willEndDragging32(pid as ptr, sel as ptr, scroller as Ptr, velocity as NSPoint32Bit, TargetContentOffset as NSPoint32Bit)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillEndDrag (velocity.tonspoint, targetcontentOffset.toNSPoint)
		  #Pragma Unused  sel
		  #Pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willEndDragging64(pid as ptr, sel as ptr, scroller as Ptr, velocity as NSPoint, TargetContentOffset as NSPoint)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillEndDrag (velocity, targetcontentOffset)
		  #Pragma Unused  sel
		  #Pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToSuperview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillMoveToSuperView (view)
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToWindow(pid as ptr, sel as ptr, window as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonwillMoveToWindow (window)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willRemoveSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonwillRemoveSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonDidEndDecelerating()
		  RaiseEvent DidDecelerate
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kDidEndDecelerating
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidEndDrag(decelerate as boolean)
		  RaiseEvent DidDrag (decelerate)
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  kDidEndDrag
		    myarray.Addobject new AppleNumber (Decelerate)
		    NotifyObservers (myarray)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidEndZoom(view as ptr, scale as double)
		  RaiseEvent DidEndZoom (appleview.makefromptr(view), scale)
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  kDidEndZoom
		    myarray.Addobject AppleView.MakeFromPtr(view)
		    myarray.Addobject new AppleNumber (scale)
		    NotifyObservers (myarray)
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidScroll()
		  RaiseEvent DidScroll
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kDidScroll
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidScrollToTop()
		  RaiseEvent DidScrollToTop
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kDidScrollToTop
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidZoom()
		  CenterContentView
		  RaiseEvent DidZoom
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kDidZoom
		    NotifyObservers (myarray)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDoubleTap()
		  RaiseEvent DoubleTap
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kDoubleTap
		    NotifyObservers (myarray)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informonScrollingEnded()
		  RaiseEvent ScrollingEnded
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kScrollingAnimationEnded
		    NotifyObservers (myarray)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Function informonShouldScrollToTop() As Boolean
		  RaiseEvent WillScrollToTop
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kShouldScrollToTop
		    NotifyObservers (myarray)
		  End If
		  
		  return ScrollsToTop
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Function informonTouchesShouldBegin(Touches as Ptr, anEvent as Ptr, View as ptr) As Boolean
		  // return TouchesShouldBegin (AppleSet.MakefromPtr (touches), AppleNSEvent.makefromptr(anevent), appleview.MakeFromPtr (view))
		  return ForwardTouchesToViewController
		  #pragma unused touches
		  #pragma unused anevent
		  #pragma unused view
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnTwoFingerTap()
		  RaiseEvent TwoFingerTap
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kTwoFingerTap
		    NotifyObservers (myarray)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonWillBeginDecelerating()
		  RaiseEvent WillDecelerate
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kWillBeginDecelerating
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonWillBeginDragging()
		  RaiseEvent WillDrag
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kWillBeginDragging
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnWillBeginZooming(view as ptr)
		  RaiseEvent WillZoom (appleview.makefromptr(view))
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  kWillBeginZooming
		    myarray.addptr view
		    NotifyObservers (myarray)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informonWillEndDrag(Velocity as NSPoint, TargetContentOffset as NSPoint)
		  RaiseEvent WillEndDrag (Velocity, TargetContentOffset)
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  kWillEndDrag
		    myarray.Addobject new applenumber (velocity)
		    myarray.Addobject new AppleNumber (TargetContentOffset)
		    NotifyObservers (myarray)
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleScrollView
		  return if (aptr = nil, nil, new AppleScrollView(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(EventProperties As AppleArray)
		  // Part of the AppleNSEventForwarder interface.
		  if Observers.HasKey (id)  then
		    dim wr as weakref = Observers.Value (id)
		    if wr <> NIL then
		      dim myControl as  AppleScrollViewer = AppleScrollViewer(wr.Value)
		      myControl.ReceivedEvent EventProperties
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As AppleNSEventReceiver)
		  // Part of the AppleNSEventForwarder interface.
		  observers.Value (id) = weakref.create(observer)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveAllGestureRecognizers()
		  while GestureRecognizers.Count > 0
		    RemoveGestureRecognizer (AppleGestureRecognizer (GestureRecognizers.ObjectAtIndex(GestureRecognizers.count)))
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToRect(value as NSRect)
		  #if Target64Bit
		    Declare sub scrollRectToVisible lib UIKit selector "scrollRectToVisible:animated:" (id as ptr, value as NSRect, animated as boolean)
		    scrollRectToVisible (id, value, true)
		  #elseif Target32Bit
		    Declare sub scrollRectToVisible lib UIKit selector "scrollRectToVisible:animated:" (id as ptr, value as NSRect32Bit, animated as boolean)
		    scrollRectToVisible (id, value.toNSRect32, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetZoomScale(value as Double)
		  #if Target64Bit
		    Declare sub setZoomScale lib UIKit selector "setZoomScale:animated:" (id as ptr, value as double, animated as boolean)
		  #elseif Target32Bit
		    Declare sub setZoomScale lib UIKit selector "setZoomScale:animated:" (id as ptr, value as single, animated as boolean)
		    setZoomScale (id, value, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomToRect(value as NSRect, animated as boolean = true)
		  #if Target64Bit
		    Declare sub zoomToRect lib UIKit selector "zoomToRect:animated:" (id as ptr, value as NSRect, animated as boolean)
		    zoomToRect (id, value, animated)
		  #elseif Target32Bit
		    Declare sub zoomToRect lib UIKit selector "zoomToRect:animated:" (id as ptr, value as NSRect32Bit, animated as boolean)
		    zoomToRect (id, value.toNSRect32, animated)
		  #endif
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 546865207363726F6C6C20766965772068617320656E64656420646563656C65726174696E6720746865207363726F6C6C696E67206D6F76656D656E742E
		Event DidDecelerate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidDrag(WillDecelerate As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEndZoom(View as Appleview, scale as Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidScroll()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidScrollToTop()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidZoom()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DoubleTap()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ScrollingEnded()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TwoFingerTap()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillDecelerate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillDrag()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillEndDrag(Velocity as NSPoint, TargetContentOffset as NSPoint)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillScrollToTop()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillZoom(View as Appleview)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function alwaysBounceHorizontal lib UIKit selector "alwaysBounceHorizontal" (id as ptr) as Boolean
			  Return alwaysBounceHorizontal (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAlwaysBounceHorizontal lib UIKit selector "setAlwaysBounceHorizontal:" (id as ptr, value as Boolean)
			  setAlwaysBounceHorizontal id, value
			End Set
		#tag EndSetter
		AlwaysBounceHorizontal As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function alwaysBounceVertical lib UIKit selector "alwaysBounceVertical" (id as ptr) as Boolean
			  Return alwaysBounceVertical (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAlwaysBounceVertical lib UIKit selector "setAlwaysBounceVertical:" (id as ptr, value as Boolean)
			  setAlwaysBounceVertical id, value
			End Set
		#tag EndSetter
		AlwaysBounceVertical As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function bounces lib UIKit selector "bounces" (id as ptr) as Boolean
			  Return bounces (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBounces lib UIKit selector "setBounces:" (id as ptr, value as Boolean)
			  setBounces id, value
			End Set
		#tag EndSetter
		Bounces As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function bouncesZoom lib UIKit selector "bouncesZoom" (id as ptr) as Boolean
			  Return bouncesZoom (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBouncesZoom lib UIKit selector "setBouncesZoom:" (id as ptr, value as Boolean)
			  setBouncesZoom id, value
			End Set
		#tag EndSetter
		BouncesZoom As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function canCancelContentTouches lib UIKit selector "canCancelContentTouches" (id as ptr) as Boolean
			  Return canCancelContentTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setCanCancelContentTouches lib UIKit selector "setCanCancelContentTouches:" (id as ptr, value as Boolean)
			  setCanCancelContentTouches id, value
			End Set
		#tag EndSetter
		CanCancelContentTouches As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    if Observers = nil then Observers = new Dictionary
			    dim methods() as TargetClassMethodHelper
			    //override UIView methods
			    methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    
			    methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    
			    methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    
			    
			    //UISCrollView methods
			    
			    methods.Append new TargetClassMethodHelper("scrollViewDidScroll:",AddressOf impl_didScroll,"v@:@")
			    
			    methods.Append new TargetClassMethodHelper("scrollViewWillBeginDragging:", AddressOf impl_WillBeginDragging, "v@:@")
			    methods.Append new TargetClassMethodHelper("scrollViewDidEndDragging:willDecelerate:",AddressOf impl_didEndDragging,"v@:@B")
			    
			    methods.Append new TargetClassMethodHelper("scrollViewWillBeginZooming:withView:",AddressOf impl_willBeginZooming,"v@:@@")
			    methods.Append new TargetClassMethodHelper("scrollViewDidZoom:",AddressOf impl_didZoom,"v@:@")
			    
			    methods.Append new TargetClassMethodHelper("scrollViewWillBeginDecelerating:",AddressOf impl_willBeginDecelerating,"v@:@")
			    methods.Append new TargetClassMethodHelper("scrollViewDidEndDecelerating:",AddressOf impl_didEndDecelerating,"v@:@")
			    
			    methods.Append new TargetClassMethodHelper("scrollViewShouldScrollToTop:",AddressOf impl_shouldScrollToTop,"B@:@")
			    methods.Append new TargetClassMethodHelper("scrollViewDidScrollToTop:",AddressOf impl_didScrollToTop,"v@:@")
			    
			    methods.Append new TargetClassMethodHelper("viewForZoomingInScrollView:",AddressOf impl_viewForZoomingInScrollView,"@@:@")
			    Methods.Append new TargetClassMethodHelper("touchesShouldBegin:withEvent:inContentView:", AddressOf impl_TouchesShouldBegin, "v@:@@@")
			    
			    #if Target64Bit
			      methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			      methods.Append new TargetClassMethodHelper("scrollViewDidEndZooming:withView:atScale:",AddressOf impl_didEndZooming64,"v@:@@d")
			      methods.Append new TargetClassMethodHelper("scrollViewWillEndDragging:withVelocity:targetContentOffset:",AddressOf impl_willEndDragging64,"v@:@{CGPoint}{CGPoint}")
			    #elseif Target32Bit
			      methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			      methods.Append new TargetClassMethodHelper("scrollViewDidEndZooming:withView:atScale:",AddressOf impl_didEndZooming32,"v@:@@f")
			      methods.Append new TargetClassMethodHelper("scrollViewWillEndDragging:withVelocity:targetContentOffset:",AddressOf impl_willEndDragging32,"v@:@{CGPoint}{CGPoint}")
			    #endif
			    
			    methods.Append new TargetClassMethodHelper("scrollViewDidEndScrollingAnimation:",AddressOf impl_didEndScrollingAnimation,"v@:@")
			    
			    
			    // custom methods for the two custom GestureRecognizers
			    
			    methods.Append new TargetClassMethodHelper (doubleTapReceived, AddressOf impl_DoubleTapReceived, "v@:")
			    methods.Append new TargetClassMethodHelper (twoFingerTapReceived, AddressOf impl_TwoFingerTapReceived, "v@:")
			    
			    targetID = BuildTargetClass ("UIScrollView", "iOSLibScrollView",methods, array("UIScrollViewDelegate"))
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function contentInset lib UIKit selector "contentInset" (id as ptr) as UIEdgeInsets
			    return contentInset (id)
			  #elseif Target32Bit
			    Declare function contentInset lib UIKit selector "contentInset" (id as ptr) as UIEdgeInsets32Bit
			    return contentInset(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setContentInset lib UIKit selector "setContentInset:" (id as ptr, value as UIEdgeInsets)
			    setContentInset (id, value)
			  #elseif Target32Bit
			    Declare Sub setContentInset lib UIKit selector "setContentInset:" (id as ptr, value as UIEdgeInsets32Bit)
			    setContentInset (id, value.toUIEdgeInset32)
			  #endif
			End Set
		#tag EndSetter
		ContentInset As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function contentOffset lib UIKit selector "contentOffset" (id as ptr) as NSPoint
			    return contentOffset (id)
			  #elseif Target32Bit
			    Declare function contentOffset lib UIKit selector "contentOffset" (id as ptr) as NSPoint32Bit
			    return contentOffset(id).toNSPoint
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setContentOffset lib UIKit selector "setContentOffset:" (id as ptr, value as NSPoint)
			    setContentOffset (id, value)
			  #elseif Target32Bit
			    Declare sub setContentOffset lib UIKit selector "setContentOffset:" (id as ptr, value as NSPoint32Bit)
			    setContentOffset (id, value.toNSPoint32)
			  #endif
			End Set
		#tag EndSetter
		ContentOffset As nspoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function contentSize lib UIKit selector "contentSize" (id as ptr) as NSSize
			    return contentSize (id)
			  #elseif Target32Bit
			    Declare function contentSize lib UIKit selector "contentSize" (id as ptr) as NSSize32Bit
			    return contentSize(id).toNSSize
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setContentSize lib UIKit selector "setContentSize:" (id as ptr, value as NSSize)
			    setcontentSize (id, value)
			  #elseif Target32Bit
			    Declare sub setContentSize lib UIKit selector "setContentSize:" (id as ptr, value as NSSize32Bit)
			    setcontentSize (id, value.toNSSize32)
			  #endif
			End Set
		#tag EndSetter
		ContentSize As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if SubViews <> nil then
			    if subviews.count > 0 then
			      return appleview.makefromptr( me.SubViews.PtrAtIndex(0))
			    else
			      return nil
			    end if
			  else
			    return nil
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  while ContentView <> nil
			    ContentView.RemoveFromSuperview
			  wend
			  if value <> nil then
			    me.AddSubview value
			    me.ContentSize = value.Bounds.Size_
			    dim scaleWidth as double =  me.Frame.Size_.width / me.contentSize.width
			    dim scaleHeight as double = me.Frame.Size_.height / me.contentSize.height
			    dim minScale as double = MIN(scaleWidth, scaleHeight)
			    me.maximumZoomScale = 1.0
			    me.zoomScale = minScale
			    me.minimumZoomScale = minScale
			    
			    me.CenterContentView
			  end if
			End Set
		#tag EndSetter
		ContentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function decelerating lib UIKit selector "isDecelerating" (id as ptr) as Boolean
			  Return decelerating (id)
			End Get
		#tag EndGetter
		Decelerating As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function decelerationRate lib UIKit selector "decelerationRate" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function decelerationRate lib UIKit selector "decelerationRate" (id as ptr) as Single
			  #endif
			  return decelerationRate (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setDecelerationRate lib UIKit selector "setDecelerationRate:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setDecelerationRate lib UIKit selector "setDecelerationRate:" (id as ptr, value as single)
			  #endif
			  setDecelerationRate (id, value)
			  
			End Set
		#tag EndSetter
		DecelerationRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function delaysContentTouches lib UIKit selector "delaysContentTouches" (id as ptr) as Boolean
			  Return delaysContentTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDelaysContentTouches lib UIKit selector "setDelaysContentTouches:" (id as ptr, value as Boolean)
			  setDelaysContentTouches id, value
			End Set
		#tag EndSetter
		DelaysContentTouches As Boolean
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
			  Declare Function directionalLockEnabled lib UIKit selector "isDirectionalLockEnabled" (id as ptr) as Boolean
			  Return directionalLockEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDirectionalLockEnabled lib UIKit selector "setDirectionalLockEnabled:" (id as ptr, value as Boolean)
			  setDirectionalLockEnabled id, value
			End Set
		#tag EndSetter
		DirectionalLock As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if GestureRecognizers.Count > 2 then
			    return AppleTapGestureRecognizer.MakeFromPtr (me.GestureRecognizers.PtrAtIndex(2))
			  end if
			End Get
		#tag EndGetter
		DoubleTapRecognizer As AppleTapGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function dragging lib UIKit selector "isDragging" (id as ptr) as Boolean
			  Return dragging (id)
			End Get
		#tag EndGetter
		Dragging As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ForwardTouchesToViewController As Boolean = True
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function indicatorStyle lib UIKit selector "indicatorStyle" (id as ptr) as UIScrollViewIndicatorStyle
			  Return indicatorStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setIndicatorStyle lib UIKit selector "setIndicatorStyle:" (id as ptr, value as UIScrollViewIndicatorStyle)
			  setIndicatorStyle id, value
			End Set
		#tag EndSetter
		IndicatorStyle As UIScrollViewIndicatorStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function keyboardDismissMode lib UIKit selector "keyboardDismissMode" (id as ptr) as UIScrollViewKeyboardDismissMode
			  Return keyboardDismissMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setKeyboardDismissMode lib UIKit selector "setKeyboardDismissMode:" (id as ptr, value as UIScrollViewKeyboardDismissMode)
			  setKeyboardDismissMode id, value
			End Set
		#tag EndSetter
		KeyboardDismissMode As UIScrollViewKeyboardDismissMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function maximumZoomScale lib UIKit selector "maximumZoomScale" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function maximumZoomScale lib UIKit selector "maximumZoomScale" (id as ptr) as Single
			  #endif
			  return maximumZoomScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setMaximumZoomScale lib UIKit selector "setMaximumZoomScale:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setMaximumZoomScale lib UIKit selector "setMaximumZoomScale:" (id as ptr, value as single)
			  #endif
			  setMaximumZoomScale (id, value)
			  
			End Set
		#tag EndSetter
		MaximumZoomScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function minimumZoomScale lib UIKit selector "minimumZoomScale" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function minimumZoomScale lib UIKit selector "minimumZoomScale" (id as ptr) as Single
			  #endif
			  return minimumZoomScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setMinimumZoomScale lib UIKit selector "setMinimumZoomScale:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setMinimumZoomScale lib UIKit selector "setMinimumZoomScale:" (id as ptr, value as single)
			  #endif
			  setMinimumZoomScale (id, value)
			  
			End Set
		#tag EndSetter
		MinimumZoomScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function isPagingEnabled lib UIKit selector "isPagingEnabled" (id as ptr) as Boolean
			  Return isPagingEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPagingEnabled lib UIKit selector "setPagingEnabled:" (id as ptr, value as Boolean)
			  setPagingEnabled id, value
			End Set
		#tag EndSetter
		PagingEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function panGestureRecognizer lib UIKit selector "panGestureRecognizer" (id as ptr) as Ptr
			  return ApplePanGestureRecognizer.MakeFromPtr (panGestureRecognizer (id))
			  
			End Get
		#tag EndGetter
		PanGestureRecognizer As ApplePanGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function pinchGestureRecognizer lib UIKit selector "pinchGestureRecognizer" (id as ptr) as Ptr
			  return ApplePinchGestureRecognizer.MakeFromPtr (pinchGestureRecognizer (id))
			  
			End Get
		#tag EndGetter
		PInchGestureRecognizer As ApplePinchGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scrollEnabled lib UIKit selector "isScrollEnabled" (id as ptr) as Boolean
			  Return scrollEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setScrollEnabled lib UIKit selector "setScrollEnabled:" (id as ptr, value as Boolean)
			  setScrollEnabled id, value
			End Set
		#tag EndSetter
		ScrollEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function scrollIndicatorInsets lib UIKit selector "scrollIndicatorInsets" (id as ptr) as UIEdgeInsets
			    return scrollIndicatorInsets (id)
			  #elseif Target32Bit
			    Declare function scrollIndicatorInsets lib UIKit selector "scrollIndicatorInsets" (id as ptr) as UIEdgeInsets32Bit
			    return scrollIndicatorInsets(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setScrollIndicatorInsets lib UIKit selector "setScrollIndicatorInsets:" (id as ptr, value as UIEdgeInsets)
			    setScrollIndicatorInsets (id, value)
			  #elseif Target32Bit
			    Declare Sub setScrollIndicatorInsets lib UIKit selector "setScrollIndicatorInsets:" (id as ptr, value as UIEdgeInsets32Bit)
			    setScrollIndicatorInsets (id, value.toUIEdgeInset32)
			  #endif
			End Set
		#tag EndSetter
		ScrollIndicatorInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scrollsToTop lib UIKit selector "scrollsToTop" (id as ptr) as Boolean
			  Return scrollsToTop (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setScrollsToTop lib UIKit selector "setScrollsToTop:" (id as ptr, value as Boolean)
			  setScrollsToTop id, value
			End Set
		#tag EndSetter
		ScrollsToTop As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsHorizontalScrollIndicator lib UIKit selector "showsHorizontalScrollIndicator" (id as ptr) as Boolean
			  Return showsHorizontalScrollIndicator (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsHorizontalScrollIndicator lib UIKit selector "setShowsHorizontalScrollIndicator:" (id as ptr, value as Boolean)
			  setShowsHorizontalScrollIndicator id, value
			End Set
		#tag EndSetter
		ShowsHorizontalScrollIndicator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsVerticalScrollIndicator lib UIKit selector "showsVerticalScrollIndicator" (id as ptr) as Boolean
			  Return showsVerticalScrollIndicator (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsVerticalScrollIndicator lib UIKit selector "setShowsVerticalScrollIndicator:" (id as ptr, value as Boolean)
			  setShowsVerticalScrollIndicator id, value
			End Set
		#tag EndSetter
		ShowsVerticalScrollIndicator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function tracking lib UIKit selector "isTracking" (id as ptr) as Boolean
			  Return tracking (id)
			End Get
		#tag EndGetter
		Tracking As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if GestureRecognizers.Count > 3 then
			    return AppleTapGestureRecognizer.MakeFromPtr (me.GestureRecognizers.PtrAtIndex(3))
			  end if
			End Get
		#tag EndGetter
		TwoFingerTapRecognizer As AppleTapGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return (MinimumZoomScale <> MaximumZoomScale)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    if MinimumZoomScale = MaximumZoomScale then
			      MinimumZoomScale = 0.5
			      MaximumZoomScale = 2
			    end if
			  else
			    MinimumZoomScale = 1
			    MaximumZoomScale = 1
			    ZoomScale = 1
			  end if
			End Set
		#tag EndSetter
		Zoomable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function zoomBouncing lib UIKit selector "isZoomBouncing" (id as ptr) as Boolean
			  Return zoomBouncing (id)
			End Get
		#tag EndGetter
		ZoomBouncing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function isZooming lib UIKit selector "isZooming" (id as ptr) as Boolean
			  Return isZooming (id)
			End Get
		#tag EndGetter
		Zooming As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return TwoFingerTapRecognizer.Enabled and DoubleTapRecognizer.Enabled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  TwoFingerTapRecognizer.Enabled = value
			  DoubleTapRecognizer.enabled = value
			End Set
		#tag EndSetter
		ZoomOnDoubleTap As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function zoomScale lib UIKit selector "zoomScale" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function zoomScale lib UIKit selector "zoomScale" (id as ptr) as Single
			  #endif
			  return zoomScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setZoomScale lib UIKit selector "setZoomScale:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setZoomScale lib UIKit selector "setZoomScale:" (id as ptr, value as single)
			  #endif
			  setZoomScale (id, value)
			  
			End Set
		#tag EndSetter
		ZoomScale As Double
	#tag EndComputedProperty


	#tag Constant, Name = doubleTapReceived, Type = Text, Dynamic = False, Default = \"doubleTapReceived", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDidEndDecelerating, Type = Text, Dynamic = False, Default = \"DidEndDecelerating", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDidEndDrag, Type = Text, Dynamic = False, Default = \"DidEndDragging", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDidEndZoom, Type = Text, Dynamic = False, Default = \"DidEndZoom", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDidScroll, Type = Text, Dynamic = False, Default = \"DidScroll", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDidScrollToTop, Type = Text, Dynamic = False, Default = \"DidScrollToTop", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDidZoom, Type = Text, Dynamic = False, Default = \"DidZoom", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDoubleTap, Type = Text, Dynamic = False, Default = \"DoubleTap", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kScrollingAnimationEnded, Type = Text, Dynamic = False, Default = \"ScrollingAnimationEnded", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShouldScrollToTop, Type = Text, Dynamic = False, Default = \"ShouldScrollToTop", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTwoFingerTap, Type = Text, Dynamic = False, Default = \"TwoFingerTap", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWillBeginDecelerating, Type = Text, Dynamic = False, Default = \"WillBeginDecelerating", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWillBeginDragging, Type = Text, Dynamic = False, Default = \"WillBeginDragging", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWillBeginZooming, Type = Text, Dynamic = False, Default = \"WillBeginZooming", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWillEndDrag, Type = Text, Dynamic = False, Default = \"WillEndDrag", Scope = Public
	#tag EndConstant

	#tag Constant, Name = twoFingerTapReceived, Type = Text, Dynamic = False, Default = \"twoFingerTapReceived", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
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
			Name="CanCancelContentTouches"
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
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ForwardTouchesToViewController"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
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
			Name="isProxy"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyboardDismissMode"
			Group="Behavior"
			Type="UIScrollViewKeyboardDismissMode"
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
