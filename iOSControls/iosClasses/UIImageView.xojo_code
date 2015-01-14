#tag Class
Protected Class UIImageView
Inherits iOSImageView
	#tag Method, Flags = &h0
		Sub Animate(NewColor as Color, seconds as double,  options as uinteger = 0, delay as double = 0, withTransitions as Boolean = False)
		  TransformToBackgroundColor = NewColor
		  dim block as new iOSBlock (AddressOf TransformColorBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if withTransitions then
		    transitionWithDuration seconds, options, block.handle, completion.Handle
		  else
		    animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay, options)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Animate(alpha as Double, Seconds as Double = 0.2, options as uinteger = 0, delay as double = 0, withTransition as Boolean = false)
		  TransformToAlpha = alpha
		  dim block as new iOSBlock (AddressOf TransformAlphaBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if withTransition then
		    transitionWithDuration (seconds, options, block.handle, completion.Handle )
		  else
		    animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay, options)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Animate(Xfactor as Double, YFactor as Double, Seconds as Double = 0.2, options as uinteger = 0, delay as double = 0, fromoriginal as Boolean = false, withTransition as Boolean = false)
		  Xfactor = Xfactor / 100
		  if YFactor = 0 then 
		    YFactor = Xfactor
		  else
		    YFactor = YFactor / 100
		  end if
		  
		  transformtotransformation  = if (fromOriginal,  iOSControlExtension.CGAffineTransformMakeScale (Xfactor, YFactor), _
		  iOSControlExtension.CGAffineTransformScale (Transform, Xfactor, YFactor))
		  
		  dim block as new iOSBlock (AddressOf TransformTransformationBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if withTransition then
		    transitionWithDuration (seconds, options, block.handle, completion.Handle )
		  else
		    animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay, options)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Animate(Degrees as single, Seconds as Double = 0.2, options as uinteger = 0, delay as double = 0, fromoriginal as boolean = true, withTransition as Boolean = False)
		  dim radians as single = Degrees.DegreesToRadians
		  transformtotransformation  = if (fromOriginal,  iOSControlExtension.CGAffineTransformMakeRotation (radians), _
		   iOSControlExtension.CGAffineTransformRotate (Transform, radians))
		  dim block as new iOSBlock (AddressOf TransformTransformationBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if withTransition then
		    transitionWithDuration seconds, options, block.handle, completion.handle
		  else
		    animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay, options)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Animate(NewCenter as Xojo.core.Point, seconds as double = 0.2 , options as uinteger = 0, delay as double = 0, withTransition as Boolean = False)
		  TransformToCenter = NewCenter
		  dim block as new iOSBlock (AddressOf TransformCenterBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if withTransition then
		    transitionWithDuration (seconds, options, block.Handle, completion.handle)
		  else
		    animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay,options)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Animate(NewFrame as Xojo.core.Rect, seconds as double, isBounds as Boolean = false, options as uinteger = 0, delay as double = 0, withTransition as Boolean = False)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if isBounds then
		    TransformToBounds = NewFrame
		    dim block as new iOSBlock (AddressOf TransformBoundsBlock)
		    if withTransition then
		      transitionWithDuration (seconds, options, block.Handle,completion.handle)
		    else
		      animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay, options)
		    end if
		  else
		    TransformToFrame = NewFrame
		    dim block as new iOSBlock (AddressOf TransformFrameBlock)
		    if withTransition then
		      transitionWithDuration (seconds, options, block.Handle,completion.handle)
		    else
		      animateWithDuration (classptr, seconds, block.handle, completion.Handle,delay,options)
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateAll(angle as Single, EndAlpha As Double, Endframe as xojo.core.rect, Endbounds as xojo.core.rect, endCenter as Xojo.Core.Point, endcolor as color, seconds as Double = 0.2, delay as double = 0, options as uinteger = 0, fromOriginal as Boolean = false, withTransistion as Boolean = False)
		  TransformToAlpha = EndAlpha
		  TransFormToFrame = if (Endframe= NIL, Frame, Endframe)
		  TransFormToBounds = if (Endbounds = NIL, bounds, Endbounds)
		  TransformToCenter = if (endCenter = NIL, center, endCenter)
		  
		  TransFormToBackgroundColor = endcolor
		  transformtotransformation = if (fromOriginal,  iOSControlExtension.CGAffineTransformMakeRotation (angle), _
		   iOSControlExtension.CGAffineTransformRotate (Transform, angle))
		  dim block as new iOSBlock (AddressOf TransformBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if withTransistion then
		    transitionWithDuration seconds, options, block.handle, completion.handle
		  else
		    animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay, options)
		  end if
		  
		  
		  // setAnimationDuration Seconds
		  // setAnimationCurve curve
		  // setAnimationRepeatCount repeat
		  // setAnimationBeginsFromCurrentState continueFromCurrentState
		  // SetTransform handle, transformation
		  // commitAnimations
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateInvertTransformation(Seconds as Double = 0.2, options as uinteger = 0, delay as double = 0, withTransition as Boolean = False, SpringAnimate as Boolean = False, dampingRatio as Double = 1, Velocity as Double = 1)
		  TransformtoTransformation  =  iOSControlExtension.CGAffineTransformInvert (Transform)
		  dim block as new iOSBlock (AddressOf TransformTransformationBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if withTransition then
		    transitionWithDuration seconds, options, block.handle, completion.handle
		  else
		    if withTransition then
		      animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		    else
		      animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay, options)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateResetTransformation(Seconds as Double = 0.2, options as uinteger = 0, delay as double = 0, withTransition as Boolean = False, SpringAnimate as Boolean = False, dampingRatio as Double = 1, Velocity as Double = 1)
		  transformtotransformation  =  iOSControlExtension.CGAffineTransformIdentity
		  dim block as new iOSBlock (AddressOf TransformTransformationBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  if withTransition then
		    transitionWithDuration seconds, options, block.handle, completion.handle
		  else
		    if withTransition then
		      animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		    else
		      animateWithDuration (classptr, seconds, block.handle, completion.Handle, delay, options)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSpring(NewColor as Color, seconds as double, DampingRatio as double = 1, velocity as double = 1, options as uinteger = 0,  delay as Double = 0)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  
		  
		  TransformToBackgroundColor  = NewColor
		  dim block as new iOSBlock (AddressOf TransformColorBlock)
		  animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSpring(Alpha as Double, seconds as double, DampingRatio as double = 1, velocity as double = 1, options as uinteger = 0,  delay as Double = 0)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  TransformToAlpha = alpha
		  dim block as new iOSBlock (AddressOf TransformAlphaBlock)
		  animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSpring(Xfactor as Double, Yfactor as Double, seconds as double, DampingRatio as double = 1, velocity as double = 1, options as uinteger = 0,  delay as Double = 0, fromoriginal as boolean = true)
		  Xfactor = Xfactor / 100
		  if YFactor = 0 then
		    YFactor = Xfactor
		  else
		    YFactor = YFactor / 100
		  end if
		  
		  transformtotransformation  = if (fromOriginal,  iOSControlExtension.CGAffineTransformMakeScale (Xfactor, YFactor), _
		  iOSControlExtension.CGAffineTransformScale (transform, Xfactor, YFactor))
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  dim block as new iOSBlock (AddressOf TransformTransformationBlock)
		  animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSpring(Degrees as single, seconds as double, DampingRatio as double = 1, velocity as double = 1, options as uinteger = 0,  delay as Double = 0, fromoriginal as boolean = true)
		  Dim radians as single = Degrees.DegreesToRadians
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  transformtotransformation  = if (fromOriginal,  iOSControlExtension.CGAffineTransformMakeRotation (radians), _
		  iOSControlExtension.CGAffineTransformRotate (Transform, radians))
		  dim block as new iOSBlock (AddressOf TransformTransformationBlock)
		  animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSpring(NewCenter as Xojo.core.Point, seconds as double, DampingRatio as double = 1, velocity as double = 1, options as uinteger = 0,  delay as Double = 0)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  TransformToCenter = NewCenter
		  dim block as new iOSBlock (AddressOf TransformCenterBlock)
		  animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSpring(NewFrame as Xojo.core.Rect, seconds as double, DampingRatio as double = 1, velocity as double = 1, options as uinteger = 0, delay as Double = 0, isbounds as boolean = false)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  
		  
		  if isBounds then
		    TransformToBounds = NewFrame
		    dim block as new iOSBlock (AddressOf TransformBoundsBlock)
		    animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		  else
		    TransformToFrame = NewFrame
		    dim block as new iOSBlock (AddressOf TransformFrameBlock)
		    animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSpringAll(angle as Single, EndAlpha As Double, Endframe as xojo.core.rect, Endbounds as xojo.core.rect = NIL, endCenter as Xojo.Core.Point = NIL, endcolor as color, seconds as Double = 0.2,  DampingRatio as double = 1, velocity as double = 1, delay as double = 0, options as uinteger = 0, fromOriginal as Boolean = true)
		  TransformToAlpha = EndAlpha
		  TransFormToFrame = if (Endframe= NIL, Frame, Endframe)
		  TransFormToBounds = if (Endbounds = NIL, bounds, Endbounds)
		  TransformToCenter = if (endCenter = NIL, center, endCenter)
		  
		  TransFormToBackgroundColor = endcolor
		  TransformToTransformation = if (fromOriginal,  iOSControlExtension.CGAffineTransformMakeRotation (angle), _
		   iOSControlExtension.CGAffineTransformRotate (Transform, angle))
		  dim block as new iOSBlock (AddressOf TransformBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  animateWithSpring (classptr, seconds, DampingRatio, velocity, block.handle, completion.Handle, delay, options)
		  
		  
		  // setAnimationDuration Seconds
		  // setAnimationCurve curve
		  // setAnimationRepeatCount repeat
		  // setAnimationBeginsFromCurrentState continueFromCurrentState
		  // SetTransform handle, transformation
		  // commitAnimations
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub animateWithDuration(id as Ptr, duration as Double, animations as ptr, completion as ptr, delay as double = 0, options as uinteger = 0)
		  Declare sub animateWithDuration_ lib UIKit selector "animateWithDuration:delay:options:animations:completion:" _
		  (id as ptr, duration as Double, delay as double, options as uinteger, animations as ptr, completion as ptr)
		  animateWithDuration_ id, duration, delay, options, Animations, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub animateWithSpring(id as Ptr, duration as Double, DRatio as Double, velocity as double, animations as ptr, completion as ptr, delay as double = 0, options as uinteger = 0)
		  #if Target32Bit then
		    Declare sub animateWithDuration_ lib UIKit selector "animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" _
		    (id as ptr, duration as Double, delay as double, DRatio as single, Velocity as single, options as uinteger, animations as ptr, completion as ptr)
		    // dim dsingle as single = DRatio
		    // animateWithDuration_ id, duration, delay, dsingle, velocity, options, Animations, completion
		    
		  #else
		    Declare sub animateWithDuration_ lib UIKit selector "animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" _
		    (id as ptr, duration as Double, delay as double, DRatio as Double, Velocity as Double, options as uinteger, animations as ptr, completion as ptr)
		  #endif
		  animateWithDuration_ id, duration, delay, DRatio, velocity, options, Animations, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AnimationOptions(LayoutSubviews as boolean, AllowUserInteraction as Boolean, BeginFromCurrentState as Boolean, Repeat as Boolean, Autoreverse as Boolean, OverrideDuration as Boolean, OverrideCurve as Boolean, AllowAnimations as Boolean, ShowHideTransistionViews as Boolean, OverrideOptions as Boolean, Animationcurve as ioscontrolextension.AnimationCurve = ioscontrolextension.animationcurve.easeineaseout) As UInteger
		  dim result as uinteger = if (LayoutSubviews, 1, 0)
		  result = result + if (AllowUserInteraction, 2, 0)
		  result = result + if (BeginFromCurrentState, 4, 0)
		  result = result + if (Repeat, 8, 0)
		  result = result + if (Autoreverse, 16, 0)
		  result = result + if (OverrideDuration, 32, 0)
		  result = result + if (OverrideCurve, 64, 0)
		  result = result + if (AllowAnimations, 128, 0)
		  result = result + if (ShowHideTransistionViews, 256, 0)
		  result = result + if (OverrideOptions, 512, 0)
		  
		  dim mycurve as uinteger = integer (Animationcurve)
		  result = result + mycurve.ShiftLeft (16)
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CompletionBlock(animationCompleted as Boolean)
		  if self <> NIL then RaiseEvent AnimationFinished (animationCompleted)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor(id as Ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSImageView
		  // Constructor() -- From iOSControl
		  // Constructor(deserializer As xojo.Core._Deserializer) -- From iOSControl
		  mid = id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MakeUIImageView(id as ptr, anImage as IOSImage) As Ptr
		  return MakeUIImageView (id, anImage.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MakeUIImageView(id as ptr, anImage as Ptr) As Ptr
		  Declare Function initWithImage lib UIKit selector "initWithImage:" (id as ptr, anImage as Ptr) as ptr
		  return initWithImage (id, anImage)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub performSystemAnimation(id as Ptr, onviews as ptr, animations as ptr,  options as uinteger = 0, completion as ptr)
		  Declare sub performSystemAnimation lib UIKit selector "performSystemAnimation:onViews:options:animations:completion:" _
		  (id as ptr, onviews as ptr, options as uinteger, animations as ptr, completion as ptr)
		  performSystemAnimation id, onviews,  options, Animations, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub touchesBegan(myEvent as ptr)
		  declare sub touchesBegan lib UIKit selector "touchesBegan:withEvent:" (id as ptr, myEvent as ptr)
		  touchesBegan (id, myEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformAlphaBlock()
		  alpha = TransformToAlpha
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformBlock()
		  Alpha = TransformToAlpha
		  Frame = TransFormToFrame
		  bounds = TransFormToBounds
		  center = TransformToCenter
		  Transform = TransformtoTransformation
		  BackgroundColor= TransFormToBackgroundColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformBoundsBlock()
		  bounds = TransformToBounds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformCenterBlock()
		  center = TransformToCenter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformColorBlock()
		  BackgroundColor = TransformToBackgroundColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformFrameBlock()
		  Frame = TransformToFrame
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TransformTransformationBlock()
		  Transform = TransformtoTransformation
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Transition(NewColor as Color, seconds as double, options as uinteger)
		  TransformToBackgroundColor = NewColor
		  dim block as new iOSBlock (AddressOf TransformColorBlock)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  // transitionWithDuration (id, seconds, options, block.handle, completion.Handle)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Transition(NewView as uiimageView, seconds as double, options as uinteger)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  transitionFromView (id, NewView.Id, seconds, options, completion.Handle)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub transitionFromView(fromview as Ptr, toView as Ptr, duration as Double, options as  uinteger,  completion as ptr)
		  dim uiviewptr as ptr = NSClassFromString ("UIView")
		  Declare sub transitionFromView lib UIKit selector "transitionFromView:toView:duration:options:completion:" _
		  (id as ptr, fromview as ptr, toview as ptr, duration as Double, options as uinteger, completion as ptr)
		  transitionFromView uiviewptr, fromview, toview, duration, options,  completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub transitionWithDuration(duration as Double, options as  uinteger, animations as ptr, completion as ptr)
		  Declare sub transitionWithView lib UIKit selector "transitionWithView:duration:options:animations:completion:" _
		  (id as ptr, view as ptr, duration as Double, options as uinteger, animations as ptr, completion as ptr)
		  transitionWithView ClassPtr, id, duration, options,  animations, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UIView(aFrame as CGRect) As Ptr
		  return iOSControlExtension.initWithFrame (id, aFrame)
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AnimationFinished(animationCompleted as boolean)
	#tag EndHook


	#tag Note, Name = Read Me
		This is UIImageView, an subclass for Xojo iOSImageViews extending their features by a lot of native iOS methods and properties.
		
		I refrained from setting up separate classes because it would take years to extend each one with the base functions – and it would result in in enormus library.
		Most of the basic properties and methods of the underlying UIView and NSObject methods have therefore been transferred to modules, making the majority of features available to every Xojo iOS control that is based on an iOSControlobject.
		
		UIImageView in itself carries only a handful of methods and properties. Most of its features are inherited from UIView and NSObject.
		Sadly inheritance of methods is not possible without replacing the super classes completely which I want to avoid. 
		The UIImageView Class in itself is rather an implementation of UIView. You can use it as a subclass for further iOS subclasses that build upon it.
		The few UIImageView features that add up to a complete class have been transferred to a Class extension for iOSImageViews which is the Xojo implementation of it.
		
		
		For basic (supoerclasses') properties and methods please have a look into the iOSControls Extension included here. UIImageView makes use of them.
		
		This is part of the iOSControls library for easy-to-use Xojo iOS,extensions, hopefully to find soon on xojoblog.me.
		
		
		
		Disclaimer
		This software is delivered AS IS. You are free to use it in your project, modify it according to your needs and you are very welcome to share your contributions too.
		I can not guarantee for data loss, computer problems and all that stuff that may arise from using the classes and methods, but I do guarantee that I use them myself
		in my projects and have not experienced such. Therefore the usual legal warning: Use at your own risk!
		
		
		Copyright
		Written 2014 by Ulrich Bogun, xojoblog.me. This is a private project not connected to my job as german Xojo evangelist.
		This all is only possible because of the tremendous help of some extraordinary gurus sharing their wisdom on forum.xojo.com and, of course, the guys behind MacOSLib.
		Therefore a copyright would be very stange and wrong. Again: iOSControls are free to use and modify.
		
		However, you surely can imagine this took me (and will probably take) a lot of time, and I want to continue refining the classes and adding more to them.
		If you use the classes and find them useful, feel absolutely free to send me a "keep it up"-contribution via PayPal to bogun@satzservice.de.
		The amount is completely up to you and every sum will be appreciated regardless of its height.
		If you cannot afford a few bucks or don't want to: Hey, that's still ok!
		Maybe you like to send me a line abot their use or add a "Uses iOSControls …" line to your splashscreen.
		And if not you’re still not a bad guy. Enjoy, share, contribute.
		
		
		--------------------------------------------------------------------------------------------------------------------------------------------------------------
		
		
		* USE *
		
		Drop the included modules and classes somewhere into your project folder. That's all.
		In order to make full use of the UIImageview features, set the superclass of an iOSImageViewto UIImageview.
		
		For every Xojo iOS control that inherits from NSObjects (that's almost all), you can address the following features (all are addressed as methods but I list them separated by their real function)
		
		
		
		Most Properties are added via IOSImageView Extension. Look there.
		For animations, you will have to use this subclass as I found no way to attach the blocks and helper properties to the original class via a module.
		
		
		
		*Methods *
		
		– Animate (alpha as Double, optional Seconds as Double = 0.2, optional options as uinteger = 0, optional delay as double = 0, optional withTransition as Boolean = false):
		   Animates the view's Alpha value for a duration of Seconds, with options set from AnimationOptions OR TransitionOption, delay in Seconds, withTransition as Boolean.
		   If called with only an alpha value, the view's alpha is changed in 0.2 seconds to the new value.
		   If you pass a UInteger created like:
		       Dim Options As UInteger = (AnimationOptions (several Boolean coices) Or TransitionOption (TransitionMode)
		   you can influence repetition, autoreverse and several other features.
		   The transitionOption will only come to life if you pass withTransition = True.
		   Please note that for a transition delay (usually starting the animation delay seconds later) is disregarded.
		   If repeat in the animationOptions is false, meaning the animation is played one-time only, the AnimationFinished event fires at the appropriate time.
		   Please note that there is no animation information delivered in this event, so in case you stack several animations (you can do so!) you cannot tell which animation finished if you don't keep track of the timing.
		   ** Important **
		   The upper is true for all aimation methods which are only described in short in the following:
		
		– Animate (NewCenter as Xojo.core.Point, opt. seconds as double = 0.2 , opt. options as uinteger = 0, opt. delay as double = 0, opt. withTransition as Boolean = False)
		   Animates the Center of the view. See above.
		
		– Animate (NewColor as Color, opt. seconds as double = 0.2 , opt. options as uinteger = 0, opt. delay as double = 0, opt. withTransition as Boolean = False)
		   Animates the BackgroundColor of the view. See above.
		
		– Animate (NewFrame as Xojo.Core.Rect, opt. seconds as double = 0.2 , opt. isBounds as Boolean = False, opt. options as uinteger = 0, opt. delay as double = 0, opt. withTransition as Boolean = False)
		   Animates either the frame or the bounds of the view depending on the value of the optional Boolean isBounds.
		   For the rest see above.
		
		– Animate (Degrees as single, opt. seconds as double = 0.2 , opt. options as uinteger = 0, opt. delay as double = 0, opt fromOriginal as Boolean = true, opt. withTransition as Boolean = False)
		   Animates the angle of the view. Please note while the original method call takes radians, I changed this to degrees being the more common measurement.
		   But you will find DegreesToRadians and RadiansToDegrees extension methods for Single and Double included in this project.
		   While the other animitable properties have their own values, the rotation method, like scale and a few other ones, is realized by manipulating the view's Transform property (CGAffineTransform).
		   You can therefore pass via FromOriginal value if the transformation should be done from the original or the already transformed object.
		   ** Please note Apple warns that in the latter case the value of the frame property is undefined!! **
		
		– Animate (Xfactor as Double, opt. YFactor as Double = 0, Seconds as Double = 0.2, options as uinteger = 0, delay as double = 0, fromoriginal as Boolean = false, withTransition as Boolean = false)
		   Animates the scaling factor. Xfactor and Yfactor are to be entered as percentage. 
		   If no Yfactor is passed (or 0), Xfactor is taken for its value so the resizing will be proportionally.
		   For the rest see above.
		
		– AnimateSpring (Alpha as Double, seconds as double, opt.DampingRatio as double = 1, opt. velocity as double = 1, opt. options as uinteger = 0,  opt. delay as Double = 0):
		   The animateSpring method is almost like the animate method, but in this case an elastic animation is used.
		   If you pass something like 10 seconds, a DampingRatio of 0.4 and a initial velocity of 3 for example, you will see the animated value jumping over the set amount and bouncing back and forth a few times around this until the value settles.
		   The higher the Damping Ratio, the shorter the periods and amplitudes. And vice versa with inital velocity.
		
		– AnimateSpring (Alpha as Double, seconds as double, opt.DampingRatio as double = 1, opt. velocity as double = 1, opt. options as uinteger = 0,  opt. delay as Double = 0):
		   Animates the alpha value. See above.
		
		– AnimateSpring (Degrees as single, seconds as double, DampingRatio as double = 1, velocity as double = 1, options as uinteger = 0,  delay as Double = 0, fromoriginal as boolean = true)
		   Animates the view's rotation with a spring animation. See above.
		
		– AnimateSpring (NewCenter as Xojo.core.Point, seconds as double, opt. DampingRatio as double = 1, opt. velocity as double = 1, opt. options as uinteger = 0,  opt. delay as Double = 0, opt. fromoriginal as boolean = true):
		   Animates the view's center with a spring animation. See above.
		
		– AnimateSpring (NewColor as Color, seconds as double, opt .DampingRatio as double = 1, opt. velocity as double = 1, opt. options as uinteger = 0,  opt. delay as Double = 0):
		   Animates the view's backgroundColor with a spring animation. See above.
		
		– AnimateSpring (NewFrame as Xojo.Core.Rect, seconds as double, opt. DampingRatio as double = 1, opt. velocity as double = 1, opt. options as uinteger = 0,  opt. delay as Double = 0, isbounds as boolean = false):
		   Animates the view's frame or bounds with a spring animation. See above.
		
		– AnimateSpring (Xfactor as Double, Yfactor as Double, seconds as double, DampingRatio as double = 1, velocity as double = 1, options as uinteger = 0,  delay as Double = 0, fromoriginal as boolean = true):
		   Animates the view's scale with a spring animation. Takes the Xfactor value (percentage) for Yfactor too if yfactor is 0. For the rest see above.
		
		– AnimateInvertTranslation (Seconds as Double = 0.2, options as uinteger = 0, delay as double = 0, withTransition as Boolean = False, SpringAnimate as Boolean = False, dampingRatio as Double = 1, Velocity as Double = 1)
		  Inverts the transformation. withTransition and SpringAnimate are exclusive: You can either chose one or the other.
		  For the rest, see above.
		
		– AnimateResetTransformation (Seconds as Double = 0.2, options as uinteger = 0, delay as double = 0, withTransition as Boolean = False, SpringAnimate as Boolean = False, dampingRatio as Double = 1, Velocity as Double = 1):
		   Transforms the transformation back to identity. withTransition and SpringAnimate are exclusive: You can either chose one or the other.
		   For the rest, see above.
		
		– AnimationOptions (LayoutSubviews as boolean = false, AllowUserInteraction as Boolean = False, BeginFromCurrentState as Boolean, Repeat as Boolean, Autoreverse as Boolean, OverrideDuration as Boolean, OverrideCurve as Boolean, AllowAnimations as Boolean, ShowHideTransistionViews as Boolean, OverrideOptions as Boolean, Animationcurve as AnimationCurve = animationcurve.easeineaseout) as UInteger:
		   This is a "convenience" method for calculating the options value for the animation methods.
		
		– TransitionOption (aChoice as TransitionMode) as UInteger: Convenience method for getting the transition option for the options value in animation methods.
		   You should or the results of AnimationOptions and TransitionOption and pass them together as options.
		
		
		** Events **
		   AnimationFinished (AnimationCompleted as Boolean):
		   Fires when a block animation has finished. The Boolean tells you if it had completed or was interrupted, probably by another animation or property getting set or by leaving the iOSView the control is attached to
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = NSClassFromString("UIImageView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return if ( mId = Nil, Handle, mid)
			End Get
		#tag EndGetter
		Id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToAlpha As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToBackgroundColor As Color = &c000000ff
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToBounds As xojo.Core.Rect
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToCenter As Xojo.Core.Point
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TransformToFrame As xojo.Core.Rect
	#tag EndProperty


	#tag Enum, Name = TintAdjustmentMode, Type = Integer, Flags = &h0
		Automatic
		  Normal
		Dimmed
	#tag EndEnum


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
			Name="ContentMode"
			Visible=true
			Group="Behavior"
			Type="ContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
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
			Name="Left"
			Visible=true
			Group="Position"
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
			Type="Integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
