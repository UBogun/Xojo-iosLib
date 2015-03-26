#tag Class
Protected Class iOSLibCFObject
Implements iOSLibGeneralObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFCopyDescription Lib CoreFoundation (CFTypeRef as Ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function CFCopyTypeIDDescription Lib CoreFoundation (aCFTypeID as UInteger) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFEqual Lib CoreFoundation (cf1 as ptr, cf2 as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFGetRetainCount Lib CoreFoundation (CFTypeRef as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFGetTypeID Lib CoreFoundation (CFTypeRef as Ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFHash Lib CoreFoundation (CFTypeRef as Ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFRelease Lib CoreFoundation (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFRetain Lib CoreFoundation (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFShow Lib CoreFoundation (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor(aTypeRef as Ptr)
		  mCFTypeRef = aTypeRef
		  Retain
		  mHasOwnerShip = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  if mHasOwnerShip then release
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Equals(anotherCFTypeObject as iOSLibCFObject) As boolean
		  return CFEqual (mCFTypeRef, anotherCFTypeObject.CFTypeRef)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GeneralID() As Ptr
		  // Part of the iOSLibGeneralObject interface.
		  
		  return mCFTypeRef
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrintInDebugLog()
		  CFShow mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Release()
		  CFRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Retain()
		  mCFTypeRef = CFRetain (mCFTypeRef)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFCopyTypeIDDescription (TypeID)
			End Get
		#tag EndGetter
		CFTypeDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mCFTypeRef
			End Get
		#tag EndGetter
		CFTypeRef As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFCopyDescription (mCFTypeRef)
			End Get
		#tag EndGetter
		Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFHash (mCFTypeRef)
			End Get
		#tag EndGetter
		Hash As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHasOwnerShip
			End Get
		#tag EndGetter
		HasOwnerShip As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return (mcftyperef = nil)
			End Get
		#tag EndGetter
		isNIL As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Attributes( hidden ) Protected mCFTypeRef As Ptr
	#tag EndProperty

	#tag Property, Flags = &h1
		Attributes( hidden ) Protected mHasOwnerShip As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFGetRetainCount (mCFTypeRef)
			End Get
		#tag EndGetter
		RetainCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFGetTypeID (mCFTypeRef)
			End Get
		#tag EndGetter
		TypeID As UInteger
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
