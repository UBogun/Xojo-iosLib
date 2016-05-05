#tag Class
Protected Class AppleHTTPURLResponse
Inherits AppleURLResponse
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E20485454502055524C20726573706F6E7365206F626A656374207769746820612073746174757320636F64652C2070726F746F636F6C2076657273696F6E2C20616E6420726573706F6E736520686561646572732E
		Sub Constructor(URL as AppleURL, StatusCode As Integer, HTTPVersion as CFStringRef, HeaderFields As AppleDictionary)
		  Declare function initWithURL lib FoundationLibName  selector "initWithURL:statusCode:HTTPVersion:headerFields:" _
		  (id as ptr, URL as ptr, StatusCode as Integer, HTTPVersion as CFStringRef, HeaderFields as Ptr) as Ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithURL(alloc(ClassPtr), url.Id, StatusCode, HTTPVersion, if (HeaderFields = nil, nil, HeaderFields.id)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206C6F63616C697A656420737472696E6720636F72726573706F6E64696E6720746F20612073706563696669656420485454502073746174757320636F64652E
		 Shared Function LocalizedString(StatusCode as Integer) As Text
		  Declare function localizedStringForStatusCode lib FoundationLibName  selector "localizedStringForStatusCode:" (id as ptr, statuscode as integer) as CFStringRef
		  return localizedStringForStatusCode (classptr, StatusCode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleHTTPURLResponse
		  return if (aptr = nil, nil, new AppleHTTPURLResponse(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status completed
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 416C6C204854545020686561646572206669656C6473206F66207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function allHeaderFields lib FoundationLibName  selector "allHeaderFields" (id as ptr) as ptr
			  return AppleDictionary.MakeFromPtr (allHeaderFields (id))
			End Get
		#tag EndGetter
		AllHeaderFields As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSHTTPURLResponse")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 436F6E76656E69656E63652070726F706572747920666F722063616C6C696E67204C6F63616C697A6564537472696E672028537461747573436F646529
		#tag Getter
			Get
			  return LocalizedString (StatusCode)
			End Get
		#tag EndGetter
		LocalizedStatusCode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E280997320485454502073746174757320636F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function statusCode lib FoundationLibName  selector "statusCode" (id as ptr) as Integer
			  return statusCode (id)
			End Get
		#tag EndGetter
		StatusCode As Integer
	#tag EndComputedProperty


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
			Name="ExpectedContentLength"
			Group="Behavior"
			Type="Int64"
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
			Name="LocalizedStatusCode"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MIMEType"
			Group="Behavior"
			Type="Text"
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
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StatusCode"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SuggestedFilename"
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
			Name="TextEncodingName"
			Group="Behavior"
			Type="Text"
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
