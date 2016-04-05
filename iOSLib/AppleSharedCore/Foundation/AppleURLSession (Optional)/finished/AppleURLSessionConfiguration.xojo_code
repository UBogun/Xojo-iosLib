#tag Class
Protected Class AppleURLSessionConfiguration
Inherits AppleObject
	#tag Method, Flags = &h1000, Description = 52657475726E732061206E65776C7920637265617465642064656661756C742073657373696F6E20636F6E66696775726174696F6E206F626A6563742E
		Sub constructor()
		  Declare Function defaultSessionConfiguration lib FoundationLibName  selector "defaultSessionConfiguration" (id as ptr) as ptr
		  super.Constructor (defaultSessionConfiguration(ClassPtr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 52657475726E7320612073657373696F6E20636F6E66696775726174696F6E206F626A656374207468617420616C6C6F7773204854545020616E642048545450532075706C6F616473206F7220646F776E6C6F61647320746F20626520706572666F726D656420696E20746865206261636B67726F756E642E
		Sub Constructor(identifier as CFStringRef)
		  Declare Function backgroundSessionConfigurationWithIdentifier lib FoundationLibName  selector _
		  "backgroundSessionConfigurationWithIdentifier:" (id as ptr, identifier as CFStringRef) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (backgroundSessionConfigurationWithIdentifier(ClassPtr, identifier))
		  Retainclassobject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612073657373696F6E20636F6E66696775726174696F6E20746861742075736573206E6F2070657273697374656E742073746F7261676520666F72206361636865732C20636F6F6B6965732C206F722063726564656E7469616C732E
		 Shared Function EphemeralConfiguration() As AppleURLSessionConfiguration
		  Declare Function ephemeralSessionConfiguration lib FoundationLibName  selector "ephemeralSessionConfiguration" (id as ptr) as ptr
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


	#tag Note, Name = Status completed
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E6573207768657468657220636F6E6E656374696F6E732073686F756C64206265206D616465206F76657220612063656C6C756C6172206E6574776F726B2E
		#tag Getter
			Get
			  Declare Function allowsCellularAccess lib FoundationLibName  selector "allowsCellularAccess" (id as ptr) as Boolean
			  return allowsCellularAccess (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAllowsCellularAccess lib FoundationLibName  selector "setAllowsCellularAccess:" (id as ptr, value as Boolean)
			  setAllowsCellularAccess id, value
			End Set
		#tag EndSetter
		AllowsCellularAccess As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSURLSessionConfiguration")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E61727920636F6E7461696E696E6720696E666F726D6174696F6E2061626F7574207468652070726F787920746F207573652077697468696E20746869732073657373696F6E2E
		#tag Getter
			Get
			  Declare Function connectionProxyDictionary lib FoundationLibName  selector "connectionProxyDictionary" (id as ptr) as Ptr
			  return AppleDictionary.MakeFromPtr (connectionProxyDictionary(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setConnectionProxyDictionary lib FoundationLibName  selector "setConnectionProxyDictionary:" (id as ptr, value as ptr)
			  setConnectionProxyDictionary id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ConnectionProxyDictionary As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E65732077686574686572206261636B67726F756E64207461736B732063616E206265207363686564756C6564206174207468652064697363726574696F6E206F66207468652073797374656D20666F72206F7074696D616C20706572666F726D616E63652E
		#tag Getter
			Get
			  Declare Function discretionary lib FoundationLibName  selector "isDiscretionary" (id as ptr) as Boolean
			  return discretionary (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDiscretionary lib FoundationLibName  selector "setDiscretionary:" (id as ptr, value as Boolean)
			  setDiscretionary id, value
			End Set
		#tag EndSetter
		Discretionary As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E617279206F66206164646974696F6E616C206865616465727320746F2073656E6420776974682072657175657374732E
		#tag Getter
			Get
			  Declare Function HTTPAdditionalHeaders lib FoundationLibName  selector "HTTPAdditionalHeaders" (id as ptr) as Ptr
			  return AppleDictionary.MakeFromPtr (HTTPAdditionalHeaders(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPAdditionalHeaders lib FoundationLibName  selector "setHTTPAdditionalHeaders:" (id as ptr, value as ptr)
			  setHTTPAdditionalHeaders id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		HTTPAdditionalHeaders As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120706F6C69637920636F6E7374616E7420746861742064657465726D696E6573207768656E20636F6F6B6965732073686F756C642062652061636365707465642E
		#tag Getter
			Get
			  Declare Function HTTPCookieAcceptPolicy lib FoundationLibName  selector "HTTPCookieAcceptPolicy" (id as ptr) as AppleHTTPCookieStorage.NSHTTPCookieAcceptPolicy
			  return HTTPCookieAcceptPolicy (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPCookieAcceptPolicy lib FoundationLibName  selector "setHTTPCookieAcceptPolicy:" (id as ptr, value as AppleHTTPCookieStorage.NSHTTPCookieAcceptPolicy)
			  setHTTPCookieAcceptPolicy id, value
			End Set
		#tag EndSetter
		HTTPCookieAcceptPolicy As AppleHTTPCookieStorage.NSHTTPCookieAcceptPolicy
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6F6B69652073746F726520666F722073746F72696E6720636F6F6B6965732077697468696E20746869732073657373696F6E2E
		#tag Getter
			Get
			  Declare Function HTTPCookieStorage lib FoundationLibName  selector "HTTPCookieStorage" (id as ptr) as Ptr
			  return AppleHTTPCookieStorage.MakeFromPtr (HTTPCookieStorage(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPCookieStorage lib FoundationLibName  selector "setHTTPCookieStorage:" (id as ptr, value as ptr)
			  setHTTPCookieStorage id, if (value = nil, nil, value.Id)
			End Set
		#tag EndSetter
		HTTPCookieStorage As AppleHTTPCookieStorage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F662073696D756C74616E656F757320636F6E6E656374696F6E7320746F206D616B6520746F206120676976656E20686F73742E
		#tag Getter
			Get
			  Declare Function HTTPMaximumConnectionsPerHost lib FoundationLibName  selector "HTTPMaximumConnectionsPerHost" (id as ptr) as Integer
			  return HTTPMaximumConnectionsPerHost (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPMaximumConnectionsPerHost lib FoundationLibName  selector "setHTTPMaximumConnectionsPerHost:" (id as ptr, value as Integer)
			  setHTTPMaximumConnectionsPerHost id, value
			End Set
		#tag EndSetter
		HTTPMaximumConnectionsPerHost As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722072657175657374732073686F756C6420636F6E7461696E20636F6F6B6965732066726F6D2074686520636F6F6B69652073746F72652E
		#tag Getter
			Get
			  Declare Function HTTPShouldSetCookies lib FoundationLibName  selector "HTTPShouldSetCookies" (id as ptr) as Boolean
			  return HTTPShouldSetCookies (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPShouldSetCookies lib FoundationLibName  selector "setHTTPShouldSetCookies:" (id as ptr, value as Boolean)
			  setHTTPShouldSetCookies id, value
			End Set
		#tag EndSetter
		HTTPShouldSetCookies As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E65732077686574686572207468652073657373696F6E2073686F756C6420757365204854545020706970656C696E696E672E
		#tag Getter
			Get
			  Declare Function HTTPShouldUsePipelining lib FoundationLibName  selector "HTTPShouldUsePipelining" (id as ptr) as Boolean
			  return HTTPShouldUsePipelining (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHTTPShouldUsePipelining lib FoundationLibName  selector "setHTTPShouldUsePipelining:" (id as ptr, value as Boolean)
			  setHTTPShouldUsePipelining id, value
			End Set
		#tag EndSetter
		HTTPShouldUsePipelining As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206261636B67726F756E642073657373696F6E206964656E746966696572206F662074686520636F6E66696775726174696F6E206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function identifier lib FoundationLibName  selector "identifier" (id as ptr) as CFStringRef
			  return identifier (id)
			End Get
		#tag EndGetter
		Identifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F66206E6574776F726B20736572766963652E
		#tag Getter
			Get
			  Declare Function networkServiceType lib FoundationLibName  selector "networkServiceType" (id as ptr) as AppleURLRequest.NSURLRequestNetworkServiceType
			  return networkServiceType (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setNetworkServiceType lib FoundationLibName  selector "setNetworkServiceType:" (id as ptr, value as AppleURLRequest.NSURLRequestNetworkServiceType)
			  setNetworkServiceType id, value
			End Set
		#tag EndSetter
		NetworkServiceType As AppleURLRequest.NSURLRequestNetworkServiceType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662065787472612070726F746F636F6C20737562636C617373657320746861742068616E646C6520726571756573747320696E20612073657373696F6E2E
		#tag Getter
			Get
			  Declare Function protocolClasses lib FoundationLibName  selector "protocolClasses" (id as ptr) as Ptr
			  return AppleArray.MakeFromPtr (protocolClasses(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setProtocolClasses lib FoundationLibName  selector "setProtocolClasses:" (id as ptr, value as ptr)
			  setProtocolClasses id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ProtocolClasses As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120707265646566696E656420636F6E7374616E7420746861742064657465726D696E6573207768656E20746F2072657475726E206120726573706F6E73652066726F6D207468652063616368652E
		#tag Getter
			Get
			  Declare Function requestCachePolicy lib FoundationLibName  selector "requestCachePolicy" (id as ptr) as AppleURLRequest.NSURLRequestCachePolicy
			  return requestCachePolicy (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setRequestCachePolicy lib FoundationLibName  selector "setRequestCachePolicy:" (id as ptr, value as AppleURLRequest.NSURLRequestCachePolicy)
			  setRequestCachePolicy id, value
			End Set
		#tag EndSetter
		RequestCachePolicy As AppleURLRequest.NSURLRequestCachePolicy
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E64696361746573207768657468657220746865206170702073686F756C6420626520726573756D6564206F72206C61756E6368656420696E20746865206261636B67726F756E64207768656E207472616E73666572732066696E6973682E
		#tag Getter
			Get
			  Declare Function sessionSendsLaunchEvents lib FoundationLibName  selector "sessionSendsLaunchEvents" (id as ptr) as Boolean
			  return sessionSendsLaunchEvents (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSessionSendsLaunchEvents lib FoundationLibName  selector "setSessionSendsLaunchEvents:" (id as ptr, value as Boolean)
			  setSessionSendsLaunchEvents id, value
			End Set
		#tag EndSetter
		SessionSendsLaunchEvents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206964656E74696669657220666F72207468652073686172656420636F6E7461696E657220696E746F2077686963682066696C657320696E206261636B67726F756E642055524C2073657373696F6E732073686F756C6420626520646F776E6C6F616465642E
		#tag Getter
			Get
			  Declare Function sharedContainerIdentifier lib FoundationLibName  selector "sharedContainerIdentifier" (id as ptr) as CFStringRef
			  return sharedContainerIdentifier (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSharedContainerIdentifier lib FoundationLibName  selector "setSharedContainerIdentifier:" (id as ptr, value as CFStringRef)
			  setSharedContainerIdentifier id, value
			End Set
		#tag EndSetter
		SharedContainerIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D656F757420696E74657276616C20746F20757365207768656E2077616974696E6720666F72206164646974696F6E616C20646174612E
		#tag Getter
			Get
			  Declare Function timeoutIntervalForRequest lib FoundationLibName  selector "timeoutIntervalForRequest" (id as ptr) as Double
			  return timeoutIntervalForRequest (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTimeoutIntervalForRequest lib FoundationLibName  selector "setTimeoutIntervalForRequest:" (id as ptr, value as Double)
			  setTimeoutIntervalForRequest id, value
			End Set
		#tag EndSetter
		TimeoutIntervalForRequest As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D20616D6F756E74206F662074696D6520746861742061207265736F7572636520726571756573742073686F756C6420626520616C6C6F77656420746F2074616B652E
		#tag Getter
			Get
			  Declare Function timeoutIntervalForResource lib FoundationLibName  selector "timeoutIntervalForResource" (id as ptr) as Double
			  return timeoutIntervalForResource (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTimeoutIntervalForResource lib FoundationLibName  selector "setTimeoutIntervalForResource:" (id as ptr, value as Double)
			  setTimeoutIntervalForResource id, value
			End Set
		#tag EndSetter
		TimeoutIntervalForResource As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D20544C532070726F746F636F6C2076657273696F6E20746861742074686520636C69656E742073686F756C642072657175657374207768656E206D616B696E6720636F6E6E656374696F6E7320696E20746869732073657373696F6E2E
		#tag Getter
			Get
			  Declare Function TLSMaximumSupportedProtocol lib FoundationLibName  selector "TLSMaximumSupportedProtocol" (id as ptr) as SSLProtocol
			  return TLSMaximumSupportedProtocol (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTLSMaximumSupportedProtocol lib FoundationLibName  selector "setTLSMaximumSupportedProtocol:" (id as ptr, value as SSLProtocol)
			  setTLSMaximumSupportedProtocol id, value
			End Set
		#tag EndSetter
		TLSMaximumSupportedProtocol As SSLProtocol
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D20544C532070726F746F636F6C20746861742073686F756C6420626520616363657074656420647572696E672070726F746F636F6C206E65676F74696174696F6E2E
		#tag Getter
			Get
			  Declare Function TLSMinimumSupportedProtocol lib FoundationLibName  selector "TLSMinimumSupportedProtocol" (id as ptr) as SSLProtocol
			  return TLSMinimumSupportedProtocol (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTLSMinimumSupportedProtocol lib FoundationLibName  selector "setTLSMinimumSupportedProtocol:" (id as ptr, value as SSLProtocol)
			  setTLSMinimumSupportedProtocol id, value
			End Set
		#tag EndSetter
		TLSMinimumSupportedProtocol As SSLProtocol
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055524C20636163686520666F722070726F766964696E672063616368656420726573706F6E73657320746F2072657175657374732077697468696E207468652073657373696F6E2E
		#tag Getter
			Get
			  Declare Function URLCache lib FoundationLibName  selector "URLCache" (id as ptr) as Ptr
			  return AppleURLCache.MakeFromPtr (URLCache(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setURLCache lib FoundationLibName  selector "setURLCache:" (id as ptr, value as ptr)
			  setURLCache id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		URLCache As AppleURLCache
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412063726564656E7469616C2073746F726520746861742070726F76696465732063726564656E7469616C7320666F722061757468656E7469636174696F6E2E
		#tag Getter
			Get
			  Declare Function URLCredentialStorage lib FoundationLibName  selector "URLCredentialStorage" (id as ptr) as Ptr
			  return AppleURLCredentialStorage.MakeFromPtr (URLCredentialStorage(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setURLCredentialStorage lib FoundationLibName  selector "setURLCredentialStorage:" (id as ptr, value as ptr)
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
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequestCachePolicy"
			Group="Behavior"
			Type="AppleURLRequest.NSURLRequestCachePolicy"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
