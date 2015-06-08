#tag Class
Protected Class AppleCFURL
Inherits AppleCFObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFURLCreateWithString Lib CoreFoundation (Allocator as ptr, URL as CFStringRef, baseURL as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFURLGetBaseURL Lib CoreFoundation (URL as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor(URL as CFStringRef)
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CFURLCreateWithString(nil, url, nil))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(URL as xojo.IO.FolderItem)
		  Constructor (url.Path)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromCFTypeRef(aCFTypeRef as ptr) As AppleCFURL
		  Return if (aCFTypeRef = nil, nil, new AppleCFURL (aCFTypeRef))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return AppleCFURL.MakeFromCFTypeRef (mcftyperef)
			End Get
		#tag EndGetter
		BaseURL As AppleCFURL
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
	#tag EndViewBehavior
End Class
#tag EndClass
