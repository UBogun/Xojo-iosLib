#tag Class
Protected Class AppleCALayer
Inherits AppleCAMediaTimingObject
	#tag Method, Flags = &h0
		Sub AddAnimation(animation as AppleCAAnimation, key as CFStringRef = "")
		  declare sub addAnimation lib QuartzCore selector "addAnimation:forKey:" (id as ptr, animation as ptr, key as CFStringref)
		  addAnimation id, animation.Id, key
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddSubLayer(ALAyer as AppleCALayer)
		  declare sub addSublayer lib QuartzCore selector "addSublayer:" (id as ptr, aLayer as ptr)
		  addSublayer id, ALAyer.id
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Animation(key as CFStringRef) As AppleCAAnimation
		  declare Function animationForKey lib QuartzCore selector "animationForKey:" (id as ptr, key as CFStringref) as Ptr
		  return AppleCAAnimation.MakeFromPtr (animationForKey (id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aLayer As AppleCALayer)
		  Declare Function initWithLayer lib QuartzCore selector "initWithLayer:" (id as ptr, aLayer as ptr) as Ptr
		  Super.Constructor (initWithLayer (alloc(ClassPtr), aLayer.Id))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointFromLayer(aPoint as NSPoint, aLayer as AppleCALayer) As NSPoint
		  #if Target64Bit
		    declare Function convertPointfromLayer lib QuartzCore selector "convertPoint:fromLayer:" (id as ptr, aPoint as NSPoint, aview as ptr) as NSPoint
		    return convertPointfromLayer (id, apoint, alayer.id)
		  #elseif Target32Bit
		    declare Function convertPointfromLayer lib QuartzCore selector "convertPoint:fromLayer:" (id as ptr, aPoint as NSPoint32Bit, aview as ptr) as NSPoint32Bit
		    return convertPointfromLayer (id, apoint.toNSPoint32, alayer.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToLayer(aPoint as NSPoint, aLayer as AppleCALayer) As NSPoint
		  #if Target64Bit
		    declare Function convertPointtoLayer lib QuartzCore selector "convertPoint:toLayer:" (id as ptr, aPoint as NSPoint, aview as ptr) as NSPoint
		    return convertPointtoLayer (id, apoint, alayer.id)
		  #elseif Target32Bit
		    declare Function convertPointtoLayer lib QuartzCore selector "convertPoint:toLayer:" (id as ptr, aPoint as NSPoint32Bit, aview as ptr) as NSPoint32Bit
		    return convertPointtoLayer (id, apoint.toNSPoint32, alayer.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertRectFromLayer(aRect as NSRect, aLayer as AppleCALayer) As NSRect
		  #if Target64Bit
		    declare Function ConvertRectFromLayer lib QuartzCore selector "convertRect:fromLayer:" (id as ptr, aRect as NSRect, aview as ptr) as nsrect
		    return ConvertRectFromLayer (id, arect, alayer.id)
		  #elseif Target32Bit
		    declare Function ConvertRectFromLayer lib QuartzCore selector "convertRect:fromLayer:" (id as ptr, aRect as NSRect32Bit, aview as ptr) as NSRect32Bit
		    return ConvertRectFromLayer (id, arect.toNSRect32, alayer.id).tonsrect
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertRectToLayer(aRect as NSRect, aLayer as AppleCALayer) As NSRect
		  #if Target64Bit
		    declare Function ConvertRectToLayer lib QuartzCore selector "convertRect:toLayer:" (id as ptr, aRect as NSRect, aview as ptr) as nsrect
		    return ConvertRectToLayer (id, arect, alayer.id)
		  #elseif Target32Bit
		    declare Function ConvertRectToLayer lib QuartzCore selector "convertRect:toLayer:" (id as ptr, aRect as NSRect32Bit, aview as ptr) as NSRect32Bit
		    return ConvertRectToLayer (id, arect.toNSRect32, alayer.id).tonsrect
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertTimeFromLayer(aTime as Double, aLayer as AppleCALayer) As Double
		  declare Function ConvertTimeFromLayer lib QuartzCore selector "convertTime:fromLayer:" (id as ptr, aTime as double, aLayer as ptr) as Double
		  return ConvertTimeFromLayer (id, atime, if(aLayer = NIL, NIL, alayer.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertTimeToLayer(aTime as Double, aLayer as AppleCALayer) As Double
		  declare Function ConvertTimeToLayer lib QuartzCore selector "convertTime:toLayer:" (id as ptr, aTime as double, aLayer as ptr) as Double
		  return ConvertTimeToLayer (id, atime, if (alayer = nil, NIL, alayer.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubLayer(ALayer as AppleCALayer, position as LayerOrderingMode)
		  declare sub insertSublayerBelow lib QuartzCore selector "insertSublayer:below" (id as ptr, aLayer as ptr)
		  declare sub insertSublayerAbove lib QuartzCore selector "insertSublayer:above" (id as ptr, aLayer as ptr)
		  declare sub replaceSublayer lib QuartzCore selector "replaceSublayer:with" (id as ptr, aLayer as ptr)
		  select case position
		  case LayerOrderingMode.Below
		    insertSublayerBelow (id, ALAyer.id)
		  case LayerOrderingMode.Above
		    insertSublayerAbove (id, ALAyer.id)
		  case LayerOrderingMode.Replace
		    replaceSublayer id, ALayer.id
		  end select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSubLayer(ALayer as AppleCALayer, index as UInt32)
		  declare sub insertSublayer lib QuartzCore selector "insertSublayer:atIndex:" (id as ptr, aLayer as ptr, Index as UInt32)
		  insertSublayer id, ALayer.id, index
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutIfNeeded()
		  // PerformLayoutIfNeeded
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LayoutSubLayers()
		  declare sub layoutSublayers lib QuartzCore selector "layoutSublayers" (id as ptr)
		  layoutSublayers id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleCALayer
		  return if (aptr = nil, nil, new AppleCALayer(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NeedsDisplayForKey(aKey As CFStringRef) As Boolean
		  Declare Function needsDisplayForKey lib QuartzCore selector "needsDisplayForKey:" (id as ptr, key as CFStringRef) as Boolean
		  return needsDisplayForKey (ClassPtr, aKey)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PauseAnimation()
		  dim offset as double = ConvertTimeFromLayer (CACurrentMediaTime, NIL)
		  Speed = 0
		  TimeOffset = offset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllAnimations()
		  declare Sub RemoveAllAnimations lib QuartzCore selector "removeAllAnimations" (id as ptr)
		  RemoveAllAnimations id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveAnimation(key as CFStringRef) As AppleCAAnimation
		  declare Sub RemoveAnimationForKey lib QuartzCore selector "removeAnimationForKey:" (id as ptr, key as CFStringref)
		  RemoveAnimationForKey id, key
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFromSuperlayer()
		  declare sub removeFromSuperlayer lib QuartzCore selector "removeFromSuperlayer" (id as ptr)
		  removeFromSuperlayer id
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResumeAnimation()
		  dim PausedTime as Double = TimeOffset
		  Speed = 1
		  TimeOffset = 0
		  BeginTime = 0
		  dim timesincepause as double =  ConvertTimeFromLayer (CACurrentMediaTime, nil) - PausedTime
		  BeginTime = timesincepause
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function affineTransform lib QuartzCore selector "affineTransform" (id as ptr) as CGAffineTransform32Bit
			    return affineTransform(id).toCGAffineTransform
			  #elseif Target64Bit
			    DEclare Function affineTransform lib QuartzCore selector "affineTransform" (id as ptr) as CGAffineTransform
			    return affineTransform (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setAffineTransform lib QuartzCore selector "setAffineTransform:" (id as ptr, value as CGAffineTransform32Bit)
			    setAffineTransform id, value.toCGAffineTransform32Bit
			  #elseif Target64Bit
			    DEclare Sub setAffineTransform lib QuartzCore selector "setAffineTransform:" (id as ptr, value as CGAffineTransform)
			    setAffineTransform id, value
			  #endif
			  
			End Set
		#tag EndSetter
		AffineTransform As CGAffineTransform
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function anchorPoint lib QuartzCore selector "anchorPoint" (id as ptr) as NSPoint32Bit
			    return anchorPoint(id).toNSPoint
			  #elseif Target64Bit
			    DEclare Function anchorPoint lib QuartzCore selector "anchorPoint" (id as ptr) as NSPoint
			    return anchorPoint (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setAnchorPoint lib QuartzCore selector "setAnchorPoint:" (id as ptr, value as NSPoint32Bit)
			    setAnchorPoint id, value.toNSPoint32
			  #elseif Target64Bit
			    DEclare Sub setAnchorPoint lib QuartzCore selector "setAnchorPoint:" (id as ptr, value as NSPoint)
			    setAnchorPoint id, value
			  #endif
			  
			End Set
		#tag EndSetter
		AnchorPoint As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function anchorPointZ lib QuartzCore selector "anchorPointZ" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function anchorPointZ lib QuartzCore selector "anchorPointZ" (id as ptr) as Double
			  #endif
			  return anchorPointZ (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setAnchorPointZ lib QuartzCore selector "setAnchorPointZ:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setAnchorPointZ lib QuartzCore selector "setAnchorPointZ:" (id as ptr, value as Double)
			  #endif
			  setAnchorPointZ id, value
			  
			End Set
		#tag EndSetter
		AnchorPointZ As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function animationKeys lib QuartzCore selector "animationKeys" (id as Ptr) as ptr
			  return AppleArray.MakeFromPtr (animationKeys (id))
			  
			End Get
		#tag EndGetter
		AnimationKeys As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function backgroundcolor lib QuartzCore selector "backgroundColor" (id as ptr) as ptr
			  return new AppleCGColor (backgroundcolor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setbackgroundcolor lib QuartzCore selector "setBackgroundColor:" (id as ptr, value as ptr)
			  setbackgroundcolor id, value.CFTypeRef
			End Set
		#tag EndSetter
		BackgroundColor As AppleCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function borderColor lib QuartzCore selector "borderColor" (id as ptr) as ptr
			  return new AppleCGColor (borderColor (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setBorderColor lib QuartzCore selector "setBorderColor:" (id as ptr, value as ptr)
			  setBorderColor id, value.CFTypeRef
			  
			End Set
		#tag EndSetter
		BorderColor As AppleCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function borderWidth lib QuartzCore selector "borderWidth" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function borderWidth lib QuartzCore selector "borderWidth" (id as ptr) as Double
			  #endif
			  return borderWidth (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setBorderWidth lib QuartzCore selector "setBorderWidth:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setBorderWidth lib QuartzCore selector "setBorderWidth:" (id as ptr, value as Double)
			  #endif
			  setBorderWidth id, value
			  
			End Set
		#tag EndSetter
		BorderWidth As Double
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

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CALayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // return AppleObject.MakeFromPtr (getContents)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // setcontents (value.GeneralID)
			  
			End Set
		#tag EndSetter
		Contents As AppleGeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    Declare Function contentsCenter lib QuartzCore selector "contentsCenter" (id as ptr) as NSRect32Bit
			    return contentsCenter(id).toNSRect
			  #elseif Target64Bit
			    Declare Function contentsCenter lib QuartzCore selector "contentsCenter" (id as ptr) as NSRect
			    return contentsCenter (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setContentsCenter lib QuartzCore selector "setContentsCenter:" (id as ptr, value as NSRect32Bit)
			    setContentsCenter id, value.toNSRect32
			  #elseif Target64Bit
			    DEclare Sub setContentsCenter lib QuartzCore selector "setContentsCenter:" (id as ptr, value as nsrect)
			    setContentsCenter id, value
			  #endif
			  
			End Set
		#tag EndSetter
		ContentsCenter As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function contentsAreFlipped lib QuartzCore selector "contentsAreFlipped" (id as ptr) as Boolean
			  return contentsAreFlipped (id)
			  
			End Get
		#tag EndGetter
		ContentsFlipped As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			This property is hidden to avoid wrong string values. Use contentPosition instead.
		#tag EndNote
		#tag Getter
			Get
			  declare function contentsGravity lib QuartzCore selector "contentsGravity" (id as ptr) as cfstringref
			  return contentsGravity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setContentsGravity lib QuartzCore selector "setContentsGravity:" (id as ptr, value as cfstringref)
			  setContentsGravity id, value
			End Set
		#tag EndSetter
		Attributes( hidden ) ContentsGravity As CFStringRef
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as text = GravityDict.TextkeyForObject(new AppleCFString(ContentsGravity))
			  if not result.Empty then
			    select case result
			    case kCAGravityBottom
			      return calayerContentPosition.Bottom
			    case kCAGravityBottomLeft
			      return calayerContentPosition.BottomLeft
			    case kCAGravityBottomRight
			      return calayerContentPosition.BottomRight
			    case kCAGravityCenter
			      return calayerContentPosition.Center
			    case kCAGravityLeft
			      return calayerContentPosition.Left
			    case kCAGravityResize
			      return calayerContentPosition.Resize
			    case kCAGravityResizeAspect
			      return calayerContentPosition.ResizeProportionally
			    case kCAGravityResizeAspectFill
			      return calayerContentPosition.FillProportionally
			    case kCAGravityRight
			      return calayerContentPosition.Right
			    case kCAGravityTop
			      return calayerContentPosition.Top
			    case kCAGravityTopLeft
			      return calayerContentPosition.TopLeft
			    case kCAGravityTopRight
			      return calayerContentPosition.TopRight
			    end select
			  end if
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim ConstantValue as text
			  Select case value
			  case calayerContentPosition.Bottom
			    ConstantValue = kCAGravityBottom
			  case calayerContentPosition.BottomLeft
			    ConstantValue =kCAGravityBottomLeft
			  case calayerContentPosition.BottomRight
			    ConstantValue = kCAGravityBottomRight
			  case calayerContentPosition.Center
			    ConstantValue = kCAGravityCenter
			  case calayerContentPosition.Left
			    ConstantValue = kCAGravityLeft
			  case calayerContentPosition.Resize
			    ConstantValue = kCAGravityResize
			  case calayerContentPosition.ResizeProportionally
			    ConstantValue =kCAGravityResizeAspect
			  case calayerContentPosition.FillProportionally
			    ConstantValue = kCAGravityResizeAspectFill
			  case calayerContentPosition.Right
			    ConstantValue =kCAGravityRight
			  case calayerContentPosition.Top
			    ConstantValue = kCAGravityTop
			  case calayerContentPosition.TopLeft
			    ConstantValue =kCAGravityTopLeft
			  case calayerContentPosition.TopRight
			    ConstantValue =kCAGravityTopRight
			  end select
			  ContentsGravity =GravityDict.TextForKey(ConstantValue)
			End Set
		#tag EndSetter
		ContentsPositioning As caLayerContentPosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function contentsScale lib QuartzCore selector "contentsScale" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function contentsScale lib QuartzCore selector "contentsScale" (id as ptr) as Double
			  #endif
			  return contentsScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setContentsScale lib QuartzCore selector "setContentsScale:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setContentsScale lib QuartzCore selector "setContentsScale:" (id as ptr, value as Double)
			  #endif
			  setContentsScale id, value
			  
			End Set
		#tag EndSetter
		ContentsScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function cornerRadius lib QuartzCore selector "cornerRadius" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function cornerRadius lib QuartzCore selector "cornerRadius" (id as ptr) as Double
			  #endif
			  return cornerRadius (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setCornerRadius lib QuartzCore selector "setCornerRadius:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setCornerRadius lib QuartzCore selector "setCornerRadius:" (id as ptr, value as Double)
			  #endif
			  setCornerRadius id, value
			  
			End Set
		#tag EndSetter
		CornerRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim myptr as ptr = getDelegate
			  return if (myptr <> NIL, new AppleView (myptr), NIL)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDelegate value.id
			End Set
		#tag EndSetter
		DelegateAppleView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function doubleSided lib QuartzCore selector "isDoubleSided" (id as ptr) as Boolean
			  return doubleSided (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub doubleSided lib QuartzCore selector "setDoubleSided:" (id as ptr, value as boolean)
			  doubleSided id, value
			  
			End Set
		#tag EndSetter
		DoubleSided As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function drawsAsynchronously lib QuartzCore selector "drawsAsynchronously" (id as ptr) as Boolean
			  return drawsAsynchronously (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setDrawsAsynchronously lib QuartzCore selector "setDrawsAsynchronously:" (id as ptr, value as boolean)
			  setDrawsAsynchronously id, value
			End Set
		#tag EndSetter
		DrawsAsynchronously As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function allowsEdgeAntialiasing lib QuartzCore selector "allowsEdgeAntialiasing" (id as ptr) as Boolean
			  return allowsEdgeAntialiasing (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setAllowsEdgeAntialiasing lib QuartzCore selector "setAllowsEdgeAntialiasing:" (id as ptr, value as Boolean)
			  setAllowsEdgeAntialiasing id, value
			  
			End Set
		#tag EndSetter
		EdgeAntialiasing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function edgeAntialiasingMask lib QuartzCore selector "edgeAntialiasingMask" (id as ptr) as UInt32
			  return new AppleCAEdgeAntialiasingMask (edgeAntialiasingMask(id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setEdgeAntialiasingMask lib QuartzCore selector "setEdgeAntialiasingMask:" (id as ptr, value as uint32)
			  setEdgeAntialiasingMask id, value.ID
			End Set
		#tag EndSetter
		EdgeAntialiasingMask As AppleCAEdgeAntialiasingMask
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
			  DEclare Function geometryFlipped lib QuartzCore selector "isGeometryFlipped" (id as ptr) as Boolean
			  return geometryFlipped (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setGeometryFlipped lib QuartzCore selector "setGeometryFlipped:" (id as ptr, value as Boolean)
			  setGeometryFlipped id, value
			  
			End Set
		#tag EndSetter
		GeometryFlipped As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mGravLib as AppleMutableDictionary
			  if mGravLib = nil then
			    mGravLib = new AppleMutableDictionary (12)
			    mGravLib.ValueForKey (kCAGravityBottom) = SystemConstantName (kCAGravityBottom, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityBottomRight) = SystemConstantName (kCAGravityBottomRight, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityBottomLeft) = SystemConstantName (kCAGravityBottomLeft, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityCenter) = SystemConstantName (kCAGravityCenter, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityLeft) = SystemConstantName (kCAGravityLeft, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityResize) = SystemConstantName (kCAGravityResize, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityResizeAspect) = SystemConstantName (kCAGravityResizeAspect, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityResizeAspectFill) = SystemConstantName (kCAGravityResizeAspectFill, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityRight) = SystemConstantName (kCAGravityRight, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityTop) = SystemConstantName (kCAGravityTop, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityTopLeft) = SystemConstantName (kCAGravityTopLeft, QuartzCorePath)
			    mGravLib.ValueForKey (kCAGravityTopRight) = SystemConstantName (kCAGravityTopRight, QuartzCorePath)
			  end if
			  return mGravLib
			End Get
		#tag EndGetter
		Private Shared GravityDict As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function allowsGroupOpacity lib QuartzCore selector "allowsGroupOpacity" (id as ptr) as Boolean
			  return allowsGroupOpacity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setAllowsGroupOpacity lib QuartzCore selector "setAllowsGroupOpacity:" (id as ptr, value as Boolean)
			  setAllowsGroupOpacity id, value
			  
			End Set
		#tag EndSetter
		GroupOpacity As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return bounds.Size_.Height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Bounds.Size_.Height = value
			End Set
		#tag EndSetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function hidden lib QuartzCore selector "isHidden" (id as ptr) as Boolean
			  return hidden (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setHidden lib QuartzCore selector "setHidden:" (id as ptr, value as Boolean)
			  setHidden id, value
			  
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Position.x
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  position.x = value
			End Set
		#tag EndSetter
		Left As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function mask lib QuartzCore selector "mask" (id as ptr) as ptr
			  dim myptr as ptr = mask (id)
			  return if (myptr <> NIL, new AppleCALayer (myptr), NIL)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setMask lib QuartzCore selector "setMask:" (id as ptr, value as ptr)
			  setMask id, value.Id
			End Set
		#tag EndSetter
		Mask As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function masksToBounds lib QuartzCore selector "masksToBounds" (id as ptr) as Boolean
			  return masksToBounds (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setMasksToBounds lib QuartzCore selector "setMasksToBounds:" (id as ptr, value as Boolean)
			  setMasksToBounds id, value
			  
			End Set
		#tag EndSetter
		MasksToBounds As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function modelLayer lib QuartzCore selector "modelLayer" (id as ptr) as ptr
			  dim myptr as ptr = modelLayer (id)
			  return if (myptr <> NIL, new AppleCALayer (myptr), NIL)
			  
			End Get
		#tag EndGetter
		ModelLayer As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getname
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setname value
			End Set
		#tag EndSetter
		Name As CFStringRef
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function needsDisplayOnBoundsChange lib QuartzCore selector "needsDisplayOnBoundsChange" (id as ptr) as Boolean
			  return needsDisplayOnBoundsChange (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setNeedsDisplayOnBoundsChange lib QuartzCore selector "setNeedsDisplayOnBoundsChange:" (id as ptr, value as Boolean)
			  setneedsDisplayOnBoundsChange id, value
			End Set
		#tag EndSetter
		NeedsDisplayOnBoundsChange As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function opacity lib QuartzCore selector "opacity" (id as ptr) as single
			  return opacity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setOpacity lib QuartzCore selector "setOpacity:" (id as ptr, value as single)
			  setopacity id, value
			  
			End Set
		#tag EndSetter
		Opacity As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // return getOpaque
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // setOpaque (value)
			End Set
		#tag EndSetter
		Opaque As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function position lib QuartzCore selector "position" (id as ptr) as NSPoint32Bit
			    return position(id).toNSPoint
			  #elseif Target64Bit
			    DEclare Function position lib QuartzCore selector "position" (id as ptr) as NSPoint
			    return position (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setPosition lib QuartzCore selector "setPosition:" (id as ptr, value as NSPoint32Bit)
			    setPosition id, value.toNSPoint32
			  #elseif Target64Bit
			    DEclare Sub setPosition lib QuartzCore selector "setPosition:" (id as ptr, value as NSPoint)
			    setPosition id, value
			  #endif
			  
			End Set
		#tag EndSetter
		Position As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function preferredFrameSize lib QuartzCore selector "preferredFrameSize" (id as ptr) as NSSize32Bit
			    return preferredFrameSize(id).toNSSize
			  #elseif Target64Bit
			    DEclare Function preferredFrameSize lib QuartzCore selector "preferredFrameSize" (id as ptr) as NSSize
			    return preferredFrameSize (id)
			  #endif
			  
			End Get
		#tag EndGetter
		PreferredFrameSize As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function presentationLayer lib QuartzCore selector "presentationLayer" (id as ptr) as ptr
			  return new AppleCALayer (presentationLayer (id))
			  
			End Get
		#tag EndGetter
		PresentationLayer As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function rasterizationScale lib QuartzCore selector "rasterizationScale" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function rasterizationScale lib QuartzCore selector "rasterizationScale" (id as ptr) as Double
			  #endif
			  return rasterizationScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setRasterizationScale lib QuartzCore selector "setRasterizationScale:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setRasterizationScale lib QuartzCore selector "setRasterizationScale:" (id as ptr, value as Double)
			  #endif
			  setRasterizationScale id, value
			  
			End Set
		#tag EndSetter
		RasterizationScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function shadowColor lib QuartzCore selector "shadowColor" (id as ptr) as ptr
			  return new AppleCGColor (shadowColor (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShadowColor lib QuartzCore selector "setShadowColor:" (id as ptr, value as ptr)
			  setShadowColor id, value.CFTypeRef
			End Set
		#tag EndSetter
		ShadowColor As AppleCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function shadowOffset lib QuartzCore selector "shadowOffset" (id as ptr) as NSSize32Bit
			    return shadowOffset(id).toNSSize
			  #elseif Target64Bit
			    DEclare Function shadowOffset lib QuartzCore selector "shadowOffset" (id as ptr) as NSSize
			    return shadowOffset (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setShadowOffset lib QuartzCore selector "setShadowOffset:" (id as ptr, value as NSSize32Bit)
			    setShadowOffset id, value.toNSSize32
			  #elseif Target64Bit
			    DEclare Sub setShadowOffset lib QuartzCore selector "setShadowOffset:" (id as ptr, value as NSSize)
			    setShadowOffset id, value
			  #endif
			End Set
		#tag EndSetter
		ShadowOffset As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function shadowOpacity lib  QuartzCore selector "shadowOpacity" (id as ptr) as single
			  return shadowOpacity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShadowOpacity lib QuartzCore selector "setShadowOpacity:" (id as ptr, value as single)
			  setShadowOpacity id, value
			  
			End Set
		#tag EndSetter
		ShadowOpacity As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function shadowPath lib  QuartzCore selector "shadowPath" (id as ptr) as Ptr
			  return new AppleCGPath (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShadowPath lib QuartzCore selector "setShadowPath:" (id as ptr, value as Ptr)
			  setShadowPath id, value.CFTypeRef
			  
			End Set
		#tag EndSetter
		ShadowPath As AppleCGPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function shadowRadius lib QuartzCore selector "shadowRadius" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function shadowRadius lib QuartzCore selector "shadowRadius" (id as ptr) as Double
			  #endif
			  return shadowRadius (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setShadowRadius lib QuartzCore selector "setShadowRadius:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setShadowRadius lib QuartzCore selector "setShadowRadius:" (id as ptr, value as Double)
			  #endif
			  setShadowRadius id, value
			  
			End Set
		#tag EndSetter
		ShadowRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function shouldRasterize lib QuartzCore selector "shouldRasterize" (id as ptr) as Boolean
			  return shouldRasterize (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShouldRasterize lib QuartzCore selector "setShouldRasterize:" (id as ptr, value as Boolean)
			  setShouldRasterize id, value
			End Set
		#tag EndSetter
		ShouldRasterize As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function sublayers lib QuartzCore selector "sublayers" (id as ptr) as ptr
			  return  AppleArray.MakeFromPtr (sublayers (id))
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setSubLayers lib QuartzCore selector "setSublayers:" (id as ptr, value as ptr)
			  setSubLayers id, value.Id
			  
			End Set
		#tag EndSetter
		SubLayers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function sublayerTransform lib QuartzCore selector "sublayerTransform" (id as ptr) as CATransform3D32Bit
			    return sublayerTransform(id).toCATransform3D
			  #elseif Target64Bit
			    DEclare Function sublayerTransform lib QuartzCore selector "sublayerTransform" (id as ptr) as CATransform3D
			    return sublayerTransform (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setSublayerTransform lib QuartzCore selector "setSublayerTransform:" (id as ptr, value as CATransform3D32Bit)
			    setSublayerTransform id, value.toCATransform3D32Bit
			  #elseif Target64Bit
			    DEclare Sub setSublayerTransform lib QuartzCore selector "setSublayerTransform:" (id as ptr, value as CATransform3D)
			    setSublayerTransform id, value
			  #endif
			  
			End Set
		#tag EndSetter
		SublayerTransform As CATransform3D
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function superlayer lib QuartzCore selector "superlayer" (id as ptr) as ptr
			  dim myptr as ptr = superlayer (id)
			  return if (myptr <> NIL, new AppleCALayer (myptr), NIL)
			  
			End Get
		#tag EndGetter
		SuperLayer As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Position.y
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  position.y = value
			End Set
		#tag EndSetter
		Top As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function transform lib QuartzCore selector "transform" (id as ptr) as CATransform3D32Bit
			    return transform(id).toCATransform3D
			  #elseif Target64Bit
			    DEclare Function transform lib QuartzCore selector "transform" (id as ptr) as CATransform3D
			    return transform (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setTransform lib QuartzCore selector "setTransform:" (id as ptr, value as CATransform3D32Bit)
			    setTransform id, value.toCATransform3D32Bit
			  #elseif Target64Bit
			    DEclare Sub setTransform lib QuartzCore selector "setTransform:" (id as ptr, value as CATransform3D)
			    setTransform id, value
			  #endif
			  
			End Set
		#tag EndSetter
		Transform As CATransform3D
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return bounds.Size_.Width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Bounds.Size_.Width = value
			End Set
		#tag EndSetter
		Width As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function zPosition lib QuartzCore selector "zPosition" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function zPosition lib QuartzCore selector "zPosition" (id as ptr) as Double
			  #endif
			  return zPosition (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setZPosition lib QuartzCore selector "setZPosition:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setZPosition lib QuartzCore selector "setZPosition:" (id as ptr, value as Double)
			  #endif
			  setZPosition id, value
			  
			End Set
		#tag EndSetter
		ZPosition As Double
	#tag EndComputedProperty


	#tag Constant, Name = kCAGravityBottom, Type = Text, Dynamic = False, Default = \"kCAGravityBottom", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityBottomLeft, Type = Text, Dynamic = False, Default = \"kCAGravityBottomLeft", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityBottomRight, Type = Text, Dynamic = False, Default = \"kCAGravityBottomRight", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityCenter, Type = Text, Dynamic = False, Default = \"kCAGravityCenter", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityLeft, Type = Text, Dynamic = False, Default = \"kCAGravityLeft", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityResize, Type = Text, Dynamic = False, Default = \"kCAGravityResize", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityResizeAspect, Type = Text, Dynamic = False, Default = \"kCAGravityResizeAspect", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityResizeAspectFill, Type = Text, Dynamic = False, Default = \"kCAGravityResizeAspectFill", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityRight, Type = Text, Dynamic = False, Default = \"kCAGravityRight", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityTop, Type = Text, Dynamic = False, Default = \"kCAGravityTop", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityTopLeft, Type = Text, Dynamic = False, Default = \"kCAGravityTopLeft", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityTopRight, Type = Text, Dynamic = False, Default = \"kCAGravityTopRight", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = CaLayerContentPosition, Type = Integer, Flags = &h0
		Center
		  Top
		  Bottom
		  Left
		  Right
		  TopLeft
		  TopRight
		  BottomLeft
		  BottomRight
		  Resize
		  ResizeProportionally
		FillProportionally
	#tag EndEnum

	#tag Enum, Name = LayerOrderingMode, Type = Integer, Flags = &h0
		Above = 1
		  Below = -1
		Replace = 0
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AnchorPointZ"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Autoreverses"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentsPositioning"
			Group="Behavior"
			Type="caLayerContentPosition"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Left"
				"4 - Right"
				"5 - TopLeft"
				"6 - TopRight"
				"7 - BottomLeft"
				"8 - BottomRight"
				"9 - Resize"
				"10 - ResizeProportionally"
				"11 - FillProportionally"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentsScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CornerRadius"
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
			Name="DoubleSided"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawsAsynchronously"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EdgeAntialiasing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillMode"
			Group="Behavior"
			Type="FillModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Remove"
				"1 - Remain"
				"2 - Reset"
				"3 - Both"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometryFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GroupOpacity"
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
			Name="MagnificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MasksToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilterBias"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsDisplayOnBoundsChange"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opacity"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RasterizationScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatCount"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowOpacity"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldRasterize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOffset"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
