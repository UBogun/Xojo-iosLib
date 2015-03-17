#tag Class
Protected Class iOSLibView
Inherits iOSLibResponder
	#tag Method, Flags = &h0
		Sub AddSubview(aView as iOSLibView)
		  declare sub addSubview lib UIKit selector "addSubview:" (id as ptr, aview as ptr)
		  addSubview id, aView.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateAlpha(alpha as Double, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToAlpha = alpha
		  dim block as new iOSBlock (AddressOf TransformAlphaBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateBounds(newBounds as NSRect, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToBounds = NewBounds
		  dim block as new iOSBlock (AddressOf TransformFrameBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateCenter(aCenter as NSPoint, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToCenter = aCenter
		  dim block as new iOSBlock (AddressOf TransformCenterBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.none))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateColor(newColor as iosLibColor, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToColor = newColor
		  dim block as new iOSBlock (AddressOf TransformColorBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateFrame(aFrame as NSRect, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToFrame = aFrame
		  dim block as new iOSBlock (AddressOf TransformFrameBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateTransform(aTransform as CGAffineTransform, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToTransform = aTransform
		  dim block as new iOSBlock (AddressOf TransformTransformBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub animateWithDuration(duration as Double, animations as ptr, completion as ptr, delay as double = 0, options as uinteger = 0)
		  Declare sub animateWithDuration_ lib UIKit selector "animateWithDuration:delay:options:animations:completion:" _
		  (id as ptr, duration as Double, delay as double, options as uinteger, animations as ptr, completion as ptr)
		  animateWithDuration_ classptr, duration, delay, options, Animations, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AnimationOption(Option as iOSLibViewAnimationOption, curve as UIVIewAnimationCurve, transition as UIVIewAnimationTransition) As UInteger
		  return UInteger(transition).ShiftLeft(20)+UInteger(curve).ShiftLeft(16)+uinteger(Option.Option)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub BeginAnimations(AnimationID as CFStringRef)
		  Declare sub beginAnimations lib UIKit selector "beginAnimations:context:" (id as ptr, name as CFStringref, context as ptr)
		  beginAnimations ClassPtr, animationID, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BringSubviewToFront(aView as iOSLibView)
		  declare sub BringSubviewToFront lib UIKit selector "bringSubviewToFront:" (id as ptr, aview as ptr)
		  BringSubviewToFront id, aView.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CombineTransformations(Transform1 as CGAffineTransform, transform2 as CGAffineTransform)
		  Transform = CGAffineTransformConcat (Transform1, transform2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CommitAnimations()
		  Declare sub commitAnimations lib UIKit selector "commitAnimations:" (id as ptr)
		  commitAnimations ClassPtr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CompletionBlock(animationCompleted as Boolean)
		  if self <> NIL then RaiseEvent AnimationFinished (animationCompleted)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame As NSRect)
		  Super.Constructor (DoInitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As iOSLibView
		  return new iOSLibview (ObjectiveCRuntime.object_copy (id, 0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExchangeSubviewsAtIndices(index1 as Integer, Index2 As Integer)
		  declare sub exchangeSubviewAtIndex lib UIKit selector "exchangeSubviewAtIndex:withSubviewAtIndex:" _
		  (id as ptr, index1 as integer, index2 as integer)
		  exchangeSubviewAtIndex id, index1, index2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExerciseAmbiguityInLayout()
		  Declare Sub exerciseAmbiguityInLayout lib UIKit selector "exerciseAmbiguityInLayout" (id as ptr)
		  exerciseAmbiguityInLayout id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubviewAbove(aView as iOSLibView, aboveView as iOSLibView)
		  declare sub insertSubview lib UIKit selector "insertSubview:aboveSubview:" (id as ptr, aview as ptr, aboveView as ptr)
		  insertSubview id, aView.id, aboveView.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubviewAtIndex(aView as iOSLibView, index as integer)
		  declare sub insertSubview lib UIKit selector "insertSubview:atIndex:" (id as ptr, aview as ptr, index as integer)
		  insertSubview id, aView.id, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubviewBelow(aView as iOSLibView, BelowView as iOSLibView)
		  declare sub insertSubview lib UIKit selector "insertSubview:belowSubview:" (id as ptr, aview as ptr, belowView as ptr)
		  insertSubview id, aView.id, belowView.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvertTransform()
		  Transform = CGAffineTransformInvert (Transform)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDescendantOfView(aView As iOSLibView) As Boolean
		  Declare Function IsDescendantOfView lib UIKit selector "isDescendantOfView:" (id as ptr, aview as ptr) as Boolean
		  Return IsDescendantOfView (id, aView.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutIfNeeded()
		  Declare sub layoutIfNeeded lib UIKit selector "layoutIfNeeded" (id as ptr)
		  layoutIfNeeded (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFromSuperview()
		  declare sub removeFromSuperview lib UIKit selector "removeFromSuperview" (id as ptr)
		  removeFromSuperview id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetTransform()
		  Transform = CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Rotate(Radians as double)
		  Transform = CGAffineTransformRotate (Transform, radians)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scale(Xfactor as Double, YFactor as Double = 0)
		  Transform = CGAffineTransformScale (Transform, Xfactor, YFactor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendSubviewToBack(aView as iOSLibView)
		  declare sub sendSubviewToBack lib UIKit selector "sendSubviewToBack:" (id as ptr, aview as ptr)
		  sendSubviewToBack id, aView.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNeedsLayout()
		  Declare sub setNeedsLayout lib UIKit selector "setNeedsLayout" (id as ptr)
		  setNeedsLayout (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRotation(Radians as double)
		  Transform = CGAffineTransformMakeRotation (radians)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScale(Xfactor as Double, YFactor as Double = 0)
		  Transform = CGAffineTransformMakeScale ( Xfactor, YFactor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTranslation(DeltaX as Double, DeltaY as Double)
		  Transform = CGAffineTransformMakeTranslation (DeltaX, deltaY)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SizeToFit()
		  Declare sub sizeToFit lib UIKit selector "sizeToFit" (id as ptr)
		  sizeToFit (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Snapshot(afterUpdates as Boolean = false) As iOSLibView
		  Declare function snapshotViewAfterScreenUpdates lib UIKit selector "snapshotViewAfterScreenUpdates:" (id as ptr, afterupdate as boolean) as ptr
		  return new iOSLibView (snapshotViewAfterScreenUpdates (id, afterUpdates))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateAlpha(alpha as Double, options as ioslibViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToAlpha = alpha
		  dim block as new iOSBlock (AddressOf TransformAlphaBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateBounds(NewBounds As NSRect, options as ioslibViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToBounds = newBounds
		  dim block as new iOSBlock (AddressOf TransformBoundsBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateCenter(NewCenter As NSPoint, options as ioslibViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToCenter = NewCenter
		  dim block as new iOSBlock (AddressOf TransformCenterBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateColor(NewColor As ioslibColor, options as ioslibViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToColor = NewColor
		  dim block as new iOSBlock (AddressOf TransformColorBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateFrame(NewFrame As NSRect, options as ioslibViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToFrame = NewFrame
		  dim block as new iOSBlock (AddressOf TransformFrameBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateTransform(NewTransform As CGAffineTransform, options as ioslibViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToTransform = NewTransform
		  dim block as new iOSBlock (AddressOf TransformTransformBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub SpringanimateWithDuration(duration as Double, animations as ptr, completion as ptr, delay as double = 0, options as uinteger = 0, DampingRatio as Double = 1, Velocity as Double = 0.5)
		  #if Target64Bit
		    Declare sub springanimateWithDuration_ lib UIKit selector "animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" _
		    (id as ptr, duration as Double, delay as double, DampingRatio as Double, Velocity As Double, options as uinteger, animations as ptr, completion as ptr)
		  #elseif Target32Bit
		    Declare sub springanimateWithDuration_ lib UIKit selector "animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" _
		    (id as ptr, duration as Double, delay as double, DampingRatio as Single, Velocity As Single, options as uinteger, animations as ptr, completion as ptr)
		  #endif
		  springanimateWithDuration_ classptr, duration, delay, DampingRatio, Velocity, options, Animations, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformAlphaBlock()
		  alpha = TransformToAlpha
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformBoundsBlock()
		  Bounds = TransformToBounds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformCenterBlock()
		  Center = TransformToCenter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformColorBlock()
		  BackgroundColor = TransformToColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformFrameBlock()
		  Frame = TransformToFrame
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformTransformBlock()
		  Transform = TransformToTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithAlpha(alpha as Double, Transition as UIViewAnimationTransition, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToAlpha = alpha
		  dim block as new iOSBlock (AddressOf TransformAlphaBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithBounds(newBounds as NSRect, transition as uiviewanimationtransition, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToBounds = NewBounds
		  dim block as new iOSBlock (AddressOf TransformFrameBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle, AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithCenter(aCenter as NSPoint, Transition as UIViewAnimationTransition, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToCenter = aCenter
		  dim block as new iOSBlock (AddressOf TransformCenterBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithColor(newColor as iosLibColor, Transition As UIViewAnimationTransition, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToColor = newColor
		  dim block as new iOSBlock (AddressOf TransformColorBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  TransitionWithDuration (id,  seconds, block.handle, completion.Handle, AnimationOption (options, curve, transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub TransitionWithDuration(id as ptr, duration as Double, animations as ptr, completion as ptr, options as uinteger)
		  Declare sub transitionWithView lib UIKit selector "transitionWithView:duration:options:animations:completion:" _
		  (id as ptr, view as ptr, duration as Double, options as uinteger, animations as ptr, completion as ptr)
		  transitionWithView ClassPtr, id, duration, options,  animations, completion
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithFrame(aFrame as NSRect, Transition as uiviewanimationtransition, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToFrame = aFrame
		  dim block as new iOSBlock (AddressOf TransformFrameBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithTransform(aTransform as CGAffineTransform, Transition as uiviewanimationtransition, options as ioslibViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToTransform = aTransform
		  dim block as new iOSBlock (AddressOf TransformTransformBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Translate(DeltaX as Double, DeltaY as Double)
		  Transform = CGAffineTransformTranslate (Transform, DeltaX, deltaY)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewWithTag(Tag as Integer) As iOSLibView
		  Declare function viewWithTag lib UIKit selector "viewWithTag:" (id as ptr, tag as integer) as ptr
		  return new iOSLibView (ViewWithTag (id, tag))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AnimationFinished(animationCompleted as boolean)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64bit
			    declare function alphaValue lib UIKit selector "alpha" (id as ptr) as Double
			  #elseif target32bit
			    declare function alphaValue lib UIKit selector "alpha" (id as ptr) as Single
			  #endif
			  return alphaValue (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64bit
			    declare sub setAlphaValue lib UIKit selector "setAlpha:" (id as ptr, value as double)
			  #elseif target32bit
			    declare sub setAlphaValue lib UIKit selector "setAlpha:" (id as ptr, value as Single)
			  #endif
			  setAlphaValue id, value
			  
			End Set
		#tag EndSetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function autoresizesSubviews lib UIKit selector "autoresizesSubviews" (id as ptr) as Boolean
			  return autoresizesSubviews (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAutoresizesSubviews lib UIKit selector "setAutoresizesSubviews:" (id as ptr, value as Boolean)
			  setautoresizesSubviews id, value
			End Set
		#tag EndSetter
		AutoresizesSubviews As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function autoResizingMask lib UIKit selector "autoresizingMask" (id as ptr) as UInteger
			  return new iOSLibAutoresizingMask (autoResizingMask(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAutoresizingMask lib UIKit selector "setAutoresizingMask:" (id as ptr, value as UInteger)
			  setAutoresizingMask id, value.ID
			End Set
		#tag EndSetter
		AutoresizingMask As iOSLibAutoresizingMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function backgroundcolor lib UIKit selector "backgroundColor" (id as ptr) as ptr
			  return new iOSLibColor (backgroundcolor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setbackgroundcolor lib UIKit selector "setBackgroundColor:" (id as ptr, value as ptr)
			  setbackgroundcolor id, value.id
			End Set
		#tag EndSetter
		BackgroundColor As iOSLibColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getbounds
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBounds value
			End Set
		#tag EndSetter
		Bounds As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function center lib UIKit selector "center" (id as ptr) as NSPoint
			    return center (id)
			  #elseif Target32Bit
			    Declare function center lib UIKit selector "center" (id as ptr) as NSPoint32Bit
			    return center(id).toNSPoint
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setcenter lib UIKit selector "setCenter" (id as ptr, value as NSPoint)
			    setcenter id, value
			  #elseif Target32Bit
			    Declare sub setcenter lib UIKit selector "setCenter" (id as ptr, value as NSPoint32Bit)
			    setcenter id, value.toNSPoint32
			  #endif
			End Set
		#tag EndSetter
		Center As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function clearsContextBeforeDrawing lib UIKit selector "clearsContextBeforeDrawing" (id as ptr) as Boolean
			  return clearsContextBeforeDrawing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setClearsContextBeforeDrawing lib UIKit selector "setClearsContextBeforeDrawing:" (id as ptr, value as Boolean)
			  setClearsContextBeforeDrawing id, value
			End Set
		#tag EndSetter
		ClearsContextBeforeDrawing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function clipsToBounds lib UIKit selector "clipsToBounds" (id as ptr) as Boolean
			  return clipsToBounds (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setclipsToBounds lib UIKit selector "setClipsToBounds:" (id as ptr, value as Boolean)
			  setclipsToBounds id, value
			End Set
		#tag EndSetter
		ClipsToBounds As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function ContentMode lib UIKit selector "contentMode" (id as ptr) as UIViewContentMode
			  return ContentMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setContentMode lib UIKit selector "setContentMode:" (id as ptr, value as UIViewContentMode)
			  setContentMode id, value
			End Set
		#tag EndSetter
		ContentMode As UIViewContentMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function exclusiveTouch lib UIKit selector "isExclusiveTouch" (id as ptr) as Boolean
			  return exclusiveTouch (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setExclusiveTouch lib UIKit selector "setExclusiveTouch:" (id as ptr, value as Boolean)
			  setExclusiveTouch id, value
			End Set
		#tag EndSetter
		ExclusiveTouch As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getFrame
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFrame value
			End Set
		#tag EndSetter
		Frame As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function hasAmbiguousLayout lib UIKit selector "hasAmbiguousLayout" (id as ptr) as Boolean
			  return hasAmbiguousLayout (id)
			End Get
		#tag EndGetter
		HasAmbiguousLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function hidden lib UIKit selector "isHidden" (id as ptr) as Boolean
			  return hidden (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setHidden lib UIKit selector "setHidden:" (id as ptr, value as Boolean)
			  setHidden id, value
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function layerclass lib UIKit selector "layerClass" (id as ptr) as ptr
			  return layerclass (classptr)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLayerClass lib UIKit selector "setLayerClass:" (id as ptr, value as ptr)
			  setLayerClass classptr, value
			End Set
		#tag EndSetter
		LayerClass As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getName (LayerClass)
			End Get
		#tag EndGetter
		LayerClassName As CString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function maskView lib UIKit selector "maskView" (id as ptr) as ptr
			  return new iOSLibView (maskView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setMaskView lib UIKit selector "setMaskView:" (id as ptr, value as ptr)
			  setMaskView id, value.id
			End Set
		#tag EndSetter
		Mask As iOSLibView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function multipleTouchEnabled lib UIKit selector "isMultipleTouchEnabled" (id as ptr) as Boolean
			  return multipleTouchEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setMultipleTouchEnabled lib UIKit selector "setMultipleTouchEnabled:" (id as ptr, value as Boolean)
			  setMultipleTouchEnabled id, value
			End Set
		#tag EndSetter
		MultipleTouchEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getOpaque (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setOpaque (id, value)
			End Set
		#tag EndSetter
		Opaque As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function requiresConstraintBasedLayout lib UIKit selector "requiresConstraintBasedLayout" (id as ptr) as Boolean
			  Return requiresConstraintBasedLayout (classptr)
			End Get
		#tag EndGetter
		Shared RequiresConstraintBasedLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target32Bit
			    Declare function sizethatfits lib UIKit selector "sizeThatFits" (id as ptr) as NSSize32Bit
			    return sizethatfits(id).toNSSize
			  #elseif Target64Bit
			    Declare function sizethatfits lib UIKit selector "sizeThatFits" (id as ptr) as NSSize
			    return sizethatfits (id)
			  #endif
			End Get
		#tag EndGetter
		SizeThatFits As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function superview lib UIKit selector "superview" (id as ptr) as ptr
			  return new iOSLibView (superview(id))
			End Get
		#tag EndGetter
		SuperView As iOSLibView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function tag lib UIKit selector "tag" (id as ptr) as integer
			  Return tag (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTag lib UIKit selector "setTag:" (id as ptr, value as integer)
			  setTag id, value
			End Set
		#tag EndSetter
		Tag As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function tintAdjustmentMode lib UIKit selector "tintAdjustmentMode" (id as ptr) as UIViewTintAdjustmentMode
			  return tintAdjustmentMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTintAdjustmentMode lib UIKit selector "setTintAdjustmentMode:" (id as ptr, value as UIViewTintAdjustmentMode)
			  setTintAdjustmentMode id, value
			End Set
		#tag EndSetter
		TintAdjustmentMode As UIViewTintAdjustmentMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function tintColor lib UIKit selector "tintColor" (id as ptr) as ptr
			  return new iOSLibColor (tintColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTintColor lib UIKit selector "setTintColor:" (id as ptr, value as ptr)
			  setTintColor id, value.id
			End Set
		#tag EndSetter
		TintColor As iOSLibColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target32Bit
			    Declare function Transform lib UIKit selector "transform" (id as ptr) as CGAffineTransform32Bit
			    return Transform(id).toCGAffineTransform
			  #elseif Target64Bit
			    Declare function Transform lib UIKit selector "transform" (id as ptr) as CGAffineTransform
			    return Transform(id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target32Bit
			    Declare Sub setTransform lib UIKit selector "setTransform:" (id as ptr, value as CGAffineTransform32Bit)
			    setTransform id, value.toCGAffineTransform32Bit
			  #elseif Target64Bit
			    Declare Sub setTransform lib UIKit selector "setTransform:" (id as ptr, value as CGAffineTransform)
			    setTransform id, value
			  #endif
			  
			End Set
		#tag EndSetter
		Transform As CGAffineTransform
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private TransformToAlpha As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToBounds As NSRect
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToCenter As NSPoint
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToColor As iOSLibColor
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToFrame As NSRect
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToTransform As CGAffineTransform
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function translatesAutoresizingMaskIntoConstraints lib UIKit selector "translatesAutoresizingMaskIntoConstraints" (id as ptr) as Boolean
			  return translatesAutoresizingMaskIntoConstraints (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTranslatesAutoresizingMaskIntoConstraints lib UIKit selector "setTranslatesAutoresizingMaskIntoConstraints:" (id as ptr, value as Boolean)
			  setTranslatesAutoresizingMaskIntoConstraints id, value
			End Set
		#tag EndSetter
		TranslatesAutoresizingMaskIntoConstraints As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function userInteractionEnabled lib UIKit selector "isUserInteractionEnabled" (id as ptr) as Boolean
			  return userInteractionEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setUserInteractionEnabled lib UIKit selector "setUserInteractionEnabled:" (id as ptr, value as Boolean)
			  setUserInteractionEnabled id, value
			End Set
		#tag EndSetter
		UserInteractionEnabled As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = UIVIewAnimationCurve, Type = Integer, Flags = &h0
		EaseInEaseOut
		  EaseIn
		  EaseOut
		Linear
	#tag EndEnum

	#tag Enum, Name = UIVIewAnimationTransition, Type = Integer, Flags = &h0
		None
		  FlipFromLeft
		  FlipFromRight
		  CurlUp
		CurlDown
	#tag EndEnum

	#tag Enum, Name = UIViewContentMode, Type = Integer, Flags = &h0
		ScaleToFill
		  ScaleAspectFit
		  ScaleAspectFill
		  Redraw
		  Center
		  Top
		  Bottom
		  Left
		  Right
		  TopLeft
		  TopRight
		  BottomLeft
		BottomRight
	#tag EndEnum

	#tag Enum, Name = UIViewTintAdjustmentMode, Type = Integer, Flags = &h0
		Automatic
		  Normal
		Dimmed
	#tag EndEnum

	#tag Enum, Name = UIVIewTransition, Type = Integer, Flags = &h0
		None
		  FlipFromLeft
		  FlipFromRight
		  CurlUp
		  CurlDown
		  CrossDissolve
		  FlipFromTop
		FlipFromBottom
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
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
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Group="Behavior"
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
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
