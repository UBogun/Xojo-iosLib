#tag Module
Protected Module QuartzCoreFramework
	#tag ExternalMethod, Flags = &h0
		Declare Function CACurrentMediaTime Lib quartzcore () As Double
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function CATransform3DConcat(T1 As CATransform3D, T2 As CATransform3D) As CATransform3D
		  #if target32bit
		    Declare function CATransform3DConcat lib QuartzCore (T1 As CATransform3D32Bit, T2 As CATransform3D32Bit) as CATransform3D32Bit
		    return CATransform3DConcat (T1.toCATransform3D32Bit, T2.toCATransform3D32Bit).toCATransForm3D
		  #elseif Target64Bit
		    Declare function CATransform3DConcat lib QuartzCore (T1 As CATransform3D, T2 As CATransform3D) as CATransform3D
		    return CATransform3DConcat (T1, T2)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DEqualToTransform(t1 as CATransform3D, t2 as CATransform3D) As Boolean
		  #if Target32Bit
		    Declare function CATransform3DEqualToTransform lib QuartzCore (t1 as CATransform3D32Bit, t2 as CATransform3D32Bit) as Boolean
		    return CATransform3DEqualToTransform(t1.toCATransform3D32Bit, t2.toCATransform3D32Bit)
		  #elseif Target64Bit
		    Declare function CATransform3DEqualToTransform lib QuartzCore (t1 as CATransform3D, t2 as CATransform3D) as Boolean
		    return CATransform3DEqualToTransform (t1, t2)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DGetAffineTransform(T as CATransform3D) As CGAffineTransform
		  #if target32bit
		    Declare function CATransform3DGetAffineTransform lib QuartzCore (T as CATransform3D32Bit) as CGAffineTransform32Bit
		    return CATransform3DGetAffineTransform(t.toCATransform3D32Bit).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CATransform3DGetAffineTransform lib QuartzCore (T as CATransform3D) as CGAffineTransform
		    return CATransform3DGetAffineTransform (T)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DIdentity() As CATransform3D
		  return CATransform3DMakeTranslation (0,0,0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DInvert(T As CATransform3D) As CATransform3D
		  #if target32bit
		    Declare function CATransform3DInvert lib QuartzCore (T As CATransform3D32Bit) as CATransform3D32Bit
		    return CATransform3DInvert (T.toCATransform3D32Bit).toCATransForm3D
		  #elseif Target64Bit
		    Declare function CATransform3DInvert lib QuartzCore (T As CATransform3D) as CATransform3D
		    return CATransform3DInvert (T)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DIsAffine(T as CATransform3D) As Boolean
		  #if target32bit
		    Declare function CATransform3DIsAffine lib QuartzCore (t as CATransform3D32Bit) as Boolean
		    return CATransform3DIsAffine (t.toCATransform3D32Bit)
		  #elseif Target64Bit
		    Declare function CATransform3DIsAffine lib CoreGraphics (t as CATransform3D) as Boolean
		    return CATransform3DIsAffine (t)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DIsIdentity(t as CATransform3D) As Boolean
		  #if Target32Bit
		    Declare function CATransform3DIsIdentity lib QuartzCore (t as CATransform3D32Bit) as Boolean
		    return CATransform3DIsIdentity(t.toCATransform3D32Bit)
		  #elseif Target64Bit
		    Declare function CATransform3DIsIdentity lib QuartzCore (t as CATransform3D) as Boolean
		    return CATransform3DIsIdentity (t)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DMakeAffineTransform(T as CGAffineTransform) As CATransform3D
		  #if target32bit
		    Declare function CATransform3DMakeAffineTransform lib QuartzCore (T as CGAffineTransform32Bit) as CATransform3D32Bit
		    return CATransform3DMakeAffineTransform(t.toCGAffineTransform32Bit).toCATransform3D
		  #elseif Target64Bit
		    Declare function CATransform3DMakeAffineTransform lib QuartzCore (T as CGAffineTransform) as CATransform3D
		    return CATransform3DMakeAffineTransform (T)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DMakeRotation(angle as double, x as double, y as double, z as double) As CATransform3D
		  #if target32bit
		    Declare function CATransform3DMakeRotation lib QuartzCore (angle as single, x as single, y as single, z as single) as CATransform3D32Bit
		    return CATransform3DMakeRotation(angle,x, y, z).toCATransform3D
		  #elseif Target64Bit
		    Declare function CATransform3DMakeRotation lib QuartzCore (angle as double, x as double, y as double, z as double) as CATransform3D
		    return CATransform3DMakeRotation (angle, x, y, z)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DMakeScale(scaleX as double, scaleY as Double = 0, scaleZ as Double = 0) As CATransform3D
		  if scaleY = 0 and scalez = 0 then
		    scaleY = scaleX // scale proportionally if only one value is supplied
		    scaleZ = scaleX
		  end if
		  #if target32bit
		    Declare function CATransform3DMakeScale lib QuartzCore (scaleX as single, ScaleY as Single, scaleZ as Single) as CATransform3D32Bit
		    return CATransform3DMakeScale(ScaleX, ScaleY, scaleZ).toCATransform3D
		  #elseif Target64Bit
		    Declare function CATransform3DMakeScale lib QuartzCore (scaleX as Double, ScaleY as Double, ScaleZ as Double) as CATransform3D
		    return CATransform3DMakeScale(ScaleX, ScaleY, scaleZ)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DMakeTranslation(tx as Double, ty as Double, tz as double) As CATransform3D
		  #if target32bit
		    Declare function CATransform3DMakeTranslation lib QuartzCore ( tx as Single, ty as Single, tz as single) as CATransform3D32Bit
		    return CATransform3DMakeTranslation(tx, ty, tz).tocaTransForm3D
		  #elseif Target64Bit
		    Declare function CATransform3DMakeTranslation lib QuartzCore ( tx as Double, ty as Double, tz as double) as CATransform3D
		    return CATransform3DMakeTranslation ( tx, ty, tz)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DRotate(T As CATransform3D, angle as double, x as double, y as double, z as double) As CATransform3D
		  #if target32bit
		    Declare function CATransform3DRotate lib QuartzCore (T As CATransform3D32Bit, angle as single, x as Single, y as single, z as single) as CATransform3D32Bit
		    return CATransform3DRotate(T.toCATransform3D32Bit, angle, x, y, z).toCATransform3D
		  #elseif Target64Bit
		    Declare function CATransform3DRotate lib QuartzCore (T As CGAffineTransform, angle as double, x as double, y as double, z as double) as CATransform3D
		    return CATransform3DRotate (T, angle, x, y, z)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DScale(T as CATransform3D, scaleX as double, scaleY as Double = 0, ScaleZ As Double) As CATransform3D
		  if scaleY = 0 then scaleY = scaleX // scale proportionally if only one value is supplied
		  #if target32bit
		    Declare function CATransform3DScale lib QuartzCore (T as CATransform3D32Bit, scaleX as single, ScaleY as Single, ScaleZ As Single) as CATransform3D32Bit
		    return CATransform3DScale (t.toCATransform3D32Bit, ScaleX, ScaleY, ScaleZ).tocatransform3d
		  #elseif Target64Bit
		    Declare function CATransform3DScale lib QuartzCore (T as CGAffineTransform, scaleX as Double, ScaleY as Double, ScaleZ as Double) as CATransform3D
		    return CATransform3DScale (T, ScaleX, ScaleY, ScaleZ)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CATransform3DTranslate(T as CATransform3D, DeltaX as double, DeltaY as Double, DeltaZ as Double) As CATransform3D
		  #if target32bit
		    Declare function CATransform3DTranslate lib QuartzCore (T as CATransform3D32Bit, DeltaX as single, DeltaY as Single, DeltaZ as single) as CATransform3D32Bit
		    return CATransform3DTranslate(t.toCATransform3D32Bit, DeltaX, DeltaY, deltaz).toCATransform3D
		  #elseif Target64Bit
		    Declare function CATransform3DTranslate lib QuartzCore (T as CATransform3D, DeltaX as Double, DeltaY as Double, DeltaZ as double) as CATransform3D
		    return CATransform3DTranslate (T, DeltaX, DeltaY, deltaZ)
		  #endif
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = QuartzCore, Type = Text, Dynamic = False, Default = \"QuartzCore.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = QuartzCorePath, Type = Text, Dynamic = False, Default = \"com.apple.QuartzCore", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CATransform3D, Flags = &h0
		m11 as Double
		  m12 as Double
		  m13 as Double
		  m14 as Double
		  m21 as Double
		  m22 as double
		  m23 as double
		  m24 as double
		  m31 as double
		  m32 as double
		  m33 as double
		  m34 as double
		  m41 as double
		  m42 as double
		  m43 as double
		m44 as double
	#tag EndStructure

	#tag Structure, Name = CATransform3D32Bit, Flags = &h0
		m11 as Single
		  m12 as Single
		  m13 as Single
		  m14 as Single
		  m21 as Single
		  m22 as Single
		  m23 as Single
		  m24 as Single
		  m31 as Single
		  m32 as Single
		  m33 as Single
		  m34 as Single
		  m41 as Single
		  m42 as Single
		  m43 as Single
		m44 as Single
	#tag EndStructure


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
