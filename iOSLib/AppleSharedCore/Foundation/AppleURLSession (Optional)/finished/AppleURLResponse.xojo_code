#tag Class
Protected Class AppleURLResponse
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 52657475726E7320616E20696E697469616C697A6564204E5355524C526573706F6E7365206F626A6563742077697468207468652055524C2C204D494D4520747970652C206C656E6774682C20616E64207465787420656E636F64696E672073657420746F20676976656E2076616C7565732E
		Sub Constructor(URL as AppleURL, MIMEType As CFStringRef, expectedContentLength as Integer, textEncodingName as CFStringRef)
		  Declare function initWithURL lib FoundationLibName  selector "initWithURL:MIMEType:expectedContentLength:textEncodingName:" _
		  (id as ptr, URL as ptr, MIMEType as CFStringRef, expectedContentLength as Integer, textEncodingName as CFStringRef) as Ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithURL(alloc(ClassPtr), url.Id, MIMEType, expectedContentLength, textEncodingName))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLResponse
		  return if (aptr = nil, nil, new AppleURLResponse(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status completed
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSURLResponse")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206578706563746564206C656E677468206F662074686520726573706F6E7365E280997320636F6E74656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function expectedContentLength lib FoundationLibName  selector "expectedContentLength" (id as ptr) as Int64
			  return expectedContentLength (id)
			End Get
		#tag EndGetter
		ExpectedContentLength As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204D494D452074797065206F662074686520726573706F6E73652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function MIMEType lib FoundationLibName  selector "MIMEType" (id as ptr) as CFStringRef
			  return MIMEType (id)
			End Get
		#tag EndGetter
		MIMEType As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207375676765737465642066696C656E616D6520666F722074686520726573706F6E736520646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function suggestedFilename lib FoundationLibName  selector "suggestedFilename" (id as ptr) as CFStringRef
			  return suggestedFilename (id)
			End Get
		#tag EndGetter
		SuggestedFilename As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F6620746865207465787420656E636F64696E672070726F76696465642062792074686520726573706F6E7365E2809973206F726967696E6174696E6720736F757263652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function textEncodingName lib FoundationLibName  selector "textEncodingName" (id as ptr) as CFStringRef
			  return textEncodingName (id)
			End Get
		#tag EndGetter
		TextEncodingName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055524C20666F722074686520726573706F6E73652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function URL lib FoundationLibName  selector "URL" (id as ptr) as Ptr
			  return appleurl.MakeFromPtr (url (id))
			End Get
		#tag EndGetter
		URL As AppleURL
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
