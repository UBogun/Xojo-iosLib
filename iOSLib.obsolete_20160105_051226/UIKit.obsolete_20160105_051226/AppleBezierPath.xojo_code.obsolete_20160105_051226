#tag Class
Protected Class AppleBezierPath
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AddArc(Center as FoundationFrameWork.NSPoint, radius as Double, startAngle as Double, endAngle As Double, optional clockwise as Boolean)
		  #if Target64Bit
		    Declare Sub addArcWithCenter lib UIKitLibName selector "addArcWithCenter:radius:startAngle:endAngle:clockwise:" _
		    (id as ptr, Center as FoundationFrameWork.nspoint, radius as Double, startAngle as Double, endAngle As Double, clockwise as Boolean)
		    addArcWithCenter (id, Center, Radius, startAngle, EndAngle, Clockwise)
		  #elseif Target32Bit
		    Declare Sub addArcWithCenter lib UIKitLibName selector "addArcWithCenter:radius:startAngle:endAngle:clockwise:" _
		    (id as ptr, Center as FoundationFrameWork.nspoint32Bit, radius as Single, startAngle as Single, endAngle As Single, clockwise as Boolean)
		    addArcWithCenter (id, Center.tonsPoint32, Radius, startAngle, EndAngle, Clockwise)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddClip()
		  Declare Sub addClip lib UIKitLibName selector "addClip" (id as ptr)
		  addClip(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCurve(EndPoint as FoundationFrameWork.NSPoint, ControlPoint1 as FoundationFrameWork.NSPoint, ControlPoint2 as FoundationFrameWork.NSPoint)
		  #if Target64Bit
		    Declare Sub addCurveToPoint lib UIKitLibName selector "addCurveToPoint:controlPoint1:controlPoint2:" _
		    (id as ptr, Endpoint as FoundationFrameWork.nspoint, ControlPoint1 as FoundationFrameWork.nspoint, ControlPoint2 as FoundationFrameWork.nspoint)
		    addCurveToPoint (id, EndPoint, ControlPoint1, ControlPoint2)
		  #elseif Target32Bit
		    Declare Sub addCurveToPoint lib UIKitLibName selector "addCurveToPoint:controlPoint1:controlPoint2:" _
		    (id as ptr, Endpoint as FoundationFrameWork.nspoint32Bit, ControlPoint1 as FoundationFrameWork.nspoint32Bit, ControlPoint2 as FoundationFrameWork.nspoint32Bit)
		    addCurveToPoint (id, EndPoint.tonspoint32, ControlPoint1.tonspoint32, ControlPoint2.tonspoint32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLine(Point as FoundationFrameWork.NSPoint)
		  #if Target64Bit
		    Declare Sub addLineToPoint lib UIKitLibName selector "addLineToPoint:" (id as ptr, Point as FoundationFrameWork.nspoint)
		    addLineToPoint (id, point)
		  #elseif Target32Bit
		    Declare Sub addLineToPoint lib UIKitLibName selector "addLineToPoint:" (id as ptr, Point as FoundationFrameWork.nspoint32Bit)
		    addLineToPoint (id, point.toNSPoint32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddQuadCurve(EndPoint as FoundationFrameWork.NSPoint, ControlPoint as FoundationFrameWork.NSPoint)
		  #if Target64Bit
		    Declare Sub addQuadCurveToPoint lib UIKitLibName selector "addQuadCurveToPoint:controlPoint:" _
		    (id as ptr, Endpoint as FoundationFrameWork.nspoint, ControlPoint as FoundationFrameWork.nspoint)
		    addQuadCurveToPoint (id, EndPoint, ControlPoint)
		  #elseif Target32Bit
		    Declare Sub addQuadCurveToPoint lib UIKitLibName selector "addQuadCurveToPoint:controlPoint:" _
		    (id as ptr, Endpoint as FoundationFrameWork.nspoint32Bit, ControlPoint as FoundationFrameWork.nspoint32Bit)
		    addQuadCurveToPoint (id, EndPoint.tonspoint32, ControlPoint.tonspoint32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendPath(Path as AppleBezierPath)
		  Declare Sub appendPath lib UIKitLibName selector "appendPath:" (id as ptr, Path as Ptr)
		  appendPath (id, path.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplyTransform(Transform as CGAffineTransform)
		  #if Target64Bit
		    Declare sub applyTransform lib UIKitLibName selector "applyTransform:" (id as ptr, Transform as CGAffineTransform)
		    applyTransform (id, Transform)
		  #elseif Target32Bit
		    Declare sub applyTransform lib UIKitLibName selector "applyTransform:" (id as ptr, Transform as CGAffineTransform32Bit)
		    applyTransform (id, Transform.TOCGAffineTransform32Bit)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  Declare Sub closePath lib UIKitLibName selector "closePath" (id as ptr)
		  closePath(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function bezierPath lib UIKitLibName selector "bezierPath" (id as ptr) as ptr
		  Super.Constructor (bezierPath(classptr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(x as double, y as double, w as double, h as double)
		  Constructor (FoundationFrameWork.NSMakeRect (x,y,w,h))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aRect as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    declare function bezierPathWithRect lib UIKitLibName selector "bezierPathWithRect:" (id as ptr, aRect as FoundationFrameWork.NSRect) as ptr
		    Super.Constructor (bezierPathWithRect(classptr, aRect))
		  #elseif Target32Bit
		    declare function bezierPathWithRect lib UIKitLibName selector "bezierPathWithRect:" (id as ptr, aRect as FoundationFrameWork.NSRect32Bit) as ptr
		    Super.Constructor (bezierPathWithRect(classptr, aRect.toNSRect32))
		  #endif
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(Point as FoundationFrameWork.NSPoint) As Boolean
		  #if Target64Bit
		    Declare Function containsPoint lib UIKitLibName selector "containsPoint:" (id as ptr, Ppoint as FoundationFrameWork.nspoint) as Boolean
		    return containsPoint (id, Point)
		  #elseif Target32Bit
		    Declare Function containsPoint lib UIKitLibName selector "containsPoint:" (id as ptr, Ppoint as FoundationFrameWork.nspoint32Bit) as Boolean
		    return containsPoint (id, Point.toNSPoint32)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Fill()
		  Declare Sub fill lib UIKitLibName selector "fill" (id as ptr)
		  fill(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillWithBlendMode(blendmode as CoreGraphicsFramework.CGBlendMode, alpha as double)
		  #if Target64Bit
		    Declare Sub fillWithBlendMode lib UIKitLibName selector "fillWithBlendMode:alpha:" (id as ptr, blendmode as CoreGraphicsFramework.CGBlendMode, Alpha as double)
		  #elseif Target32Bit
		    Declare Sub fillWithBlendMode lib UIKitLibName selector "fillWithBlendMode:alpha:" (id as ptr, blendmode as CoreGraphicsFramework.CGBlendMode, Alpha as single)
		  #endif
		  
		  fillWithBlendMode id, blendmode, alpha
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function fromCGPath(Path as AppleCGPath) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function bezierPathWithCGPath lib UIKitLibName selector "bezierPathWithCGPath:" (id as ptr, Path as Ptr) as ptr
		  dim result as new AppleBezierPath (bezierPathWithCGPath(classptr, Path.CFTypeRef))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLineDash(byref count as integer, byref phase as double) As double()
		  dim intptr as new MutableMemoryBlock(IntegerSize)
		  dim phaseptr as new MemoryBlock (IntegerSize)
		  dim mb as new MutableMemoryBlock (100 * IntegerSize)
		  dim myPattern() as double 
		  #if Target64Bit
		    Declare sub getLineDash lib UIKitLibName selector "getLineDash:count:phase:" (id as ptr,  pattern as ptr,  count as ptr,  phase as ptr)
		    getLineDash id, mb.data,  intptr.data, phaseptr.Data
		    count = intptr.Int64Value(0)
		    myPattern= mb.fromdoubleCArray (count)
		    phase = phaseptr.doubleValue(0)
		    return myPattern
		  #elseif Target32Bit
		    Declare sub getLineDash lib UIKitLibName selector "getLineDash:count:phase:" (id as ptr,  pattern as ptr,  count as ptr,  phase as ptr)
		    getLineDash id, mb.data,  intptr.data, phaseptr.Data
		    count = intptr.Int32Value(0)
		    myPattern = mb.fromSingleCArray (count)
		    phase = phaseptr.SingleValue(0)
		    return myPattern
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleBezierPath
		  Return if (aptr = nil, nil, new AppleBezierPath(aPtr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToPoint(Point as FoundationFrameWork.NSPoint)
		  #if Target64Bit
		    Declare Sub moveToPoint lib UIKitLibName selector "moveToPoint:" (id as ptr, Point as FoundationFrameWork.nspoint)
		    moveToPoint (id, point)
		  #elseif Target32Bit
		    Declare Sub moveToPoint lib UIKitLibName selector "moveToPoint:" (id as ptr, Point as FoundationFrameWork.nspoint32Bit)
		    moveToPoint (id, point.toNSPoint32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function PathWithArc(ArcCenter as FoundationFrameWork.NSPoint, radius as Double, startAngle as Double, endAngle as Double, optional clockwise as boolean) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    declare function bezierPathWithArcCenter lib UIKitLibName selector "bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:" _
		    (id as ptr, arcCenter as FoundationFrameWork.NSPoint, radius as Double, startAngle as Double, endAngle as Double, clockwise as boolean ) as ptr
		    dim result as new AppleBezierPath (bezierPathWithArcCenter(classptr, ArcCenter, radius, startAngle, endAngle, clockwise))
		  #elseif Target32Bit
		    declare function bezierPathWithArcCenter lib UIKitLibName selector "bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:" _
		    (id as ptr, arcCenter as FoundationFrameWork.NSPoint32Bit, radius as Single, startAngle as Single, endAngle as Single, clockwise as boolean ) as ptr
		    dim result as new AppleBezierPath (bezierPathWithArcCenter(classptr, arccenter.toNSPoint32, radius, startAngle, endAngle, clockwise))
		  #endif
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function PathWithOval(aRect as FoundationFrameWork.NSRect) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    declare function bezierPathWithOvalInRect lib UIKitLibName selector "bezierPathWithOvalInRect:" (id as ptr, aRect as FoundationFrameWork.NSRect) as ptr
		    dim result as new AppleBezierPath (bezierPathWithOvalInRect(classptr, aRect))
		  #elseif Target32Bit
		    declare function bezierPathWithOvalInRect lib UIKitLibName selector "bezierPathWithOvalInRect:" (id as ptr, aRect as FoundationFrameWork.NSRect32Bit) as ptr
		    dim result as new AppleBezierPath (bezierPathWithOvalInRect(classptr, aRect.toNSRect32))
		  #endif
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function PathWithRoundedRect(aRect as FoundationFrameWork.NSRect, CornerRadius As Double) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    declare function bezierPathWithRoundedRect lib UIKitLibName selector "bezierPathWithRoundedRect:cornerRadius:" (id as ptr, aRect as FoundationFrameWork.NSRect, radius as double) as ptr
		    dim result as new AppleBezierPath (bezierPathWithRoundedRect(classptr, aRect, CornerRadius))
		  #elseif Target32Bit
		    declare function bezierPathWithRoundedRect lib UIKitLibName selector "bezierPathWithRoundedRect:cornerRadius:" (id as ptr, aRect as FoundationFrameWork.NSRect32Bit, radius as Single) as ptr
		    dim result as new AppleBezierPath (bezierPathWithRoundedRect(classptr, aRect.toNSRect32, CornerRadius))
		  #endif
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function PathWithRoundedRect(aRect as FoundationFrameWork.NSRect, CornerRadii As FoundationFramework.NSSize, topLeft as boolean, topRight as Boolean, bottomLeft as Boolean, BottomRight as Boolean) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		  dim RectCorner as UInteger = if (topleft, 1, 0)
		  RectCorner = RectCorner and if (topRight, 2, 0)
		  RectCorner = RectCorner and if (bottomLeft, 4, 0)
		  RectCorner = RectCorner and if (BottomRight, 8, 0)
		  
		  #if Target64Bit
		    declare function bezierPathWithRoundedRectbyRoundingCorners lib UIKitLibName selector "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" _
		    (id as ptr, aRect as FoundationFrameWork.NSRect, RectCorner as UInteger, radii as FoundationFrameWork.NSSize) as ptr
		    dim result as new AppleBezierPath (bezierPathWithRoundedRectbyRoundingCorners (classptr, aRect, rectcorner, CornerRadii))
		  #elseif Target32Bit
		    declare function bezierPathWithRoundedRectbyRoundingCorners lib UIKitLibName selector "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" _
		    (id as ptr, aRect as FoundationFrameWork.NSRect32Bit, RectCorner as UInteger, radii as FoundationFrameWork.NSSize32Bit) as ptr
		    dim result as new AppleBezierPath (bezierPathWithRoundedRectbyRoundingCorners (classptr, aRect.toNSRect32, RectCorner, CornerRadii.toNSSize32))
		  #endif
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllPoints()
		  Declare Sub removeAllPoints lib UIKitLibName selector "removeAllPoints" (id as ptr)
		  removeAllPoints(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReversePath() As AppleBezierPath
		  Declare function bezierPathByReversingPath lib UIKitLibName selector "bezierPathByReversingPath" (id as ptr) as ptr
		  return new AppleBezierPath (bezierPathByReversingPath(id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLineDash(Pattern() As Double, count as integer, phase as double)
		  #if Target64Bit
		    dim mb as MutableMemoryBlock = MemoryBlockExtension.toDoubleCArray (Pattern)
		    Declare sub setLineDash lib UIKitLibName selector "setLineDash:count:phase:" (id as ptr, pattern as ptr, count as integer, phase as double)
		  #elseif Target32Bit
		    dim mb as MutableMemoryBlock = MemoryBlockExtension.toSingleCArray (Pattern)
		    Declare sub setLineDash lib UIKitLibName selector "setLineDash:count:phase:" (id as ptr, pattern as ptr, count as integer, phase as single)
		  #endif
		  setLineDash id, mb.Data, Pattern.Ubound + 1, phase
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stroke()
		  Declare Sub stroke lib UIKitLibName selector "stroke" (id as ptr)
		  stroke(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokeWithBlendMode(blendmode as CoreGraphicsFramework.CGBlendMode, alpha as double)
		  #if Target64Bit
		    Declare Sub strokeWithBlendMode lib UIKitLibName selector "strokeWithBlendMode:alpha:" (id as ptr, blendmode as CoreGraphicsFramework.CGBlendMode, Alpha as double)
		  #elseif Target32Bit
		    Declare Sub strokeWithBlendMode lib UIKitLibName selector "strokeWithBlendMode:alpha:" (id as ptr, blendmode as CoreGraphicsFramework.CGBlendMode, Alpha as single)
		  #endif
		  
		  strokeWithBlendMode id, blendmode, alpha
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function bounds lib UIKitLibName selector "bounds" (id as ptr) as FoundationFrameWork.NSrect
			    return bounds (id)
			  #elseif Target32Bit
			    Declare function bounds lib UIKitLibName selector "bounds" (id as ptr) as FoundationFrameWork.NSrect32Bit
			    return bounds (id).toNSRect
			  #endif
			End Get
		#tag EndGetter
		Bounds As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIBezierPath")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function currentPoint lib UIKitLibName selector "currentPoint" (id as ptr) as FoundationFrameWork.NSPoint
			    return currentPoint (id)
			  #elseif Target32Bit
			    Declare function currentPoint lib UIKitLibName selector "currentPoint" (id as ptr) as FoundationFrameWork.NSPoint32Bit
			    return currentPoint (id).toNSPoint
			  #endif
			End Get
		#tag EndGetter
		CurrentPoint As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function empty lib UIKitLibName selector "isEmpty" (id as ptr) as Boolean
			  return empty (id)
			End Get
		#tag EndGetter
		Empty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function flatness lib UIKitLibName selector "flatness" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function flatness lib UIKitLibName selector "flatness" (id as ptr) as Single
			  #endif
			  return flatness (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setFlatness lib UIKitLibName selector "setFlatness:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setFlatness lib UIKitLibName selector "setFlatness:" (id as ptr, value as Single)
			  #endif
			  setFlatness (id, value)
			End Set
		#tag EndSetter
		Flatness As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function LineCapStyle lib UIKitLibName selector "lineCapStyle" (id as ptr) as CoreGraphicsFramework.CGLineCap
			  return LineCapStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLineCapStyle lib UIKitLibName selector "setLineCapStyle:" (id as ptr, value as CoreGraphicsFramework.CGLineCap)
			  setlineCapStyle (id, value)
			End Set
		#tag EndSetter
		LineCapStyle As CoreGraphicsFramework.CGLineCap
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function LineJoinStyle lib UIKitLibName selector "lineJoinStyle" (id as ptr) as CoreGraphicsFramework.CGLineJoin
			  return LineJoinStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLineJoinStyle lib UIKitLibName selector "setLineJoinStyle:" (id as ptr, value as CoreGraphicsFramework.CGLineJoin)
			  setLineJoinStyle (id, value)
			End Set
		#tag EndSetter
		LineJoinStyle As CoreGraphicsFramework.CGLineJoin
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function lineWidth lib UIKitLibName selector "lineWidth" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function lineWidth lib UIKitLibName selector "lineWidth" (id as ptr) as Single
			  #endif
			  return lineWidth (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setLineWidth lib UIKitLibName selector "setLineWidth:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setLineWidth lib UIKitLibName selector "setLineWidth:" (id as ptr, value as Single)
			  #endif
			  setlinewidth (id, value)
			End Set
		#tag EndSetter
		LineWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function miterLimit lib UIKitLibName selector "miterLimit" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function miterLimit lib UIKitLibName selector "miterLimit" (id as ptr) as Single
			  #endif
			  return miterLimit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setMiterLimit lib UIKitLibName selector "setMiterLimit:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setMiterLimit lib UIKitLibName selector "setMiterLimit:" (id as ptr, value as Single)
			  #endif
			  setMiterLimit (id, value)
			End Set
		#tag EndSetter
		MiterLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function CGPath lib UIKitLibName selector "CGPath" (id as ptr) as ptr
			  return AppleCGPath.MakeFromCFTypeRef (CGpath(id))
			End Get
		#tag EndGetter
		toCGPath As AppleCGPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function usesEvenOddFillRule lib UIKitLibName selector "usesEvenOddFillRule" (id as ptr) as Boolean
			  return usesEvenOddFillRule (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setUsesEvenOddFillRule lib UIKitLibName selector "setUsesEvenOddFillRule:" (id as ptr, value as Boolean)
			  setUsesEvenOddFillRule (id, value)
			End Set
		#tag EndSetter
		UsesEvenOddFill As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="Empty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Flatness"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
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
			Name="LineCapStyle"
			Group="Behavior"
			Type="CoreGraphicsFramework.CGLineCap"
			EditorType="Enum"
			#tag EnumValues
				"0 - Butt"
				"1 - Round"
				"2 - Square"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineJoinStyle"
			Group="Behavior"
			Type="CoreGraphicsFramework.CGLineJoin"
			EditorType="Enum"
			#tag EnumValues
				"0 - Miter"
				"1 - Round"
				"2 - Bevel"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MiterLimit"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
		#tag ViewProperty
			Name="UsesEvenOddFill"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
