#tag Class
Protected Class AppleURLSessionConfiguration1
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(identifier as CFStringRef)
		  Declare Function backgroundSessionConfigurationWithIdentifier lib Foundation selector _
		  "backgroundSessionConfigurationWithIdentifier:" (id as ptr, identifier as CFStringRef) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (backgroundSessionConfigurationWithIdentifier(ClassPtr, identifier))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DefaultConfiguration() As AppleURLSessionConfiguration
		  Declare Function defaultSessionConfiguration lib Foundation selector "defaultSessionConfiguration" (id as ptr) as ptr
		  dim result as new AppleURLSessionConfiguration (defaultSessionConfiguration(ClassPtr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function EphemeralConfiguration() As AppleURLSessionConfiguration
		  Declare Function ephemeralSessionConfiguration lib Foundation selector "ephemeralSessionConfiguration" (id as ptr) as ptr
		  dim result as new AppleURLSessionConfiguration (ephemeralSessionConfiguration(ClassPtr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLSessionConfiguration
		  Return if (aptr = nil, nil, new AppleURLSessionConfiguration (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function allowsCellularAccess lib Foundation selector "allowsCellularAccess" (id as ptr) as Boolean
			  return allowsCellularAccess (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAllowsCellularAccess lib Foundation selector "setAllowsCellularAccess:" (id as ptr, value as Boolean)
			  setAllowsCellularAccess id, value
			End Set
		#tag EndSetter
		AllowsCellularAccess As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSURLSessionConfiguration")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function connectionProxyDictionary lib Foundation selector "connectionProxyDictionary" (id as ptr) as Ptr
			  return AppleDictionary.MakeFromPtr (connectionProxyDictionary(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setConnectionProxyDictionary lib Foundation selector "setConnectionProxyDictionary:" (id as ptr, value as ptr)
			  setConnectionProxyDictionary id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ConnectionProxyDictionary As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function discretionary lib Foundation selector "isDiscretionary" (id as ptr) as Boolean
			  return discretionary (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDiscretionary lib Foundation selector "setDiscretionary:" (id as ptr, value as Boolean)
			  setDiscretionary id, value
			End Set
		#tag EndSetter
		Discretionary As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function HTTPAdditionalHeaders lib Foundation selector "HTTPAdditionalHeaders" (id as ptr) as Ptr
			  return AppleDictionary.MakeFromPtr (HTTPAdditionalHeaders(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPAdditionalHeaders lib Foundation selector "setHTTPAdditionalHeaders:" (id as ptr, value as ptr)
			  setHTTPAdditionalHeaders id, value.id
			End Set
		#tag EndSetter
		HTTPAdditionalHeaders As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function HTTPCookieAcceptPolicy lib Foundation selector "HTTPCookieAcceptPolicy" (id as ptr) as AppleHTTPCookieStorage.NSHTTPCookieAcceptPolicy
			  return HTTPCookieAcceptPolicy (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPCookieAcceptPolicy lib Foundation selector "setHTTPCookieAcceptPolicy:" (id as ptr, value as AppleHTTPCookieStorage.NSHTTPCookieAcceptPolicy)
			  setHTTPCookieAcceptPolicy id, value
			End Set
		#tag EndSetter
		HTTPCookieAcceptPolicy As AppleHTTPCookieStorage.NSHTTPCookieAcceptPolicy
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function HTTPCookieStorage lib Foundation selector "HTTPCookieStorage" (id as ptr) as Ptr
			  return AppleHTTPCookieStorage.MakeFromPtr (HTTPCookieStorage(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPCookieStorage lib Foundation selector "setHTTPCookieStorage:" (id as ptr, value as ptr)
			  setHTTPCookieStorage id, if (value = nil, nil, value.Id)
			End Set
		#tag EndSetter
		HTTPCookieStorage As AppleHTTPCookieStorage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function HTTPMaximumConnectionsPerHost lib Foundation selector "HTTPMaximumConnectionsPerHost" (id as ptr) as Integer
			  return HTTPMaximumConnectionsPerHost (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPMaximumConnectionsPerHost lib Foundation selector "setHTTPMaximumConnectionsPerHost:" (id as ptr, value as Integer)
			  setHTTPMaximumConnectionsPerHost id, value
			End Set
		#tag EndSetter
		HTTPMaximumConnectionsPerHost As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function HTTPShouldSetCookies lib Foundation selector "HTTPShouldSetCookies" (id as ptr) as Boolean
			  return HTTPShouldSetCookies (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPShouldSetCookies lib Foundation selector "setHTTPShouldSetCookies:" (id as ptr, value as Boolean)
			  setHTTPShouldSetCookies id, value
			End Set
		#tag EndSetter
		HTTPShouldSetCookies As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function HTTPShouldUsePipelining lib Foundation selector "HTTPShouldUsePipelining" (id as ptr) as Boolean
			  return HTTPShouldUsePipelining (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPShouldUsePipelining lib Foundation selector "setHTTPShouldUsePipelining:" (id as ptr, value as Boolean)
			  setHTTPShouldUsePipelining id, value
			End Set
		#tag EndSetter
		HTTPShouldUsePipelining As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function identifier lib Foundation selector "identifier" (id as ptr) as CFStringRef
			  return identifier (id)
			End Get
		#tag EndGetter
		Identifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function networkServiceType lib Foundation selector "networkServiceType" (id as ptr) as AppleURLRequest.NSURLRequestNetworkServiceType
			  return networkServiceType (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setNetworkServiceType lib Foundation selector "setNetworkServiceType:" (id as ptr, value as AppleURLRequest.NSURLRequestNetworkServiceType)
			  setNetworkServiceType id, value
			End Set
		#tag EndSetter
		NetworkServiceType As AppleURLRequest.NSURLRequestNetworkServiceType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function protocolClasses lib Foundation selector "protocolClasses" (id as ptr) as Ptr
			  return AppleArray.MakeFromPtr (protocolClasses(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setProtocolClasses lib Foundation selector "setProtocolClasses:" (id as ptr, value as ptr)
			  setProtocolClasses id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ProtocolClasses As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function requestCachePolicy lib Foundation selector "requestCachePolicy" (id as ptr) as AppleURLRequest.NSURLRequestCachePolicy
			  return requestCachePolicy (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setRequestCachePolicy lib Foundation selector "setRequestCachePolicy:" (id as ptr, value as AppleURLRequest.NSURLRequestCachePolicy)
			  setRequestCachePolicy id, value
			End Set
		#tag EndSetter
		RequestCachePolicy As AppleURLRequest.NSURLRequestCachePolicy
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function sessionSendsLaunchEvents lib Foundation selector "sessionSendsLaunchEvents" (id as ptr) as Boolean
			  return sessionSendsLaunchEvents (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSessionSendsLaunchEvents lib Foundation selector "setSessionSendsLaunchEvents:" (id as ptr, value as Boolean)
			  setSessionSendsLaunchEvents id, value
			End Set
		#tag EndSetter
		SessionSendsLaunchEvents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function sharedContainerIdentifier lib Foundation selector "sharedContainerIdentifier" (id as ptr) as CFStringRef
			  return sharedContainerIdentifier (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSharedContainerIdentifier lib Foundation selector "setSharedContainerIdentifier:" (id as ptr, value as CFStringRef)
			  setSharedContainerIdentifier id, value
			End Set
		#tag EndSetter
		SharedContainerIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function timeoutIntervalForRequest lib Foundation selector "timeoutIntervalForRequest" (id as ptr) as Double
			  return timeoutIntervalForRequest (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTimeoutIntervalForRequest lib Foundation selector "setTimeoutIntervalForRequest:" (id as ptr, value as Double)
			  setTimeoutIntervalForRequest id, value
			End Set
		#tag EndSetter
		TimeoutIntervalForRequest As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function timeoutIntervalForResource lib Foundation selector "timeoutIntervalForResource" (id as ptr) as Double
			  return timeoutIntervalForResource (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTimeoutIntervalForResource lib Foundation selector "setTimeoutIntervalForResource:" (id as ptr, value as Double)
			  setTimeoutIntervalForResource id, value
			End Set
		#tag EndSetter
		TimeoutIntervalForResource As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function TLSMaximumSupportedProtocol lib Foundation selector "TLSMaximumSupportedProtocol" (id as ptr) as SSLProtocol
			  return TLSMaximumSupportedProtocol (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTLSMaximumSupportedProtocol lib Foundation selector "setTLSMaximumSupportedProtocol:" (id as ptr, value as SSLProtocol)
			  setTLSMaximumSupportedProtocol id, value
			End Set
		#tag EndSetter
		TLSMaximumSupportedProtocol As SSLProtocol
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function TLSMinimumSupportedProtocol lib Foundation selector "TLSMinimumSupportedProtocol" (id as ptr) as SSLProtocol
			  return TLSMinimumSupportedProtocol (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTLSMinimumSupportedProtocol lib Foundation selector "setTLSMinimumSupportedProtocol:" (id as ptr, value as SSLProtocol)
			  setTLSMinimumSupportedProtocol id, value
			End Set
		#tag EndSetter
		TLSMinimumSupportedProtocol As SSLProtocol
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function URLCache lib Foundation selector "URLCache" (id as ptr) as Ptr
			  return AppleURLCache.MakeFromPtr (URLCache(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setURLCache lib Foundation selector "setURLCache:" (id as ptr, value as ptr)
			  setURLCache id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		URLCache As AppleURLCache
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function URLCredentialStorage lib Foundation selector "URLCredentialStorage" (id as ptr) as Ptr
			  return AppleURLCredentialStorage.MakeFromPtr (URLCredentialStorage(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setURLCredentialStorage lib Foundation selector "setURLCredentialStorage:" (id as ptr, value as ptr)
			  setURLCredentialStorage id, if (value = nil, nil, value.Id)
			End Set
		#tag EndSetter
		URLCredentialStorage As AppleURLCredentialStorage
	#tag EndComputedProperty


	#tag Enum, Name = SSLProtocol, Type = Integer, Flags = &h0
		Unknown
		  SSL2
		  SSL3
		  SSL3Only
		  TLS1
		  TLS1Only
		  SSLAll
		  TLS11
		  TLS12
		DTLS1
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsCellularAccess"
			Group="Behavior"
			Type="Boolean"
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
			Name="Discretionary"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPCookieAcceptPolicy"
			Group="Behavior"
			Type="AppleHTTPCookieStorage.NSHTTPCookieAcceptPolicy"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPMaximumConnectionsPerHost"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPShouldSetCookies"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPShouldUsePipelining"
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
			Name="NetworkServiceType"
			Group="Behavior"
			Type="AppleURLRequest.NSURLRequestNetworkServiceType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - VoIP"
				"2 - Video"
				"3 - Background"
				"4 - Voice"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequestCachePolicy"
			Group="Behavior"
			Type="AppleURLRequest.NSURLRequestCachePolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - UseProtocolCachePolicy"
				"1 - ReloadIgnoringLocalCacheData"
				"2 - ReloadIgnoringLocalAndRemoteCacheData"
				"3 - ReturnCacheDataElseLoad"
				"4 - ReturnCacheDataDontLoad"
				"5 - ReloadRevalidatingCacheData"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SessionSendsLaunchEvents"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SharedContainerIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeoutIntervalForRequest"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeoutIntervalForResource"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TLSMaximumSupportedProtocol"
			Group="Behavior"
			Type="SSLProtocol"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unknown"
				"1 - SSL2"
				"2 - SSL3"
				"3 - SSL3Only"
				"4 - TLS1"
				"5 - TLS1Only"
				"6 - SSLAll"
				"7 - TLS11"
				"8 - TLS12"
				"9 - DTLS1"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="TLSMinimumSupportedProtocol"
			Group="Behavior"
			Type="SSLProtocol"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unknown"
				"1 - SSL2"
				"2 - SSL3"
				"3 - SSL3Only"
				"4 - TLS1"
				"5 - TLS1Only"
				"6 - SSLAll"
				"7 - TLS11"
				"8 - TLS12"
				"9 - DTLS1"
			#tag EndEnumValues
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
