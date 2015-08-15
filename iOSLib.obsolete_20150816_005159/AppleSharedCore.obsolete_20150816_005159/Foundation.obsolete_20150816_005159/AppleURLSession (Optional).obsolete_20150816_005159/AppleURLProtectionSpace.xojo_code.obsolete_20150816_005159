#tag Class
Protected Class AppleURLProtectionSpace
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor(Host As CFStringRef, Port As Integer, Protocol as CFStringRef, Realm as CFStringRef, AuthenticationMethod as CFStringRef)
		  Declare Function initWithHost lib Foundation selector "initWithHost:port:protocol:realm:authenticationMethod:" _
		  (id as ptr, host as CFStringRef, port as integer, Protocol as CFStringRef, realm as CFStringRef, AuthenticationMethod as CFStringRef) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithHost(alloc(classptr), host, port, Protocol, Realm, AuthenticationMethod))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ProxyHost As CFStringRef, Port As Integer, Type as CFStringRef, Realm as CFStringRef, AuthenticationMethod as CFStringRef, isProxy as Boolean)
		  Declare Function initWithProxyHost lib Foundation selector "initWithProxyHost:port:type:realm:authenticationMethod:" _
		  (id as ptr, host as CFStringRef, port as integer, Protocol as CFStringRef, realm as CFStringRef, AuthenticationMethod as CFStringRef) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if isproxy then
		    Super.Constructor (initWithProxyHost(alloc(classptr), proxyhost, port, type, Realm, AuthenticationMethod))
		    mHasOwnership = true
		  else
		    Constructor (ProxyHost, port, Type, Realm, AuthenticationMethod)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLProtectionSpace
		  return if (aptr = nil, nil, new AppleURLProtectionSpace(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function authenticationMethod lib Foundation selector "authenticationMethod" (id as ptr) as CFStringRef
			  return authenticationMethod (id)
			End Get
		#tag EndGetter
		AuthenticationMethod As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSURLProtectionSpace")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function distinguishedNames lib Foundation selector "distinguishedNames" (id as ptr) as Ptr
			  return AppleArray.MakeFromPtr (distinguishedNames(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPAdditionalHeaders lib Foundation selector "setHTTPAdditionalHeaders:" (id as ptr, value as ptr)
			  setHTTPAdditionalHeaders id, value.id
			End Set
		#tag EndSetter
		DistinguishedNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function host lib Foundation selector "host" (id as ptr) as CFStringRef
			  return host (id)
			End Get
		#tag EndGetter
		Host As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function isProxy lib Foundation selector "isProxy" (id as ptr) as Boolean
			  return isProxy (id)
			End Get
		#tag EndGetter
		isProxy As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function port lib Foundation selector "port" (id as ptr) as Integer
			  return port (id)
			End Get
		#tag EndGetter
		Port As integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function protocol lib Foundation selector "protocol" (id as ptr) as CFStringRef
			  return protocol (id)
			End Get
		#tag EndGetter
		Protocol As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function proxyType lib Foundation selector "proxyType" (id as ptr) as CFStringRef
			  return proxyType (id)
			End Get
		#tag EndGetter
		ProxyType As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function realm lib Foundation selector "realm" (id as ptr) as CFStringRef
			  return realm (id)
			End Get
		#tag EndGetter
		Realm As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function receivesCredentialSecurely lib Foundation selector "receivesCredentialSecurely" (id as ptr) as Boolean
			  return receivesCredentialSecurely (id)
			End Get
		#tag EndGetter
		ReceivesCredentialSecurely As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function serverTrust lib Foundation selector "serverTrust" (id as ptr) as Ptr
			  return AppleSecTrust.makefromPtr (serverTrust (id))
			End Get
		#tag EndGetter
		ServerTrust As AppleSecTrust
	#tag EndComputedProperty


	#tag Constant, Name = NSURLAuthenticationMethodClientCertificate, Type = Text, Dynamic = False, Default = \"NSURLAuthenticationMethodClientCertificate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLAuthenticationMethodDefault, Type = Text, Dynamic = False, Default = \"NSURLAuthenticationMethodDefault", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLAuthenticationMethodHTMLForm, Type = Text, Dynamic = False, Default = \"NSURLAuthenticationMethodHTMLForm", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLAuthenticationMethodHTTPBasic, Type = Text, Dynamic = False, Default = \"NSURLAuthenticationMethodHTTPBasic", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLAuthenticationMethodHTTPDigest, Type = Text, Dynamic = False, Default = \"NSURLAuthenticationMethodHTTPDigest", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLAuthenticationMethodNegotiate, Type = Text, Dynamic = False, Default = \"NSURLAuthenticationMethodNegotiate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLAuthenticationMethodNTLM, Type = Text, Dynamic = False, Default = \"NSURLAuthenticationMethodNTLM", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLAuthenticationMethodServerTrust, Type = Text, Dynamic = False, Default = \"NSURLAuthenticationMethodServerTrust", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLProtectionSpaceFTP, Type = Text, Dynamic = False, Default = \"NSURLProtectionSpaceFTP", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLProtectionSpaceFTPProxy, Type = Text, Dynamic = False, Default = \"NSURLProtectionSpaceFTPProxy", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLProtectionSpaceHTTP, Type = Text, Dynamic = False, Default = \"NSURLProtectionSpaceHTTP", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLProtectionSpaceHTTPProxy, Type = Text, Dynamic = False, Default = \"NSURLProtectionSpaceHTTPProxy", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLProtectionSpaceHTTPS, Type = Text, Dynamic = False, Default = \"NSURLProtectionSpaceHTTPS", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLProtectionSpaceHTTPSProxy, Type = Text, Dynamic = False, Default = \"NSURLProtectionSpaceHTTPSProxy", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSURLProtectionSpaceSOCKSProxy, Type = Text, Dynamic = False, Default = \"NSURLProtectionSpaceSOCKSProxy", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AuthenticationMethod"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
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
			Name="Host"
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
			Name="Port"
			Group="Behavior"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Protocol"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProxyType"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Realm"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReceivesCredentialSecurely"
			Group="Behavior"
			Type="Boolean"
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
