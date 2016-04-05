#tag Class
Protected Class AppleCachedURLResponse
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E204E5343616368656455524C526573706F6E7365206F626A6563742E
		Sub Constructor(response as AppleURLResponse, data as appledata)
		  Declare function initWithResponse lib FoundationLibName  selector "initWithResponse:data:" _
		  (id as ptr, response as ptr, data as ptr) as Ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithResponse(alloc(ClassPtr), response.Id, data.id))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E204E5343616368656455524C526573706F6E7365206F626A6563742E
		Sub Constructor(response as AppleURLResponse, data as appledata, userinfo as appledictionary, storagepolicy as NSURLCacheStoragePolicy)
		  Declare function initWithResponsedata lib FoundationLibName  selector "initWithResponse:data:userInfo:storagePolicy:" _
		  (id as ptr, response as ptr, data as ptr, userinfo as ptr, storagepolicy as NSURLCacheStoragePolicy) as Ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithResponsedata(alloc(ClassPtr), response.Id,  data.id, userinfo.id, storagepolicy))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLResponse
		  return if (aptr = nil, nil, new AppleURLResponse(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		iOS 9.2.
	#tag EndNote

	#tag Note, Name = Status completed
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSCachedURLResponse")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520526573706F6E7365E28099732063616368656420646174612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function data lib FoundationLibName  selector "data" (id as ptr) as Ptr
			  return appledata.MakeFromPtr (data (id))
			End Get
		#tag EndGetter
		Data As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055524C20726573706F6E7365206F626A656374206173736F636961746564207769746820746865206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function response lib FoundationLibName  selector "response" (id as ptr) as Ptr
			  return AppleURLResponse.MakeFromPtr (Response (id))
			End Get
		#tag EndGetter
		Response As AppleURLResponse
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A656374E28099732063616368652073746F7261676520706F6C6963792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function storagePolicy lib FoundationLibName  selector "storagePolicy" (id as ptr) as NSURLCacheStoragePolicy
			  return storagePolicy (id)
			End Get
		#tag EndGetter
		StoragePolicy As NSURLCacheStoragePolicy
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207573657220696E666F726D6174696F6E2064696374696F6E617279206173736F6369617465642077697468207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDictionary.MakeFromPtr (foundationframework.getuserinfo(id))
			End Get
		#tag EndGetter
		UserInfo As AppleDictionary
	#tag EndComputedProperty


	#tag Enum, Name = NSURLCacheStoragePolicy, Type = UInteger, Flags = &h0
		Allowed
		  AllowedInMemoryOnly
		NotAllowed
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
			Name="StoragePolicy"
			Group="Behavior"
			Type="NSURLCacheStoragePolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - Allowed"
				"1 - AllowedInMemoryOnly"
				"2 - NotAllowed"
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
	#tag EndViewBehavior
End Class
#tag EndClass
