#tag Class
Protected Class AppleView
Inherits AppleResponder
Implements AppleNSEventForwarder
	#tag Method, Flags = &h0
		Sub AddGestureRecognizer(GestureRecognizer as AppleGestureRecognizer)
		  declare sub addGestureRecognizer lib UIKit selector "addGestureRecognizer:" (id as ptr, GestureRecognizer as ptr)
		  addGestureRecognizer id, GestureRecognizer.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddSubview(aView as AppleView)
		  declare sub addSubview lib UIKit selector "addSubview:" (id as ptr, aview as ptr)
		  addSubview id, aView.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateAlpha(alpha as Double, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToAlpha = alpha
		  dim block as new appleblock (AddressOf TransformAlphaBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateBounds(newBounds as NSRect, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToBounds = NewBounds
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateCenter(aCenter as NSPoint, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToCenter = aCenter
		  dim block as new AppleBlock (AddressOf TransformCenterBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.none))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateColor(newColor as AppleColor, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToColor = newColor
		  dim block as new AppleBlock (AddressOf TransformColorBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateFrame(aFrame as NSRect, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToFrame = aFrame
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  animateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateTransform(aTransform as CGAffineTransform, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToTransform = aTransform
		  dim block as new AppleBlock (AddressOf TransformTransformBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
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
		Private Function AnimationOption(Option as AppleViewAnimationOption, curve as UIVIewAnimationCurve, transition as UIVIewAnimationTransition) As UInteger
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
		Sub BringSubviewToFront(aView as AppleView)
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

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame As NSRect)
		  Super.Constructor (DoInitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame As NSRect, observer as AppleNSEventReceiver)
		  Constructor (aFrame)
		  RegisterObserver (observer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointFromView(aPoint as NSPoint, aView as AppleView) As NSPoint
		  #if Target64Bit
		    declare Function convertPointfromView lib UIKit selector "convertPoint:fromView:" (id as ptr, aPoint as NSPoint, aview as ptr) as NSPoint
		    return convertPointfromView (id, apoint, aview.id)
		  #elseif Target32Bit
		    declare Function convertPointfromView lib UIKit selector "convertPoint:fromView:" (id as ptr, aPoint as NSPoint32Bit, aview as ptr) as NSPoint32Bit
		    return convertPointfromView (id, apoint.toNSPoint32, aview.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToView(aPoint as NSPoint, aView as AppleView) As NSPoint
		  #if Target64Bit
		    declare Function convertPointtoView lib UIKit selector "convertPoint:toView:" (id as ptr, aPoint as NSPoint, aview as ptr) as NSPoint
		    return convertPointtoView (id, apoint, aview.id)
		  #elseif Target32Bit
		    declare Function convertPointtoView lib UIKit selector "convertPoint:toView:" (id as ptr, aPoint as NSPoint32Bit, aview as ptr) as NSPoint32Bit
		    return convertPointtoView (id, apoint.toNSPoint32, aview.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertRectFromView(aRect as NSRect, aView as AppleView) As NSRect
		  #if Target64Bit
		    declare Function ConvertRectFromView lib UIKit selector "convertRect:fromView:" (id as ptr, aRect as NSRect, aview as ptr) as nsrect
		    return ConvertRectFromView (id, arect, aview.id)
		  #elseif Target32Bit
		    declare Function ConvertRectFromView lib UIKit selector "convertRect:fromView:" (id as ptr, aRect as NSRect32Bit, aview as ptr) as NSRect32Bit
		    return ConvertRectFromView (id, arect.toNSRect32, aview.id).tonsrect
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertRectToView(aRect as NSRect, aView as AppleView) As NSRect
		  #if Target64Bit
		    declare Function ConvertRectToView lib UIKit selector "convertRect:toView:" (id as ptr, aRect as NSRect, aview as ptr) as nsrect
		    return ConvertRectToView (id, arect, aview.id)
		  #elseif Target32Bit
		    declare Function ConvertRectToView lib UIKit selector "convertRect:toView:" (id as ptr, aRect as NSRect32Bit, aview as ptr) as NSRect32Bit
		    return ConvertRectToView (id, arect.toNSRect32, aview.id).tonsrect
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As AppleView
		  return new AppleView (ObjectiveCRuntime.object_copy (id, 0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership and retaincount = 1 then
		    RemoveObserver
		  end if
		End Sub
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

	#tag Method, Flags = &h1
		Protected Function getAdjustsFontSizeToFitWidth() As Boolean
		  Declare function adjustsFontSizeToFitWidth lib UIKit selector "adjustsFontSizeToFitWidth" (id as ptr) as Boolean
		  return adjustsFontSizeToFitWidth (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getAttributedText() As AppleAttributedString
		  Declare function attributedText lib UIKit selector "attributedText" (id as ptr) as ptr
		  return AppleAttributedString.MakeFromPtr (attributedText(id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getFont() As Applefont
		  Declare function font lib UIKit selector "font" (id as ptr) as Ptr
		  return applefont.MakeFromPtr (font (id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getPlaceHolder() As Text
		  Declare Function placeholder lib UIKit selector "placeholder" (id as ptr) as CFStringRef
		  Return placeholder (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getText() As Text
		  Declare function Caption lib UIKit selector "text" (id as ptr) as CFStringRef
		  return Caption (id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTextAlignment() As NSTextAlignment
		  Declare function textAlignment lib UIKit selector "textAlignment" (id as ptr) as NSTextAlignment
		  return textAlignment (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTextColor() As AppleColor
		  Declare function textcolor lib UIKit selector "textColor" (id as ptr) as ptr
		  return AppleColor.MakeFromPtr (textcolor(id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidAddSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonDidAddSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToSuperview(pid as ptr, sel as ptr)
		  dim ego as new AppleView (pid)
		  ego.informonDidMoveToSuperview
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToWindow(pid as ptr, sel as ptr)
		  dim ego as new AppleView (pid)
		  ego.informonDidMoveToWindow
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DrawRect32(pid as ptr, sel as ptr, rect as NSRect32Bit)
		  dim ego as new AppleView (pid)
		  ego.informonDrawRect (rect.toNSRect)
		  
		  
		  
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DrawRect64(pid as ptr, sel as ptr, rect as NSRect)
		  dim ego as new AppleView (pid)
		  ego.informonDrawRect (rect)
		  
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_LayoutSubviews(pid as ptr, sel as ptr)
		  dim ego as new AppleView (pid)
		  ego.informonlayoutSubviews
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionBeganWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonMotionBeganwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionCancelledWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonMotionCancelledwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionEndedWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonMotionEndedwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesBeganWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonTouchesBeganwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesCancelledWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonTouchesCancelledwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesEndedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonTouchesEndedwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesMovedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonTouchesMovedwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToSuperview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonwillMoveToSuperview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToWindow(pid as ptr, sel as ptr, window as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonwillMoveToWindow (window)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willRemoveSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonwillRemoveSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidAddSubview(view as ptr)
		  RaiseEvent DidAddSubview ( AppleView.makefromptr( view))
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  DidAddSubview
		    myarray.addptr view
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidMoveToSuperView()
		  RaiseEvent DidMoveToSuperview
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  DidMoveToSuperview
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidMoveToWindow()
		  RaiseEvent DidMoveToWindow
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  DidMoveToWindow
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDrawRect(Rect as NSRect)
		  RaiseEvent DrawRect (rect)
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  DrawRect
		    myarray.Addobject new AppleNumber (rect)
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonlayoutSubviews()
		  RaiseEvent layoutSubviews
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  LayoutSubviews
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionBeganwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as ptr)
		  RaiseEvent MotionBeganwithEvent ( type, AppleNSEvent.makefromptr (anevent))
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  MotionBegan
		    myarray.Addobject new AppleNumber (integer(type))
		    myarray.addPtr anevent
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionCancelledwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as ptr)
		  RaiseEvent MotionCancelledwithEvent ( type, AppleNSEvent.makefromptr (anevent))
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  MotionCancelled
		    myarray.Addobject new AppleNumber (integer(type))
		    myarray.addPtr anevent
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionEndedwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as ptr)
		  RaiseEvent MotionEndedwithEvent ( type, AppleNSEvent.makefromptr (anevent))
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  MotionEnded
		    myarray.Addobject new AppleNumber (integer(type))
		    myarray.addPtr anevent
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesBeganwithEvent(Touchset as ptr, anEvent as ptr)
		  RaiseEvent TouchesBeganwithEvent ( AppleSet.makefromptr( touchset), AppleNSEvent.makefromptr (anevent))
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  TouchesBegan
		    myarray.AddPtr touchset
		    myarray.AddPtr anevent
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesCancelledwithEvent(Touchset as ptr, anEvent as ptr)
		  RaiseEvent TouchesCancelledwithEvent ( AppleSet.makefromptr( touchset), AppleNSEvent.makefromptr (anevent))
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  TouchesCancelled
		    myarray.AddPtr touchset
		    myarray.AddPtr anevent
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesEndedwithEvent(Touchset as ptr, anEvent as ptr)
		  RaiseEvent TouchesBeganwithEvent ( AppleSet.makefromptr( touchset), AppleNSEvent.makefromptr (anevent))
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  TouchesEnded
		    myarray.AddPtr touchset
		    myarray.AddPtr anevent
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesMovedwithEvent(Touchset as ptr, anEvent as ptr)
		  RaiseEvent TouchesMovedwithEvent ( AppleSet.makefromptr( touchset), AppleNSEvent.makefromptr (anevent))
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(3)
		    myarray.AddText  TouchesMoved
		    myarray.AddPtr touchset
		    myarray.AddPtr anevent
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveToSuperView(view as ptr)
		  RaiseEvent WillMoveToSuperview ( AppleView.makefromptr( view))
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  WillMoveToSuperview
		    if view <> nil then myarray.AddPtr view
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveToWindow(window as Ptr)
		  RaiseEvent WillMoveToWindow ( window)
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  kWillMoveToWindow
		    if window <> nil then myarray.AddPtr Window
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWillRemoveSubview(view as ptr)
		  RaiseEvent WillRemoveSubview ( AppleView.makefromptr( view))
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  WillRemoveSubview
		    myarray.AddPtr view
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubviewAbove(aView as AppleView, aboveView as AppleView)
		  declare sub insertSubview lib UIKit selector "insertSubview:aboveSubview:" (id as ptr, aview as ptr, aboveView as ptr)
		  insertSubview id, aView.id, aboveView.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubviewAtIndex(aView as AppleView, index as integer)
		  declare sub insertSubview lib UIKit selector "insertSubview:atIndex:" (id as ptr, aview as ptr, index as integer)
		  insertSubview id, aView.id, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubviewBelow(aView as AppleView, BelowView as AppleView)
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
		Function IsDescendantOfView(aView As AppleView) As Boolean
		  Declare Function IsDescendantOfView lib UIKit selector "isDescendantOfView:" (id as ptr, aview as ptr) as Boolean
		  Return IsDescendantOfView (id, aView.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutIfNeeded()
		  performLayoutIfNeeded
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleView
		  return if (aptr <> NIL, new AppleView (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(EventProperties As AppleArray)
		  // Part of the AppleNSEventForwarder interface.
		  if Observers.HasKey (id)  then
		    dim wr as weakref = Observers.Value (id)
		    if wr <> NIL then
		      dim myControl as  AppleViewControl = appleviewcontrol(wr.Value)
		      myControl.ReceivedEvent EventProperties
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NotifyObserversBoolean(EventProperties As AppleArray) As Boolean
		  // Part of the AppleNSEventForwarder interface.
		  if Observers.HasKey (id)  then
		    dim wr as weakref = Observers.Value (id)
		    if wr <> NIL then
		      dim myControl as  AppleViewControl = appleviewcontrol(wr.Value)
		      return myControl.ReceivedReturnEvent (EventProperties)
		    end if
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As AppleNSEventReceiver)
		  // Part of the AppleNSEventForwarder interface.
		  if observers = nil then observers = new Dictionary
		  observers.Value (id) = weakref.create(observer)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFromSuperview()
		  declare sub removeFromSuperview lib UIKit selector "removeFromSuperview" (id as ptr)
		  removeFromSuperview id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveGestureRecognizer(GestureRecognizer as AppleGestureRecognizer)
		  declare sub removeGestureRecognizer lib UIKit selector "removeGestureRecognizer:" (id as ptr, GestureRecognizer as ptr)
		  removeGestureRecognizer id, GestureRecognizer.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver()
		  // Part of the AppleNSEventForwarder interface.
		  if Observers <> nil then
		    if Observers.HasKey(id) then observers.Remove id
		  end if
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
		Sub SendSubviewToBack(aView as AppleView)
		  declare sub sendSubviewToBack lib UIKit selector "sendSubviewToBack:" (id as ptr, aview as ptr)
		  sendSubviewToBack id, aView.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAdjustsFontSizeToFitWidth(value as Boolean)
		  Declare sub setAdjustsFontSizeToFitWidth lib UIKit selector "setAdjustsFontSizeToFitWidth:" (id as ptr, value as Boolean)
		  setAdjustsFontSizeToFitWidth id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAttributedText(value as AppleAttributedString)
		  Declare sub setAttributedText lib UIKit selector "setAttributedText:" (id as ptr, value as Ptr)
		  setAttributedText id, value.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setFont(font as applefont)
		  Declare Sub setFont lib UIKit selector "setFont:" (id as ptr, value as Ptr)
		  setFont id, if (font = nil, nil, font.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNeedsLayout()
		  Declare sub setNeedsLayout lib UIKit selector "setNeedsLayout" (id as ptr)
		  setNeedsLayout (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetPlaceHolder(value as cfstringRef)
		  Declare Sub setPlaceholder lib UIKit selector "setPlaceholder:" (id as ptr, value as CFStringRef)
		  setPlaceholder id, value
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

	#tag Method, Flags = &h1
		Protected Sub setText(value as CFStringRef)
		  Declare sub setCaption lib UIKit selector "setText:" (id as ptr, value as CFStringRef)
		  setCaption id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setTextAlignment(value as NSTextAlignment)
		  Declare sub setTextAlignment lib UIKit selector "setTextAlignment:" (id as ptr, value as NSTextAlignment)
		  setTextAlignment id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setTextColor(value as AppleColor)
		  Declare sub setTextColor lib UIKit selector "setTextColor:" (id as ptr, value as ptr)
		  setTextColor id, value.id
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
		Function Snapshot(afterUpdates as Boolean = false) As AppleView
		  Declare function snapshotViewAfterScreenUpdates lib UIKit selector "snapshotViewAfterScreenUpdates:" (id as ptr, afterupdate as boolean) as ptr
		  return new AppleView (snapshotViewAfterScreenUpdates (id, afterUpdates))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateAlpha(alpha as Double, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToAlpha = alpha
		  dim block as new AppleBlock (AddressOf TransformAlphaBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateBounds(NewBounds As NSRect, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToBounds = newBounds
		  dim block as new AppleBlock (AddressOf TransformBoundsBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateCenter(NewCenter As NSPoint, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToCenter = NewCenter
		  dim block as new AppleBlock (AddressOf TransformCenterBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateColor(NewColor As AppleColor, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToColor = NewColor
		  dim block as new AppleBlock (AddressOf TransformColorBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateFrame(NewFrame As NSRect, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToFrame = NewFrame
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateTransform(NewTransform As CGAffineTransform, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0)
		  TransformToTransform = NewTransform
		  dim block as new AppleBlock (AddressOf TransformTransformBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
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
		Sub TransitionWithAlpha(alpha as Double, Transition as UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToAlpha = alpha
		  dim block as new AppleBlock (AddressOf TransformAlphaBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithBounds(newBounds as NSRect, transition as uiviewanimationtransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToBounds = NewBounds
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle, AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithCenter(aCenter as NSPoint, Transition as UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToCenter = aCenter
		  dim block as new AppleBlock (AddressOf TransformCenterBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithColor(newColor as AppleColor, Transition As UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToColor = newColor
		  dim block as new AppleBlock (AddressOf TransformColorBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
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
		Sub TransitionWithFrame(aFrame as NSRect, Transition as uiviewanimationtransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToFrame = aFrame
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithTransform(aTransform as CGAffineTransform, Transition as uiviewanimationtransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut)
		  TransformToTransform = aTransform
		  dim block as new AppleBlock (AddressOf TransformTransformBlock)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Translate(DeltaX as Double, DeltaY as Double)
		  Transform = CGAffineTransformTranslate (Transform, DeltaX, deltaY)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewWithTag(Tag as Integer) As AppleView
		  Declare function viewWithTag lib UIKit selector "viewWithTag:" (id as ptr, tag as integer) as ptr
		  return new AppleView (ViewWithTag (id, tag))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120626C6F636B20616E696D6174696F6E20636F6D706C657465732077697468206120626F6F6C65616E2076616C756520666F722074686520616E696D6174696F6E277320636F6D706C6574696F6E
		Event AnimationFinished(animationCompleted as boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidAddSubview(view as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToSuperview()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToWindow()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DrawRect(Rect as NSRect)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LayoutSubviews()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MotionBeganwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MotionCancelledwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MotionEndedwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesBeganwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesCancelledwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesEndedwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesMovedwithEvent(Touchset as AppleSet, anEvent as AppleNSEvent)
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
			  return new AppleAutoresizingMask (autoResizingMask(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAutoresizingMask lib UIKit selector "setAutoresizingMask:" (id as ptr, value as UInteger)
			  setAutoresizingMask id, value.ID
			End Set
		#tag EndSetter
		AutoresizingMask As AppleAutoresizingMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function backgroundcolor lib UIKit selector "backgroundColor" (id as ptr) as ptr
			  return new AppleColor (backgroundcolor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setbackgroundcolor lib UIKit selector "setBackgroundColor:" (id as ptr, value as ptr)
			  setbackgroundcolor id, value.id
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return UIKitFramework.getbounds (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setBounds id, value
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
			    
			    
			    #if Target64Bit
			      methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			    #elseif Target32Bit
			      methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			    #endif
			    
			    targetID = BuildTargetClass ("UIView", "iOSLibUIView",methods)
			  end if
			  Return targetID
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
			  #if Target64Bit
			    declare function contentScaleFactor lib UIKit selector "contentScaleFactor" (id as ptr) as double
			  #elseif Target32Bit
			    declare function contentScaleFactor lib UIKit selector "contentScaleFactor" (id as ptr) as Single
			  #endif
			  return ContentScaleFactor (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setContentScaleFactor lib UIKit selector "setContentScaleFactor:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setContentScaleFactor lib UIKit selector "setContentScaleFactor:" (id as ptr, value as single)
			  #endif
			  setContentScaleFactor (id, value)
			  
			End Set
		#tag EndSetter
		ContentScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function areAnimationsEnabled lib UIKit selector "areAnimationsEnabled" (id as ptr) as Boolean
			  Return areAnimationsEnabled (classptr)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAnimationsEnabled lib UIKit selector "setAnimationsEnabled:" (id as ptr, value as Boolean)
			  setAnimationsEnabled (classptr, value)
			End Set
		#tag EndSetter
		Shared EnableAnimations As Boolean
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
			  return UIKitFramework.getFrame (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setFrame id, value
			End Set
		#tag EndSetter
		Frame As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function gestureRecognizers lib UIKit selector "gestureRecognizers" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (gestureRecognizers(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setGestureRecognizers lib UIKit selector "setGestureRecognizers:" (id as ptr, value as ptr)
			  setGestureRecognizers id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		GestureRecognizers As AppleArray
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
			  return me.Frame.size_.height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.frame = NSRect (me.left, me.top, me.Width, value)
			End Set
		#tag EndSetter
		Height As Double
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
			  Declare Function layer lib UIKit selector "layer" (id as ptr) as Ptr
			  Return new AppleCALayer (layer (id))
			End Get
		#tag EndGetter
		Layer As AppleCALayer
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
			  #if Target64Bit
			    Declare function layoutMargins lib UIKit selector "layoutMargins" (id as ptr) as UIEdgeInsets
			    return layoutMargins (id)
			  #elseif Target32Bit
			    Declare function layoutMargins lib UIKit selector "layoutMargins" (id as ptr) as UIEdgeInsets32Bit
			    return layoutMargins(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setLayoutMargins lib UIKit selector "setLayoutMargins:" (id as ptr, value as UIEdgeInsets)
			    setLayoutMargins (id, value)
			  #elseif Target32Bit
			    Declare Sub setLayoutMargins lib UIKit selector "setLayoutMargins:" (id as ptr, value as UIEdgeInsets32Bit)
			    setLayoutMargins (id, value.toUIEdgeInset32)
			  #endif
			End Set
		#tag EndSetter
		LayoutMargins As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.Frame.Origin.x
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.frame = NSRect (value, me.top, me.Width, me.Height)
			End Set
		#tag EndSetter
		Left As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  const SEL as text = "maskView"
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, NSSelectorFromString (SEL)) then
			    Declare function maskView lib UIKit selector "maskView" (id as ptr) as ptr
			    dim myPtr as Ptr = maskview(id)
			    return if (myptr <> NIL,  new AppleView (maskView(id)), NIL)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  const SEL as text = "setMaskView:"
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, NSSelectorFromString (SEL)) then
			    Declare sub setMaskView lib UIKit selector "setMaskView:" (id as ptr, value as ptr)
			    setMaskView id, value.id
			  end if
			End Set
		#tag EndSetter
		Mask As AppleView
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

	#tag Property, Flags = &h1
		Protected Shared Observers As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getOpaque
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setOpaque (value)
			End Set
		#tag EndSetter
		Opaque As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function preservesSuperviewLayoutMargins lib UIKit selector "preservesSuperviewLayoutMargins" (id as ptr) as Boolean
			  return preservesSuperviewLayoutMargins (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setPreservesSuperviewLayoutMargins lib UIKit selector "setPreservesSuperviewLayoutMargins:" (id as ptr, value as Boolean)
			  setPreservesSuperviewLayoutMargins id, value
			End Set
		#tag EndSetter
		PreservesSuperviewLayoutMargins As Boolean
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
			    Declare function sizethatfits lib UIKit selector "sizeThatFits:" (id as ptr, asize as NSSize32Bit) as NSSize32Bit
			    return sizethatfits(id,Frame.Size_.toNSSize32).toNSSize
			  #elseif Target64Bit
			    Declare function sizethatfits lib UIKit selector "sizeThatFits" (id as ptr, asize as nssize) as NSSize
			    return sizethatfits (id, frame.size_)
			  #endif
			End Get
		#tag EndGetter
		SizeThatFits As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function subviews lib UIKit selector "subviews" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (subviews(id))
			End Get
		#tag EndGetter
		SubViews As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function superview lib UIKit selector "superview" (id as ptr) as ptr
			  dim myptr as ptr = superview (id)
			  return if (myptr <> NIL, new AppleView (superview(id)), NIL)
			End Get
		#tag EndGetter
		SuperView As AppleView
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
			  dim myptr as ptr = tintColor (id)
			  return if (myptr <> NIL, new AppleColor (tintColor(id)), NIL)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTintColor lib UIKit selector "setTintColor:" (id as ptr, value as ptr)
			  setTintColor id, value.id
			End Set
		#tag EndSetter
		TintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.Frame.Origin.y
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.frame = NSRect (me.left, value, me.Width, me.Height)
			End Set
		#tag EndSetter
		Top As Double
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
		Private TransformToColor As AppleColor
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
			  return getUserInteractionEnabled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setuserinteractionenabled value
			End Set
		#tag EndSetter
		UserInteractionEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.Frame.size_.width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.frame = NSRect (me.left, me.top, value, me.Height)
			End Set
		#tag EndSetter
		Width As Double
	#tag EndComputedProperty


	#tag Constant, Name = DidAddSubview, Type = Text, Dynamic = False, Default = \"DidAddSubview", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DidMoveToSuperview, Type = Text, Dynamic = False, Default = \"DidMoveToSuperview", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DidMoveToWindow, Type = Text, Dynamic = False, Default = \"DidMoveToWindow", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DrawRect, Type = Text, Dynamic = False, Default = \"DrawRect", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWillMoveToWindow, Type = Text, Dynamic = False, Default = \"WillMoveToWindow", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LayoutSubviews, Type = Text, Dynamic = False, Default = \"LayoutSubviews", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MotionBegan, Type = Text, Dynamic = False, Default = \"MotionBegan", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MotionCancelled, Type = Text, Dynamic = False, Default = \"MotionCancelled", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MotionEnded, Type = Text, Dynamic = False, Default = \"MotionEnded", Scope = Public
	#tag EndConstant

	#tag Constant, Name = TouchesBegan, Type = Text, Dynamic = False, Default = \"TouchesBegan", Scope = Public
	#tag EndConstant

	#tag Constant, Name = TouchesCancelled, Type = Text, Dynamic = False, Default = \"TouchesCancelled", Scope = Public
	#tag EndConstant

	#tag Constant, Name = TouchesEnded, Type = Text, Dynamic = False, Default = \"TouchesEnded", Scope = Public
	#tag EndConstant

	#tag Constant, Name = TouchesMoved, Type = Text, Dynamic = False, Default = \"TouchesMoved", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WillMoveToSuperview, Type = Text, Dynamic = False, Default = \"WillMoveToSuperview", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WillRemoveSubview, Type = Text, Dynamic = False, Default = \"WillRemoveSubview", Scope = Public
	#tag EndConstant


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
			Name="Description"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
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
			Name="PreservesSuperviewLayoutMargins"
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
	#tag EndViewBehavior
End Class
#tag EndClass
