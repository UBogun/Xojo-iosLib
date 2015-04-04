#tag Class
Protected Class iOSLibCGPath
Inherits iOSLibCFObject
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
		Protected Declare Sub CGPathRelease Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathRetain Lib CoreGraphics (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CGPathCreateMutable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As iOSLibCGPath
		  return new iOSLibCGPath (CGPathCreateCopy (mCFTypeRef))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MutableCopy() As iOSLibCGPath
		  return new iOSLibCGPath (CGPathCreateMutableCopy (mCFTypeRef))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MutableTransformedCopy(aTransform as CGAffineTransform) As iOSLibCGPath
		  return new iOSLibCGPath (CGPathCreateMutableCopyByTransformingPath (mCFTypeRef, aTransform))
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
		  return new iOSLibCGPath (CGPathCreateCopyByTransformingPath (mCFTypeRef, aTransform))
		End Function
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
			Name="HasOwnerShip"
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
