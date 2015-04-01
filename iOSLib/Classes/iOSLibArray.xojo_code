#tag Class
Protected Class iOSLibArray
Inherits iOSLibMutableObjectInterface
	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As ioslibarray
		  return if (aptr <> NIL, new iOSLibArray (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectAtIndex(Index as Uinteger) As iOSLibObject
		  dim myptr as ptr = PtrAtIndex (index)
		  return if (myptr <> NIL, new iOSLibObject (myptr), NIL)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PtrAtIndex(Index as Uinteger) As Ptr
		  declare function objectAtIndex lib UIKit selector "objectAtIndex:" (id as ptr, index as uinteger) as Ptr
		  return objectAtIndex (id, index)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextAtIndex(Index as Uinteger) As cfstringref
		  declare function objectAtIndex lib UIKit selector "objectAtIndex:" (id as ptr, index as uinteger) as CFStringRef
		  return objectAtIndex (id, index)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toPtrArray() As Ptr()
		  dim result() as Ptr
		  for q as uinteger = 0 to count -1
		    result.Append PtrAtIndex (q)
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toTextArray() As text()
		  dim result() as text
		  for q as uinteger = 0 to count -1
		    result.Append Textatindex (q)
		  next
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSArray")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			return getCount
		#tag EndNote
		#tag Getter
			Get
			  return getCount
			End Get
		#tag EndGetter
		Count As UInteger
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
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
