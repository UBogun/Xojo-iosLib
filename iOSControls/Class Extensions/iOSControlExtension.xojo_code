#tag Module
Protected Module iOSControlExtension
	#tag Method, Flags = &h0
		Sub AddGestureRecognizer()
		  // extends c as ioscontrol, Recognizer as UIGestureRecognizer.GestureRecognizerTypes
		  
		  // dim myRecognizer as Ptr = NSSelectorFromString(UIGestureRecognizer.RecognizerType (Recognizer))
		  // if not c.GestureRecognizers.hasValue  (myRecognizer) then // there is no such recognizer yet, so add one!
		  // dim newRecognizer as UIGestureRecognizer
		  // select case Recognizer
		  // case UIGestureRecognizer.GestureRecognizerTypes.Tap
		  //  newRecognizer = new UITapGestureRecognizer (c.Handle)
		  // // newRecognizer = new UITapGestureRecognizer (c.Handle,  UIGestureRecognizer.GestureRecognizerTypes.Tap, UIGestureRecognizer.classptr)
		  //
		  // end select
		  // AddGestureRecognizer (c.Handle, newRecognizer.Handle)
		  // end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub AddGestureRecognizer(target as ptr, Recognizer as Ptr)
		  Declare Sub addGestureRecognizer lib UIKit selector "addGestureRecognizer:" (target as Ptr, recognizer as Ptr)
		  addGestureRecognizer target, Recognizer
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddSubview(extends c as ioscontrol, aView as ptr)
		  addSubview c.handle, aview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub addSubview(id as ptr, value as ptr)
		  declare Sub addSubview lib UIKit selector "addSubview:" (id as Ptr, value as Ptr)
		  addSubview id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function alloc(aClass as Ptr) As Ptr
		  declare function alloc lib UIKit selector "alloc" (id as ptr) as ptr
		  return alloc (aclass)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Alpha(extends c as iOSControl) As Double
		  return getAlpha (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Alpha(extends c as iOSControl, assigns value as double)
		  setAlpha (c.handle, value)
		  setOpaque (c.handle, if (value = 1.0, true, false))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AmbiguousLayout(extends c as iOSControl) As Boolean
		  return hasAmbiguousLayout (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AnimationsEnabled(extends c as ioscontrol) As Boolean
		  return getanimationsenabled
		  #pragma Unused c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimationsEnabled(extends c as ioscontrol, assigns value as Boolean)
		  setAnimationsEnabled value
		  #pragma Unused c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function AutoResizeMask(aMask as AutoResizeMask) As uinteger
		  dim result as uinteger = if (amask.ScaleLeft, 1, 0)
		  result = result + if (amask.ScaleWidth, 2, 0)
		  result = result + if (amask.ScaleRight, 4, 0)
		  result = result + if (amask.scaletop, 8, 0)
		  result = result + if (amask.ScaleHeight, 16, 0)
		  result = result + if (amask.ScaleBottom, 32, 0)
		  return result
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AutoResizeMask(ScaleLeft as Boolean, ScaleWidth as Boolean, ScaleRight as Boolean, ScaleTop as Boolean, ScaleHeight as Boolean, ScaleBottom as Boolean) As uinteger
		  dim result as uinteger = if (ScaleLeft, 1, 0)
		  result = result + if (ScaleWidth, 2, 0)
		  result = result + if (ScaleRight, 4, 0)
		  result = result + if (scaletop, 8, 0)
		  result = result + if (ScaleHeight, 16, 0)
		  result = result + if (ScaleBottom, 32, 0)
		  return result
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AutoResizeMask(aResult as UInteger) As AutoresizeMask
		  dim result as AutoResizeMask
		  result.ScaleLeft= aresult.hasbit (0)
		  result.ScaleWidth = aresult.hasbit (1)
		  result.ScaleRight = aresult.hasbit (2)
		  result.ScaleTop = aresult.hasbit (3)
		  result.ScaleHeight = aresult.hasbit (4)
		  result.ScaleBottom = aresult.hasbit (5)
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AutoResizesSubviews(extends c as ioscontrol) As Boolean
		  return getautoresizesSubviews (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AutoResizesSubviews(extends c as ioscontrol, assigns value as Boolean)
		  setautoresizesSubviews c.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AutoResizingMask(extends c as ioscontrol) As AutoResizeMask
		  dim result as uinteger = getAutoResizingMask (c.Handle)
		  return AutoResizeMask (result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AutoResizingMask(extends c as ioscontrol, assigns aMask as AutoResizeMask)
		  setAutoResizingMask (c.Handle, AutoResizeMask (aMask))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundColor(extends c as iOSControl) As Color
		  return getBackgroundColor(c.Handle).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundColor(extends c as iOSControl, assigns value as color)
		  setBackgroundColor c.Handle, value.touicolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub beginAnimations(animationID as CFStringRef, context as Ptr)
		  declare sub beginAnimations lib UIKit selector "beginAnimations:context:" _
		  (id as ptr, animationID as CFStringRef, context as ptr)
		  beginAnimations classptr, animationID, context
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Bounds(extends c as iOSControl) As rect
		  return CoreRect (getBounds(c.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Bounds(extends c as iOSControl, assigns value as xojo.core.rect)
		  setBounds c.handle, value.toCGRect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BringSubviewToFront(extends c as ioscontrol, aView as ptr)
		  bringSubviewToFront c.handle, aView
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub bringSubviewToFront(id as ptr, value as ptr)
		  declare Sub bringSubviewToFront lib UIKit selector "bringSubviewToFront:" (id as Ptr, value as Ptr)
		  bringSubviewToFront id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CancelPerformRequest(extends c as ioscontrol, aselector as cfstringref = "", argument as ptr = NIL)
		  Declare sub cancelPreviousPerformRequestsWithTarget lib UIKit selector "cancelPreviousPerformRequestsWithTarget:" (id as ptr, target as ptr)
		  Declare sub cancelPreviousPerformRequestsWithTargetSelectorObject lib UIKit selector "cancelPreviousPerformRequestsWithTarget:selector:object:" _
		  (id as ptr, target as ptr, aselector as ptr, argument as ptr)
		  
		  if aselector = "" then
		    cancelPreviousPerformRequestsWithTarget (class_(c.handle), c.handle)
		  else
		    cancelPreviousPerformRequestsWithTargetSelectorObject (class_(c.handle), c.handle, NSSelectorFromString (aselector), argument)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Center(extends c as iOSControl) As Point
		  return corepoint (getCenter(c.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Center(extends c as iOSControl, assigns value as Point)
		  setCenter c.handle,value.tocgpoint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformIdentity() As CGAffineTransform
		  dim result as CGAffineTransform
		  result.a= 1
		  result.b =0
		  result.c = 0
		  result.d = 1
		  result.tx = 0
		  result.ty = 0
		  Return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGAffineTransformInvert Lib CoreGraphics (t as CGAffineTransform) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGAffineTransformMakeRotation Lib CoreGraphics (angle as single) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGAffineTransformMakeScale Lib CoreGraphics (sx as Single, sy as Single) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGAffineTransformMakeTranslation Lib CoreGraphics (tx as Single, ty as Single) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGAffineTransformRotate Lib CoreGraphics (t as CGAffineTransform, angle as single) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGAffineTransformScale Lib CoreGraphics (t as CGAffineTransform, sx as Single, sy as Single) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGAffineTransformTranslate Lib CoreGraphics (t as CGAffineTransform, tx as Single, ty as Single) As CGAffineTransform
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function ClassName(extends c as iOSControl) As CFStringRef
		  return description (Class_(c.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function class_(id as ptr) As Ptr
		  Declare function class_ lib UIKit selector "class" (id as ptr) as ptr
		  return class_ (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearsContextBeforeDrawing(extends c as iOSControl) As Boolean
		  return getclearsContextBeforeDrawing (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearsContextBeforeDrawing(extends c as iOSControl, assigns value as boolean)
		  setclearsContextBeforeDrawing c.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClipsToBounds(extends c as ioscontrol) As Boolean
		  return getClipsToBounds (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClipsToBounds(extends c as ioscontrol, assigns value as boolean) As Boolean
		  setClipsToBounds c.handle, value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub commitAnimations()
		  declare sub commitAnimations lib UIKit selector "commitAnimations" (id as ptr)
		  commitAnimations ClassPtr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function conformsToProtocol(extends c as ioscontrol, aProtocol as cfstringref) As Boolean
		  Declare function conformsToProtocol lib UIKit selector "conformsToProtocol:" (id as ptr, aProtocol as Ptr) as Boolean
		  return conformsToProtocol (c.handle, NSProtocolFromString (aProtocol))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CorePoint(aPoint as CGPoint) As Xojo.Core.Point
		  return new xojo.core.point (aPoint.x, aPoint.y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CoreRect(aRect as CGRect) As xojo.core.rect
		  //Converts a CGRect to a Xojo.Core.Rect
		  dim mycgOrigin as CGPoint = aRect.origin
		  dim myCGSize as CGSize = aRect.rectSize
		  dim mysize as new xojo.core.size (myCGSize.width, myCGSize.height)
		  dim myorigin as new xojo.core.point (mycgOrigin.x, mycgOrigin.y)
		  return new xojo.Core.Rect (myorigin, mysize)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CoreRect(aRect as NSRect) As xojo.core.rect
		  //Converts a NSRect to a Xojo.Core.Rect
		  return new xojo.Core.Rect (aRect.x, aRect.y, aRect.width, aRect.height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CoreSize(aSize as CGSize) As Xojo.core.size
		  return new xojo.Core.Size (aSize.width, aSize.height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function debugDescription(id as ptr) As CFStringRef
		  Declare function debugDescription lib UIKit selector "debugDescription"(id as ptr) as CFStringRef
		  return debugDescription (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DebugText(extends c as iOSControl) As CFStringRef
		  return debugDescription (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Description(extends c as iOSControl) As CFStringRef
		  return description (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function description(id as ptr) As CFStringRef
		  Declare function description lib UIKit selector "description"(id as ptr) as CFStringRef
		  return description (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExchangeSubviews(extends c as ioscontrol, Index1 as Uinteger, Index2 as Uinteger)
		  exchangeSubviews c.handle, index1, index2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub exchangeSubviews(id as ptr, Index1 as Uinteger, Index2 as Uinteger)
		  declare Sub exchangeSubviewAtIndex lib UIKit selector "exchangeSubviewAtIndex:withSubviewAtIndex:" (id as Ptr, Index1 as Uinteger, Index2 as Uinteger)
		  exchangeSubviewAtIndex id, index1, index2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExclusiveTouch(extends c as iOSControl) As Boolean
		  return getExclusiveTouch (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExclusiveTouch(extends c as iOSControl, Assigns value as boolean)
		  setExclusiveTouch c.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub exerciseAmbiguityInLayout(id as ptr)
		  declare Sub exerciseAmbiguityInLayout lib UIKit selector "exerciseAmbiguityInLayout" (id as ptr)
		  exerciseAmbiguityInLayout id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Frame(extends c as iOSControl) As rect
		  return CoreRect (getFrame(c.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Frame(extends c as iOSControl, assigns value as xojo.core.rect)
		  setFrame c.handle, value.toCGRect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GestureRecognizers(extends c as iOSControl) As ptr()
		  return getGestureRecognizers(c.Handle).toPTrArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getAlpha(id as ptr) As Double
		  #if Target32Bit
		    declare Function alpha lib UIKit selector "alpha" (id as ptr) as single
		  #else
		    declare Function alpha lib UIKit selector "alpha" (id as ptr) as double
		  #endif
		  
		  return alpha (id)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getAnimationsEnabled() As Boolean
		  declare function areAnimationsEnabled lib UIKit selector "areAnimationsEnabled" (id as ptr) as Boolean
		  return areAnimationsEnabled (classptr)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getautoresizesSubviews(id as ptr) As Boolean
		  declare Function autoresizesSubviews lib UIKit selector "autoresizesSubviews" (id as Ptr) as Boolean
		  return autoresizesSubviews (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getAutoResizingMask(id as ptr) As UInteger
		  declare Function autoResizingMask lib UIKit selector "autoresizingMask" (id as Ptr) as Uinteger
		  return AutoResizingMask (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getBackgroundColor(id as ptr) As Ptr
		  Declare Function backgroundColor lib UIKit selector "backgroundColor" (id as ptr) as ptr
		  return backgroundColor( id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getBounds(id as ptr) As CGRect
		  declare Function bounds lib UIKit selector "bounds" (id as ptr) as CGRect
		  return bounds (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getCenter(id as ptr) As CGPoint
		  declare Function center lib UIKit selector "center" (id as ptr) as CGPoint
		  return center (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getclearsContextBeforeDrawing(id as ptr) As Boolean
		  declare Function clearsContextBeforeDrawing lib UIKit selector "clearsContextBeforeDrawing" (id as ptr) as boolean
		  return clearsContextBeforeDrawing (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getClipsToBounds(id as ptr) As boolean
		  declare Function clipsToBounds lib UIKit selector "clipsToBounds" (id as ptr) as boolean
		  return clipsToBounds (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getDelegate(id as ptr) As ptr
		  declare function delegate_ lib uikit selector "delegate" (id as ptr) as ptr
		  return Delegate_ (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getExclusiveTouch(id as ptr) As Boolean
		  declare Function isExclusiveTouch lib UIKit selector "isExclusiveTouch" (id as ptr) as Boolean
		  return isExclusiveTouch (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getFrame(id as ptr) As cgrect
		  declare Function frame lib UIKit selector "frame" (id as ptr) as cgrect
		  return frame (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getGestureRecognizers(id as ptr) As Ptr
		  declare function gestureRecognizers lib UIKit selector "gestureRecognizers"(id as ptr) as ptr
		  return gestureRecognizers (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getHidden(id as ptr) As Boolean
		  declare Function isHidden lib UIKit selector "isHidden" (id as ptr) as boolean
		  return ishidden (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getLayer(id as ptr) As Ptr
		  declare function layer lib UIKit selector "layer" (id as ptr) as ptr
		  return layer (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getLayerClass(id as ptr) As Ptr
		  declare function layerClass lib UIKit selector "layerClass" (id as ptr) as ptr
		  return layerClass (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getMaskView(id as ptr) As Ptr
		  declare Function maskView lib UIKit selector "maskView" (id as ptr) as Ptr
		  return maskView (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getMethodForSelector(id as ptr, aSelector as ptr) As Ptr
		  declare function methodForSelector lib UIKit selector "methodForSelector:" (id as ptr, selector as ptr) as ptr
		  return methodForSelector (id, aSelector)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getMethodSignatureForSelector(id as ptr, aSelector as ptr) As NSMethodSignature
		  declare function methodSignatureForSelector lib UIKit selector "methodSignatureForSelector:" (id as ptr, selector as ptr) as Ptr
		  return new NSMethodSignature (methodSignatureForSelector (id, aSelector))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getMultipleTouchEnabled(id as ptr) As Boolean
		  declare Function isMultipleTouchEnabled lib UIKit selector "isMultipleTouchEnabled" (id as ptr) as Boolean
		  return isMultipleTouchEnabled (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOpaque(id as ptr) As boolean
		  declare Function opaque lib UIKit selector "opaque" (id as ptr) as boolean
		  return opaque (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getrequiresConstraintBasedLayout(id as ptr) As Boolean
		  Declare function requiresConstraintBasedLayout lib UIKit selector "requiresConstraintBasedLayout" (id as ptr) as boolean
		  return requiresConstraintBasedLayout (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getSizeThatFits(id as ptr) As cgsize
		  declare Function sizeThatFits lib UIKit selector "sizeThatFits" (id as ptr) as CGSize
		  return sizeThatFits (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getsubviews(id as ptr) As Ptr
		  declare Function subviews lib UIKit selector "subviews" (id as Ptr) as Ptr
		  return subviews (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getsuperclass(id as ptr) As Ptr
		  Declare function superclass lib UIKit selector "superclass" (id as ptr) as ptr
		  return superclass (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getsuperview(id as ptr) As Ptr
		  declare Function superview lib UIKit selector "superview" (id as Ptr) as Ptr
		  return superview (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTag(id as ptr) As Integer
		  declare function tag lib UIKit selector "tag" (id as ptr) as integer
		  return tag (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTintAdjustment(id as ptr) As TintAdjustmentMode
		  Declare Function tintAdjustmentMode lib UIKit selector "tintAdjustmentMode" (id as ptr) as TintAdjustmentMode
		  return TintAdjustmentMode (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTintColor(id as ptr) As Ptr
		  declare function tintColor lib UIKit selector "tintColor" (id as ptr) as ptr
		  return tintColor (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTransform(id as ptr) As CGAffineTransform
		  declare Function transform lib UIKit selector "transform" (id as ptr) as CGAffineTransform
		  return Transform (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getUserInteractionEnabled(id as ptr) As Boolean
		  declare Function userInteractionEnabled lib UIKit selector "isUserInteractionEnabled" (id as ptr) as Boolean
		  return userInteractionEnabled (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getView(id as ptr, Tag as Integer) As Ptr
		  declare Function viewWithTag lib UIKit selector "viewWithTag:" (id as ptr, tag as integer) as ptr
		  return viewWithTag (id,tag)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getwindow(id as ptr) As Ptr
		  declare function window lib UIKit selector "window" (id as ptr) as ptr
		  return window (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function hasAmbiguousLayout(id as ptr) As Boolean
		  Declare Function hasAmbiguousLayout lib UIKit selector "hasAmbiguousLayout" (id as ptr) as Boolean
		  return hasAmbiguousLayout (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Hash(extends c as iOSControl) As UInteger
		  return hash (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function hash(id as ptr) As UInteger
		  Declare function hash lib UIKit selector "hash" (id as ptr) as uinteger
		  return hash (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Hidden(extends c as iOSControl) As Boolean
		  return getHidden (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Hidden(extends c as iOSControl, assigns value as boolean) As Boolean
		  setHidden c.handle, value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ID(extends c as iOSControl) As Ptr
		  // Returns the pointer in case a control has no handle – should be identical
		  
		  return self_ (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function init(obj_id as ptr) As ptr
		  declare function init lib UIKit selector "init" (obj_id as ptr) as ptr
		  Return init(obj_id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function initWithFrame(id as ptr, aFrame as CGRect) As Ptr
		  declare Function initWithFrame lib UIKit selector "initWithFrame:" (id as ptr, aFrame as CGRect) as ptr
		  return initWithFrame (id, aFrame)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubview(extends c as ioscontrol, aView as Ptr, index as uinteger)
		  insertSubview c.handle, aview, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub insertSubview(id as ptr, aView as Ptr, index as uinteger)
		  declare Sub insertSubview lib UIKit selector "insertSubview:atIndex:" (id as Ptr, aview as ptr, index as ptr)
		  insertSubview id, aview, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubviewabove(extends c as ioscontrol, aView as Ptr, siblingview as ptr)
		  insertSubviewabove c.handle, aview, siblingview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub insertSubviewabove(id as ptr, aView as Ptr, siblingview as ptr)
		  declare Sub insertSubview lib UIKit selector "insertSubview:aboveSubview:" (id as Ptr, aview as ptr, siblingview as ptr)
		  insertSubview id, aview, siblingview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubviewbelow(extends c as ioscontrol, aView as Ptr, siblingview as ptr)
		  insertSubviewbelow c.handle, aview, siblingview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub insertSubviewbelow(id as ptr, aView as Ptr, siblingview as ptr)
		  declare Sub insertSubview lib UIKit selector "insertSubview:belowSubview:" (id as Ptr, aview as ptr, siblingview as ptr)
		  insertSubview id, aview, siblingview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvertTransformation(extends c as iOSControl)
		  c.Transform = CGAffineTransformInvert (c.Transform)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDescendantOfView(extends c as ioscontrol, aview as ptr) As Boolean
		  return isDescendantOfView (c.handle, aview)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function isDescendantOfView(id as ptr, aview as ptr) As Boolean
		  declare Function isDescendantOfView lib UIKit selector "isDescendantOfView:" (id as Ptr, aview as ptr) as boolean
		  return isDescendantOfView (id, aview)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEqual(extends c as iOSControl, anothercontrol as ptr) As Boolean
		  // Returns true if two objects are equal
		  
		  Declare Function isEqual lib UIKit selector "isEqual:" (id as ptr, aclass as ptr) as boolean
		  return isEqual (c.handle, anothercontrol)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isKindOfClass(extends c as ioscontrol, aClass as Ptr, subClassesToo as Boolean = False) As Boolean
		  // In case you have a native representation, it may be a Ptr to Xojo. Use this to compere against NSClassFromString (YourClassName).
		  // Returns true even for subclasses if subClassesToo = true
		  
		  Declare Function isKindOfClass lib UIKit selector "isKindOfClass:" (id as ptr, aclass as ptr) as boolean
		  Declare Function isMemberOfClass lib UIKit selector "isMemberOfClass:" (id as ptr, aclass as ptr) as boolean
		  
		  if subClassesToo then
		    return isKindOfClass (c.Handle, aClass)
		  else
		    return isMemberOfClass (c.Handle, aClass)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isProxy(extends c as ioscontrol) As Boolean
		  // Returns trueif the receiver's class does not inherit from a superclass
		  
		  Declare Function isProxy lib UIKit selector "isProxy" (id as ptr) as boolean
		  return isProxy (c.Handle)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Layer(extends c as iOSControl) As Ptr
		  return getLayer (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LayerClass(extends c as iOSControl) As Ptr
		  return getLayerClass (class_(c.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayerClass(extends c as iOSControl, assigns value as ptr)
		  setLayerClass class_(c.handle),  value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LayerClassName(extends c as iOSControl) As CFStringRef
		  return description (c.LayerClass)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub layoutIfNeeded(id as ptr)
		  declare sub layoutIfNeeded lib UIKit selector "layoutIfNeeded" (id as ptr)
		  layoutIfNeeded (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MaskView(extends c as iOSControl) As Ptr
		  return getMaskView ( c.handle )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaskView(extends c as iOSControl, Assigns value as Ptr)
		  setMaskView c.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MethodAddress(extends c as iOSControl, aSelector as CFStringRef, isClassMethod as Boolean = false) As Ptr
		  return getMethodForSelector (if (isClassMethod, class_(c.handle),c.handle), NSSelectorFromString (aSelector))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MethodSignature(extends c as iOSControl, aSelector as CFStringRef, isClassMethod as Boolean = false) As NSMethodSignature
		  return getMethodSignatureForSelector (if (isClassMethod, class_(c.handle),c.handle), NSSelectorFromString (aSelector))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MultipleTouchEnabled(extends c as iOSControl) As Boolean
		  return getMultipleTouchEnabled (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MultipleTouchEnabled(extends c as iOSControl, Assigns value as boolean)
		  setMultipleTouchEnabled c.handle, value
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function NSClassFromString Lib Foundation (aClassName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function NSProtocolFromString Lib Foundation (aProtocol as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function NSSelectorFromString Lib Foundation (aSelector as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Opaque(extends c as iOSControl) As Boolean
		  return getOpaque (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Opaque(extends c as iOSControl, assigns value as boolean)
		  setOpaque (c.handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParentWindowPtr(extends c as iOSControl) As Ptr
		  return getwindow (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub performSelector(extends c as ioscontrol, aSelector as cfstringref, delay as double, anObject as Ptr = NIL)
		  Declare Sub performSelectorwithObjectafterDelay lib UIKit selector "performSelector:withObject:afterDelay:"(id as ptr, aselector as Ptr, withObject as Ptr, delay as double)
		  
		  performSelectorwithObjectafterDelay (c.handle, NSSelectorFromString (aSelector), anObject, delay)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function performSelector(extends c as ioscontrol, aSelector as cfstringref, anObject as Ptr = NIL, anotherObject as Ptr = NIL) As Ptr
		  Declare function performSelector lib UIKit selector "performSelector:"(id as ptr, aselector as Ptr) as Ptr
		  Declare function performSelectorwithObject lib UIKit selector "performSelector:withObject:"(id as ptr, aselector as Ptr, withObject as Ptr) as Ptr
		  Declare function performSelectorwithObjectwithObject lib UIKit selector "performSelector:withObject:withObject:"(id as ptr, aselector as Ptr, withObject as Ptr, anotherobject as Ptr) as Ptr
		  
		  if anotherObject <> NIL then
		    return performSelectorwithObjectwithObject (c.handle, NSSelectorFromString (aSelector), anObject, anotherObject)
		  elseif anObject <> NIL then
		    return performSelectorwithObject (c.handle, NSSelectorFromString (aSelector), anObject)
		  else
		    return performSelector (c.handle, NSSelectorFromString (aSelector))
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub performSelectorInBackground(extends c as ioscontrol, aSelector as cfstringref, anObject as Ptr = NIL)
		  c.performSelectorInBackground (NSSelectorFromString (aSelector), anObject)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub performSelectorInBackground(extends c as ioscontrol, aSelector as ptr, anObject as Ptr = NIL)
		  Declare Sub performSelectorInBackground lib UIKit selector "performSelectorInBackground:withObject:"(id as ptr, aselector as Ptr, withObject as Ptr)
		  performSelectorInBackground (c.handle, aSelector, anObject)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub performSelectorOnMainThread(extends c as ioscontrol, aSelector as cfstringref, anObject as Ptr = NIL, waituntildone as Boolean = false)
		  Declare Sub performSelectorOnMainThread lib UIKit selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  (id as ptr, aselector as Ptr, withObject as Ptr, waituntilDone as Boolean)
		  performSelectorOnMainThread (c.handle, NSSelectorFromString (aSelector), anObject, waituntildone)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Refresh(extends c as iOSControl)
		  layoutIfNeeded (c.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFromSuperview(extends c as iOSControl)
		  removeFromSuperview c.handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub removeFromSuperview(id as ptr)
		  declare Sub removeFromSuperview lib UIKit selector "removeFromSuperview" (id as Ptr)
		  removeFromSuperview id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequiresConstraints(extends c as iOSControl) As Boolean
		  return getrequiresConstraintBasedLayout (class_(c.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequiresConstraints(extends c as iOSControl, assigns value as boolean)
		  setrequiresConstraintBasedLayout (class_(c.handle), value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetTransformation(extends c as iOSControl)
		  c.transform =  CGAffineTransformIdentity
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function resolveClassMethod(extends c as iOSControl, aSelector as cfstringref) As Boolean
		  return c.resolveClassMethod (NSSelectorFromString (aSelector))
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function resolveClassMethod(extends c as iOSControl, aSelector as Ptr) As Boolean
		  Declare Function resolveClassMethod lib UIKit selector "resolveClassMethod:"(id as ptr, aselector as Ptr) as boolean
		  return resolveClassMethod (class_(c.handle), aSelector)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function resolveInstanceMethod(extends c as iOSControl, aSelector as cfstringref) As Boolean
		  return c.resolveInstanceMethod (NSSelectorFromString (aSelector))
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function resolveInstanceMethod(extends c as iOSControl, aSelector as Ptr) As Boolean
		  Declare Function resolveInstanceMethod lib UIKit selector "resolveInstanceMethod:"(id as ptr, aselector as Ptr) as boolean
		  return resolveInstanceMethod (class_(c.handle), aSelector)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function respondsToSelector(extends c as ioscontrol, aSelector as cfstringref) As Boolean
		  Declare function respondsToSelector lib UIKit selector "respondsToSelector:"(id as ptr, aselector as Ptr) as Boolean
		  return respondsToSelector (c.handle, NSSelectorFromString (aSelector))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Rotate(extends c as ioscontrol, angle as single, fromCurrent as Boolean = false)
		  c.transform = if (fromCurrent, CGAffineTransformRotate (c.Transform, angle.DegreesToRadians), CGAffineTransformMakeRotation (angle.DegreesToRadians))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RotateAnimated(extends c as ioscontrol, angle as Single, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef = "")
		  c.setOldAnimationProperties (Seconds, delay, curve, transition, cacheTransition, repeat, autoreverse, continueFromCurrentState, fromCurrentTransform, startdate, animationname)
		  c.Transform = if (fromCurrentTransform, CGAffineTransformRotate (c.Transform, angle.DegreesToRadians), CGAffineTransformMakeRotation (angle.DegreesToRadians))
		  commitAnimations
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scale(extends c as ioscontrol, Xscale as double, yScale as Double = 0, fromCurrent as Boolean = false)
		  Xscale = Xscale / 100
		  if yScale = 0 then
		    yScale = Xscale // proprtional if only one value
		  else
		    yScale = yScale / 100
		  end if
		  c.Transform = if (fromCurrent, CGAffineTransformScale (c.Transform, Xscale,yScale), CGAffineTransformMakeScale (Xscale, yScale))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScaleAnimated(extends c as ioscontrol, Xscale as double, yScale as Double = 0, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef = "")
		  Xscale = Xscale / 100
		  if yScale = 0 then
		    yScale = Xscale // proprtional if only one value
		  else
		    yScale = yScale / 100
		  end if
		  
		  c.setOldAnimationProperties (Seconds, delay, curve, transition, cacheTransition, repeat, autoreverse, continueFromCurrentState, fromCurrentTransform, startdate, animationname)
		  c.Transform = if (fromCurrentTransform, CGAffineTransformScale (c.Transform, Xscale,yScale), CGAffineTransformMakeScale (Xscale, yScale))
		  commitAnimations
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function self_(id as ptr) As Ptr
		  Declare function self_ lib UIKit selector "self" (id as ptr) as ptr
		  return self_ (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub sendSubviewToBack(extends c as ioscontrol, aView as ptr)
		  sendSubviewToBack c.handle, aView
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub sendSubviewToBack(id as ptr, value as ptr)
		  declare Sub sendSubviewToBack lib UIKit selector "sendSubviewToBack:" (id as Ptr, value as Ptr)
		  sendSubviewToBack id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAlpha(id as ptr, alpha as double)
		  #if target32bit
		    declare Sub setAlpha lib UIKit selector "setAlpha:" (id as ptr, alpha as single)
		  #else
		    declare Sub setAlpha lib UIKit selector "setAlpha:" (id as ptr, alpha as double)
		  #endif
		  
		  setAlpha id, alpha
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setAlphaAnimated(extends c as ioscontrol, NewAlpha as Double, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef = "")
		  c.setOldAnimationProperties (Seconds, delay, curve, transition, cacheTransition, repeat, autoreverse, continueFromCurrentState, fromCurrentTransform, startdate, animationname)
		  c.alpha = NewAlpha
		  commitAnimations
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationBeginsFromCurrentState(beginfromcurrentstate as boolean)
		  declare sub setAnimationBeginsFromCurrentState lib UIKit selector "setAnimationBeginsFromCurrentState:" _
		  (id as ptr, beginfromcurrentstate as boolean)
		  setAnimationBeginsFromCurrentState classptr, beginfromcurrentstate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationCurve(Curve as AnimationCurve)
		  declare sub setAnimationCurve lib UIKit selector "setAnimationCurve:" (id as ptr, curve as AnimationCurve)
		  setAnimationCurve classptr, Curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationDelay(delay as double)
		  declare sub setAnimationDelay lib UIKit selector "setAnimationDelay:" (id as ptr, delay as Double)
		  setAnimationDelay classptr, delay
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationDelegate(aDelegate as Ptr)
		  declare sub setAnimationDelegate lib UIKit selector "setAnimationDelegate:" (id as ptr, aDelegate as Ptr)
		  setAnimationDelegate classptr, aDelegate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationDuration(Seconds as Double)
		  declare sub setAnimationDuration lib UIKit selector "setAnimationDuration:" (id as ptr, Seconds as Double)
		  setAnimationDuration classptr, seconds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationRepeatAutoreverse(value as Boolean)
		  declare sub setAnimationRepeatAutoreverses lib UIKit selector "setAnimationRepeatAutoreverses:" (id as ptr, value as boolean)
		  setAnimationRepeatAutoreverses classptr, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationRepeatCount(value as Single)
		  declare sub setAnimationRepeatCount lib UIKit selector "setAnimationRepeatCount:" (id as ptr, value as single)
		  setAnimationRepeatCount classptr, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationsEnabled(value as Boolean)
		  declare sub setAnimationsEnabled lib UIKit selector "setAnimationsEnabled:" (id as ptr, value as Boolean)
		  setAnimationsEnabled classptr, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationStartDate(aNSDate as Ptr)
		  declare sub setAnimationStartDate lib UIKit selector "setAnimationStartDate:" (id as ptr, aNSDate as Ptr)
		  setAnimationStartDate classptr, aNSDate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnimationTransition(transition as OldTransitionmode, view as ptr, cache as boolean)
		  declare sub setAnimationTransition lib UIKit selector "setAnimationTransition:forView:cache:" (id as ptr, transition as OldTransitionMode, view as ptr, cache as boolean)
		  setAnimationTransition classptr, transition, view, cache
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setautoresizesSubviews(id as ptr, value as boolean)
		  declare sub setAutoresizesSubviews lib UIKit selector "setAutoresizesSubviews:" (id as Ptr, value as Boolean)
		  setAutoresizesSubviews id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAutoResizingMask(id as ptr, aMask as Uinteger)
		  declare sub setAutoResizingMask lib UIKit selector "setAutoresizingMask:" (id as Ptr, aMask as Uinteger)
		  setAutoResizingMask id, amask
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBackgroundColor(id as ptr, value as ptr)
		  Declare Sub setBackgroundColor lib UIKit selector "setBackgroundColor:" (id as ptr, value as Ptr)
		  setbackgroundColor  id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBackgroundColorAnimated(extends c as ioscontrol, NewColor as Color, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef = "")
		  c.setOldAnimationProperties (Seconds, delay, curve, transition, cacheTransition, repeat, autoreverse, continueFromCurrentState, fromCurrentTransform, startdate, animationname)
		  c.BackgroundColor = NewColor
		  commitAnimations
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBounds(id as ptr, value as cgrect)
		  declare Sub setBounds lib UIKit selector "setBounds:" (id as ptr, value as CGRect)
		  setbounds id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBoundsAnimated(extends c as ioscontrol, NewBounds as Xojo.Core.rect, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef = "")
		  c.setOldAnimationProperties (Seconds, delay, curve, transition, cacheTransition, repeat, autoreverse, continueFromCurrentState, fromCurrentTransform, startdate, animationname)
		  c.Bounds = NewBounds
		  commitAnimations
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setCenter(id as ptr, value as cgpoint)
		  declare Sub setCenter lib UIKit selector "setCenter:" (id as ptr, value as cgpoint)
		  setCenter id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setCenterAnimated(extends c as ioscontrol, NewCenter as Xojo.Core.point, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef = "")
		  c.setOldAnimationProperties (Seconds, delay, curve, transition, cacheTransition, repeat, autoreverse, continueFromCurrentState, fromCurrentTransform, startdate, animationname)
		  c.Center = NewCenter
		  commitAnimations
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setclearsContextBeforeDrawing(id as ptr, value as boolean)
		  declare Sub setclearsContextBeforeDrawing lib UIKit selector "setClearsContextBeforeDrawing:" (id as ptr, value as boolean)
		  setclearsContextBeforeDrawing id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setClipsToBounds(id as ptr, value as boolean)
		  declare Sub setClipsToBounds lib UIKit selector "setClipsToBounds:" (id as ptr, value as boolean)
		  setClipsToBounds id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setExclusiveTouch(id as ptr, value as boolean)
		  declare Sub exclusiveTouch lib UIKit selector "exclusiveTouch:" (id as ptr, value as Boolean)
		  exclusiveTouch id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setFrame(id as ptr, value as CGRect)
		  declare Sub setFrame lib UIKit selector "setFrame:" (id as ptr, value as cgrect)
		  setFrame id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setFrameAnimated(extends c as ioscontrol, NewFrame as Xojo.Core.rect, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef = "")
		  c.setOldAnimationProperties (Seconds, delay, curve, transition, cacheTransition, repeat, autoreverse, continueFromCurrentState, fromCurrentTransform, startdate, animationname)
		  c.Frame = NewFrame
		  commitAnimations
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setHidden(id as ptr, value as boolean)
		  declare Sub hidden lib UIKit selector "hidden:" (id as ptr, value as boolean)
		  hidden id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setLayerClass(id as ptr, value as ptr)
		  declare sub setlayerClass lib UIKit selector "setLayerClass:" (id as ptr, value as ptr)
		  setlayerClass id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setMaskView(id as ptr, aView as ptr)
		  declare sub setMaskView lib UIKit selector "setMaskView:" (id as ptr, aview as ptr)
		  setMaskView id, aview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setMultipleTouchEnabled(id as ptr, value as boolean)
		  declare Sub multipleTouchEnabled lib UIKit selector "multipleTouchEnabled:" (id as ptr, value as Boolean)
		  setmultipleTouchEnabled id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setOldAnimationProperties(extends c as ioscontrol, Seconds as Double, delay as double, curve as AnimationCurve, transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean, repeat as single, autoreverse as boolean, continueFromCurrentState as Boolean, fromCurrentTransform as Boolean, startdate as xojo.core.date, animationname as CFStringRef)
		  beginAnimations  animationname, NIL
		  setAnimationDuration Seconds
		  setAnimationDelay delay
		  setAnimationCurve curve
		  setAnimationRepeatCount repeat
		  setAnimationRepeatAutoreverse autoreverse
		  setAnimationBeginsFromCurrentState continueFromCurrentState
		  setAnimationTransition transition, c.Handle, cacheTransition
		  if startdate <> NIL then setAnimationStartDate startdate.toNSDate
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setOpaque(id as ptr, value as boolean)
		  declare Sub setOpaque_ lib UIKit selector "setOpaque:" (id as ptr, value as boolean)
		  setOpaque_ id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setrequiresConstraintBasedLayout(id as ptr, value as boolean)
		  Declare Sub setRequiresConstraintBasedLayout lib UIKit selector "setRequiresConstraintBasedLayout:" (id as ptr, value as boolean)
		  setrequiresConstraintBasedLayout id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSizeTofit(id as ptr)
		  Declare Sub sizeToFit lib UIKit selector "sizeToFit" (id as ptr)
		  sizeToFit id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setTag(id as ptr, value as integer)
		  declare sub settag lib UIKit selector "setTag:" (id as ptr, value as integer)
		  settag id,value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setTintAdjustment(id as ptr, TA as TintAdjustmentMode)
		  Declare sub setTintAdjustmentMode lib UIKit selector "setTintAdjustmentMode:"(id as ptr, ta as TintAdjustmentMode)
		  setTintAdjustmentmode id, TA
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setTintColor(id as ptr, value as ptr)
		  Declare Sub setTintColor lib UIKit selector "setTintColor:" (id as ptr, value as ptr)
		  setTintColor  id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetTransform(id as ptr, transform as CGAffineTransform)
		  declare sub SetTransform lib UIKit selector "setTransform:" (id as ptr, transform as CGAffineTransform)
		  SetTransform id,transform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setTranslatesAutoresizingMaskIntoConstraints(id as ptr, value as boolean)
		  declare Sub setTranslatesAutoresizingMaskIntoConstraints lib UIKit selector "setTranslatesAutoresizingMaskIntoConstraints:" (id as ptr, value as boolean)
		  setTranslatesAutoresizingMaskIntoConstraints id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setUserInteractionEnabled(id as ptr, value as boolean)
		  declare sub setUserInteractionEnabled lib UIKit selector "setUserInteractionEnabled:" (id as ptr, value as boolean)
		  setUserInteractionEnabled id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SizeThatFits(extends c as iOSControl) As Size
		  return CoreSize (getSizeThatFits(c.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SizeToFit(extends c as iOSControl)
		  setsizeToFit c.handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubViews(extends c as iOSControl) As Ptr()
		  return getsubviews(c.handle).toptrarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubviewWithTag(extends c as iOSControl, tag as integer) As Ptr
		  return getView (c.Handle, tag)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function superclass(extends c as iOSControl) As Ptr
		  return getsuperclass (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SuperClassName(extends c as iOSControl) As CFStringRef
		  return description (getsuperclass (c.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SuperView(extends c as iOSControl) As Ptr
		  return getsuperview (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tag(extends c as iOSControl) As Integer
		  return getTag (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tag(extends c as iOSControl, assigns value as integer)
		  setTag c.handle,value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Test(extends c as iOSControl)
		  for q as uinteger = 0 to 100000000
		    
		  next
		  break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TestAmbigousLayout(extends c as iOSControl)
		  exerciseAmbiguityInLayout c.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TintAdjustment(extends c as iOSControl) As TintAdjustmentMode
		  return getTintAdjustment(c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TintAdjustment(extends c as iOSControl, assigns value as TintAdjustmentMode)
		  setTintAdjustment c.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TintColor(extends c as iOSControl) As Color
		  return getTintColor(c.handle).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TintColor(extends c as iOSControl, assigns aColor as Color)
		  setTintColor c.handle, aColor.touicolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Transform(extends c as iOSControl) As CGAffineTransform
		  return getTransform (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Transform(extends c as iOSControl, assigns value as CGAffineTransform)
		  setTransform c.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TransformtoTransformation(extends c as ioscontrol) As CGAffineTransform
		  return mTransformToTransformation(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransformtoTransformation(extends c as ioscontrol, assigns value as CGAffineTransform)
		  mTransformToTransformation(0) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TransitionOption(extends c as ioscontrol, aChoice as TransitionMode) As UInteger
		  dim result as uinteger = integer(achoice)
		  result = result.ShiftLeft(20)
		  return result
		  #pragma Unused c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TranslateARMaskToConstraints(extends c as iOSControl) As boolean
		  return translatesAutoresizingMaskIntoConstraints (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslateARMaskToConstraints(extends c as iOSControl, assigns value as boolean)
		  setTranslatesAutoresizingMaskIntoConstraints c.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function translatesAutoresizingMaskIntoConstraints(id as ptr) As Boolean
		  declare function translatesAutoresizingMaskIntoConstraints lib UIKit selector "translatesAutoresizingMaskIntoConstraints" (id as ptr) as boolean
		  return translatesAutoresizingMaskIntoConstraints (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UserInteractionEnabled(extends c as ioscontrol) As Boolean
		  return getUserInteractionEnabled (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UserInteractionEnabled(extends c as ioscontrol, assigns value as boolean) As Boolean
		  setUserInteractionEnabled c.handle, value
		End Function
	#tag EndMethod


	#tag Note, Name = Read Me
		This is iOSControlExtension, an extension for Xojo iOS giving all Xojo iOSControls the missing base functions for NSObject and NSView
		
		I refrained from setting up separate classes because it would take years to extend each one with the base functions – and it would result in in enormus library.
		Instead, although it's nice to have inspector properties too, I implement the functions as module extension methods.
		
		You will find that the properties-as-methods refer to separate protected methods. 
		While this may seem complicated, you can always use them in your own classes in case you need to call them on a different object than id/handle.
		Hopefully this will help saving you from recreating the same lines of code again and again.
		
		This is part of the iOSControls library for easy-to-use Xojo iOS,extensions, hopefully to find soon on xojoblog.me.
		
		
		
		Disclaimer
		This software is delivered AS IS. You are free to use it in your project, modify it according to your needs and you are very welcome to share your contributions too.
		I can not guarantee for data loss, computer problems and all that stuff that may arise from using the classes and methods, but I do guarantee that I use them myself
		in my projects and have not experienced such. Therefore the usual legal warning: Use at your own risk!
		
		
		Copyright
		Written 2014 by Ulrich Bogun, xojoblog.me. This is a private project not connected to my job as german Xojo evangelist.
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
		
		Drop the module somewhere into your project folder. That's all.
		Check the open event of the Button in view one to see how the features are addressed.
		
		For every Xojo iOS control that inherits from NSObjects (that's almost all), you can address the following features (all are addressed as methods but I list them separated by their real function)
		
		
		* Properties *
		
		– Alpha (Double) = the transparency of the control
		
		– AmbigousLayout (Boolean, Read-only) = If true, you should check your layout constraints
		
		– AnimationsEnabled (Boolean): If False, following animations (even block animations from UIView) are disregarded, their end values set immediately.
		
		– AutoResizingMask (AutoResizeMask) = If you prefer the old lock properties instead of layout constraints, you can use this property.
		   For creating a Mask, user either Dim aMask As AutoResizeMask and set its properties or call the method 
		   AutoresizeMask (ScaleLeft as Boolean, ScaleWidth as Boolean, ScaleRight as Boolean, ScaleTop as Boolean, SalceHeight as Boolean, ScaleBottom as Boolean) as AutoResizeMask
		
		– Backgroundcolor (Color) = overrides some implementations to give you a backgroundcolorproperty in every control.
		   In some cases this won't change anything though.
		
		– Bounds (Rect) = The control's view inside its own limits. You can scale and clip the contents by changing this property.
		
		– Center (Point) = The center of the frame. Can be changed to change the content of the control.
		
		– ClassName (Text, read-only) = The internal class name the control is an instance of.
		
		– ClearsContextBeforeDrawing (Boolean): Exactly that. Clears the view's bounds before drawing.
		
		– ClipstoBounds (Boolean) = Setting this value to True causes subviews to be clipped to the bounds of the receiver. Default False.
		
		– DebugText (Text, read-only) = The internal description of the control, great for debugging purposes.
		
		– Description (Text, read-only) = The internal description of the control, mostly identical to DebugText.
		
		– ExclusiveTouch (Boolean) = Setting this property to True causes the receiver to block the delivery of touch events to other views in the same window. Default False.
		
		– Frame (Rect) = The position of the control inside its parent's view
		
		– Hash (Uinteger, read-only) =  An integer that can be used as a table address in a hash table structure.
		
		– Hidden (Boolean) = Override of the Xojo iOS property in case the control has no hidden property.
		
		– Id (Ptr, read-only) = The handle (in case the Xojo implementation has none). Identical in case there is.
		
		– isProxy (Boolean, read-only) = True if the object does not inherit from NSObject
		
		– Layer (Ptr, read-only): The view's Core Animation layer. The UIImageView *IS* the layer's delegate!
		
		– layerClass (Ptr): The CALayer class object by default. Can be overridden during construction phase.
		
		– layerClassName (CFStringRef, read-only): The name of the layerClass Object class.
		
		– MaskView (Ptr) = a Ptr to the Handle of another view whose alpha channel is treated as transparency mask (black = 100 % opaque, fully transparent = masked)
		
		– MultipleTouchEnabled (Boolean) = If True, the receiver receives all touches associated with a multi-touch sequence. When set to False, the receiver receives only the first touch event in a multi-touch sequence. Default False
		
		– Opaque (Boolean) = Influences the drawing routines of NS/UIObjects using drawrect internally.
		   Is set automatically with the alpha value but can be set independently.
		
		– Parentwindow (Ptr, read-only): A Ptr to the UIwindow the view was added to or NIL if not.
		
		– SizeThatFits (Size) = Returns the size that best fits the control's subviews. See SizeToFit method
		
		– Subviews (Ptr(), read-only) = An Array of Ptrs of the control's subviews, with item 0 being the back-most view.
		
		– SuperclassName (Text) = The name of the control’s superclass (if applicable)
		
		– Superview (Ptr, read-only): The control's superview or NIL if there is none.
		
		– Tag (Integer): An ID you can set to identify your view objects in your app.
		
		– TintAdjustment (TintAdjustmentMode) = lets you switch between Automatic, Normal and Dimmed Tint appearance
		
		– TintColor (Color) = overridden method of iOSControl so the tint color can be read too.
		
		– Transform (CGAffineTransformation) = A structure used for visual transformations. See the Animate and similar Methods like Rotate for easier use of this property.
		
		– TranslateARMaskToConstraints (Boolean): If yes, the AutoResizingMask value is converted into layout constraints.
		
		– UserInteractionEnabled (Boolean): A Boolean value that determines whether user events are ignored and removed from the event queue.
		
		
		* Methods *
		
		– AddSubview (Ptr): Adds a view on top of the control's views.
		
		– BringSubviewToFront (Ptr): Puts the chosen subview (note its pointer, not index in subview hierarchy!) to the end of the subviews array.
		
		– CancelPerformRequest (): Cancels a delayed Perform Request
		– CancelPerformRequest (Selector as Text, optional argument as ptr): Cancels the specific delayed Perform Request registered for Selector with argument
		
		– conformsToProtocol (aProtocol as Text) as Boolean: True if the Object conforms to a protocol of the given name
		
		– ExchangeSubviews (Index1 as UInteger, Index2 as Uinteger): Exchanges the subviews from the indices in the subviews array
		
		– InsertSubView (aView as Ptr, Index as UInteger): Inserts the view at index into the subviews.
		
		– InsertSubviewabove (aView as Ptr, SiblingView as Ptr): Inserts the view above siblingview in the view hierachy.
		
		– InsertSubviewbelow (aView as Ptr, SiblingView as Ptr): Inserts the view below siblingview in the view hierachy.
		
		– InvertTransformation(): Immediately inverts the current transformation.
		
		– isDescendantOfView (aView as Ptr) as Boolean: True if the control is a child of aView.
		
		– isEqual (anotherControl as Ptr) As Boolean: True if another control is absolutely identical
		
		– isKindofClass (aClass as Ptr, optional SubClassesToo as Boolean = false) as Boolean = True if the control is an instance of a class that you have the ptr for.
		   To attain a Ptr to a class, use the protected class_ method of the extension of another control or make a call like 
		   Dim ObjectClass as Ptr = ControlExtension.NSClassFromString ("UIView")
		   If SubClassesToo is True, returns true even if the object class is a subclass of aClass.
		
		– MethodAddress (aSelector as Text, optional isClassMethod as Boolen) as Ptr: This is a shortcut to introspection giving you the ptr to an instance method.
		   Looks for a class method instead of a instance method if you pass isClassMethod = true.
		
		– MethodSignature (aSelector as Text, optional isClassMethod as Boolen) as MethodSignature: This is a shortcut to introspection giving you a signature object for an instance method.
		   Looks for a class method instead of a instance method if you pass isClassMethod = true.
		
		– PerformSelector (aSelector as Text, optional anObject as Ptr, optional anotherObject as Ptr) as Ptr: Lets you use a method from the original class. You should check for availability with the RespondsToSelector method before.
		
		– PerformSelector (aSelector as Text, delay as double, optional anotherObject as Ptr): Lets you use a method from the original class that is called after delay seconds. No return value.
		
		– PerformSelectorInBackground (aSelector as Text, optional anObject as Ptr): Lets you use a method from the original class that is performed without return value on a background thread.
		   * Please note that in all PerformSelector methods, the parameter works only for objects, not datataypes even if converted to NSNumber and the like.
		     For such purposes, one would have to use a NSInvocation object.
		
		– performSelectorOnMainThread  (aSelector as Text, optional anObject as Ptr, optional WaitUnitlDone as Boolean): The same as above, with the difference that the mathod is called on main thread.
		   This could be a way to start a method from inside a thread without ThreadAccessingUI exceptions.
		   If Waituntildone is true, the calling thread is stopped.
		
		– Refresh(): There's an Invalidate, but I missed a refresh on the Xojo controls.
		
		– RemoveFromSuperview(): If called, the control is taken from the parent's view. 
		
		– RequiresConstraints (boolean) = true if the control must be placed on a parent view.
		
		– ResetTransformation(): Resets the transformation matrix to identity immediately.
		
		– resolveClassMethod (aSelector as Text OR aSelector as Ptr) as Boolean: I don't have the faintest idea! If you understand this method, please tell me!
		
		– resolveInstanceMethod (aSelector as Text OR aSelector as Ptr) as Boolean: I don't have the faintest idea! If you understand this method, please tell me!
		
		– RespondsToSelector (aSelector as Text) as Boolean: True if the class uses a method or property of the given Name.
		
		– Rotate (angle as Single, opt. fromCurrent as Boolean): Sets the view’s rotation to angle degrees. 
		   If FromCurrent is true, taking the current transform matrix and rotating it.
		
		– RotateAnimate (angle as Single, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, _ 
		   transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, _
		   continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as Text =""):
		 
		   Well yes, this is a really long call. Feel free to shorten it by some convenience methods.
		   Anyway, this is setting the rotate transform matrix of the view to angle degrees, but with an animation and the following parameters:
		  
		   Seconds is the time in second for the animation to take.
		   Delay is the time in seconds until the animation starts.
		   Curve is an AnimationCurve for speeding up/slowing down animation phases.
		   Transition is one of the transistionmodes to play during animation.
		   cacheTransition is a Boolean.If True, subview results are cached, but you should not change the view while the animation plays.
		   Repeat is the number of times the animation shall be repeated. Don't ask my why this happens to be a single!
		   AutoReverse is a Boolean that makes the animation reverse its rotation before repeating it again.
		   ContinuefromCurrentState is a Boolean that makes the animation play from the current position of a playing animation, mixing both. If false, the current animation is stopped.
		   FromCurrentTransform is another boolean that, if true, changes the current transform maxtrix (property transform) instead of the original look of the view.
		   Startdate would be an alternative to delay (but both are teken into account) – a date object that determines wheto start the animation.
		   AnimationName is an optional name that is only relevant in conjunction with a following implementation of the event handlers in UIImageView Class.
		   
		   Apple discourages use of these animation features, but not only are only them available in this extension (the block animations require a subclass),
		   you can define a repeat counter and a date at which to play which the block animations do not grant.
		
		– Scale (XScale as Double, opt. YScale as Double, opt.FromCurrent as Boolean): Scales the view by Xfactor / YFactor (in Percent)!
		   If no YScale (or 0), YScale is set to XScale for a proportional scale.
		   If FromCurrent is True, the current transformation matrix is transformed.
		
		– ScaleAnimated (Xscale as double, yScale as Double= 0,  Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, _
		   transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, _
		   continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef =""):
		   Old style animation for a scale transform. See Scale and RotateAnimated for parameters.
		 
		– sendSubviewToBack (Ptr): Puts the chosen subview (note its pointer, not index in subview hierarchy!) to the beginning of the subviews array.
		
		– setAlphaAnimated (NewAlpha as Double, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, _
		   transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, _
		   continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef =""):
		   Sets the alpha of the object to NewAlpha with an animation
		   Refer to RotateAnimated for the parameters
		
		– setBackgroundColorAnimated (NewColor as Color, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, _
		   transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, _
		   continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef =""):
		   Sets the backgroundcolor of the object to NewColor with an animation
		   Refer to RotateAnimated for the parameters
		
		– setBoundsAnimated (NewBounds as Xojo.Core.rect, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, _
		   transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, _
		   continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef =""):
		   Sets the bounds of the object to NewBounds with an animation - in other words, moves its borders.
		   Refer to RotateAnimated for the parameters
		
		– setCenterAnimated (NewCenter as Xojo.Core.Point Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, _
		   transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, _
		   continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef =""):
		   Sets the center of the object to NewCenter with an animation - in other words, moves its center.
		   Refer to RotateAnimated for the parameters
		
		– setFrameAnimated (NewFrame as Xojo.Core.rect, Seconds as Double = 0.2, delay as double = 0, curve as AnimationCurve = animationcurve.easeInEaseOut, _
		   transition as oldtransitionmode = oldtransitionmode.none, cacheTransition as Boolean = True, repeat as single = 0, autoreverse as boolean = false, _
		   continueFromCurrentState as Boolean = True, fromCurrentTransform as Boolean = false, startdate as xojo.core.date = NIL, animationname as CFStringRef =""):
		   Sets the frame of the object to NewFrame with an animation - in other words, moves it.
		   Refer to RotateAnimated for the parameters
		
		– sizetoFit(): Resizes the control to fit its content
		
		– Subview(Tag as Integer) as Ptr: Returns the control's view with the tag you pass to it.
		
		– TestAmbigousLayout(): A debug method changing the layout properties of the control when ambigous layout constraints have been detected (see AmbigousLayout property).
		   This makes the control change between the possible positions.
		
		
		
		* TO BE DONE (eventually) *
		– the forwarding methods for unknown selectors ?!?
		– the archiving functions. Maybe it is posible to replace Delegates via NSArchiver tricks intead of the complicated subclass/delegate handler methods used mostly.
		
		
		
		
		
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as ptr = NSClassFromString ("UIView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mTransformToTransformation(1) As CGAffineTransform
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mObjectClassPtr as ptr = NSClassFromString ("NSObject")
			  return mObjectClassPtr
			End Get
		#tag EndGetter
		Protected ObjectClassPtr As Ptr
	#tag EndComputedProperty


	#tag Constant, Name = CoreFoundation, Type = Text, Dynamic = False, Default = \"CoreFoundation", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreGraphics, Type = Text, Dynamic = False, Default = \"CoreGraphics.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Foundation, Type = Text, Dynamic = False, Default = \"foundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = UIKit, Type = Text, Dynamic = False, Default = \"UIKit", Scope = Public
	#tag EndConstant


	#tag Structure, Name = AutoResizeMask, Flags = &h1
		ScaleLeft as Boolean
		  ScaleWidth as Boolean
		  ScaleRight as Boolean
		  ScaleTop as Boolean
		  ScaleHeight as Boolean
		ScaleBottom as Boolean
	#tag EndStructure

	#tag Structure, Name = CGAffineTransform, Flags = &h0
		a as Single
		  b as Single
		  c as Single
		  d as Single
		  tx as Single
		ty as Single
	#tag EndStructure

	#tag Structure, Name = CGPoint, Flags = &h0
		x as single
		y as single
	#tag EndStructure

	#tag Structure, Name = CGRect, Flags = &h0
		origin as CGPoint
		rectSize as CGSize
	#tag EndStructure

	#tag Structure, Name = CGSize, Flags = &h0
		width as single
		height as single
	#tag EndStructure

	#tag Structure, Name = NSRange, Flags = &h0
		Location as UInteger
		Length as UInteger
	#tag EndStructure

	#tag Structure, Name = NSRect, Flags = &h0
		x as single
		  y as single
		  width as single
		height as single
	#tag EndStructure

	#tag Structure, Name = UIEdgeInsets32Bit, Flags = &h0
		Top as Single
		  Left as Single
		  Bottom as Single
		Right as Single
	#tag EndStructure

	#tag Structure, Name = UIEdgeInsets64Bit, Flags = &h0
		Top as Double
		  Left as Double
		  Bottom as Double
		Right as Double
	#tag EndStructure


	#tag Enum, Name = AnimationCurve, Type = Integer, Flags = &h1
		EaseInEaseOut
		  EaseIn
		  EaseOut
		Linear
	#tag EndEnum

	#tag Enum, Name = OldTransitionMode, Type = Integer, Flags = &h1
		None= 0
		  FlipFromLeft = 1
		  FlipFromRight= 2
		  CurlUp = 3
		CurlDown = 4
	#tag EndEnum

	#tag Enum, Name = TintAdjustmentMode, Type = Integer, Flags = &h1
		Automatic
		  Normal
		Dimmed
	#tag EndEnum

	#tag Enum, Name = TransitionMode, Type = Integer, Flags = &h1
		None= 0
		  FlipFromLeft = 1
		  FlipFromRight= 2
		  CurlUp = 3
		  CurlDown = 4
		  CrossDissolve = 5
		  FlipFromTop = 6
		FlipFromBottom = 7
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
