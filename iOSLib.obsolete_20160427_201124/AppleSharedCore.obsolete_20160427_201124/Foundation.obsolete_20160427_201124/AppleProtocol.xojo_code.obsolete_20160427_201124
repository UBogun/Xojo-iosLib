#tag Class
Protected Class AppleProtocol
	#tag Method, Flags = &h0
		Function ClassMethods() As AppleMethodDescription()
		  return getMethods (false, false)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConformsToProtocols() As AppleProtocol()
		  dim allProtocols() as AppleProtocol = AppleIntrospection.Protocols
		  dim result() as AppleProtocol
		  for q as uinteger = 0 to allProtocols.Ubound
		    dim testprotocol as AppleProtocol = allProtocols(q)
		    if ObjectiveCRuntime.protocol_conformsToProtocol (id, testprotocol.id) and not isEqual (testprotocol) then result.Append testprotocol
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aProtocol as ptr)
		  mid = aProtocol
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getMethods(isRequired as Boolean, isInstanceMethod as boolean) As AppleMethodDescription()
		  dim minstancemethods() as AppleMethodDescription
		  dim arrayPtr as ptr
		  dim count as uinteger
		  arrayPtr = ObjectiveCRuntime.protocol_copyMethodDescriptionList (id, isRequired, isInstanceMethod, count)
		  if arrayPtr <> NIL then
		    For i As uInteger = 0 To count - 1
		      Dim desc As new AppleMethodDescription( arrayPtr.objc_method_description (i * objc_method_description.Size))
		      minstancemethods.Append(desc)
		    Next
		    
		    AppleLibSystem.free arrayptr
		  end if
		  return minstancemethods
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InstanceMethods() As AppleMethodDescription()
		  return getMethods (false, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEqual(anotherProtocol as AppleProtocol) As Boolean
		  Return ObjectiveCRuntime.protocol_isEqual (id, anotherProtocol.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Properties() As AppleProperty()
		  dim mproperties() as AppleProperty
		  dim arrayPtr as ptr
		  dim count as uinteger
		  arrayPtr = ObjectiveCRuntime.protocol_copyPropertyList (id, count)
		  if arrayPtr <> NIL then
		    For i As uInteger = 0 To count - 1
		      Dim myprop As new AppleProperty ( arrayPtr.Ptr(i * IntegerSize))
		      mproperties.Append(myprop)
		    Next
		    
		    AppleLibSystem.free arrayptr
		  end if
		  return mproperties
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequiredClassMethods() As AppleMethodDescription()
		  return getMethods (true, false)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequiredInstanceMethods() As AppleMethodDescription()
		  return getMethods (true, true)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mId As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (ObjectiveCRuntime.protocol_getName (id), xojo.core.TextEncoding.UTF8)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty


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
End Class
#tag EndClass
