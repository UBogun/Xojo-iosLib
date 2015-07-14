#tag Class
Protected Class AppleScrollViewControl
Inherits iosusercontrol
Implements AppleNSEventReceiver
	#tag Event
		Function CreateView() As UInteger
		  dim frame as  NSRect = nsrect (0,0,100,100)
		  viewobject = new AppleScrollView (frame, self)
		  
		  
		  Return UInteger(viewobject.id)
		  
		  
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub FlashScrollIndicators()
		  ViewObject.FlashScrollIndicators
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReceivedEvent(Details as AppleArray)
		  // Part of the AppleNSEventReceiver interface.
		  if not Details.IsNIL then
		    if Details.Count > 0 then
		      dim compare as text = Details.TextAtIndex(0)
		      Select case  compare
		      case appleview.WillMoveToSuperview
		        dim newview as AppleView
		        if Details.Count > 1 then newview  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        RaiseEvent WillMoveToSuperview (newview)
		      case AppleView.WillMoveToWindow
		        dim windowptr as ptr
		        if Details.Count > 1 then WindowPtr = Details.PtrAtIndex(1)
		        RaiseEvent WillMoveToWindow (windowptr)
		      case AppleView.DidAddSubview
		        dim newview as AppleView  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        RaiseEvent DidAddSubview (newview)
		      case AppleView.DidMoveToSuperview
		        RaiseEvent DidMoveToSuperview
		      case AppleView.DidMoveToWindow
		        RaiseEvent DidMoveToWindow
		      case AppleView.WillRemoveSubview
		        dim newview as AppleView  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        RaiseEvent WillRemoveSubview (newview)
		      case AppleView.TouchesBegan
		        raiseEvent TouchesBegan (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		      case AppleView.TouchesEnded
		        raiseEvent TouchesEnded (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		      case AppleView.TouchesMoved
		        raiseEvent TouchesMoved (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		      case AppleView.TouchesCancelled
		        raiseEvent TouchesCancelled (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		      case AppleView.MotionBegan
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        RaiseEvent MotionBegan (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		      case AppleView.MotionEnded
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        RaiseEvent MotionEnded (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		      case AppleView.MotionCancelled
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        RaiseEvent MotionCancelled (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		      case AppleView.LayoutSubviews
		        raiseevent LayoutSubviews
		      case appleview.DrawRect
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        RaiseEvent DrawRect (mynumber.NSRectValue)
		      case AppleScrollView.kdidendzoom
		        dim myview as appleview = appleview.MakeFromPtr (details.PtrAtIndex(1))
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(2))
		        RaiseEvent DidEndZoom (myview, mynumber.doublevalue)
		      case AppleScrollView.kDidScroll
		        raiseevent DidScroll
		      case AppleScrollView.kDoubleTap
		        RaiseEvent doubleTap (me.appleview.DoubleTapRecognizer)
		      case AppleScrollView.kWillBeginZooming
		        dim myview as appleview = appleview.MakeFromPtr (details.PtrAtIndex(1))
		        RaiseEvent WillZoom (myview)
		      case AppleScrollView.kWillBeginDragging
		        RaiseEvent WillDrag
		      case AppleScrollView.kDidEndDrag
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        raiseEvent DidDrag (mynumber.BoolValue)
		      case AppleScrollView.kShouldScrollToTop
		        if AppleView.ScrollsToTop then raiseEvent WillScrollToTop
		      case AppleScrollView.kDidZoom
		        raiseevent didzoom
		      case AppleScrollView.kScrollingAnimationEnded
		        RaiseEvent ScrollingEnded
		      case AppleScrollView.kDidScrollToTop
		        raiseEvent DidScrollToTop
		      case AppleScrollView.kWillBeginDecelerating
		        raiseEvent WillDecelerate
		      case AppleScrollView.kDidEndDecelerating
		        raiseEvent DidDecelerate
		      case AppleScrollView.kWillEndDrag
		        dim mynumber1 as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        dim mynumber2 as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(2))
		        RaiseEvent WillEndDrag (mynumber1.NSPointValue.tocorePoint, mynumber2.NSPointValue.toCorePoint)
		      case AppleScrollView.kTwoFingerTap
		        RaiseEvent TwoFingerTap (me.appleview.TwoFingerTapRecognizer)
		      else
		        break
		      End Select
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollContent(assigns value as iOSControl)
		  AppleView.ContentView = new appleimageview (value.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToRect(X as Double, y as double, width as double, height as double)
		  ViewObject.ScrollToRect nsrect (x,y,width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetContentInset(top as double, left as double, bottom as double, right as double)
		  ViewObject.ContentInset = UIEdgeInsets(top, left, bottom, right)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetContentOffset(left as double, top as double, animated as boolean = true)
		  if animated then
		    ViewObject.AnimateContentOffset nspoint (left, top)
		  else
		    ViewObject.ContentOffset =nspoint (left, top)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollIndictaorInsets(top as double, left as double, bottom as double, right as double)
		  ViewObject.ScrollIndicatorInsets = UIEdgeInsets(top, left, bottom, right)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetZoomScale(value as double)
		  ViewObject.SetZoomScale value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomToRect(X as Double, y as double, width as double, height as double, animated as boolean = true)
		  ViewObject.ZoomToRect nsrect(x,y,width, height), animated
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AnimationFinished(animationCompleted as boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206E65772073756276696577207761732061646465642C2072657475726E696E67207468652073756276696577
		Event DidAddSubview(view as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidDecelerate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidDrag(WillDecelerate As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEndZoom(view as AppleView, scale as Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToSuperview()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToWindow()
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
		Event DoubleTap(Gesture as AppleTapGestureRecognizer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DrawRect(Rect as NSRect)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LayoutSubviews()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MotionBegan(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MotionCancelled(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MotionEnded(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ScrollingEnded()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesBegan(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesCancelled(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesEnded(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesMoved(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TwoFingerTap(Gesture as AppleTapGestureRecognizer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillDecelerate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillDrag()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillEndDrag(Velocity as Xojo.core.point, TargetContentoffset as xojo.core.point)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillMoveToSuperview(view as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillMoveToWindow(window as ptr)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillRemoveSubview(view as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillScrollToTop()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillZoom(view as AppleView)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.AlwaysBounceHorizontal
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.AlwaysBounceHorizontal = value
			End Set
		#tag EndSetter
		AlwaysBounceHorizontal As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.AlwaysBounceVertical
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.AlwaysBounceVertical = value
			End Set
		#tag EndSetter
		AlwaysBounceVertical As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject
			End Get
		#tag EndGetter
		AppleView As AppleScrollView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.Bounces
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.Bounces = value
			End Set
		#tag EndSetter
		Bounces As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.BouncesZoom
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.Bounceszoom = value
			End Set
		#tag EndSetter
		BouncesZoom As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.CanCancelContentTouches
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.CanCancelContentTouches = value
			End Set
		#tag EndSetter
		CanCancelContentTouches As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ContentSize.toCoreSize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ContentSize = value.tonssize
			End Set
		#tag EndSetter
		ContentSize As xojo.Core.Size
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ContentView
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ContentView= value
			End Set
		#tag EndSetter
		ContentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.Decelerating
			End Get
		#tag EndGetter
		Decelerating As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.DecelerationRate
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.DecelerationRate = value
			End Set
		#tag EndSetter
		DecelerationRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.DirectionalLock
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.DirectionalLock = value
			End Set
		#tag EndSetter
		DirectionalLock As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.DoubleTapRecognizer
			End Get
		#tag EndGetter
		DoubleTapRecognizer As AppleTapGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.Dragging
			End Get
		#tag EndGetter
		Dragging As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.IndicatorStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.IndicatorStyle = value
			End Set
		#tag EndSetter
		IndicatorStyle As UIScrollViewIndicatorStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.KeyboardDismissMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.KeyboardDismissMode = value
			End Set
		#tag EndSetter
		KeyboardDismissMode As UIScrollViewKeyboardDismissMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.MaximumZoomScale
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.MaximumZoomScale = value
			End Set
		#tag EndSetter
		MaximumZoomScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.MinimumZoomScale
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.MinimumZoomScale = value
			End Set
		#tag EndSetter
		MinimumZoomScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return ViewObject.PagingEnabled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.PagingEnabled = value
			End Set
		#tag EndSetter
		PagingEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.PanGestureRecognizer
			End Get
		#tag EndGetter
		PanGestureRecognizer As ApplePanGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.PInchGestureRecognizer
			End Get
		#tag EndGetter
		PInchGestureRecognizer As ApplePinchGestureRecognizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ScrollEnabled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ScrollEnabled = value
			End Set
		#tag EndSetter
		ScrollEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return ViewObject.ScrollsToTop
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ScrollsToTop = value
			End Set
		#tag EndSetter
		ScrollsToTop As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return viewObject.showsHorizontalScrollIndicator
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  viewObject.showsHorizontalScrollIndicator = value
			End Set
		#tag EndSetter
		ShowsHorizontalScrollIndicator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return viewobject.showsVerticalScrollIndicator
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  viewobject.showsVerticalScrollIndicator = value
			End Set
		#tag EndSetter
		ShowsVerticalScrollIndicator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return viewobject.Tracking
			End Get
		#tag EndGetter
		Tracking As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.TwoFingerTapRecognizer
			End Get
		#tag EndGetter
		TwoFingerTapRecognizer As AppleTapGestureRecognizer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ViewObject As AppleScrollView
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.Zoomable
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.Zoomable = value
			End Set
		#tag EndSetter
		Zoomable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ZoomBouncing
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ZoomBouncing = value
			End Set
		#tag EndSetter
		ZoomBouncing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.Zooming
			End Get
		#tag EndGetter
		Zooming As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ZoomOnDoubleTap
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ZoomOnDoubleTap = value
			End Set
		#tag EndSetter
		ZoomOnDoubleTap As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ZoomScale
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ZoomScale = value
			End Set
		#tag EndSetter
		ZoomScale As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
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
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumZoomScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumZoomScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PagingEnabled"
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
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tracking"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
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
