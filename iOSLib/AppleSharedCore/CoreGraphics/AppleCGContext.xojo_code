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
		Sub AddEllipse(Rect as NSRect)
		  CGContextAddEllipseInRect mCFTypeRef, Rect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLines(Points() as NSPoint, Count as Uinteger = 0)
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
		Sub AddRect(Rect as NSRect)
		  CGContextAddRect mCFTypeRef, Rect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRects(Rects() as NSRect, Count as Uinteger = 0)
		  if count = 0 then count = rects.Ubound + 1
		  CGContextAddrects mCFTypeRef, rects.toMemoryBlock.Data, count
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
		    Declare Sub CGContextAddArc lib CoreGraphics _
		    (id as ptr,  x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Int32)
		    CGContextAddArc (Context, x, y, radius, startAngle, EndAngle, ClockWise)
		  #elseif Target32Bit
		    Declare Sub CGContextAddArc lib CoreGraphics _
		    (id as ptr, x as single, y as single, radius as single, startAngle as single, EndAngle As single, ClockWise As Int32)
		    CGContextAddArc (Context, x, y, radius, startAngle, EndAngle, ClockWise)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddArcToPoint(APathRef as Ptr, x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  #if Target64Bit
		    Declare Sub CGContextAddArcToPoint lib CoreGraphics _
		    (Id as Ptr,  x1 as double, y1 as double,  x2 as double, y2 as double, radius as double)
		    CGContextAddArcToPoint (APathRef, x1, y1, x2, y2, radius)
		  #elseif Target32Bit
		    Declare Sub CGContextAddArcToPoint lib CoreGraphics _
		    (Id as Ptr,  x1 as single, y1 as single,  x2 as single, y2 as single, radius as single)
		    CGContextAddArcToPoint (APathRef, x1, y1, x2, y2, radius)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddCurveToPoint(APathRef as Ptr, cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGContextAddCurveToPoint lib CoreGraphics _
		    (Id as Ptr, cp1x as double, cp1y as double,  cp2x as double, cp2y as double, x as double, y as double)
		    CGContextAddCurveToPoint (APathRef, cp1x, cp1y, cp2x, cp2y, x, y)
		  #elseif Target32Bit
		    Declare Sub CGContextAddCurveToPoint lib CoreGraphics _
		    (Id as Ptr, cp1x as single, cp1y as single,  cp2x as single, cp2y as single, x as single, y as single)
		    CGContextAddCurveToPoint (APathRef, cp1x, cp1y, cp2x, cp2y, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddEllipseInRect(APathRef as Ptr, aRect as NSRect)
		  #if Target64Bit
		    Declare Sub CGContextAddEllipseInRect lib CoreGraphics  (id as ptr,  aRect as nsrect)
		    CGContextAddEllipseInRect (APathRef,  aRect)
		  #elseif Target32Bit
		    Declare Sub CGContextAddEllipseInRect lib CoreGraphics  (id as ptr,  aRect as NSRect32Bit)
		    CGContextAddEllipseInRect (APathRef,  aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextAddLines Lib CoreGraphics (CFTypeRef as Ptr, Points as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddLineToPoint(id as ptr, x as double, y as double)
		  #if Target64Bit
		    Declare sub CGContextAddLineToPoint lib CoreGraphics (id as ptr, x as double, y as double)
		  #elseif Target32Bit
		    Declare sub CGContextAddLineToPoint lib CoreGraphics (id as ptr, x as single, y as single)
		  #endif
		  CGContextAddLineToPoint id, x, y
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextAddPath Lib CoreGraphics (CFTypeRef as Ptr, Path as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddQuadCurveToPoint(APathRef as Ptr, cpx as double, cpy as double, x as double, y as double)
		  #if Target64Bit
		    Declare Sub CGContextAddQuadCurveToPoint lib CoreGraphics  (Id as Ptr, cpx as double, cpy as double,  x as double, y as double)
		    CGContextAddQuadCurveToPoint (APathRef, cpx, cpy, x, y)
		  #elseif Target32Bit
		    Declare Sub CGContextAddQuadCurveToPoint lib CoreGraphics  (Id as Ptr, cpx as single, cpy as single,  x as single, y as single)
		    CGContextAddQuadCurveToPoint (APathRef,  cpx, cpy, x, y)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextAddRect(APathRef as Ptr, aRect as NSRect)
		  #if Target64Bit
		    Declare Sub CGContextAddRect lib CoreGraphics  (id as ptr, aRect as nsrect)
		    CGContextAddRect (APathRef,  aRect)
		  #elseif Target32Bit
		    Declare Sub CGContextAddRect lib CoreGraphics  (id as ptr, aRect as NSRect32Bit)
		    CGContextAddRect (APathRef,  aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextAddRects Lib CoreGraphics (CFTypeRef as Ptr, Rects as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextBeginPath Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextClearRect(APathRef as Ptr, aRect as NSRect)
		  #if Target64Bit
		    Declare Sub CGContextClearRect lib CoreGraphics  (id as ptr,  aRect as nsrect)
		    CGContextClearRect (APathRef,  aRect)
		  #elseif Target32Bit
		    Declare Sub CGContextClearRect lib CoreGraphics  (id as ptr,  aRect as NSRect32Bit)
		    CGContextClearRect (APathRef,  aRect.toNSRect32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextClosePath Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextCopyPath Lib CoreGraphics (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextDrawImage(id as ptr, Rect as NSRect, image as AppleCGImage)
		  #if Target64Bit
		    declare sub CGContextDrawImage lib CoreGraphics (Id as ptr, Rect as NSRect, Image as Ptr)
		    CGContextDrawImage id, rect, image.CFTypeRef
		  #elseif Target32Bit
		    declare sub CGContextDrawImage lib CoreGraphics (Id as ptr, Rect as NSRect32Bit, Image as Ptr)
		    CGContextDrawImage id, rect.toNSRect32, image.CFTypeRef
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextDrawLinearGradient(Context as Ptr, gradient as Ptr, startPoint as NSPoint, EndPoint AS NSPoint, options As uint32)
		  #if Target64Bit
		    Declare Sub CGContextDrawLinearGradient lib CoreGraphics _
		    (Context as Ptr, gradient as Ptr, startPoint as NSPoint, EndPoint AS NSPoint, options As UInt32)
		    CGContextDrawLinearGradient (Context, gradient, startPoint, endpoint, options)
		  #elseif Target32Bit
		    Declare Sub CGContextDrawLinearGradient lib CoreGraphics _
		    (Context as Ptr, gradient as Ptr, startPoint as NSPoint32Bit, EndPoint AS NSPoint32Bit, options As UInt32)
		    CGContextDrawLinearGradient (Context, gradient, startPoint.toNSPoint32, endpoint.toNSPoint32, options)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextDrawPath Lib CoreGraphics (CFTypeRef as Ptr, DrawingMode as CGPathDrawingMode)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextDrawRadialGradient(Context as Ptr, gradient as Ptr, startCenter as NSPoint, StartRadius As Double, EndCenter AS NSPoint, EndRadius As Double, options As uint32)
		  #if Target64Bit
		    Declare Sub CGContextDrawRadialGradient lib CoreGraphics _
		    (Context as Ptr, gradient as Ptr, startCenter as NSPoint, StartRadius As Double, EndCenter AS NSPoint, EndRadius As Double, options As uint32)
		    CGContextDrawRadialGradient (Context, gradient, startCenter, StartRadius, EndCenter, endradius, options)
		  #elseif Target32Bit
		    Declare Sub CGContextDrawRadialGradient lib CoreGraphics _
		    (Context as Ptr, gradient as Ptr, startCenter as NSPoint32Bit, StartRadius As Single, EndCenter AS NSPoint32Bit, EndRadius As Single, options As uint32)
		    CGContextDrawRadialGradient (Context, gradient, startCenter.toNSPoint32, StartRadius, EndCenter.toNSPoint32, endradius, options)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextDrawTiledImage(id as ptr, Rect as NSRect, image as AppleCGImage)
		  #if Target64Bit
		    declare sub CGContextDrawTiledImage lib CoreGraphics (Id as ptr, Rect as NSRect, Image as Ptr)
		    CGContextDrawTiledImage id, rect, image.CFTypeRef
		  #elseif Target32Bit
		    declare sub CGContextDrawTiledImage lib CoreGraphics (Id as ptr, Rect as NSRect32Bit, Image as Ptr)
		    CGContextDrawTiledImage id, rect.toNSRect32, image.CFTypeRef
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextEOFillPath Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextFillPath Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextFillRects Lib CoreGraphics (CFTypeRef as Ptr, Rects as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextFlush Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetAllowsFontSmoothing Lib CoreGraphics (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetAllowsFontSubpixelPositioning Lib CoreGraphics (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetAllowsFontSubpixelQuantization Lib CoreGraphics (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetBlendMode Lib CoreGraphics (CFTypeRef as Ptr) As CGBlendMode
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextGetFlatness(id as ptr) As double
		  #if Target64Bit
		    Declare function CGContextGetFlatness lib CoreGraphics (id as ptr)  as double
		  #elseif Target32Bit
		    Declare function CGContextGetFlatness lib CoreGraphics (id as ptr)  as single
		  #endif
		  Return CGContextGetFlatness (id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetInterpolationQuality Lib CoreGraphics (CFTypeRef as Ptr) As CGInterpolationQuality
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetLineCap Lib CoreGraphics (CFTypeRef as Ptr) As CGLineCap
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetLineJoin Lib CoreGraphics (CFTypeRef as Ptr) As CGLineJoin
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextGetMiterLimit(id as ptr) As Double
		  #if Target64Bit
		    Declare function CGContextGetMiterLimit lib CoreGraphics (id as ptr) as double
		  #elseif Target32Bit
		    Declare function CGContextGetMiterLimit lib CoreGraphics (id as ptr) as single
		  #endif
		  return CGContextGetMiterLimit (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextGetPathBoundingBox(context as Ptr) As NSRect
		  #if Target64Bit
		    Declare function CGContextGetPathBoundingBox lib CoreGraphics (id as ptr) as nsrect
		    return CGContextGetPathBoundingBox (context)
		  #elseif Target32Bit
		    Declare function CGContextGetPathBoundingBox lib CoreGraphics (id as ptr) as NSRect32Bit
		    return CGContextGetPathBoundingBox(context).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextGetPathCurrentPoint(context as Ptr) As NSPoint
		  #if Target64Bit
		    Declare function CGContextGetPathCurrentPoint lib CoreGraphics (id as ptr) as NSPoint
		    return CGContextGetPathCurrentPoint (context)
		  #elseif Target32Bit
		    Declare function CGContextGetPathCurrentPoint lib CoreGraphics (id as ptr) as NSPoint32Bit
		    return CGContextGetPathCurrentPoint(context).tonspoint
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextGetPatternPhase(id as ptr) As NSSize
		  #if Target64Bit
		    Declare Function CGContextGetPatternPhase lib CoreGraphics (id as ptr) As NSSize
		    return CGContextGetPatternPhase (id)
		  #elseif Target32Bit
		    Declare Function CGContextGetPatternPhase lib CoreGraphics (id as ptr) As NSSize32Bit
		    return CGContextGetPatternPhase(id).tonssize
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetRenderingIntent Lib CoreGraphics (CFTypeRef as Ptr) As CGColorRenderingIntent
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetShouldSmoothFonts Lib CoreGraphics (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetShouldSubpixelPositionFonts Lib CoreGraphics (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetShouldSubpixelQuantizeFonts Lib CoreGraphics (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextGetTextDrawingMode Lib CoreGraphics (CFTypeRef as Ptr) As CGTextDrawingMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextIsPathEmpty Lib CoreGraphics (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextMoveToPoint(id as ptr, x as double, y as double)
		  #if Target64Bit
		    Declare sub CGContextMoveToPoint lib CoreGraphics (id as ptr, x as double, y as double)
		  #elseif Target32Bit
		    Declare sub CGContextMoveToPoint lib CoreGraphics (id as ptr, x as single, y as single)
		  #endif
		  CGContextMoveToPoint id, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function CGContextPathContainsPoint(context as Ptr, point as nspoint, mode as CGPathDrawingMode) As boolean
		  #if Target64Bit
		    Declare function CGContextPathContainsPoint lib CoreGraphics (id as ptr, point as nspoint, mode as CGPathDrawingMode) as boolean
		    return CGContextPathContainsPoint (context, point, mode)
		  #elseif Target32Bit
		    Declare function CGContextPathContainsPoint lib CoreGraphics (id as ptr, point as NSPoint32Bit, mode as CGPathDrawingMode) as boolean
		    return CGContextPathContainsPoint (context, point.toNSPoint32, mode)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextRelease Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextReplacePathWithStrokedPath Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextRestoreGState Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextRetain Lib CoreGraphics (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSaveGState Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetAllowsFontSmoothing Lib CoreGraphics (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetAllowsFontSubpixelPositioning Lib CoreGraphics (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetAllowsFontSubpixelQuantization Lib CoreGraphics (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetBlendMode Lib CoreGraphics (CFTypeRef as Ptr, value as CGBlendMode)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetFlatness(id as ptr, Flatness As Double)
		  #if Target64Bit
		    Declare sub CGContextSetFlatness lib CoreGraphics (id as ptr, value as double)
		  #elseif Target32Bit
		    Declare sub CGContextSetFlatness lib CoreGraphics (id as ptr, value as single)
		  #endif
		  CGContextSetFlatness id, Flatness
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetInterpolationQuality Lib CoreGraphics (CFTypeRef as Ptr, value as CGInterpolationQuality)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetLineCap Lib CoreGraphics (CFTypeRef as Ptr, value as CGLineCap)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetLineDash(id as ptr, Phase As Double, Lengths As AppleArray,  count as UInteger = 0)
		  if count = 0 then count = Lengths.Count
		  #if Target64Bit
		    Declare sub CGContextSetLineDash lib CoreGraphics (id as ptr, Phase As Double, Lengths As Ptr,  count as UInteger)
		  #elseif Target32Bit
		    Declare sub CGContextSetLineDash lib CoreGraphics (id as ptr, Phase As Single, Lengths As Ptr,  count as UInteger)
		  #endif
		  CGContextSetLineDash id, Phase, if (lengths = nil, nil, lengths.id), count
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetLineJoin Lib CoreGraphics (CFTypeRef as Ptr, value as CGLineJoin)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetMiterLimit(id as ptr, Limit As Double)
		  #if Target64Bit
		    Declare sub CGContextSetMiterLimit lib CoreGraphics (id as ptr, value as double)
		  #elseif Target32Bit
		    Declare sub CGContextSetMiterLimit lib CoreGraphics (id as ptr, value as single)
		  #endif
		  CGContextSetMiterLimit id, limit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetPatternPhase(id as ptr, Phase As NSSize)
		  #if Target64Bit
		    Declare sub CGContextSetPatternPhase lib CoreGraphics (id as ptr, Phase As NSSize)
		    CGContextSetPatternPhase id, Phase
		  #elseif Target32Bit
		    Declare sub CGContextSetPatternPhase lib CoreGraphics (id as ptr, Phase As NSSize32Bit)
		    CGContextSetPatternPhase id, Phase.toNSSize32
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetRenderingIntent Lib CoreGraphics (CFTypeRef as Ptr, value as CGColorRenderingIntent)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetShadow(id as ptr, offset as nssize, blur as double)
		  #if Target64Bit
		    Declare sub CGContextSetShadow lib CoreGraphics (id as ptr, offset as nssize, blur as double)
		    CGContextSetShadow id, offset, blur
		  #elseif Target32Bit
		    Declare sub CGContextSetShadow lib CoreGraphics (id as ptr, offset as NSSize32Bit, blur as single)
		    CGContextSetShadow id, offset.toNSSize32, blur
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextSetShadowWithColor(id as ptr, offset as nssize, blur as double, shadowcolor as AppleCGColor)
		  #if Target64Bit
		    Declare sub CGContextSetShadowWithColor lib CoreGraphics (id as ptr, offset as nssize, blur as double, shadowcolor as ptr)
		    CGContextSetShadowWithColor id, offset, blur, if (shadowcolor = nil, nil, shadowcolor.mCFTypeRef)
		  #elseif Target32Bit
		    Declare sub CGContextSetShadowWithColor lib CoreGraphics (id as ptr, offset as NSSize32Bit, blur as single, shadowcolor as ptr)
		    CGContextSetShadowWithColor id, offset.toNSSize32, blur, if (shadowcolor = nil, nil, shadowcolor.mCFTypeRef)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetShouldSmoothFonts Lib CoreGraphics (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetShouldSubpixelPositionFonts Lib CoreGraphics (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetShouldSubpixelQuantizeFonts Lib CoreGraphics (CFTypeRef as Ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSetTextDrawingMode Lib CoreGraphics (CFTypeRef as Ptr, value as CGTextDrawingMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextStrokeLineSegments Lib CoreGraphics (CFTypeRef as Ptr, Points as Ptr, Count as Uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextStrokePath Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CGContextStrokeRectWithWidth(APathRef as Ptr, aRect as NSRect, width as double)
		  #if Target64Bit
		    Declare Sub CGContextStrokeRectWithWidth lib CoreGraphics  (id as ptr, aRect as nsrect, width as double)
		    CGContextStrokeRectWithWidth (APathRef,  aRect, width)
		  #elseif Target32Bit
		    Declare Sub CGContextStrokeRectWithWidth lib CoreGraphics  (id as ptr, aRect as NSRect32Bit, width as single)
		    CGContextStrokeRectWithWidth (APathRef,  aRect.toNSRect32, width)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextSynchronize Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub ClearRect(Rect as NSRect)
		  CGContextClearRect mCFTypeRef, Rect
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
		Sub DrawImage(Rect as NSRect, image as AppleCGImage)
		  CGContextDrawImage mCFTypeRef, Rect, image
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(Gradient As applecgGradient, StartPoint As NSPoint, EndPoint As NSPoint, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  CGContextDrawLinearGradient mcftypeRef, Gradient.cftyperef, Startpoint, EndPoint, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(Colors() As Color, Locations() As double, StartPoint As NSPoint, EndPoint As NSPoint, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  dim mygradient as new AppleCGGradient(Colors, locations)
		  CGContextDrawLinearGradient mcftypeRef, myGradient.cftyperef, Startpoint, EndPoint, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(Colors() As Color, StartPoint As NSPoint, EndPoint As NSPoint, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
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
		Sub DrawRadialGradient(Gradient As applecgGradient, StartCenter As NSPoint, StartRadius As Double, EndCenter As NSPoint, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  CGContextDrawradialGradient mcftypeRef, Gradient.cftyperef, StartCenter, StartRadius, EndCenter, EndRadius, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(Colors() As color, Locations() As Double, StartCenter As NSPoint, StartRadius As Double, EndCenter As NSPoint, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  dim mygradient as new AppleCGGradient(Colors, Locations)
		  CGContextDrawradialGradient mcftypeRef, myGradient.cftyperef, StartCenter, StartRadius, EndCenter, EndRadius, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(Colors() As color, StartCenter As NSPoint, StartRadius As Double, EndCenter As NSPoint, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  dim mygradient as new AppleCGGradient(Colors)
		  CGContextDrawradialGradient mcftypeRef, myGradient.cftyperef, StartCenter, StartRadius, EndCenter, EndRadius, if (DrawBeforeStart, 1, 0) or if (DrawAfterEnd, 2, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawTiledImage(Rect as NSRect, image as AppleCGImage)
		  CGContextDrawTiledImage mCFTypeRef, Rect, image
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
		Sub FillRects(Rects() as NSRect, Count as Uinteger = 0)
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
		Sub MoveToPoint(x as double, y as double)
		  CGContextMoveToPoint mCFTypeRef, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PathContainsPoint(Point as NSPoint, mode as CGPathDrawingMode = CGPathDrawingMode.Fill) As boolean
		  return CGContextPathContainsPoint (mcftyperef, point, mode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CGContextRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveShadow()
		  CGContextSetShadowWithColor mCFtYpeRef, nssize (0, 0), 0, nil
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
		Sub SetLineDash(Phase As Double, Lengths As AppleArray,  count as UInteger = 0)
		  CGContextSetLineDash mCFTypeRef, Phase, Lengths, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLineDash(Phase As Double, Lengths() As Double,  count as UInteger = 0)
		  CGContextSetLineDash mCFTypeRef, Phase, Lengths.toAppleArray, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadow(XOffset as Double, YOffset as double, Blur as double)
		  CGContextSetShadow mCFtYpeRef, nssize (XOffset, YOffset), blur
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadow(XOffset as Double, YOffset as double, Blur as double, ShadowColor as AppleCGColor)
		  CGContextSetShadowWithColor mCFtYpeRef, nssize (XOffset, YOffset), blur, ShadowColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadow(XOffset as Double, YOffset as double, Blur as double, ShadowColor as Color)
		  dim mycolor as new AppleCGColor(ShadowColor)
		  CGContextSetShadowWithColor mCFtYpeRef, nssize (XOffset, YOffset), blur, mycolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokeLines(Points() as NSPoint, Count as Uinteger = 0)
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
		Sub StrokeRect(aRect as NSRect, width as double)
		  CGContextStrokeRectWithWidth mCFTypeRef, aRect, Width
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Synchronize()
		  CGContextSynchronize mcftypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub UIGraphicsBeginImageContext(asize as NSSize)
		  #if TargetIOS
		    #if Target64Bit
		      declare sub UIGraphicsBeginImageContext lib CoreGraphics (asize as NSSize)
		      UIGraphicsBeginImageContext (asize)
		    #elseif Target32Bit
		      declare sub UIGraphicsBeginImageContext lib CoreGraphics (asize as NSSize32Bit)
		      UIGraphicsBeginImageContext (asize.toNSSize32)
		    #endif
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub UIGraphicsEndImageContext()
		  #if TargetIOS
		    Declare sub UIGraphicsEndImageContext lib CoreGraphics 
		    UIGraphicsEndImageContext
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function UIGraphicsGetCurrentContext() As ptr
		  #if TargetIOS
		    Declare function UIGraphicsGetCurrentContext lib CoreGraphics as ptr
		    return UIGraphicsGetCurrentContext
		  #endif
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetAllowsFontSmoothing (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetAllowsFontSmoothing mCFTypeRef, value
			  
			End Set
		#tag EndSetter
		AllowFontSmoothing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetAllowsFontSubpixelPositioning (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetAllowsFontSubpixelPositioning mCFTypeRef, value
			  
			End Set
		#tag EndSetter
		AllowFontSubpixelPositioning As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetAllowsFontSubpixelQuantization (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetAllowsFontSubpixelQuantization mCFTypeRef, value
			  
			End Set
		#tag EndSetter
		AllowFontSubpixelQuantization As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetBlendMode (mcfTypeRef)
			End Get
		#tag EndGetter
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
		CurrentPoint As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return CGContextGetFlatness (mcftyperef)
			End Get
		#tag EndGetter
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
		#tag Getter
			Get
			  return CGContextGetLineCap (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetLineCap mcftyperef, value
			End Set
		#tag EndSetter
		LineCap As CGLineCap
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetLineJoin (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetLineJoin mcftyperef, value
			End Set
		#tag EndSetter
		LineJoin As CGLineJoin
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return CGContextGetMiterLimit (mCFTypeRef)
			End Get
		#tag EndGetter
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
		PathBoundingBox As NSRect
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
		#tag Getter
			Get
			  return CGContextGetPatternPhase (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetPatternPhase mCFTypeRef, value
			End Set
		#tag EndSetter
		Phase As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetRenderingIntent (mcfTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetRenderingIntent mCFTypeRef, value
			End Set
		#tag EndSetter
		RenderingIntent As CGColorRenderingIntent
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetShouldSmoothFonts (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetShouldSmoothFonts mCFTypeRef, value
			End Set
		#tag EndSetter
		ShouldSmoothFonts As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetShouldSubpixelPositionFonts (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetShouldSubpixelPositionFonts mCFTypeRef, value
			End Set
		#tag EndSetter
		ShouldSubpixelPositionFonts As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGContextGetShouldSubpixelQuantizeFonts (mCFTypeRef)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  CGContextSetShouldSubpixelQuantizeFonts mCFTypeRef, value
			End Set
		#tag EndSetter
		ShouldSubpixelQuantizeFonts As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return CGContextGetTextDrawingMode (mCFTypeRef)
			End Get
		#tag EndGetter
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
			Name="BlendMode"
			Group="Behavior"
			Type="CGBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Normal"
				"1 - Multiply"
				"2 - Screen"
				"3 - Overlay"
				"4 - Darken"
				"5 - Lighten"
				"6 - ColorDodge"
				"7 - ColorBurn"
				"8 - SoftLight"
				"9 - HardLight"
				"10 - Difference"
				"11 - Exclusion"
				"12 - Hue"
				"13 - Saturation"
				"14 - Color"
				"15 - Luminosity"
				"16 - Clear"
				"17 - Copy"
				"18 - SourceIn"
				"19 - SourceOut"
				"20 - SourceAtop"
				"21 - DestinationOver"
				"22 - DestinationIn"
				"23 - DestinationOut"
				"24 - DestinationAtop"
				"25 - ModeXOR"
				"26 - PlusDarker"
				"27 - PlusLighter"
			#tag EndEnumValues
		#tag EndViewProperty
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
			Name="Flatness"
			Group="Behavior"
			Type="Double"
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
			Name="InterpolationQuality"
			Group="Behavior"
			Type="CGInterpolationQuality"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Low"
				"4 - Medium"
				"3 - High"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNIL"
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
			Name="LineCap"
			Group="Behavior"
			Type="CGLineCap"
			EditorType="Enum"
			#tag EnumValues
				"0 - Butt"
				"1 - Round"
				"2 - Square"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineJoin"
			Group="Behavior"
			Type="CGLineJoin"
			EditorType="Enum"
			#tag EnumValues
				"0 - Miter"
				"1 - Round"
				"2 - Bevel"
			#tag EndEnumValues
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
			Name="PathIsEmpty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingIntent"
			Group="Behavior"
			Type="CGColorRenderingIntent"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - AbsoluteColorimetric"
				"2 - RelativeColorimetric"
				"3 - Perceptual"
				"4 - Saturation"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="Integer"
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
			Name="TextDrawingMode"
			Group="Behavior"
			Type="CGTextDrawingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Fill"
				"1 - Stroke"
				"2 - FillStroke"
				"3 - Invisible"
				"4 - FillClip"
				"5 - StrokeClip"
				"6 - FillStrokeClip"
				"7 - Clip"
			#tag EndEnumValues
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
