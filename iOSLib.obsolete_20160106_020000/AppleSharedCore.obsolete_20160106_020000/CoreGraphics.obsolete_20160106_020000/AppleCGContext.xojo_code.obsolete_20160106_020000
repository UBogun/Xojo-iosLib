#tag Class
Protected Class AppleCGContext
Inherits AppleCFObject
	#tag Method, Flags = &h0
		Sub AddArc(x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As boolean)
		  CGContextAddArc mCFTypeRef, x, y, radius, startAngle, EndAngle, if (clockwise, 1, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddArcToPoint(x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  CGContextAddArcToPoint mCFTypeRef, x1, y1, x2, y2, radius
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCurveToPoint(cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double)
		  CGContextAddCurveToPoint mCFTypeRef, cp1x, cp1y, cp2x, cp2y, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddEllipse(Rect as FoundationFramework.NSRect)
		  CGContextAddEllipseInRect mCFTypeRef, Rect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLines(Points() as FoundationFramework.NSPoint, Count as Uinteger = 0)
		  if count = 0 then count = points.Ubound+1
		  CGContextAddLines mCFTypeRef, points.toMemoryBlock.Data, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLineToPoint(x as double, y as double)
		  CGContextAddLineToPoint mCFTypeRef, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPath(Path as AppleCGPath)
		  CGContextAddPath mCFTypeRef, path.CFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddQuadCurveToPoint(cpx as double, cpy as double, x as double, y as double)
		  CGContextAddQuadCurveToPoint mCFTypeRef, cpx, cpy, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRect(Rect as FoundationFramework.NSRect)
		  CGContextAddRect mCFTypeRef, Rect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRects(Rects() as FoundationFramework.NSRect, Count as Uinteger = 0)
		  if count = 0 then count = rects.Ubound + 1
		  CGContextAddrects mCFTypeRef, rects.toMemoryBlock.Data, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub BeginImageContext(aSize as FoundationFrameWork.nssize, opaque as Boolean, scale as double = 0)
		  UIGraphicsBeginImageContextWithOptions (asize, opaque, scale)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BeginPath()
		  CGContextBeginPath mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddArc(Context as Ptr, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Int32)
		  #if Target64Bit
		    Declare Sub CGContextAddArc lib CoreGraphicsLibName _
		    (id as ptr,  x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Int32)
		    CGContextAddArc (Context, x, y, radius, startAngle, EndAngle, ClockWise)
		  #elseif Target32Bit
		    Declare Sub CGContextAddArc lib CoreGraphicsLibName _
		    (id as ptr, x as single, y as single, radius as single, startAngle as single, EndAngle As single, ClockWise As Int32)
		    CGContextAddArc (Context, x, y, radius, startAngle, EndAngle, ClockWise)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddArcToPoint(APathRef as Ptr, x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  #if Target64Bit
		    Declare Sub CGContextAddArcToPoint lib CoreGraphicsLibName _
		    (Id as Ptr,  x1 as double, y1 as double,  x2 as double, y2 as double, radius as double)
		    CGContextAddArcToPoint (APathRef, x1, y1, x2, y2, radius)
		  #elseif Target32Bit
		    Declare Sub CGContextAddArcToPoint lib CoreGraphicsLibName _
		    (Id as Ptr,  x1 as single, y1 as single,  x2 as single, y2 as single, radius as single)
		    CGContextAddArcToPoint (APathRef, x1, y1, x2, y2, radius)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddCurveToPoint(APathRef as Ptr, cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGContextAddCurveToPoint lib CoreGraphicsLibName _
		    (Id as Ptr, cp1x as double, cp1y as double,  cp2x as double, cp2y as double, x as double, y as double)
		    CGContextAddCurveToPoint (APathRef, cp1x, cp1y, cp2x, cp2y, x, y)
		  #elseif Target32Bit
		    Declare Sub CGContextAddCurveToPoint lib CoreGraphicsLibName _
		    (Id as Ptr, cp1x as single, cp1y as single,  cp2x as single, cp2y as single, x as single, y as single)
		    CGContextAddCurveToPoint (APathRef, cp1x, cp1y, cp2x, cp2y, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddEllipseInRect(APathRef as Ptr, aRect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare Sub CGContextAddEllipseInRect lib CoreGraphicsLibName (id as ptr,  aRect  as FoundationFramework.NSRect)
		    CGContextAddEllipseInRect (APathRef,  aRect)
		  #elseif Target32Bit
		    Declare Sub CGContextAddEllipseInRect lib CoreGraphicsLibName (id as ptr,  aRect as FoundationFramework.NSRect32Bit)
		    CGContextAddEllipseInRect (APathRef,  aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextAddLines Lib CoreGraphicsLibName (CFTypeRef as Ptr, Points as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddLineToPoint(id as ptr, x as double, y as double)
		  #if Target64Bit
		    Declare sub CGContextAddLineToPoint lib CoreGraphicsLibName (id as ptr, x as double, y as double)
		  #elseif Target32Bit
		    Declare sub CGContextAddLineToPoint lib CoreGraphicsLibName (id as ptr, x as single, y as single)
		  #endif
		  CGContextAddLineToPoint id, x, y
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextAddPath Lib CoreGraphicsLibName (CFTypeRef as Ptr, Path as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddQuadCurveToPoint(APathRef as Ptr, cpx as double, cpy as double, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGContextAddQuadCurveToPoint lib CoreGraphicsLibName (Id as Ptr, cpx as double, cpy as double,  x as double, y as double)
		    CGContextAddQuadCurveToPoint (APathRef, cpx, cpy, x, y)
		  #elseif Target32Bit
		    Declare Sub CGContextAddQuadCurveToPoint lib CoreGraphicsLibName (Id as Ptr, cpx as single, cpy as single,  x as single, y as single)
		    CGContextAddQuadCurveToPoint (APathRef,  cpx, cpy, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddRect(APathRef as Ptr, aRect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare Sub CGContextAddRect lib CoreGraphicsLibName (id as ptr, aRect  as FoundationFramework.NSRect)
		    CGContextAddRect (APathRef,  aRect)
		  #elseif Target32Bit
		    Declare Sub CGContextAddRect lib CoreGraphicsLibName (id as ptr, aRect as FoundationFramework.NSRect32Bit)
		    CGContextAddRect (APathRef,  aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextAddRects Lib CoreGraphicsLibName (CFTypeRef as Ptr, Rects as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextBeginPath Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextClearRect(APathRef as Ptr, aRect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare Sub CGContextClearRect lib CoreGraphicsLibName (id as ptr,  aRect  as FoundationFramework.NSRect)
		    CGContextClearRect (APathRef,  aRect)
		  #elseif Target32Bit
		    Declare Sub CGContextClearRect lib CoreGraphicsLibName (id as ptr,  aRect as FoundationFramework.NSRect32Bit)
		    CGContextClearRect (APathRef,  aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextClip Lib CoreGraphicsLibName (context as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextClipToMask Lib CoreGraphicsLibName (CFTypeRef as Ptr, Mask as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextCliptoRect(APathRef as Ptr, aRect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare Sub CGContextClipToRect lib CoreGraphicsLibName (id as ptr,  aRect  as FoundationFramework.NSRect)
		    CGContextClipToRect (APathRef,  aRect)
		  #elseif Target32Bit
		    Declare Sub CGContextClipToRect lib CoreGraphicsLibName (id as ptr,  aRect as FoundationFramework.NSRect32Bit)
		    CGContextClipToRect (APathRef,  aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextClipToRects Lib CoreGraphicsLibName (CFTypeRef as Ptr, Rects as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextClosePath Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextCopyPath Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextDrawImage(id as ptr, Rect as FoundationFramework.NSRect, image as AppleCGImage)
		  #if Target64Bit
		    declare sub CGContextDrawImage lib CoreGraphicsLibName (Id as ptr, Rect  as FoundationFramework.NSRect, Image as Ptr)
		    CGContextDrawImage id, rect, image.CFTypeRef
		  #elseif Target32Bit
		    declare sub CGContextDrawImage lib CoreGraphicsLibName (Id as ptr, Rect as FoundationFramework.NSRect32Bit, Image as Ptr)
		    CGContextDrawImage id, rect.toNSRect32, image.CFTypeRef
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextDrawLinearGradient(Context as Ptr, gradient as Ptr, startPoint as FoundationFramework.NSPoint, EndPoint AS FoundationFramework.NSPoint, options As uint32)
		  #if Target64Bit
		    Declare Sub CGContextDrawLinearGradient lib CoreGraphicsLibName _
		    (Context as Ptr, gradient as Ptr, startPoint as FoundationFramework.NSPoint, EndPoint AS FoundationFramework.NSPoint, options As UInt32)
		    CGContextDrawLinearGradient (Context, gradient, startPoint, endpoint, options)
		  #elseif Target32Bit
		    Declare Sub CGContextDrawLinearGradient lib CoreGraphicsLibName _
		    (Context as Ptr, gradient as Ptr, startPoint as FoundationFramework.NSPoint32Bit, EndPoint AS FoundationFramework.NSPoint32Bit, options As UInt32)
		    CGContextDrawLinearGradient (Context, gradient, startPoint.toNSPoint32, endpoint.toNSPoint32, options)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextDrawPath Lib CoreGraphicsLibName (CFTypeRef as Ptr, DrawingMode as CGPathDrawingMode)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextDrawRadialGradient(Context as Ptr, gradient as Ptr, startCenter as FoundationFramework.NSPoint, StartRadius As Double, EndCenter AS FoundationFramework.NSPoint, EndRadius As Double, options As uint32)
		  #if Target64Bit
		    Declare Sub CGContextDrawRadialGradient lib CoreGraphicsLibName _
		    (Context as Ptr, gradient as Ptr, startCenter as FoundationFramework.NSPoint, StartRadius As Double, EndCenter AS FoundationFramework.NSPoint, EndRadius As Double, options As uint32)
		    CGContextDrawRadialGradient (Context, gradient, startCenter, StartRadius, EndCenter, endradius, options)
		  #elseif Target32Bit
		    Declare Sub CGContextDrawRadialGradient lib CoreGraphicsLibName _
		    (Context as Ptr, gradient as Ptr, startCenter as FoundationFramework.NSPoint32Bit, StartRadius As Single, EndCenter AS FoundationFramework.NSPoint32Bit, EndRadius As Single, options As uint32)
		    CGContextDrawRadialGradient (Context, gradient, startCenter.toNSPoint32, StartRadius, EndCenter.toNSPoint32, endradius, options)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextDrawTiledImage(id as ptr, Rect as FoundationFramework.NSRect, image as AppleCGImage)
		  #if Target64Bit
		    declare sub CGContextDrawTiledImage lib CoreGraphicsLibName (Id as ptr, Rect  as FoundationFramework.NSRect, Image as Ptr)
		    CGContextDrawTiledImage id, rect, image.CFTypeRef
		  #elseif Target32Bit
		    declare sub CGContextDrawTiledImage lib CoreGraphicsLibName (Id as ptr, Rect as FoundationFramework.NSRect32Bit, Image as Ptr)
		    CGContextDrawTiledImage id, rect.toNSRect32, image.CFTypeRef
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextEOClip Lib CoreGraphicsLibName (context as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextEOFillPath Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextFillPath Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextFillRects Lib CoreGraphicsLibName (CFTypeRef as Ptr, Rects as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextFlush Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextGetClipBoundingBox(context as Ptr) As FoundationFramework.NSRect
		  #if Target64Bit
		    Declare function CGContextGetClipBoundingBox lib CoreGraphicsLibName (id as ptr)  as FoundationFramework.NSRect
		    return CGContextGetClipBoundingBox (context)
		  #elseif Target32Bit
		    Declare function CGContextGetClipBoundingBox lib CoreGraphicsLibName (id as ptr) as FoundationFramework.NSRect32Bit
		    return CGContextGetClipBoundingBox(context).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetInterpolationQuality Lib CoreGraphicsLibName (CFTypeRef as Ptr) As CGInterpolationQuality
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextGetPathBoundingBox(context as Ptr) As FoundationFramework.NSRect
		  #if Target64Bit
		    Declare function CGContextGetPathBoundingBox lib CoreGraphicsLibName (id as ptr)  as FoundationFramework.NSRect
		    return CGContextGetPathBoundingBox (context)
		  #elseif Target32Bit
		    Declare function CGContextGetPathBoundingBox lib CoreGraphicsLibName (id as ptr) as FoundationFramework.NSRect32Bit
		    return CGContextGetPathBoundingBox(context).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextGetPathCurrentPoint(context as Ptr) As FoundationFramework.NSPoint
		  #if Target64Bit
		    Declare function CGContextGetPathCurrentPoint lib CoreGraphicsLibName (id as ptr) as FoundationFramework.NSPoint
		    return CGContextGetPathCurrentPoint (context)
		  #elseif Target32Bit
		    Declare function CGContextGetPathCurrentPoint lib CoreGraphicsLibName (id as ptr) as FoundationFramework.NSPoint32Bit
		    return CGContextGetPathCurrentPoint(context).toNSPoint
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextIsPathEmpty Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextMoveToPoint(id as ptr, x as double, y as double)
		  #if Target64Bit
		    Declare sub CGContextMoveToPoint lib CoreGraphicsLibName (id as ptr, x as double, y as double)
		  #elseif Target32Bit
		    Declare sub CGContextMoveToPoint lib CoreGraphicsLibName (id as ptr, x as single, y as single)
		  #endif
		  CGContextMoveToPoint id, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextPathContainsPoint(context as Ptr, point as FoundationFramework.NSPoint, mode as CGPathDrawingMode) As boolean
		  #if Target64Bit
		    Declare function CGContextPathContainsPoint lib CoreGraphicsLibName (id as ptr, point as FoundationFramework.NSPoint, mode as CGPathDrawingMode) as boolean
		    return CGContextPathContainsPoint (context, point, mode)
		  #elseif Target32Bit
		    Declare function CGContextPathContainsPoint lib CoreGraphicsLibName (id as ptr, point as FoundationFramework.NSPoint32Bit, mode as CGPathDrawingMode) as boolean
		    return CGContextPathContainsPoint (context, point.toNSPoint32, mode)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextRelease Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextReplacePathWithStrokedPath Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextRestoreGState Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextRetain Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSaveGState Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetAllowsFontSmoothing Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetAllowsFontSubpixelPositioning Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetAllowsFontSubpixelQuantization Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetBlendMode Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as CGBlendMode)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetFlatness(id as ptr, Flatness As Double)
		  #if Target64Bit
		    Declare sub CGContextSetFlatness lib CoreGraphicsLibName (id as ptr, value as double)
		  #elseif Target32Bit
		    Declare sub CGContextSetFlatness lib CoreGraphicsLibName (id as ptr, value as single)
		  #endif
		  CGContextSetFlatness id, Flatness
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetInterpolationQuality Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as CGInterpolationQuality)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetLineCap Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as CGLineCap)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetLineDash(id as ptr, Phase As Double, Lengths As AppleArray, count as UInteger = 0)
		  if count = 0 then count = Lengths.Count
		  #if Target64Bit
		    Declare sub CGContextSetLineDash lib CoreGraphicsLibName (id as ptr, Phase As Double, Lengths As Ptr,  count as UInteger)
		  #elseif Target32Bit
		    Declare sub CGContextSetLineDash lib CoreGraphicsLibName (id as ptr, Phase As Single, Lengths As Ptr,  count as UInteger)
		  #endif
		  CGContextSetLineDash id, Phase, if (lengths = nil, nil, lengths.id), count
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetLineJoin Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as CGLineJoin)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetMiterLimit(id as ptr, Limit As Double)
		  #if Target64Bit
		    Declare sub CGContextSetMiterLimit lib CoreGraphicsLibName (id as ptr, value as double)
		  #elseif Target32Bit
		    Declare sub CGContextSetMiterLimit lib CoreGraphicsLibName (id as ptr, value as single)
		  #endif
		  CGContextSetMiterLimit id, limit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetPatternPhase(id as ptr, Phase as FoundationFramework.NSSize)
		  #if Target64Bit
		    Declare sub CGContextSetPatternPhase lib CoreGraphicsLibName (id as ptr, Phase as FoundationFramework.NSSize)
		    CGContextSetPatternPhase id, Phase
		  #elseif Target32Bit
		    Declare sub CGContextSetPatternPhase lib CoreGraphicsLibName (id as ptr, Phase As FoundationFramework.NSSize32Bit)
		    CGContextSetPatternPhase id, Phase.toNSSize32
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetRenderingIntent Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as CGColorRenderingIntent)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetShadow(id as ptr, offset as FoundationFramework.NSSize, blur as double)
		  #if Target64Bit
		    Declare sub CGContextSetShadow lib CoreGraphicsLibName (id as ptr, offset as FoundationFramework.NSSize, blur as double)
		    CGContextSetShadow id, offset, blur
		  #elseif Target32Bit
		    Declare sub CGContextSetShadow lib CoreGraphicsLibName (id as ptr, offset as FoundationFramework.NSSize32Bit, blur as single)
		    CGContextSetShadow id, offset.toNSSize32, blur
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetShadowWithColor(id as ptr, offset as FoundationFramework.NSSize, blur as double, shadowcolor as AppleCGColor)
		  #if Target64Bit
		    Declare sub CGContextSetShadowWithColor lib CoreGraphicsLibName (id as ptr, offset as FoundationFramework.NSSize, blur as double, shadowcolor as ptr)
		    CGContextSetShadowWithColor id, offset, blur, if (shadowcolor = nil, nil, shadowcolor.mCFTypeRef)
		  #elseif Target32Bit
		    Declare sub CGContextSetShadowWithColor lib CoreGraphicsLibName (id as ptr, offset as FoundationFramework.NSSize32Bit, blur as single, shadowcolor as ptr)
		    CGContextSetShadowWithColor id, offset.toNSSize32, blur, if (shadowcolor = nil, nil, shadowcolor.mCFTypeRef)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetShouldSmoothFonts Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetShouldSubpixelPositionFonts Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetShouldSubpixelQuantizeFonts Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetTextDrawingMode Lib CoreGraphicsLibName (CFTypeRef as Ptr, value as CGTextDrawingMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextStrokeLineSegments Lib CoreGraphicsLibName (CFTypeRef as Ptr, Points as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextStrokePath Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextStrokeRectWithWidth(APathRef as Ptr, aRect as FoundationFramework.NSRect, width as double)
		  #if Target64Bit
		    Declare Sub CGContextStrokeRectWithWidth lib CoreGraphicsLibName (id as ptr, aRect  as FoundationFramework.NSRect, width as double)
		    CGContextStrokeRectWithWidth (APathRef,  aRect, width)
		  #elseif Target32Bit
		    Declare Sub CGContextStrokeRectWithWidth lib CoreGraphicsLibName (id as ptr, aRect as FoundationFramework.NSRect32Bit, width as single)
		    CGContextStrokeRectWithWidth (APathRef,  aRect.toNSRect32, width)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSynchronize Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub ClearRect(Rect as FoundationFramework.NSRect)
		  CGContextClearRect mCFTypeRef, Rect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clip()
		  CGContextClip mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipEO()
		  CGContextEOClip mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipToMask(Mask as AppleCGImage)
		  CGContextCliptoMask mCFTypeRef, Mask.CFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipToRect(Rect as FoundationFramework.NSRect)
		  CGContextCliptoRect mCFTypeRef, Rect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipToRects(Rects() as FoundationFramework.NSRect, Count as Uinteger = 0)
		  if count = 0 then count = rects.Ubound + 1
		  CGContextClipToRects mCFTypeRef, rects.toMemoryBlock.Data, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClosePath()
		  CGContextClosePath mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Context as iOSGraphics)
		  // Calling the overridden superclass constructor.
		  Super.Constructor (Context.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CopyPath() As AppleCGPath
		  return AppleCGPath.MakeFromCFTypeRef (CGContextCopyPath (mCFTypeRef))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function CurrentContext() As AppleCGContext
		  dim result as ptr = UIGraphicsGetCurrentContext
		  return if (result = nil, nil, new AppleCGContext(result))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawImage(Rect as FoundationFramework.NSRect, image as AppleCGImage)
		  CGContextDrawImage mCFTypeRef, Rect, image
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(Gradient As applecgGradient, StartPoint As FoundationFramework.NSPoint, EndPoint As FoundationFramework.NSPoint, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  CGContextDrawLinearGradient mcftypeRef, Gradient.cftyperef, Startpoint, EndPoint, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(Colors() As Color, Locations() As double, StartPoint As FoundationFramework.NSPoint, EndPoint As FoundationFramework.NSPoint, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  dim mygradient as new AppleCGGradient(Colors, locations)
		  CGContextDrawLinearGradient mcftypeRef, myGradient.cftyperef, Startpoint, EndPoint, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(Colors() As Color, StartPoint As FoundationFramework.NSPoint, EndPoint As FoundationFramework.NSPoint, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  dim mygradient as new AppleCGGradient(Colors)
		  CGContextDrawLinearGradient mcftypeRef, myGradient.cftyperef, Startpoint, EndPoint, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawPath(DrawingMode as CGPathDrawingMode)
		  CGContextDrawPath mcftypeRef, DrawingMode
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(Gradient As applecgGradient, StartCenter As FoundationFramework.NSPoint, StartRadius As Double, EndCenter As FoundationFramework.NSPoint, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  CGContextDrawradialGradient mcftypeRef, Gradient.cftyperef, StartCenter, StartRadius, EndCenter, EndRadius, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(Colors() As color, Locations() As Double, StartCenter As FoundationFramework.NSPoint, StartRadius As Double, EndCenter As FoundationFramework.NSPoint, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  dim mygradient as new AppleCGGradient(Colors, Locations)
		  CGContextDrawradialGradient mcftypeRef, myGradient.cftyperef, StartCenter, StartRadius, EndCenter, EndRadius, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(Colors() As color, StartCenter As FoundationFramework.NSPoint, StartRadius As Double, EndCenter As FoundationFramework.NSPoint, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  dim mygradient as new AppleCGGradient(Colors)
		  CGContextDrawradialGradient mcftypeRef, myGradient.cftyperef, StartCenter, StartRadius, EndCenter, EndRadius, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawTiledImage(Rect as FoundationFramework.NSRect, image as AppleCGImage)
		  CGContextDrawTiledImage mCFTypeRef, Rect, image
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub EndImageContext()
		  UIGraphicsEndImageContext 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillPath(EvenOdd as Boolean = false)
		  if EvenOdd then
		    CGContextEOFillPath mCFTypeRef
		  else
		    CGContextFillPath mCFTypeRef
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillRects(Rects() as FoundationFramework.NSRect, Count as Uinteger = 0)
		  if count = 0 then count = rects.Ubound + 1
		  CGContextFillRects mCFTypeRef, rects.toMemoryBlock.Data, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Flush()
		  CGContextFlush mcftypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Getimage() As AppleImage
		  dim result as AppleImage = AppleImage.MakeFromPtr(UIGraphicsGetImageFromCurrentImageContext)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToPoint(x as double, y as double)
		  CGContextMoveToPoint mCFTypeRef, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PathContainsPoint(Point as FoundationFramework.NSPoint, mode as CGPathDrawingMode = CGPathDrawingMode.Fill) As boolean
		  return CGContextPathContainsPoint (mcftyperef, point, mode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub PopContext()
		  UIGraphicsPopContext
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushContext()
		  UIGraphicsPushContext (mcftyperef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CGContextRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveShadow()
		  CGContextSetShadowWithColor mCFtYpeRef, FoundationFrameWork.nsmakesize (0, 0), 0, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReplacePathWithStrokedPath()
		  CGContextReplacePathWithStrokedPath mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RestoreGraphicsState()
		  CGContextRestoreGState mcftypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  mCFTypeRef = CGContextRetain (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveGraphicsState()
		  CGContextSaveGState mcftypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLineDash(Phase As Double, Lengths As AppleArray, count as UInteger = 0)
		  CGContextSetLineDash mCFTypeRef, Phase, Lengths, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLineDash(Phase As Double, Lengths() As Double, count as UInteger = 0)
		  CGContextSetLineDash mCFTypeRef, Phase, Lengths.toAppleArray, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadow(XOffset as Double, YOffset as double, Blur as double)
		  CGContextSetShadow mCFtYpeRef, FoundationFrameWork.nsmakesize (XOffset, YOffset), blur
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadow(XOffset as Double, YOffset as double, Blur as double, ShadowColor as AppleCGColor)
		  CGContextSetShadowWithColor mCFtYpeRef, FoundationFrameWork.nsmakesize (XOffset, YOffset), blur, ShadowColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadow(XOffset as Double, YOffset as double, Blur as double, ShadowColor as Color)
		  dim mycolor as new AppleCGColor(ShadowColor)
		  CGContextSetShadowWithColor mCFtYpeRef, FoundationFrameWork.nsmakesize (XOffset, YOffset), blur, mycolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokeLines(Points() as FoundationFramework.NSPoint, Count as Uinteger = 0)
		  if count = 0 then count = points.Ubound+1
		  CGContextStrokeLineSegments mCFTypeRef, points.toMemoryBlock.Data, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokePath()
		  CGContextStrokePath mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokeRect(aRect as FoundationFramework.NSRect, width as double)
		  CGContextStrokeRectWithWidth mCFTypeRef, aRect, Width
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Synchronize()
		  CGContextSynchronize mcftypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toImage() As AppleImage
		  return AppleImage.MakeFromPtr (UIGraphicsGetImageFromCurrentImageContext)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub UIGraphicsBeginImageContext(asize as FoundationFramework.NSSize)
		  #if TargetIOS
		    #if Target64Bit
		      declare sub UIGraphicsBeginImageContext lib UIKitLibName (asize as FoundationFramework.NSSize)
		      UIGraphicsBeginImageContext (asize)
		    #elseif Target32Bit
		      declare sub UIGraphicsBeginImageContext lib UIKitLibName (asize as FoundationFramework.NSSize32Bit)
		      UIGraphicsBeginImageContext (asize.toNSSize32)
		    #endif
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub UIGraphicsBeginImageContextWithOptions(asize as FoundationFramework.NSSize, opaque as boolean, scale as double)
		  #if TargetIOS
		    #if Target64Bit
		      declare sub UIGraphicsBeginImageContextWithOptions lib UIKitLibName (asize as FoundationFramework.NSSize, opaque as boolean, scale as double)
		      UIGraphicsBeginImageContextWithOptions (asize, opaque, scale)
		    #elseif Target32Bit
		      declare sub UIGraphicsBeginImageContextWithOptions lib UIKitLibName (asize as FoundationFramework.NSSize32Bit, opaque as boolean, scale as single)
		      UIGraphicsBeginImageContextWithOptions (asize.toNSSize32, opaque, scale)
		    #endif
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub UIGraphicsEndImageContext()
		  #if TargetIOS
		    Declare sub UIGraphicsEndImageContext lib UIKitLibName
		    UIGraphicsEndImageContext
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function UIGraphicsGetCurrentContext() As ptr
		  #if TargetIOS
		    Declare function UIGraphicsGetCurrentContext lib UIKitLibName as ptr
		    return UIGraphicsGetCurrentContext
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320616E20696D616765206261736564206F6E2074686520636F6E74656E7473206F66207468652063757272656E74206269746D61702D626173656420677261706869637320636F6E746578742E0A596F752073686F756C642063616C6C20746869732066756E6374696F6E206F6E6C79207768656E2061206269746D61702D626173656420677261706869637320636F6E74657874206973207468652063757272656E7420677261706869637320636F6E746578742E204966207468652063757272656E7420636F6E74657874206973206E696C206F7220776173206E6F74206372656174656420627920612063616C6C20746F2055494772617068696373426567696E496D616765436F6E746578742C20746869732066756E6374696F6E2072657475726E73206E696C2E
		Protected Shared Function UIGraphicsGetImageFromCurrentImageContext() As ptr
		  #if TargetIOS
		    Declare function UIGraphicsGetImageFromCurrentImageContext lib UIKitLibName as ptr
		    return UIGraphicsGetImageFromCurrentImageContext
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub UIGraphicsPopContext()
		  #if TargetIOS
		    declare sub UIGraphicsPopContext lib UIKitLibName
		    UIGraphicsPopContext
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub UIGraphicsPushContext(id as ptr)
		  #if TargetIOS
		    declare sub UIGraphicsPushContext lib UIKitLibName (id as ptr)
		    UIGraphicsPushContext (id)
		  #endif
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetAllowsFontSmoothing mCFTypeRef, value
			  
			End Set
		#tag EndSetter
		AllowFontSmoothing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetAllowsFontSubpixelPositioning mCFTypeRef, value
			  
			End Set
		#tag EndSetter
		AllowFontSubpixelPositioning As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetAllowsFontSubpixelQuantization mCFTypeRef, value
			  
			End Set
		#tag EndSetter
		AllowFontSubpixelQuantization As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetBlendMode mCFTypeRef, value
			End Set
		#tag EndSetter
		BlendMode As CGBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetClipBoundingBox (mcfTypeRef)
			End Get
		#tag EndGetter
		ClipBoundingBox As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCGContext (UIGraphicsGetCurrentContext)
			End Get
		#tag EndGetter
		Shared CurrentContext As AppleCGContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetPathCurrentPoint (mcftyperef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextMoveToPoint mcftyperef, value.x, value.y
			End Set
		#tag EndSetter
		CurrentPoint As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetFlatness mCFTypeRef, value
			End Set
		#tag EndSetter
		Flatness As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetInterpolationQuality (mcftypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetInterpolationQuality mcftyperef, value
			End Set
		#tag EndSetter
		InterpolationQuality As CGInterpolationQuality
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetLineCap mcftyperef, value
			End Set
		#tag EndSetter
		LineCap As CGLineCap
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetLineJoin mcftyperef, value
			End Set
		#tag EndSetter
		LineJoin As CGLineJoin
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetMiterLimit mCFTypeRef, value
			End Set
		#tag EndSetter
		MiterLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetPathBoundingBox (mcfTypeRef)
			End Get
		#tag EndGetter
		PathBoundingBox As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextIsPathEmpty (mCFTypeRef)
			End Get
		#tag EndGetter
		PathIsEmpty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetPatternPhase mCFTypeRef, value
			End Set
		#tag EndSetter
		Phase As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetRenderingIntent mCFTypeRef, value
			End Set
		#tag EndSetter
		RenderingIntent As CGColorRenderingIntent
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetShouldSmoothFonts mCFTypeRef, value
			End Set
		#tag EndSetter
		ShouldSmoothFonts As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetShouldSubpixelPositionFonts mCFTypeRef, value
			End Set
		#tag EndSetter
		ShouldSubpixelPositionFonts As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetShouldSubpixelQuantizeFonts mCFTypeRef, value
			End Set
		#tag EndSetter
		ShouldSubpixelQuantizeFonts As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  CGContextSetTextDrawingMode mCFTypeRef, value
			End Set
		#tag EndSetter
		TextDrawingMode As CGTextDrawingMode
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowFontSmoothing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFontSubpixelPositioning"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFontSubpixelQuantization"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Flatness"
			Group="Behavior"
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
			InitialValue="0"
			Type="Integer"
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
			Name="PathIsEmpty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldSmoothFonts"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldSubpixelPositionFonts"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldSubpixelQuantizeFonts"
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
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
