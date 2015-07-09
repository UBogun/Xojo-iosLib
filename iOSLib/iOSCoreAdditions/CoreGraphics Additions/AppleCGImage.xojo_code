#tag Class
Protected Class AppleCGImage
Inherits AppleCFObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGImageGetHeight Lib CoreGraphics (CFTypeRef as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGImageGetWidth Lib CoreGraphics (CFTypeRef as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGImageRelease Lib CoreGraphics (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGImageRetain Lib CoreGraphics (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromCFTypeRef(aCFTypeRef as ptr, dontRetain as boolean = False) As AppleCGImage
		  return if (aCFTypeRef = nil , NIL,  new AppleCGImage (aCFTypeRef, dontRetain))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CGImageRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  mCFTypeRef = CGImageRetain (mCFTypeRef)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGImageGetHeight (CFTypeRef)
			End Get
		#tag EndGetter
		Height As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return NSSize (Width, height)
			End Get
		#tag EndGetter
		Size As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGImageGetWidth (CFTypeRef)
			End Get
		#tag EndGetter
		Width As Integer
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
			Name="Height"
			Group="Behavior"
			Type="Integer"
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
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
