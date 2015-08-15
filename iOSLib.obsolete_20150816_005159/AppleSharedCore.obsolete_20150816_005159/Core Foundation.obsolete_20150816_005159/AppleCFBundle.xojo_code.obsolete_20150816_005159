#tag Class
Protected Class AppleCFBundle
Inherits AppleCFObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetAllBundles Lib Foundation (Bundle as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetBundleWithIdentifier Lib Foundation (BundleID as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetDataPointerForName Lib Foundation (Bundle as Ptr, symbolName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetDevelopmentRegion Lib Foundation (Bundle as Ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetIdentifier Lib Foundation (Bundle as Ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetInfoDictionary Lib Foundation (Bundle as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetLocalInfoDictionary Lib Foundation (Bundle as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetMainBundle Lib Foundation () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFBundleGetPackageInfo Lib Foundation (Bundle as Ptr, type as ptr, Creator as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetTypeID Lib Foundation (Bundle as Ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetValueForInfoDictionaryKey Lib Foundation (Bundle as Ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleGetVersionNumber Lib Foundation (Bundle as Ptr) As UINt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleIsExecutableLoaded Lib Foundation (Bundle as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFBundleLoadExecutable Lib Foundation (Bundle as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFBundleUnloadExecutable Lib Foundation (Bundle as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub constructor(identifier as CFStringRef)
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CFBundleGetBundleWithIdentifier (identifier))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DataPtrForName(Name as CFStringRef) As Ptr
		  return CFBundleGetDataPointerForName (mcfTypeRef, name)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub getPackageInfo()
		  dim Type as new MutableMemoryBlock (5)
		  dim Creator as New MutableMemoryBlock (5)
		  CFBundleGetPackageInfo mcftyperef, type.Data, creator.Data
		  mPackageType = type.CStringValue(0)
		  mpackageCreator = Creator.CStringValue(0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load() As Boolean
		  return CFBundleLoadExecutable (mcftypeRef)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromCFTypeRef(aCFTypeRef as ptr) As AppleCFBundle
		  return if (aCFTypeRef = nil, nil, new AppleCFBundle(aCFTypeRef))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Unload()
		  CFBundleunLoadExecutable (mcftypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValueForInfoDictionaryKey(aKey as CFStringRef) As AppleObject
		  return AppleObject.MakeFromPtr (CFBundleGetValueForInfoDictionaryKey (mCFTypeRef, aKey))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCFArray (CFBundleGetAllBundles (mcfTypeRef))
			  
			End Get
		#tag EndGetter
		AllBundles As AppleCFArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFBundleGetDevelopmentRegion (CFTypeRef)
			End Get
		#tag EndGetter
		DevelopmentRegion As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFBundleIsExecutableLoaded (mcfTypeRef)
			End Get
		#tag EndGetter
		ExecutableIsLoaded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFBundleGetIdentifier (CFTypeRef)
			End Get
		#tag EndGetter
		Identifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim myptr as ptr = CFBundleGetInfoDictionary (mcfTypeRef)
			  return if (myptr <> NIL, new AppleDictionary (myptr), NIL)
			End Get
		#tag EndGetter
		InfoDictionary As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim myptr as ptr = CFBundleGetLocalInfoDictionary (mcfTypeRef)
			  return if (myptr <> NIL, new AppleDictionary (myptr), NIL)
			End Get
		#tag EndGetter
		LocalInfoDictionary As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCFBundle (CFBundleGetMainBundle)
			End Get
		#tag EndGetter
		Shared MainBundle As AppleCFBundle
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mpackageCreator As CString
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mPackageType As CSTring
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  getPackageInfo
			  return mpackageCreator
			End Get
		#tag EndGetter
		packageCreator As CString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  getPackageInfo
			  return mPackageType
			End Get
		#tag EndGetter
		PackageType As cstring
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFBundleGetTypeID (mCFTypeRef)
			End Get
		#tag EndGetter
		TypeID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFBundleGetVersionNumber (CFTypeRef)
			End Get
		#tag EndGetter
		VersionNumber As UINt32
	#tag EndComputedProperty


	#tag Using, Name = xojo.core
	#tag EndUsing


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
			Name="DevelopmentRegion"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutableIsLoaded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Group="Behavior"
			Type="Text"
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
