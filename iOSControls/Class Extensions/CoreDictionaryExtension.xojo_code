#tag Module
Protected Module CoreDictionaryExtension
	#tag Method, Flags = &h0
		Function fromNSDictionarytoObjectDict(NSDict as Ptr) As xojo.Core.Dictionary
		  dim result as new Dictionary
		  dim Keyarray as Ptr = NSDict.allkeys
		  if Keyarray <> NIL then
		    for q as uinteger = 0 to Keyarray.count
		      dim mykey as text = Keyarray.Textatindex(q)
		      dim myobject as Ptr = Keyarray.Objectforkey(mykey)
		      result.Value (mykey) = myobject
		    next
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromNSDictionarytoTextDict(NSDict as Ptr) As xojo.Core.Dictionary
		  dim result as new Dictionary
		  dim Keyarray as Ptr = NSDict.allkeys
		  if Keyarray <> NIL then
		    for q as uinteger = 0 to Keyarray.count
		      dim mykey as text = Keyarray.Textatindex(q)
		      dim myobject as text = Keyarray.textforKey(mykey)
		      result.Value (mykey) = myobject
		    next
		    return result
		  end if
		  
		End Function
	#tag EndMethod


	#tag ViewBehavior
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
End Module
#tag EndModule
