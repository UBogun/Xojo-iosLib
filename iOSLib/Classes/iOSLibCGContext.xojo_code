#tag Class
Protected Class iOSLibCGContext
Inherits iOSLibCFObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGContextRelease Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGContextRetain Lib CoreGraphics (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Release()
		  CGContextRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Retain()
		  mCFTypeRef = CGContextRetain (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub UIGraphicsBeginImageContext(asize as NSSize)
		  #if Target64Bit
		    declare sub UIGraphicsBeginImageContext lib UIKit (asize as NSSize)
		    UIGraphicsBeginImageContext (asize)
		  #elseif Target64Bit
		    declare sub UIGraphicsBeginImageContext lib UIKit (asize as NSSize32Bit)
		    UIGraphicsBeginImageContext (asize.toNSSize32)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub UIGraphicsEndImageContext Lib UIKit ()
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function UIGraphicsGetCurrentContext Lib UIKit () As Ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new iOSLibCGContext (UIGraphicsGetCurrentContext)
			End Get
		#tag EndGetter
		Shared CurrentContext As iOSLibCGContext
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
