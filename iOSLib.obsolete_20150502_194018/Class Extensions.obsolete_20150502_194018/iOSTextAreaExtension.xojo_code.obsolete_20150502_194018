#tag Module
Protected Module iOSTextAreaExtension
	#tag Method, Flags = &h0
		Function iOSLibScrollView(extends v as iOSTextArea) As iOSLibScrollView
		  return new iOSLibScrollView (v.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScrollEnabled(extends v as iostextarea) As boolean
		  return v.iOSLibScrollView.ScrollEnabled
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollEnabled(extends v as iostextarea, assigns value as boolean)
		  v.iOSLibScrollView.ScrollEnabled = value
		End Sub
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
