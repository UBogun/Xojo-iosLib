#tag Module
Protected Module TransformExtension
	#tag Method, Flags = &h1
		Protected Function CGAffineTransformConcat(T1 As CGAffineTransform, T2 As CGAffineTransform) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformConcat lib CoreGraphicsLibName (T1 As CGAffineTransform32Bit, T2 As CGAffineTransform32Bit) as CGAffineTransform32Bit
		    return CGAffineTransformConcat (T1.toCGAffineTransform32Bit, T2.toCGAffineTransform32Bit).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformConcat lib CoreGraphicsLibName (T1 As CGAffineTransform, T2 As CGAffineTransform) as CGAffineTransform
		    return CGAffineTransformConcat (T1, T2)
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformIdentity() As CGAffineTransform
		  static mResult as CGAffineTransform = CGAffineTransformMake (1, 0, 0, 1, 0, 0)
		  return mResult
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformInvert(T As CGAffineTransform) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformInvert lib CoreGraphicsLibName (T As CGAffineTransform32Bit) as CGAffineTransform32Bit
		    return CGAffineTransformInvert (T.toCGAffineTransform32Bit).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformInvert lib CoreGraphicsLibName (T As CGAffineTransform) as CGAffineTransform
		    return CGAffineTransformInvert (T)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformMake(a as Double, b as Double, c as Double, d as Double, tx as Double, ty as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMake lib CoreGraphicsLibName (a as Single, b as Single, c as Single, d as Single, tx as Single, ty as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMake(a, b, c, d, tx, ty).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMake lib CoreGraphicsLibName (a as Double, b as Double, c as Double, d as Double, tx as Double, ty as Double) as CGAffineTransform
		    return CGAffineTransformMake (a, b, c, d, tx, ty)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformMakeRotation(angle as double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMakeRotation lib CoreGraphicsLibName (angle as single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeRotation(angle).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeRotation lib CoreGraphicsLibName (angle as double) as CGAffineTransform
		    return CGAffineTransformMakeRotation (angle)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformMakeScale(scaleX as double, scaleY as Double = 0) As CGAffineTransform
		  if scaleY = 0 then scaleY = scaleX // scale proportionally if only one value is supplied
		  #if target32bit
		    Declare function CGAffineTransformMakeScale lib CoreGraphicsLibName (scaleX as single, ScaleY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeScale(ScaleX, ScaleY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeScale lib CoreGraphicsLibName (scaleX as Double, ScaleY as Double) as CGAffineTransform
		    return CGAffineTransformMakeScale(ScaleX, ScaleY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformMakeTranslation(DeltaX as double, DeltaY as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMakeTranslation lib CoreGraphicsLibName (DeltaX as single, DeltaY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeTranslation(DeltaX, DeltaY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeTranslation lib CoreGraphicsLibName (DeltaX as Double, DeltaY as Double) as CGAffineTransform
		    return CGAffineTransformMakeTranslation(DeltaX, DeltaY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformRotate(T As CGAffineTransform, angle as double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformRotate lib CoreGraphicsLibName (T As CGAffineTransform32Bit, angle as single) as CGAffineTransform32Bit
		    return CGAffineTransformRotate (T.toCGAffineTransform32Bit, angle).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformRotate lib CoreGraphicsLibName (T As CGAffineTransform, angle as double) as CGAffineTransform
		    return CGAffineTransformRotate (T, angle)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformScale(T as CGAffineTransform, scaleX as double, scaleY as Double = 0) As CGAffineTransform
		  if scaleY = 0 then scaleY = scaleX // scale proportionally if only one value is supplied
		  #if target32bit
		    Declare function CGAffineTransformScale lib CoreGraphicsLibName (T as CGAffineTransform32Bit, scaleX as single, ScaleY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformScale (t.toCGAffineTransform32Bit, ScaleX, ScaleY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformScale lib CoreGraphicsLibName (T as CGAffineTransform, scaleX as Double, ScaleY as Double) as CGAffineTransform
		    return CGAffineTransformScale (T, ScaleX, ScaleY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CGAffineTransformTranslate(T as CGAffineTransform, DeltaX as double, DeltaY as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformTranslate lib CoreGraphicsLibName (T as CGAffineTransform32bit, DeltaX as single, DeltaY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformTranslate (t.toCGAffineTransform32Bit, DeltaX, DeltaY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformTranslate lib CoreGraphicsLibName (T as CGAffineTransform, DeltaX as Double, DeltaY as Double) as CGAffineTransform
		    return CGAffineTransformTranslate (T, DeltaX, DeltaY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Combine(transform as CGAffineTransform, anothertransform as CGAffineTransform) As CGAffineTransform
		  return CGAffineTransformConcat (transform, anothertransform)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Invert(extends t as CGAffineTransform) As CGAffineTransform
		  return CGAffineTransformInvert (T)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RotateDegree(extends t as CGAffineTransform, angle as double) As CGAffineTransform
		  return CGAffineTransformRotate (T, angle.DegreeToRadian)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RotateRadian(extends t as CGAffineTransform, angle as double) As CGAffineTransform
		  return CGAffineTransformRotate (T, angle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCATransform3D(extends cat as CATransform3D32Bit) As CATransform3D
		  dim result as CATransform3D
		  result.m11 = cat.m11
		  result.m12 = cat.m12
		  result.m13 = cat.m13
		  result.m14 = cat.m14
		  result.m21 = cat.m21
		  result.m22 = cat.m22
		  result.m23 = cat.m23
		  result.m24 = cat.m24
		  result.m31 = cat.m31
		  result.m32 = cat.m32
		  result.m33 = cat.m33
		  result.m34 = cat.m34
		  result.m41 = cat.m41
		  result.m42 = cat.m42
		  result.m43 = cat.m43
		  result.m44 = cat.m44
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCATransform3D(extends cat as CGAffineTransform) As CATransform3D
		  Return CATransform3DMakeAffineTransform (cat)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCATransform3D32Bit(extends cat as CATransform3D) As CATransform3D32Bit
		  dim result as CATransform3D32Bit
		  result.m11 = cat.m11
		  result.m12 = cat.m12
		  result.m13 = cat.m13
		  result.m14 = cat.m14
		  result.m21 = cat.m21
		  result.m22 = cat.m22
		  result.m23 = cat.m23
		  result.m24 = cat.m24
		  result.m31 = cat.m31
		  result.m32 = cat.m32
		  result.m33 = cat.m33
		  result.m34 = cat.m34
		  result.m41 = cat.m41
		  result.m42 = cat.m42
		  result.m43 = cat.m43
		  result.m44 = cat.m44
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGAffineTransform(extends c as CATransform3D) As CGAffineTransform
		  return CATransform3DGetAffineTransform (c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGAffineTransform(extends ca as CGAffineTransform32Bit) As CGAffineTransform
		  dim result as CGAffineTransform
		  result.a = ca.a
		  result.b = ca.b
		  result.c = ca.c
		  result.d = ca.d
		  result.tx = ca.tx
		  result.ty = ca.ty
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGAffineTransform32Bit(extends ca as CGAffineTransform) As CGAffineTransform32Bit
		  dim result as CGAffineTransform32Bit
		  result.a = ca.a
		  result.b = ca.b
		  result.c = ca.c
		  result.d = ca.d
		  result.tx = ca.tx
		  result.ty = ca.ty
		  return result
		End Function
	#tag EndMethod


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
