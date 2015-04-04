#tag Module
Protected Module CoreGraphicsLib
	#tag Method, Flags = &h0
		Function CGAffineTransformConcat(T1 As CGAffineTransform, T2 As CGAffineTransform) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformConcat lib CoreGraphics (T1 As CGAffineTransform32Bit, T2 As CGAffineTransform32Bit) as CGAffineTransform32Bit
		    return CGAffineTransformConcat (T1.toCGAffineTransform32Bit, T2.toCGAffineTransform32Bit).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformConcat lib CoreGraphics (T1 As CGAffineTransform, T2 As CGAffineTransform) as CGAffineTransform
		    return CGAffineTransformConcat (T1, T2)
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformIdentity() As CGAffineTransform
		  return CGAffineTransformMake (1, 0, 0, 1, 0, 0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformInvert(T As CGAffineTransform) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformInvert lib CoreGraphics (T As CGAffineTransform32Bit) as CGAffineTransform32Bit
		    return CGAffineTransformInvert (T.toCGAffineTransform32Bit).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformInvert lib CoreGraphics (T As CGAffineTransform) as CGAffineTransform
		    return CGAffineTransformInvert (T)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformMake(a as Double, b as Double, c as Double, d as Double, tx as Double, ty as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMake lib CoreGraphics (a as Single, b as Single, c as Single, d as Single, tx as Single, ty as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMake(a, b, c, d, tx, ty).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMake lib CoreGraphics (a as Double, b as Double, c as Double, d as Double, tx as Double, ty as Double) as CGAffineTransform
		    return CGAffineTransformMake (a, b, c, d, tx, ty)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformMakeRotation(angle as double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMakeRotation lib CoreGraphics (angle as single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeRotation(angle).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeRotation lib CoreGraphics (angle as double) as CGAffineTransform
		    return CGAffineTransformMakeRotation (angle)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformMakeScale(scaleX as double, scaleY as Double = 0) As CGAffineTransform
		  if scaleY = 0 then scaleY = scaleX // scale proportionally if only one value is supplied
		  #if target32bit
		    Declare function CGAffineTransformMakeScale lib CoreGraphics (scaleX as single, ScaleY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeScale(ScaleX, ScaleY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeScale lib CoreGraphics (scaleX as Double, ScaleY as Double) as CGAffineTransform
		    return CGAffineTransformMakeScale(ScaleX, ScaleY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformMakeTranslation(DeltaX as double, DeltaY as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformMakeTranslation lib CoreGraphics (DeltaX as single, DeltaY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformMakeTranslation(DeltaX, DeltaY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformMakeTranslation lib CoreGraphics (DeltaX as Double, DeltaY as Double) as CGAffineTransform
		    return CGAffineTransformMakeTranslation(DeltaX, DeltaY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformRotate(T As CGAffineTransform, angle as double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformRotate lib CoreGraphics (T As CGAffineTransform32Bit, angle as single) as CGAffineTransform32Bit
		    return CGAffineTransformRotate (T.toCGAffineTransform32Bit, angle).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformRotate lib CoreGraphics (T As CGAffineTransform, angle as double) as CGAffineTransform
		    return CGAffineTransformRotate (T, angle)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformScale(T as CGAffineTransform, scaleX as double, scaleY as Double = 0) As CGAffineTransform
		  if scaleY = 0 then scaleY = scaleX // scale proportionally if only one value is supplied
		  #if target32bit
		    Declare function CGAffineTransformScale lib CoreGraphics (T as CGAffineTransform32Bit, scaleX as single, ScaleY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformScale (t.toCGAffineTransform32Bit, ScaleX, ScaleY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformScale lib CoreGraphics (T as CGAffineTransform, scaleX as Double, ScaleY as Double) as CGAffineTransform
		    return CGAffineTransformScale (T, ScaleX, ScaleY)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformTranslate(T as CGAffineTransform, DeltaX as double, DeltaY as Double) As CGAffineTransform
		  #if target32bit
		    Declare function CGAffineTransformTranslate lib CoreGraphics (T as CGAffineTransform32bit, DeltaX as single, DeltaY as Single) as CGAffineTransform32Bit
		    return CGAffineTransformTranslate (t.toCGAffineTransform32Bit, DeltaX, DeltaY).toCGAffineTransform
		  #elseif Target64Bit
		    Declare function CGAffineTransformTranslate lib CoreGraphics (T as CGAffineTransform, DeltaX as Double, DeltaY as Double) as CGAffineTransform
		    return CGAffineTransformTranslate (T, DeltaX, DeltaY)
		  #endif
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGAffineTransformIdentity
			End Get
		#tag EndGetter
		ioslibCGAffineTransformIdentity As CGAffineTransform
	#tag EndComputedProperty


	#tag Constant, Name = CoreGraphics, Type = Text, Dynamic = False, Default = \"CoreGraphics.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreGraphicsPath, Type = Text, Dynamic = False, Default = \"com.apple.CoreGraphics", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreImagePath, Type = Text, Dynamic = False, Default = \"com.apple.CoreImage", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CGAffineTransform, Flags = &h0
		a as double
		  b as double
		  c as double
		  d as double
		  tx as double
		ty as double
	#tag EndStructure

	#tag Structure, Name = CGAffineTransform32Bit, Flags = &h0
		a as single
		  b as Single
		  c as Single
		  d as Single
		  tx as Single
		ty as Single
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
