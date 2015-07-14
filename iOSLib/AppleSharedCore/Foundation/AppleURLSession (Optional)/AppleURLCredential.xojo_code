#tag Class
Protected Class AppleURLCredential
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Identity as AppleSecIdentity, Ceritificates as AppleArray, Persistence as NSURLCredentialPersistence)
		  Declare function initWithIdentity lib Foundation selector "initWithIdentity:certificates:persistence:" (id as ptr, identity as ptr, certificates as ptr, persistence as NSURLCredentialPersistence) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithIdentity(alloc(ClassPtr), Identity.SecIdentityRef, Certificates.id, Persistence))
		  MHasOwnership = true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Trust as AppleSecTrust)
		  Declare function initWithTrust lib Foundation selector "initWithTrust:" (id as ptr, trust as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithTrust(alloc(ClassPtr), Trust.SecTrustRef))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(User as CFStringRef, Password as CFStringRef, persistence as NSURLCredentialPersistence)
		  Declare function initWithUser lib Foundation selector "initWithUser:password:persistence:" (id as ptr, User as CFStringRef, Password as CFStringRef, persistence as NSURLCredentialPersistence) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithUser(alloc(ClassPtr), user, Password, persistence))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLCredential
		  return if (aptr = nil, nil, new AppleURLCredential(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function certificates lib Foundation selector "certificates" (id as ptr) as Ptr
			  return AppleArray.MakeFromPtr (certificates(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPAdditionalHeaders lib Foundation selector "setHTTPAdditionalHeaders:" (id as ptr, value as ptr)
			  setHTTPAdditionalHeaders id, value.id
			End Set
		#tag EndSetter
		Certificates As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSURLCredential")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function hasPassword lib Foundation selector "hasPassword" (id as ptr) as Boolean
			  return hasPassword (id)
			End Get
		#tag EndGetter
		HasPassword As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function identity lib Foundation selector "identity" (id as ptr) as Ptr
			  return AppleSecIdentity.MakeFromPtr (identity(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPAdditionalHeaders lib Foundation selector "setHTTPAdditionalHeaders:" (id as ptr, value as ptr)
			  setHTTPAdditionalHeaders id, value.SecIdentityRef
			End Set
		#tag EndSetter
		Identity As AppleSecIdentity
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function password lib Foundation selector "password" (id as ptr) as CFStringRef
			  return password (id)
			End Get
		#tag EndGetter
		Password As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function persistence lib Foundation selector "persistence" (id as ptr) as NSURLCredentialPersistence
			  return persistence (id)
			End Get
		#tag EndGetter
		Persistence As NSURLCredentialPersistence
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function user lib Foundation selector "user" (id as ptr) as CFStringRef
			  return user (id)
			End Get
		#tag EndGetter
		User As Text
	#tag EndComputedProperty


	#tag Enum, Name = NSURLCredentialPersistence, Type = UInteger, Flags = &h0
		None
		  ForSession
		  Permanent
		Synchronizable
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
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
			Name="HasPassword"
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
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isProxy"
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
			Name="Password"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Persistence"
			Group="Behavior"
			Type="NSURLCredentialPersistence"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - ForSession"
				"2 - Permanent"
				"3 - Synchronizable"
			#tag EndEnumValues
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
			Name="User"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
