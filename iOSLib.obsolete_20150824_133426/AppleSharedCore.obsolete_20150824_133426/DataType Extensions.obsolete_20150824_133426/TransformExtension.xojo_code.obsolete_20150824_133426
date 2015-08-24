#tag Module
Protected Module TransformExtension
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
