#tag Class
Protected Class AppleMethodDescription
	#tag Method, Flags = &h0
		Sub constructor(anObjc_method_description as Objc_method_description)
		  id = anObjc_method_description
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private id As objc_method_description
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSelector As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mSelector = nil then mSelector = id.Selector
			  return mSelector
			End Get
		#tag EndGetter
		Selector As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return NSStringFromSelector (selector)
			End Get
		#tag EndGetter
		SelectorName As cfstringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (id.Types, StandardTextEncoding)
			  
			End Get
		#tag EndGetter
		Types As cfstringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.TranslateTypeEncoding(Types)
			  
			End Get
		#tag EndGetter
		TypesTranslated As cfstringref
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
			Group="Behavior"
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
