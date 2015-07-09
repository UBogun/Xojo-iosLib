#tag Class
Protected Class AppleCFData
Inherits AppleCFObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFDataCreate Lib CoreFoundation (CFAllocatorRef as ptr, bytes as Ptr, length as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFDataCreateCopy Lib CoreFoundation (allocator as ptr, theData as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFDataGetBytePtr Lib CoreFoundation (theData as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFDataGetLength Lib CoreFoundation (theData as Ptr) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Data as ptr, bytes as integer)
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CFDataCreate(nil, data, bytes), true)
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Data as xojo.core.memoryblock)
		  Constructor (Data.Data, data.Size)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As AppleCFData
		  dim result as new AppleCFData (CFDataCreateCopy (nil, CFTypeRef), true)
		  Result.Mhasownership = true
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		BytePtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFDataGetLength (CFTypeRef)
			End Get
		#tag EndGetter
		Length As Integer
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
			Name="Length"
			Group="Behavior"
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
	#tag EndViewBehavior
End Class
#tag EndClass
