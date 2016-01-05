#tag Class
Protected Class AppleCGMutablePath
Inherits AppleCGPath
	#tag Method, Flags = &h0
		Sub AddArc(x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		  'AddArc  x, y, radius, startAngle, EndAngle, ClockWise, CGAffineTransformIdentity
		  CGPathAddArc mCFTypeRef, x, y, radius, startAngle, EndAngle, ClockWise
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddArc(x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean, aTransform as CGAffineTransform)
		  CGPathAddArc mCFTypeRef, aTransform, x, y, radius, startAngle, EndAngle, ClockWise
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddArcToPoint(x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  AddArcToPoint x1, y1, x2, y2, radius, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddArcToPoint(x1 as double, y1 as double, x2 as double, y2 as double, radius as double, aTransform as CGAffineTransform)
		  CGPathAddArcToPoint mCFTypeRef, aTransform, x1, y1, x2, y2, radius
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCurvetoPoint(cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double)
		  AddCurvetoPoint cp1x, cp1y, cp2x, cp2y, x, y, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCurvetoPoint(cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double, aTransform as CGAffineTransform)
		  CGPathAddCurveToPoint mCFTypeRef, aTransform, cp1x, cp1y, cp2x, cp2y, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddEllipse(aRect as FoundationFramework.NSRect)
		  AddEllipse arect, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddEllipse(aRect as FoundationFramework.NSRect, aTransform as CGAffineTransform)
		  CGPathAddEllipseInRect mCFTypeRef, aTransform, arect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLines(Points As AppleArray, Count As UInteger = 0)
		  AddLines  Points, count, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLines(Points As AppleArray, Count As UInteger = 0, Transform As CGAffineTransform)
		  if count = 0 then count = points.Count/2
		  CGPathAddLines mcftyperef,  Transform, Points.id, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLineToPoint(x as double, y as double)
		  AddLineToPoint  x, y, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLineToPoint(x as double, y as double, atransform as CGAffineTransform)
		  CGPathAddLineToPoint mCFTypeRef, atransform, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPath(aPath as AppleCGPath)
		  AddPath apath, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPath(aPath as AppleCGPath, atransform as CGAffineTransform)
		  CGPathAddPath mcftYpeRef, atransform, aPath.mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddQuadCurvetoPoint(cpx as double, cpy as double, x as double, y as double)
		  AddQuadCurveToPoint  cpx, cpy,  x, y, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddQuadCurvetoPoint(cpx as double, cpy as double, x as double, y as double, aTransform as CGAffineTransform)
		  CGPathAddQuadCurveToPoint mCFTypeRef, aTransform, cpx, cpy,  x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRect(aRect as FoundationFramework.NSRect)
		  addrect arect, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRect(aRect as FoundationFramework.NSRect, aTransform as CGAffineTransform)
		  CGPathAddRect mCFTypeRef, aTransform, arect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRects(Rects As AppleArray, Count As UInteger = 0)
		  AddRects  Rects, count, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRects(Rects As AppleArray, Count As UInteger = 0, Transform As CGAffineTransform)
		  if count = 0 then count = rects.Count/2
		  CGPathAddRects mcftyperef,  Transform, Rects.id, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRelativeArc(x as double, y as double, radius as double, startAngle as Double, Delta as Double)
		  AddRelativeArc  x, y, radius, startAngle, delta,  TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRelativeArc(x as double, y as double, radius as double, startAngle as Double, Delta as Double, atransform as CGAffineTransform)
		  CGPathAddRelativeArc mCFTypeRef, atransform, x, y, radius, startAngle, Delta
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRoundedRect(aRect as FoundationFramework.NSRect, CornerWidth as Double, CornerHeight as Double)
		  AddRoundedRect arect, CornerWidth, CornerHeight, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRoundedRect(aRect as FoundationFramework.NSRect, CornerWidth as Double, CornerHeight as Double, aTransform as CGAffineTransform)
		  CGPathAddRoundedRect mCFTypeRef, aTransform, arect, CornerWidth, CornerHeight
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddArc(APathRef as Ptr, aTransform as CGAffineTransform, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		  #if Target64Bit
		    Declare Sub CGPathAddArc lib CoreGraphicsLibName _
		    (id as ptr, aTransform as CGAffineTransform, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		    CGPathAddArc (APathRef, aTransform, x, y, radius, startAngle, EndAngle, ClockWise)
		  #elseif Target32Bit
		    Declare Sub CGPathAddArc lib CoreGraphicsLibName _
		    (id as ptr, aTransform as CGAffineTransform32Bit, x as single, y as single, radius as single, startAngle as single, EndAngle As single, ClockWise As Boolean)
		    CGPathAddArc (APathRef, aTransform.toCGAffineTransform32Bit, x, y, radius, startAngle, EndAngle, ClockWise)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddArc(APathRef as Ptr, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		  #if Target64Bit
		    Declare Sub CGPathAddArc lib CoreGraphicsLibName _
		    (id as ptr, aTransform as Ptr, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		    CGPathAddArc (APathRef, Nil, x, y, radius, startAngle, EndAngle, ClockWise)
		  #elseif Target32Bit
		    Declare Sub CGPathAddArc lib CoreGraphicsLibName _
		    (id as ptr, aTransform as Ptr, x as single, y as single, radius as single, startAngle as single, EndAngle As single, ClockWise As Boolean)
		    CGPathAddArc (APathRef, Nil, x, y, radius, startAngle, EndAngle, ClockWise)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddArcToPoint(APathRef as Ptr, aTransform as CGAffineTransform, x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  #if Target64Bit
		    Declare Sub CGPathAddArcToPoint lib CoreGraphicsLibName _
		    (Id as Ptr, aTransform as CGAffineTransform, x1 as double, y1 as double,  x2 as double, y2 as double, radius as double)
		    CGPathAddArcToPoint (APathRef, aTransform, x1, y1, x2, y2, radius)
		  #elseif Target32Bit
		    Declare Sub CGPathAddArcToPoint lib CoreGraphicsLibName _
		    (Id as Ptr, aTransform as CGAffineTransform32Bit, x1 as single, y1 as single,  x2 as single, y2 as single, radius as single)
		    CGPathAddArcToPoint (APathRef, aTransform.toCGAffineTransform32Bit, x1, y1, x2, y2, radius)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddCurveToPoint(APathRef as Ptr, aTransform as CGAffineTransform, cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGPathAddCurveToPoint lib CoreGraphicsLibName _
		    (Id as Ptr, aTransform as CGAffineTransform,cp1x as double, cp1y as double,  cp2x as double, cp2y as double, x as double, y as double)
		    CGPathAddCurveToPoint (APathRef, aTransform,cp1x, cp1y, cp2x, cp2y, x, y)
		  #elseif Target32Bit
		    Declare Sub CGPathAddCurveToPoint lib CoreGraphicsLibName _
		    (Id as Ptr, aTransform as CGAffineTransform32Bit,cp1x as single, cp1y as single,  cp2x as single, cp2y as single, x as single, y as single)
		    CGPathAddCurveToPoint (APathRef, aTransform.toCGAffineTransform32Bit,cp1x, cp1y, cp2x, cp2y, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddEllipseInRect(APathRef as Ptr, aTransform as CGAffineTransform, aRect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare Sub CGPathAddEllipseInRect lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform, aRect  as FoundationFramework.NSRect)
		    CGPathAddEllipseInRect (APathRef, aTransform, aRect)
		  #elseif Target32Bit
		    Declare Sub CGPathAddEllipseInRect lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit, aRect as FoundationFramework.NSRect32Bit)
		    CGPathAddEllipseInRect (APathRef, aTransform.toCGAffineTransform32Bit, aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddLines(APathRef as Ptr, aTransform as CGAffineTransform, PointArray as Ptr, Count As UInteger)
		  #if Target64Bit
		    Declare Sub CGPathAddLines lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform, Points as Ptr, Count As Uinteger)
		    CGPathAddLines (APathRef, aTransform, pointarray, count)
		  #elseif Target32Bit
		    Declare Sub CGPathAddLines lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit, Points as Ptr, Count As Uinteger)
		    CGPathAddLines (APathRef, aTransform.toCGAffineTransform32Bit, pointarray, count)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddLineToPoint(APathRef as Ptr, aTransform as CGAffineTransform, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGPathAddLineToPoint lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform, x as double, y as double)
		    CGPathAddLineToPoint (APathRef, aTransform, x, y)
		  #elseif Target32Bit
		    Declare Sub CGPathAddLineToPoint lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit, x as single, y as single)
		    CGPathAddLineToPoint (APathRef, aTransform.toCGAffineTransform32Bit, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddPath(APathRef as Ptr, aTransform as CGAffineTransform, anotherPathRef as Ptr)
		  #if Target64Bit
		    Declare Sub CGPathAddPath lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform, anotherPathRef as Ptr)
		    CGPathAddPath (APathRef, aTransform, anotherPathRef)
		  #elseif Target32Bit
		    Declare Sub CGPathAddPath lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit, anotherPathRef as Ptr)
		    CGPathAddPath (APathRef, aTransform.toCGAffineTransform32Bit, anotherPathRef)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddQuadCurveToPoint(APathRef as Ptr, aTransform as CGAffineTransform, cpx as double, cpy as double, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGPathAddQuadCurveToPoint lib CoreGraphicsLibName (Id as Ptr, aTransform as CGAffineTransform, cpx as double, cpy as double,  x as double, y as double)
		    CGPathAddQuadCurveToPoint (APathRef, aTransform,cpx, cpy, x, y)
		  #elseif Target32Bit
		    Declare Sub CGPathAddQuadCurveToPoint lib CoreGraphicsLibName (Id as Ptr, aTransform as CGAffineTransform32Bit, cpx as single, cpy as single,  x as single, y as single)
		    CGPathAddQuadCurveToPoint (APathRef, aTransform.toCGAffineTransform32Bit, cpx, cpy, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddRect(APathRef as Ptr, aTransform as CGAffineTransform, aRect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare Sub CGPathAddRect lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform, aRect  as FoundationFramework.NSRect)
		    CGPathAddRect (APathRef, aTransform, aRect)
		  #elseif Target32Bit
		    Declare Sub CGPathAddRect lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit, aRect as FoundationFramework.NSRect32Bit)
		    CGPathAddRect (APathRef, aTransform.toCGAffineTransform32Bit, aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddRects(APathRef as Ptr, aTransform as CGAffineTransform, RectArray as Ptr, Count As UInteger)
		  #if Target64Bit
		    Declare Sub CGPathAddRects lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform, Points as Ptr, Count As Uinteger)
		    CGPathAddRects (APathRef, aTransform, RectArray, count)
		  #elseif Target32Bit
		    Declare Sub CGPathAddRects lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit, Points as Ptr, Count As Uinteger)
		    CGPathAddRects (APathRef, aTransform.toCGAffineTransform32Bit, RectArray, count)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddRelativeArc(APathRef as Ptr, aTransform as CGAffineTransform, x as double, y as double, radius as double, startAngle as Double, delta as Double)
		  #if Target64Bit
		    Declare Sub CGPathAddRelativeArc lib CoreGraphicsLibName _
		    (id as ptr, aTransform as CGAffineTransform, x as double, y as double, radius as double, startAngle as Double, delta as double)
		    CGPathAddRelativeArc (APathRef, aTransform, x, y, radius, startAngle, delta)
		  #elseif Target32Bit
		    Declare Sub CGPathAddRelativeArc lib CoreGraphicsLibName _
		    (id as ptr, aTransform as CGAffineTransform32Bit, x as single, y as single, radius as single, startAngle as single, delta as single)
		    CGPathAddRelativeArc (APathRef, aTransform.toCGAffineTransform32Bit, x, y, radius, startAngle, delta)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathAddRoundedRect(APathRef as Ptr, aTransform as CGAffineTransform, aRect as FoundationFramework.NSRect, cornerWidth as Double, CornerHeight as Double)
		  #if Target64Bit
		    Declare Sub CGPathAddRoundedRect lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform, aRect  as FoundationFramework.NSRect, cornerWidth as Double, CornerHeight as Double)
		    CGPathAddRoundedRect (APathRef, aTransform, aRect, cornerWidth, CornerHeight)
		  #elseif Target32Bit
		    Declare Sub CGPathAddRoundedRect lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit, aRect as FoundationFramework.NSRect32Bit, cornerWidth as Single, CornerHeight as Single)
		    CGPathAddRoundedRect (APathRef, aTransform.toCGAffineTransform32Bit, aRect.toNSRect32, cornerWidth, CornerHeight)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathCloseSubpath Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateMutable Lib CoreGraphicsLibName () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateMutableCopy Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGPathCreateMutableCopyByTransformingPath(APathRef as Ptr, aTransform as CGAffineTransform) As Ptr
		  #if Target64Bit
		    Declare Function CGPathCreateMutableCopyByTransformingPath lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform) as ptr
		    return CGPathCreateMutableCopyByTransformingPath (apathref, aTransform)
		  #elseif Target32Bit
		    Declare Function CGPathCreateMutableCopyByTransformingPath lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit) as ptr
		    return CGPathCreateMutableCopyByTransformingPath (APathRef, aTransform.toCGAffineTransform32Bit)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGPathMoveToPoint(APathRef as Ptr, aTransform as CGAffineTransform, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGPathMoveToPoint lib CoreGraphicsLibName (Id as Ptr, aTransform as CGAffineTransform,  x as double, y as double)
		    CGPathMoveToPoint (APathRef, aTransform, x, y)
		  #elseif Target32Bit
		    Declare Sub CGPathMoveToPoint lib CoreGraphicsLibName (Id as Ptr, aTransform as CGAffineTransform32Bit,  x as single, y as single)
		    CGPathMoveToPoint (APathRef, aTransform.toCGAffineTransform32Bit, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseSubpath()
		  CGPathCloseSubpath mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CGPathCreateMutable, true)
		  MHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Path as AppleCGPath)
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CGPathCreateMutableCopy (path.cftyperef), true)
		  MHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy(aTransform as CGAffineTransform) As AppleCGMutablePath
		  dim result as new AppleCGMutablePath (CGPathCreateMutableCopyByTransformingPath (CFTypeRef, aTransform), true)
		  Result.Mhasownership = true
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToPoint(x as double, y as double)
		  MoveToPoint  x, y, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToPoint(x as double, y as double, aTransform as CGAffineTransform)
		  CGPathMoveToPoint mcftypeRef, aTransform,  x, y
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
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
			Name="isEmpty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isRect"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="Integer"
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
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
