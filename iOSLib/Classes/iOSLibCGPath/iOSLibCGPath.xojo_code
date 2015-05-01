#tag Class
Protected Class iOSLibCGPath
Inherits iOSLibCFObject
	#tag Method, Flags = &h0
		Sub AddArc(x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		  AddArc  x, y, radius, startAngle, EndAngle, ClockWise, TransformExtension.CGAffineTransformIdentity
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
		Sub AddEllipseInRect(aRect as NSRect)
		  AddEllipseInRect arect, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddEllipseInRect(aRect as NSRect, aTransform as CGAffineTransform)
		  CGPathAddEllipseInRect mCFTypeRef, aTransform, arect
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
		Sub AddPath(aPath as iOSLibCGPath)
		  AddPath apath, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPath(aPath as iOSLibCGPath, atransform as CGAffineTransform)
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
		Sub AddRect(aRect as NSRect)
		  addrect arect, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRect(aRect as NSRect, aTransform as CGAffineTransform)
		  CGPathAddRect mCFTypeRef, aTransform, arect
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
		Sub AddRoundedRect(aRect as NSRect, CornerWidth as Double, CornerHeight as Double)
		  AddRoundedRect arect, CornerWidth, CornerHeight, TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRoundedRect(aRect as NSRect, CornerWidth as Double, CornerHeight as Double, aTransform as CGAffineTransform)
		  CGPathAddRoundedRect mCFTypeRef, aTransform, arect, CornerWidth, CornerHeight
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddArc(APathRef as Ptr, aTransform as CGAffineTransform, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		  #if Target64Bit
		    Declare Sub CGPathAddArc lib CoreGraphics _
		    (id as ptr, aTransform as CGAffineTransform, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		    CGPathAddArc (APathRef, aTransform, x, y, radius, startAngle, EndAngle, ClockWise)
		  #elseif Target32Bit
		    Declare Sub CGPathAddArc lib CoreGraphics _
		    (id as ptr, aTransform as CGAffineTransform32Bit, x as single, y as single, radius as single, startAngle as single, EndAngle As single, ClockWise As Boolean)
		    CGPathAddArc (APathRef, aTransform.toCGAffineTransform32Bit, x, y, radius, startAngle, EndAngle, ClockWise)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddArcToPoint(APathRef as Ptr, aTransform as CGAffineTransform, x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  #if Target64Bit
		    Declare Sub CGPathAddArcToPoint lib CoreGraphics _
		    (Id as Ptr, aTransform as CGAffineTransform, x1 as double, y1 as double,  x2 as double, y2 as double, radius as double)
		    CGPathAddArcToPoint (APathRef, aTransform, x1, y1, x2, y2, radius)
		  #elseif Target32Bit
		    Declare Sub CGPathAddArcToPoint lib CoreGraphics _
		    (Id as Ptr, aTransform as CGAffineTransform32Bit, x1 as single, y1 as single,  x2 as single, y2 as single, radius as single)
		    CGPathAddArcToPoint (APathRef, aTransform.toCGAffineTransform32Bit, x1, y1, x2, y2, radius)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddCurveToPoint(APathRef as Ptr, aTransform as CGAffineTransform, cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGPathAddCurveToPoint lib CoreGraphics _
		    (Id as Ptr, aTransform as CGAffineTransform,cp1x as double, cp1y as double,  cp2x as double, cp2y as double, x as double, y as double)
		    CGPathAddCurveToPoint (APathRef, aTransform,cp1x, cp1y, cp2x, cp2y, x, y)
		  #elseif Target32Bit
		    Declare Sub CGPathAddCurveToPoint lib CoreGraphics _
		    (Id as Ptr, aTransform as CGAffineTransform32Bit,cp1x as single, cp1y as single,  cp2x as single, cp2y as single, x as single, y as single)
		    CGPathAddCurveToPoint (APathRef, aTransform.toCGAffineTransform32Bit,cp1x, cp1y, cp2x, cp2y, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddEllipseInRect(APathRef as Ptr, aTransform as CGAffineTransform, aRect as NSRect)
		  #if Target64Bit
		    Declare Sub CGPathAddEllipseInRect lib CoreGraphics  (id as ptr, aTransform as CGAffineTransform, aRect as nsrect)
		    CGPathAddEllipseInRect (APathRef, aTransform, aRect)
		  #elseif Target32Bit
		    Declare Sub CGPathAddEllipseInRect lib CoreGraphics  (id as ptr, aTransform as CGAffineTransform32Bit, aRect as NSRect32Bit)
		    CGPathAddEllipseInRect (APathRef, aTransform.toCGAffineTransform32Bit, aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddLineToPoint(APathRef as Ptr, aTransform as CGAffineTransform, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGPathAddLineToPoint lib CoreGraphics (id as ptr, aTransform as CGAffineTransform, x as double, y as double)
		    CGPathAddLineToPoint (APathRef, aTransform, x, y)
		  #elseif Target32Bit
		    Declare Sub CGPathAddLineToPoint lib CoreGraphics (id as ptr, aTransform as CGAffineTransform32Bit, x as single, y as single)
		    CGPathAddLineToPoint (APathRef, aTransform.toCGAffineTransform32Bit, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddPath(APathRef as Ptr, aTransform as CGAffineTransform, anotherPathRef as Ptr)
		  #if Target64Bit
		    Declare Sub CGPathAddPath lib CoreGraphics  (id as ptr, aTransform as CGAffineTransform, anotherPathRef as Ptr)
		    CGPathAddPath (APathRef, aTransform, anotherPathRef)
		  #elseif Target32Bit
		    Declare Sub CGPathAddPath lib CoreGraphics  (id as ptr, aTransform as CGAffineTransform32Bit, anotherPathRef as Ptr)
		    CGPathAddPath (APathRef, aTransform.toCGAffineTransform32Bit, anotherPathRef)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddQuadCurveToPoint(APathRef as Ptr, aTransform as CGAffineTransform, cpx as double, cpy as double, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGPathAddQuadCurveToPoint lib CoreGraphics  (Id as Ptr, aTransform as CGAffineTransform, cpx as double, cpy as double,  x as double, y as double)
		    CGPathAddQuadCurveToPoint (APathRef, aTransform,cpx, cpy, x, y)
		  #elseif Target32Bit
		    Declare Sub CGPathAddQuadCurveToPoint lib CoreGraphics  (Id as Ptr, aTransform as CGAffineTransform32Bit, cpx as single, cpy as single,  x as single, y as single)
		    CGPathAddQuadCurveToPoint (APathRef, aTransform.toCGAffineTransform32Bit, cpx, cpy, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddRect(APathRef as Ptr, aTransform as CGAffineTransform, aRect as NSRect)
		  #if Target64Bit
		    Declare Sub CGPathAddRect lib CoreGraphics  (id as ptr, aTransform as CGAffineTransform, aRect as nsrect)
		    CGPathAddRect (APathRef, aTransform, aRect)
		  #elseif Target32Bit
		    Declare Sub CGPathAddRect lib CoreGraphics  (id as ptr, aTransform as CGAffineTransform32Bit, aRect as NSRect32Bit)
		    CGPathAddRect (APathRef, aTransform.toCGAffineTransform32Bit, aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddRelativeArc(APathRef as Ptr, aTransform as CGAffineTransform, x as double, y as double, radius as double, startAngle as Double, delta as Double)
		  #if Target64Bit
		    Declare Sub CGPathAddRelativeArc lib CoreGraphics _
		    (id as ptr, aTransform as CGAffineTransform, x as double, y as double, radius as double, startAngle as Double, delta as double)
		    CGPathAddRelativeArc (APathRef, aTransform, x, y, radius, startAngle, delta)
		  #elseif Target32Bit
		    Declare Sub CGPathAddRelativeArc lib CoreGraphics _
		    (id as ptr, aTransform as CGAffineTransform32Bit, x as single, y as single, radius as single, startAngle as single, delta as single)
		    CGPathAddRelativeArc (APathRef, aTransform.toCGAffineTransform32Bit, x, y, radius, startAngle, delta)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathAddRoundedRect(APathRef as Ptr, aTransform as CGAffineTransform, aRect as NSRect, cornerWidth as Double, CornerHeight as Double)
		  #if Target64Bit
		    Declare Sub CGPathAddRoundedRect lib CoreGraphics  (id as ptr, aTransform as CGAffineTransform, aRect as NSRect, cornerWidth as Double, CornerHeight as Double)
		    CGPathAddRoundedRect (APathRef, aTransform, aRect, cornerWidth, CornerHeight)
		  #elseif Target32Bit
		    Declare Sub CGPathAddRoundedRect lib CoreGraphics  (id as ptr, aTransform as CGAffineTransform32Bit, aRect as NSRect32Bit, cornerWidth as Single, CornerHeight as Single)
		    CGPathAddRoundedRect (APathRef, aTransform.toCGAffineTransform32Bit, aRect.toNSRect32, cornerWidth, CornerHeight)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathCloseSubpath Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGPathContainsPoint(APathRef as Ptr, aTransform as CGAffineTransform, aPoint as NSPoint, EvenOddFill as Boolean) As Boolean
		  #if Target64Bit
		    Declare Function CGPathContainsPoint lib CoreGraphics  (Id as Ptr, aTransform as CGAffineTransform,  aPoint as NSPoint, EvenOddFill as Boolean) as boolean
		    return CGPathContainsPoint (APathRef, aTransform, aPoint, EvenOddFill)
		  #elseif Target32Bit
		    Declare Function CGPathContainsPoint lib CoreGraphics  (Id as Ptr, aTransform as CGAffineTransform32Bit,  aPoint as NSPoint32Bit, EvenOddFill as Boolean) as boolean
		    return CGPathContainsPoint (APathRef, aTransform.toCGAffineTransform32Bit, aPoint.toNSPoint32, EvenOddFill)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateCopy Lib CoreGraphics (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGPathCreateCopyByTransformingPath(APathRef as Ptr, aTransform as CGAffineTransform) As Ptr
		  #if Target64Bit
		    Declare Function CGPathCreateCopyByTransformingPath lib CoreGraphics (id as ptr, aTransform as CGAffineTransform) as ptr
		    return CGPathCreateCopyByTransformingPath (apathref, aTransform)
		  #elseif Target32Bit
		    Declare Function CGPathCreateCopyByTransformingPath lib CoreGraphics (id as ptr, aTransform as CGAffineTransform32Bit) as ptr
		    return CGPathCreateCopyByTransformingPath (APathRef, aTransform.toCGAffineTransform32Bit)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGPathCreateMutable Lib CoreGraphics () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateMutableCopy Lib CoreGraphics (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGPathCreateMutableCopyByTransformingPath(APathRef as Ptr, aTransform as CGAffineTransform) As Ptr
		  #if Target64Bit
		    Declare Function CGPathCreateMutableCopyByTransformingPath lib CoreGraphics (id as ptr, aTransform as CGAffineTransform) as ptr
		    return CGPathCreateMutableCopyByTransformingPath (apathref, aTransform)
		  #elseif Target32Bit
		    Declare Function CGPathCreateMutableCopyByTransformingPath lib CoreGraphics (id as ptr, aTransform as CGAffineTransform32Bit) as ptr
		    return CGPathCreateMutableCopyByTransformingPath (APathRef, aTransform.toCGAffineTransform32Bit)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathEqualToPath Lib CoreGraphics (CFTypeRef as Ptr, anotherTypeRef as Ptr) As boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGPathIsRect(APathRef as Ptr, byref aRect as NSRect) As boolean
		  #if Target64Bit
		    Declare function CGPathIsRect lib CoreGraphics  (id as ptr, aRect as nsrect) as boolean
		    return CGPathIsRect (APathRef, aRect)
		  #elseif Target32Bit
		    Declare function CGPathIsRect lib CoreGraphics  (id as ptr, aRect as NSRect32Bit) as boolean
		    dim myrect as NSRect32Bit = aRect.toNSRect32
		    dim result as boolean= CGPathIsRect (APathRef, myrect)
		    arect = myrect.toNSRect
		    return result
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CGPathMoveToPoint(APathRef as Ptr, aTransform as CGAffineTransform, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGPathMoveToPoint lib CoreGraphics  (Id as Ptr, aTransform as CGAffineTransform,  x as double, y as double)
		    CGPathMoveToPoint (APathRef, aTransform, x, y)
		  #elseif Target32Bit
		    Declare Sub CGPathMoveToPoint lib CoreGraphics  (Id as Ptr, aTransform as CGAffineTransform32Bit,  x as single, y as single)
		    CGPathMoveToPoint (APathRef, aTransform.toCGAffineTransform32Bit, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathRelease Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathRetain Lib CoreGraphics (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub CloseSubPath()
		  CGPathCloseSubpath mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CGPathCreateMutable, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(aPoint as NSPoint, evenoddfill as boolean = true) As Boolean
		  return ContainsPoint (aPoint, TransformExtension.CGAffineTransformIdentity, evenoddfill)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(aPoint as NSPoint, aTransform as CGAffineTransform, evenoddfill as boolean = true) As Boolean
		  return CGPathContainsPoint (mCFTypeRef, aTransform, aPoint, evenoddfill)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As iOSLibCGPath
		  return new iOSLibCGPath (CGPathCreateCopy (mCFTypeRef), true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherPath as iOSLibCgPath) As boolean
		  return CGPathEqualToPath (mCFTypeRef, anotherPath.CFTypeRef)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsRectangle(ByRef aRect as NSRect) As Boolean
		  return CGPathIsRect (mcfTypeRef, aRect)
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

	#tag Method, Flags = &h0
		Function MutableCopy() As iOSLibCGPath
		  return new iOSLibCGPath (CGPathCreateMutableCopy (mCFTypeRef), true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MutableTransformedCopy(aTransform as CGAffineTransform) As iOSLibCGPath
		  return new iOSLibCGPath (CGPathCreateMutableCopyByTransformingPath (mCFTypeRef, aTransform), true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CGPathRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  mCFTypeRef = CGPathRetain (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TransformedCopy(aTransform as CGAffineTransform) As iOSLibCGPath
		  return new iOSLibCGPath (CGPathCreateCopyByTransformingPath (mCFTypeRef, aTransform), true)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function CGPathGetBoundingBox lib CoreGraphics  (id as ptr) as NSRect
			    return CGPathGetBoundingBox (mCFTypeRef)
			  #elseif Target32Bit
			    Declare Function CGPathGetBoundingBox lib CoreGraphics  (id as ptr) as NSRect32Bit
			    return CGPathGetBoundingBox(mCFTypeRef).toNSRect
			  #endif
			  
			End Get
		#tag EndGetter
		BoundingBox As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function CGPathGetCurrentPoint lib CoreGraphics  (id as ptr) as NSPoint
			    return CGPathGetCurrentPoint (mCFTypeRef)
			  #elseif Target32Bit
			    Declare Function CGPathGetCurrentPoint lib CoreGraphics  (id as ptr) as NSPoint32Bit
			    return CGPathGetCurrentPoint(mCFTypeRef).toNSPoint
			  #endif
			  
			End Get
		#tag EndGetter
		CurrentPoint As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function CGPathIsEmpty lib CoreGraphics  (id as ptr) as Boolean
			  return CGPathIsEmpty (mcftypeRef)
			  
			End Get
		#tag EndGetter
		isEmpty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim myRect as NSRect
			  return IsRectangle (myrect)
			End Get
		#tag EndGetter
		isRect As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function CGPathGetPathBoundingBox lib CoreGraphics  (id as ptr) as NSRect
			    return CGPathGetPathBoundingBox (mCFTypeRef)
			  #elseif Target32Bit
			    Declare Function CGPathGetPathBoundingBox lib CoreGraphics  (id as ptr) as NSRect32Bit
			    return CGPathGetPathBoundingBox(mCFTypeRef).toNSRect
			  #endif
			  
			End Get
		#tag EndGetter
		PathBoundingBox As NSRect
	#tag EndComputedProperty


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
	#tag EndViewBehavior
End Class
#tag EndClass
