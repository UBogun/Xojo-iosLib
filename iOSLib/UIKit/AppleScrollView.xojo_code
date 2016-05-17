#tag Class
Protected Class AppleScrollView
Inherits AppleView
	#tag Event , Description = 4669726573207768656E207468652072656374616E676C6520286F722077686F6C65206172656129206F662074686520766965772067657473207265647261776E
		Sub DrawRect(Rect  as FoundationFramework.NSRect)
		  #pragma unused Rect
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207669657720686173206368616E6765642073697A65206C696B6520616674657220616E206F7269656E746174696F6E206368616E67652E
		Sub LayoutSubviews()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652074696E74636F6C6F72206368616E6765642E
		Sub TintColorDidChange()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AnimateContentOffset(value as FoundationFramework.NSPoint)
		  #if Target64Bit
		    Declare sub setContentOffsetAnimated lib UIKitLibname selector "setContentOffset:animated:" (id as ptr, value as FoundationFramework.NSPoint, animated as boolean)
		    setContentOffsetAnimated (id, value, true)
		  #elseif Target32Bit
		    Declare sub setContentOffsetAnimated lib UIKitLibname selector "setContentOffset:animated:" (id as ptr, value as FoundationFramework.NSPoint32Bit, animated as boolean)
		    setContentOffsetAnimated (id, value.toNSPoint32, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CenterContentView()
		  // Courtesy of http://www.raywenderlich.com/10518/how-to-use-uiscrollview-to-scroll-and-zoom-content
		  
		  if me.ContentView <> nil then
		    dim boundsSize as FoundationFramework.NSSize = me.bounds.Size_
		    dim contentsFrame  as FoundationFramework.NSRect = me.contentView.frame
		    
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

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame as FoundationFramework.NSRect)
		  Super.Constructor (DoInitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  Delegate_ = self
		  
		  dim mDoubleTapRecognizer as new AppleTapGestureRecognizer (self, FoundationFramework.NSSelectorFromString(doubleTapReceived))
		  mDoubleTapRecognizer.NumberOfTapsRequired = 2
		  mDoubleTapRecognizer.NumberOfTouchesRequired = 1
		  AddGestureRecognizer mDoubleTapRecognizer
		  
		  dim mTwoFingerTapRecognizer as new AppleTapGestureRecognizer (self, FoundationFramework.NSSelectorFromString(twoFingerTapReceived))
		  // mTwoFingerTapRecognizer.NumberOfTapsRequired = 2
		  mTwoFingerTapRecognizer.NumberOfTouchesRequired = 2
		  AddGestureRecognizer mTwoFingerTapRecognizer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120436F6E74656E7456696577207769746820746865207370656369666965642064696D656E73696F6E732E
		Sub CreateContentView(Width as double, height as double)
		  me.ContentView = new AppleView (FoundationFrameWork.NSMakeRect(0,0,Width, height))
		  me.ContentView.UserInteractionEnabled = true
		  me.ContentView.ExclusiveTouch = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership then
		    ContentView = NIL
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446973706C61797320746865207363726F6C6C20696E64696361746F7273206D6F6D656E746172696C792E
		Sub FlashScrollIndicators()
		  Declare sub flashScrollIndicators lib UIKitLibname selector "flashScrollIndicators" (id as ptr)
		  flashScrollIndicators id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_DidEndDecelerating(pid as ptr, sel as ptr, Scroller as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informondidEndDecelerating
		  #Pragma Unused  sel
		  #Pragma unused Scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_didEndDragging(pid as ptr, sel as ptr, scroller as Ptr, decelerate as Boolean)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidEndDrag (decelerate)
		  
		  #Pragma Unused  sel
		  #Pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_didEndScrollingAnimation(pid as ptr, sel as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonScrollingEnded
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_DidEndZooming32(pid as ptr, sel as ptr, scroller as Ptr, view as Ptr, scale as single)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidEndZoom (view, scale)
		  #Pragma Unused  sel
		  #pragma unused Scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_DidEndZooming64(pid as ptr, sel as ptr, scroller as Ptr, view as Ptr, scale as Double)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidEndZoom (view, scale)
		  
		  
		  #Pragma Unused  sel
		  #pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_DidScroll(pid as ptr, sel as ptr, scroller as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informOnDidScroll
		  
		  #Pragma Unused  sel
		  #pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_didScrollToTop(pid as ptr, sel as ptr, scroller as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informOnDidScrollToTop
		  
		  #Pragma Unused  sel
		  #pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_DidZoom(pid as ptr, sel as ptr, scrollview as ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonDidZoom
		  
		  #Pragma Unused  sel
		  #pragma unused scrollview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_DoubleTapReceived(pid as ptr, sel as ptr)
		  // Courtesy of http://www.raywenderlich.com/10518/how-to-use-uiscrollview-to-scroll-and-zoom-content
		  
		  dim ego as new AppleScrollView (pid)
		  if not ego.informonDoubleTap then
		    
		    dim PointInView As FoundationFramework.NSPoint = ego.DoubleTapRecognizer.LocationOfTouchInView (0, ego.contentview)
		    dim newZoomScale as double = ego.zoomScale * 1.5
		    newZoomScale = MIN(newZoomScale, ego.maximumZoomScale)
		    
		    dim scrollViewSize as FoundationFramework.NSSize = ego.bounds.size_
		    
		    dim w as double = scrollViewSize.width / newZoomScale
		    dim h as double = scrollViewSize.height / newZoomScale
		    dim x as double = pointInView.x - (w / 2.0)
		    dim y as double = pointInView.y - (h / 2.0)
		    
		    dim rectToZoomTo  as FoundationFramework.NSRect = FoundationFrameWork.NSMakeRect(x, y, w, h)
		    ego.ZoomToRect rectToZoomTo
		  end if
		  
		  #pragma unused SEL
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Function impl_shouldScrollToTop(pid as ptr, sel as ptr, Scroller as Ptr) As Boolean
		  dim ego as new AppleScrollView (pid)
		  return ego.informonShouldScrollToTop
		  
		  #Pragma Unused  sel
		  #Pragma unused Scroller
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Function impl_TouchesShouldBegin(id as ptr, sel as ptr, Touches as Ptr, anEvent as Ptr, View as Ptr) As Boolean
		  // dim ego as new AppleScrollView (id)
		  // return ego.informonTouchesShouldBegin (touches, anEvent, View)
		  // break
		  // #Pragma Unused  sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_TwoFingerTapReceived(pid as ptr, sel as ptr)
		  // Courtesy of http://www.raywenderlich.com/10518/how-to-use-uiscrollview-to-scroll-and-zoom-content
		  
		  dim ego as new AppleScrollView (pid)
		  if not ego.informonTwoFingerTap then
		    
		    dim newZoomScale as double = ego.zoomScale / 1.5
		    newZoomScale = MAX(newZoomScale, ego.minimumZoomScale)
		    ego.SetZoomScale newZoomScale
		  end if
		  
		  
		  #pragma unused SEL
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Function impl_ViewForZoomingInScrollView(id as ptr, sel as ptr, scroller as Ptr) As Ptr
		  dim ego as new AppleScrollView (id)
		  return if (ego.ContentView = NIL, NIL,  ego.ContentView.id )
		  #Pragma Unused  sel
		  #Pragma Unused  scroller
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_WillBeginDecelerating(pid as ptr, sel as ptr, Scroller as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillBeginDecelerating
		  #Pragma Unused  sel
		  #Pragma unused Scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_WillBeginDragging(pid as ptr, sel as ptr, Scroller as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillBeginDragging
		  #Pragma Unused  sel
		  #Pragma unused Scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_willBeginZooming(pid as ptr, sel as ptr, scroller as ptr, view as Ptr)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillBeginZooming(View)
		  #Pragma Unused  scroller
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_willEndDragging32(pid as ptr, sel as ptr, scroller as Ptr, velocity as FoundationFramework.NSPoint32Bit, TargetContentOffset as FoundationFramework.NSPoint32Bit)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillEndDrag (velocity.toNSPoint, targetcontentOffset.toNSPoint)
		  #Pragma Unused  sel
		  #Pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_willEndDragging64(pid as ptr, sel as ptr, scroller as Ptr, velocity as FoundationFramework.NSPoint, TargetContentOffset as FoundationFramework.NSPoint)
		  dim ego as new AppleScrollView (pid)
		  ego.informonWillEndDrag (velocity, targetcontentOffset)
		  #Pragma Unused  sel
		  #Pragma unused scroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonDidEndDecelerating()
		  if ParentControl <> nil then
		    ParentControl.informonDidEndDecelerating
		  else
		    RaiseEvent DidDecelerate
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidEndDrag(decelerate as boolean)
		  if ParentControl <> nil then
		    ParentControl.informOnDidEndDrag (Decelerate)
		  else
		    RaiseEvent DidDrag (decelerate)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidEndZoom(view as ptr, scale as double)
		  if ParentControl <> nil then
		    ParentControl.informOnDidEndZoom (view, scale)
		  else
		    RaiseEvent DidEndZoom (appleview.makefromptr(view), scale)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidScroll()
		  if ParentControl <> nil then
		    ParentControl.informOnDidScroll
		  else
		    RaiseEvent DidScroll
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidScrollToTop()
		  if ParentControl <> nil then
		    ParentControl.informOnDidScrollToTop
		  else
		    RaiseEvent DidScrollToTop
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnDidZoom()
		  CenterContentView
		  if ParentControl <> nil then
		    ParentControl.informOnDidZoom ()
		  else
		    RaiseEvent DidZoom
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Function informOnDoubleTap() As Boolean
		  if ParentControl <> nil then
		    return ParentControl.informOnDoubleTap
		  else
		    return RaiseEvent DoubleTap
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informonScrollingEnded()
		  if ParentControl <> nil then
		    ParentControl.informonScrollingEnded
		  else
		    RaiseEvent ScrollingAnimationEnded
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Function informonShouldScrollToTop() As Boolean
		  return ScrollsToTop
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Function informOnTwoFingerTap() As Boolean
		  if ParentControl <> nil then
		    return ParentControl.informOnTwoFingerTap
		  else
		    return RaiseEvent TwoFingerTap
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonWillBeginDecelerating()
		  if ParentControl <> nil then
		    ParentControl.informonWillBeginDecelerating
		  else
		    RaiseEvent WillDecelerate
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonWillBeginDragging()
		  if ParentControl <> nil then
		    ParentControl.informonWillBeginDragging
		  else
		    RaiseEvent WillDrag
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informOnWillBeginZooming(view as ptr)
		  if ParentControl <> nil then
		    ParentControl.informOnWillBeginZooming(view)
		  else
		    RaiseEvent WillZoom (appleview.makefromptr(view))
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden = true ) Private Sub informonWillEndDrag(Velocity as FoundationFramework.NSPoint, TargetContentOffset as FoundationFramework.NSPoint)
		  if ParentControl <> nil then
		    ParentControl.informonWillEndDrag(Velocity, TargetContentOffset)
		  else
		    RaiseEvent WillEndDrag (Velocity, TargetContentOffset)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleScrollView
		  return if (aptr = nil, nil, new AppleScrollView(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden )  Function ParentControl() As iosLibScrollView
		  dim  wr as weakref = XojoControls.Lookup (id, nil)  
		  return if (wr = nil, nil,  iOSLibScrollView(wr.Value))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveAllGestureRecognizers()
		  while GestureRecognizers.Count > 0
		    RemoveGestureRecognizer (AppleGestureRecognizer (GestureRecognizers.ObjectAtIndex(GestureRecognizers.count)))
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320612073706563696669632061726561206F662074686520636F6E74656E7420736F20746861742069742069732076697369626C6520696E20746865207363726F6C6C766965772E
		Sub ScrollToRect(value as FoundationFramework.NSRect, animated as boolean = true)
		  #if Target64Bit
		    Declare sub scrollRectToVisible lib UIKitLibname selector "scrollRectToVisible:animated:" (id as ptr, value  as FoundationFramework.NSRect, animated as boolean)
		    scrollRectToVisible (id, value, animated)
		  #elseif Target32Bit
		    Declare sub scrollRectToVisible lib UIKitLibname selector "scrollRectToVisible:animated:" (id as ptr, value as FoundationFramework.NSRect32Bit, animated as boolean)
		    scrollRectToVisible (id, value.toNSRect32, animated)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206F66667365742066726F6D2074686520636F6E74656E742076696577E2809973206F726967696E207468617420636F72726573706F6E647320746F20746865207363726F6C6C76696577E2809973206F726967696E2E
		Sub SetContentOffset(offset as FoundationFrameWork.nspoint, animated as Boolean = false)
		  #if Target64Bit
		    Declare sub setContentOffset lib UIKitLibname selector "setContentOffset:animated:" (id as ptr, value as FoundationFrameWork.nspoint, animated as boolean)
		    setContentOffset (id, offset, true)
		  #elseif Target32Bit
		    Declare sub setContentOffset lib UIKitLibname selector "setContentOffset:animated:" (id as ptr, value as FoundationFrameWork.nspoint32bit, animated as boolean)
		    setContentOffset (id, offset.tonspoint32, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732068652063757272656E74207A6F6F6D207363616C652069746820616E20616E696D6174696F6E2E
		Sub SetZoomScale(value as Double)
		  #if Target64Bit
		    Declare sub setZoomScale lib UIKitLibname selector "setZoomScale:animated:" (id as ptr, value as double, animated as boolean)
		  #elseif Target32Bit
		    Declare sub setZoomScale lib UIKitLibname selector "setZoomScale:animated:" (id as ptr, value as single, animated as boolean)
		    setZoomScale (id, value, true)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5A6F6F6D7320746F20612073706563696669632061726561206F662074686520636F6E74656E7420736F20746861742069742069732076697369626C6520696E20746865207363726F6C6C20766965772E
		Sub ZoomToRect(value as FoundationFramework.NSRect, animated as boolean = true)
		  #if Target64Bit
		    Declare sub zoomToRect lib UIKitLibname selector "zoomToRect:animated:" (id as ptr, value  as FoundationFramework.NSRect, animated as boolean)
		    zoomToRect (id, value, animated)
		  #elseif Target32Bit
		    Declare sub zoomToRect lib UIKitLibname selector "zoomToRect:animated:" (id as ptr, value as FoundationFramework.NSRect32Bit, animated as boolean)
		    zoomToRect (id, value.toNSRect32, animated)
		  #endif
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 546865207363726F6C6C20766965772068617320656E64656420646563656C65726174696E6720746865207363726F6C6C696E67206D6F76656D656E742E
		Event DidDecelerate()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54686520757365722073746F70706564206472616767696E672074686520636F6E74656E742E2049662057696C6C446563656C657261746520697320547275652C20746865207363726F6C6C206D6F74696F6E2077696C6C20636F6E74696E756520616E6420666164652E2049662046616C73652C206973206861732073746F7070656420616C72656164792E
		Event DidDrag(WillDecelerate As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865205A6F6F6D20676573747572652068617320636F6D706C657465642E20566965772069732074686520706F7274696F6E206F662074686520636F6E74656E7420746F207363616C6520616E64207363616C6520746865206E6577207363616C65666163746F722E
		Event DidEndZoom(View as Appleview, scale as Double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865207573657220686173207363726F6C6C65642074686520636F6E74656E742E
		Event DidScroll()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720776173206D6F76656420746F20746F70206279206120646F75626C652D746170206F6E2074686520737461747573206261722E
		Event DidScrollToTop()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865207363726F6C6C766965772773207A6F6F6D666163746F72206368616E6765642E
		Event DidZoom()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865207573657220646F75626C657461707065642074686520766965772E2052657475726E205472756520696620796F7520646F206E6F742077616E7420746865207669657720746F207A6F6F6D20696E2E
		Event DoubleTap() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54686520636F6E74656E74207363726F6C6C696E6720616E696D6174696F6E2066696E69736865642E
		Event ScrollingAnimationEnded()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5468652075736572206D61646520612074776F2D66696E6765722D746170206F6E2074686520766965772E2052657475726E207472756520696620796F7520646F206E6F742077616E7420746F207A6F6F6D206F75742E
		Event TwoFingerTap() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865207573657220737461727465642061207363726F6C6C20616E64206869732066696E67657220686173206C656674207468652076696577206E6F772077686963682073746172747320646563656C65726174696E672E
		Event WillDecelerate()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865207363726F6C6C20766965772069732061626F757420746F207374617274207363726F6C6C696E672069747320636F6E74656E742E
		Event WillDrag()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54686520757365722066696E6973686564207363726F6C6C696E672074686520636F6E74726F6C2E2054686520636F6E74726F6C20686173206120737065656420766563746F72206F662076656C6F6369747920616E6420697320657374696D6174656420746F20636F6D6520746F2061207265737420617420546172676574436F6E74656E744F666673657420617761792066726F6D20697473203020706F736974696F6E2E
		Event WillEndDrag(Velocity as FoundationFramework.NSPoint, TargetContentOffset as FoundationFramework.NSPoint)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865207363726F6C6C766965772069732061626F757420746F207A6F6F6D2E20566965772069732073696D706C792069747320636F6E74656E74566965772E
		Event WillZoom(View as Appleview)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220626F756E63696E6720616C77617973206F6363757273207768656E20686F72697A6F6E74616C207363726F6C6C696E6720726561636865732074686520656E64206F662074686520636F6E74656E742E0A496620746869732070726F70657274792069732073657420746F2059455320616E6420626F756E636573206973205945532C20766572746963616C206472616767696E6720697320616C6C6F776564206576656E2069662074686520636F6E74656E7420697320736D616C6C6572207468616E2074686520626F756E6473206F6620746865207363726F6C6C20766965772E205468652064656661756C742076616C7565206973204E4F2E
		#tag Getter
			Get
			  Declare Function alwaysBounceHorizontal lib UIKitLibname selector "alwaysBounceHorizontal" (id as ptr) as Boolean
			  Return alwaysBounceHorizontal (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAlwaysBounceHorizontal lib UIKitLibname selector "setAlwaysBounceHorizontal:" (id as ptr, value as Boolean)
			  setAlwaysBounceHorizontal id, value
			End Set
		#tag EndSetter
		AlwaysBounceHorizontal As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220626F756E63696E6720616C77617973206F6363757273207768656E20766572746963616C207363726F6C6C696E6720726561636865732074686520656E64206F662074686520636F6E74656E742E0A496620746869732070726F70657274792069732073657420746F2059455320616E6420626F756E636573206973205945532C20766572746963616C206472616767696E6720697320616C6C6F776564206576656E2069662074686520636F6E74656E7420697320736D616C6C6572207468616E2074686520626F756E6473206F6620746865207363726F6C6C20766965772E205468652064656661756C742076616C7565206973204E4F2E
		#tag Getter
			Get
			  Declare Function alwaysBounceVertical lib UIKitLibname selector "alwaysBounceVertical" (id as ptr) as Boolean
			  Return alwaysBounceVertical (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAlwaysBounceVertical lib UIKitLibname selector "setAlwaysBounceVertical:" (id as ptr, value as Boolean)
			  setAlwaysBounceVertical id, value
			End Set
		#tag EndSetter
		AlwaysBounceVertical As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720626F756E6365732070617374207468652065646765206F6620636F6E74656E7420616E64206261636B20616761696E2E
		#tag Getter
			Get
			  Declare Function bounces lib UIKitLibname selector "bounces" (id as ptr) as Boolean
			  Return bounces (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBounces lib UIKitLibname selector "setBounces:" (id as ptr, value as Boolean)
			  setBounces id, value
			End Set
		#tag EndSetter
		Bounces As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720616E696D617465732074686520636F6E74656E74207363616C696E67207768656E20746865207363616C696E67206578636565647320746865206D6178696D756D206F72206D696E696D756D206C696D6974732E
		#tag Getter
			Get
			  Declare Function bouncesZoom lib UIKitLibname selector "bouncesZoom" (id as ptr) as Boolean
			  Return bouncesZoom (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBouncesZoom lib UIKitLibname selector "setBouncesZoom:" (id as ptr, value as Boolean)
			  setBouncesZoom id, value
			End Set
		#tag EndSetter
		BouncesZoom As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746F756368657320696E2074686520636F6E74656E74207669657720616C77617973206C65616420746F20747261636B696E672E
		#tag Getter
			Get
			  Declare Function canCancelContentTouches lib UIKitLibname selector "canCancelContentTouches" (id as ptr) as Boolean
			  Return canCancelContentTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setCanCancelContentTouches lib UIKitLibname selector "setCanCancelContentTouches:" (id as ptr, value as Boolean)
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
			    dim methods() as TargetClassMethodHelper
			    //override UIView methods
			    methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    // methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerclass, "@@:", true, true)
			    // methods.Append new TargetClassMethodHelper("tintColorDidChange", AddressOf impl_tintColorDidChange, "v@:")
			    
			    // #if Target64Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			    // #elseif Target32Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			    // #endif
			    
			    //TraitEnvironment Protocol
			    methods.Append new TargetClassMethodHelper("traitCollectionDidChange:", AddressOf impl_traitCollectionDidChange, "v@:@")
			    
			    
			    //Add UIResponder methods too
			    // methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    
			    // methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    // methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    // methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    
			    methods.Append new TargetClassMethodHelper("touchesEstimatedPropertiesUpdated:", AddressOf impl_touchesEstimatedPropertiesUpdated, "v@:@")
			    methods.Append new TargetClassMethodHelper("remoteControlReceivedWithEvent:", AddressOf impl_remoteControlReceivedWithEvent, "v@:@")
			    
			    if ApplePress.ClassAvailable then
			      methods.Append new TargetClassMethodHelper("pressesBegan:withEvent:", AddressOf impl_pressesBeganWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesCancelled:withEvent:", AddressOf impl_pressesCancelledWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesChanged:withEvent:", AddressOf impl_pressesChangedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesEnded:withEvent:", AddressOf impl_pressesEndedWithEvent, "v@:@@")
			    end if
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
			    // Methods.Append new TargetClassMethodHelper("touchesShouldBegin:withEvent:inContentView:", AddressOf impl_TouchesShouldBegin, "v@:@@@")
			    
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
			    methods.Append new TargetClassMethodHelper (twoFingerTapReceived, AddressOf impl_TwoFingerTapReceived, "v@:")
			    
			    methods.Append new TargetClassMethodHelper (DoubleTapReceived, AddressOf impl_DoubleTapReceived, "v@:")
			    targetID = BuildTargetClass ("UIScrollView", "iOSLibScrollView",methods)
			    
			    // targetID = BuildTargetClass ("UIScrollView", "iOSLibScrollView",methods, array("UIScrollViewDelegate"))
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E636520746861742074686520636F6E74656E74207669657720697320696E7365742066726F6D2074686520656E636C6F73696E67207363726F6C6C20766965772E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function contentInset lib UIKitLibname selector "contentInset" (id as ptr) as UIEdgeInsets
			    return contentInset (id)
			  #elseif Target32Bit
			    Declare function contentInset lib UIKitLibname selector "contentInset" (id as ptr) as UIEdgeInsets32Bit
			    return contentInset(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setContentInset lib UIKitLibname selector "setContentInset:" (id as ptr, value as UIEdgeInsets)
			    setContentInset (id, value)
			  #elseif Target32Bit
			    Declare Sub setContentInset lib UIKitLibname selector "setContentInset:" (id as ptr, value as UIEdgeInsets32Bit)
			    setContentInset (id, value.toUIEdgeInset32)
			  #endif
			End Set
		#tag EndSetter
		ContentInset As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F696E7420617420776869636820746865206F726967696E206F662074686520636F6E74656E742076696577206973206F66667365742066726F6D20746865206F726967696E206F6620746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function contentOffset lib UIKitLibname selector "contentOffset" (id as ptr) as FoundationFramework.NSPoint
			    return contentOffset (id)
			  #elseif Target32Bit
			    Declare function contentOffset lib UIKitLibname selector "contentOffset" (id as ptr) as FoundationFramework.NSPoint32Bit
			    return contentOffset(id).toNSPoint
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetContentOffset (value, false)
			End Set
		#tag EndSetter
		ContentOffset As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520636F6E74656E7420766965772E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function contentSize lib UIKitLibname selector "contentSize" (id as ptr) as FoundationFramework.NSSize
			    return contentSize (id)
			  #elseif Target32Bit
			    Declare function contentSize lib UIKitLibname selector "contentSize" (id as ptr) as FoundationFramework.NSSize32Bit
			    return contentSize(id).toNSSize
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setContentSize lib UIKitLibname selector "setContentSize:" (id as ptr, value as FoundationFramework.NSSize)
			    setcontentSize (id, value)
			  #elseif Target32Bit
			    Declare sub setContentSize lib UIKitLibname selector "setContentSize:" (id as ptr, value as FoundationFramework.NSSize32Bit)
			    setcontentSize (id, value.toNSSize32)
			  #endif
			End Set
		#tag EndSetter
		ContentSize As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546869732069732074686520636F6E74656E7420746865205363726F6C6C766965772073686F756C6420646973706C61792E
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

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74656E74206973206D6F76696E6720696E20746865207363726F6C6C2076696577206166746572207468652075736572206C69667465642074686569722066696E6765722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function decelerating lib UIKitLibname selector "isDecelerating" (id as ptr) as Boolean
			  Return decelerating (id)
			End Get
		#tag EndGetter
		Decelerating As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 547468652072617465206F6620646563656C65726174696F6E206166746572207468652075736572206C696674732074686569722066696E6765722E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function decelerationRate lib UIKitLibname selector "decelerationRate" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function decelerationRate lib UIKitLibname selector "decelerationRate" (id as ptr) as Single
			  #endif
			  return decelerationRate (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setDecelerationRate lib UIKitLibname selector "setDecelerationRate:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setDecelerationRate lib UIKitLibname selector "setDecelerationRate:" (id as ptr, value as single)
			  #endif
			  setDecelerationRate (id, value)
			  
			End Set
		#tag EndSetter
		DecelerationRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C20766965772064656C617973207468652068616E646C696E67206F6620746F7563682D646F776E2067657374757265732E2044656661756C7420547275652E
		#tag Getter
			Get
			  Declare Function delaysContentTouches lib UIKitLibname selector "delaysContentTouches" (id as ptr) as Boolean
			  Return delaysContentTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDelaysContentTouches lib UIKitLibname selector "setDelaysContentTouches:" (id as ptr, value as Boolean)
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

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207363726F6C6C696E672069732064697361626C656420696E206120706172746963756C617220646972656374696F6E2E
		#tag Getter
			Get
			  Declare Function directionalLockEnabled lib UIKitLibname selector "isDirectionalLockEnabled" (id as ptr) as Boolean
			  Return directionalLockEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDirectionalLockEnabled lib UIKitLibname selector "setDirectionalLockEnabled:" (id as ptr, value as Boolean)
			  setDirectionalLockEnabled id, value
			End Set
		#tag EndSetter
		DirectionalLock As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E6465726C79696E672067657374757265207265636F676E697A657220666F7220646F75626C65207461702067657374757265732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  for q as integer = 0 to GestureRecognizers.count -1
			    dim gr as AppleGestureRecognizer = AppleGestureRecognizer.MakeFromPtr(GestureRecognizers.PtrAtIndex(q))
			    if gr.DebugDescription.IndexOf(DoubleTapReceived) > -1 then
			      return AppleTapGestureRecognizer.MakeFromPtr(GestureRecognizers.PtrAtIndex(q))
			    end if
			  next
			  
			End Get
		#tag EndGetter
		DoubleTapRecognizer As AppleTapGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520757365722068617320626567756E207363726F6C6C696E672074686520636F6E74656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function dragging lib UIKitLibname selector "isDragging" (id as ptr) as Boolean
			  Return dragging (id)
			End Get
		#tag EndGetter
		Dragging As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C65206F6620746865207363726F6C6C20696E64696361746F72732E
		#tag Getter
			Get
			  Declare Function indicatorStyle lib UIKitLibname selector "indicatorStyle" (id as ptr) as UIScrollViewIndicatorStyle
			  Return indicatorStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setIndicatorStyle lib UIKitLibname selector "setIndicatorStyle:" (id as ptr, value as UIScrollViewIndicatorStyle)
			  setIndicatorStyle id, value
			End Set
		#tag EndSetter
		IndicatorStyle As UIScrollViewIndicatorStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D616E6E657220696E20776869636820746865206B6579626F617264206973206469736D6973736564207768656E2061206472616720626567696E7320696E20746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  Declare Function keyboardDismissMode lib UIKitLibname selector "keyboardDismissMode" (id as ptr) as UIScrollViewKeyboardDismissMode
			  Return keyboardDismissMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setKeyboardDismissMode lib UIKitLibname selector "setKeyboardDismissMode:" (id as ptr, value as UIScrollViewKeyboardDismissMode)
			  setKeyboardDismissMode id, value
			End Set
		#tag EndSetter
		KeyboardDismissMode As UIScrollViewKeyboardDismissMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D207363616C6520666163746F7220746861742063616E206265206170706C69656420746F20746865207363726F6C6C2076696577277320636F6E74656E742E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function maximumZoomScale lib UIKitLibname selector "maximumZoomScale" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function maximumZoomScale lib UIKitLibname selector "maximumZoomScale" (id as ptr) as Single
			  #endif
			  return maximumZoomScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setMaximumZoomScale lib UIKitLibname selector "setMaximumZoomScale:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setMaximumZoomScale lib UIKitLibname selector "setMaximumZoomScale:" (id as ptr, value as single)
			  #endif
			  setMaximumZoomScale (id, value)
			  
			End Set
		#tag EndSetter
		MaximumZoomScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D207363616C6520666163746F7220746861742063616E206265206170706C69656420746F20746865207363726F6C6C2076696577277320636F6E74656E742E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function minimumZoomScale lib UIKitLibname selector "minimumZoomScale" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function minimumZoomScale lib UIKitLibname selector "minimumZoomScale" (id as ptr) as Single
			  #endif
			  return minimumZoomScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setMinimumZoomScale lib UIKitLibname selector "setMinimumZoomScale:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setMinimumZoomScale lib UIKitLibname selector "setMinimumZoomScale:" (id as ptr, value as single)
			  #endif
			  setMinimumZoomScale (id, value)
			  
			End Set
		#tag EndSetter
		MinimumZoomScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220706167696E6720697320656E61626C656420666F7220746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  Declare Function isPagingEnabled lib UIKitLibname selector "isPagingEnabled" (id as ptr) as Boolean
			  Return isPagingEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPagingEnabled lib UIKitLibname selector "setPagingEnabled:" (id as ptr, value as Boolean)
			  setPagingEnabled id, value
			End Set
		#tag EndSetter
		PagingEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 446973706C61797320746865207363726F6C6C20696E64696361746F7273206D6F6D656E746172696C792E
		#tag Getter
			Get
			  Declare function panGestureRecognizer lib UIKitLibname selector "panGestureRecognizer" (id as ptr) as Ptr
			  return ApplePanGestureRecognizer.MakeFromPtr (panGestureRecognizer (id))
			  
			End Get
		#tag EndGetter
		PanGestureRecognizer As ApplePanGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E6465726C79696E672067657374757265207265636F676E697A657220666F722070696E63682067657374757265732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function pinchGestureRecognizer lib UIKitLibname selector "pinchGestureRecognizer" (id as ptr) as Ptr
			  return ApplePinchGestureRecognizer.MakeFromPtr (pinchGestureRecognizer (id))
			  
			End Get
		#tag EndGetter
		PInchGestureRecognizer As ApplePinchGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207363726F6C6C696E6720697320656E61626C65642E
		#tag Getter
			Get
			  Declare Function scrollEnabled lib UIKitLibname selector "isScrollEnabled" (id as ptr) as Boolean
			  Return scrollEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setScrollEnabled lib UIKitLibname selector "setScrollEnabled:" (id as ptr, value as Boolean)
			  setScrollEnabled id, value
			End Set
		#tag EndSetter
		ScrollEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E636520746865207363726F6C6C20696E64696361746F72732061726520696E7365742066726F6D207468652065646765206F6620746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function scrollIndicatorInsets lib UIKitLibname selector "scrollIndicatorInsets" (id as ptr) as UIEdgeInsets
			    return scrollIndicatorInsets (id)
			  #elseif Target32Bit
			    Declare function scrollIndicatorInsets lib UIKitLibname selector "scrollIndicatorInsets" (id as ptr) as UIEdgeInsets32Bit
			    return scrollIndicatorInsets(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setScrollIndicatorInsets lib UIKitLibname selector "setScrollIndicatorInsets:" (id as ptr, value as UIEdgeInsets)
			    setScrollIndicatorInsets (id, value)
			  #elseif Target32Bit
			    Declare Sub setScrollIndicatorInsets lib UIKitLibname selector "setScrollIndicatorInsets:" (id as ptr, value as UIEdgeInsets32Bit)
			    setScrollIndicatorInsets (id, value.toUIEdgeInset32)
			  #endif
			End Set
		#tag EndSetter
		ScrollIndicatorInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2D746F2D746F70206765737475726520697320656E61626C65642E
		#tag Getter
			Get
			  Declare Function scrollsToTop lib UIKitLibname selector "scrollsToTop" (id as ptr) as Boolean
			  Return scrollsToTop (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setScrollsToTop lib UIKitLibname selector "setScrollsToTop:" (id as ptr, value as Boolean)
			  setScrollsToTop id, value
			End Set
		#tag EndSetter
		ScrollsToTop As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520686F72697A6F6E74616C207363726F6C6C20696E64696361746F722069732076697369626C652E
		#tag Getter
			Get
			  Declare Function showsHorizontalScrollIndicator lib UIKitLibname selector "showsHorizontalScrollIndicator" (id as ptr) as Boolean
			  Return showsHorizontalScrollIndicator (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsHorizontalScrollIndicator lib UIKitLibname selector "setShowsHorizontalScrollIndicator:" (id as ptr, value as Boolean)
			  setShowsHorizontalScrollIndicator id, value
			End Set
		#tag EndSetter
		ShowsHorizontalScrollIndicator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 776865746865722074686520766572746963616C207363726F6C6C20696E64696361746F722069732076697369626C652E
		#tag Getter
			Get
			  Declare Function showsVerticalScrollIndicator lib UIKitLibname selector "showsVerticalScrollIndicator" (id as ptr) as Boolean
			  Return showsVerticalScrollIndicator (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsVerticalScrollIndicator lib UIKitLibname selector "setShowsVerticalScrollIndicator:" (id as ptr, value as Boolean)
			  setShowsVerticalScrollIndicator id, value
			End Set
		#tag EndSetter
		ShowsVerticalScrollIndicator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520757365722068617320746F75636865642074686520636F6E74656E7420746F20696E697469617465207363726F6C6C696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function tracking lib UIKitLibname selector "isTracking" (id as ptr) as Boolean
			  Return tracking (id)
			End Get
		#tag EndGetter
		Tracking As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E6465726C79696E672067657374757265207265636F676E697A657220666F722074776F2D66696E676572207461702067657374757265732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  for q as integer = 0 to GestureRecognizers.count -1
			    dim gr as AppleGestureRecognizer = AppleGestureRecognizer.MakeFromPtr(GestureRecognizers.PtrAtIndex(q))
			    if gr.DebugDescription.IndexOf(twofingertapreceived) > -1 then
			      return AppleTapGestureRecognizer.MakeFromPtr(GestureRecognizers.PtrAtIndex(q))
			    end if
			  next
			  
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

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E646963617465732074686174207A6F6F6D696E672068617320657863656564656420746865207363616C696E67206C696D6974732073706563696669656420666F7220746865207363726F6C6C20766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function zoomBouncing lib UIKitLibname selector "isZoomBouncing" (id as ptr) as Boolean
			  Return zoomBouncing (id)
			End Get
		#tag EndGetter
		ZoomBouncing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74656E7420766965772069732063757272656E746C79207A6F6F6D696E6720696E206F72206F75742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function isZooming lib UIKitLibname selector "isZooming" (id as ptr) as Boolean
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207363616C6520666163746F72206170706C69656420746F20746865207363726F6C6C2076696577277320636F6E74656E742E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function zoomScale lib UIKitLibname selector "zoomScale" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function zoomScale lib UIKitLibname selector "zoomScale" (id as ptr) as Single
			  #endif
			  return zoomScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setZoomScale lib UIKitLibname selector "setZoomScale:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setZoomScale lib UIKitLibname selector "setZoomScale:" (id as ptr, value as single)
			  #endif
			  setZoomScale (id, value)
			  
			End Set
		#tag EndSetter
		ZoomScale As Double
	#tag EndComputedProperty


	#tag Constant, Name = doubleTapReceived, Type = Text, Dynamic = False, Default = \"doubleTapReceived", Scope = Private, Attributes = \"hidden"
	#tag EndConstant

	#tag Constant, Name = twoFingerTapReceived, Type = Text, Dynamic = False, Default = \"twoFingerTapReceived", Scope = Private, Attributes = \"hidden"
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
