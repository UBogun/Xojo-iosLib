#tag Class
Protected Class AppleCFMutableData
Inherits AppleCFData
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFDataCreateMutable Lib CoreFoundation (CFAllocatorRef as Ptr, capacity as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFDataCreateMutableCopy Lib CoreFoundation (CFAllocatorRef as Ptr, capacity as integer, cfDataRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Capacity as integer)
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CFDataCreateMutable (nil, Capacity), true)
		  Mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Function Copy(CFData as AppleCFData, Capacity as integer = 0) As AppleCFMutableData
		  dim result as new AppleCFMutableData (CFDataCreateMutableCopy (nil, Capacity, CFData.CFTypeRef), true)
		  Result.Mhasownership = true
		  return result
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
