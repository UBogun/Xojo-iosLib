#tag Module
Protected Module iOSViewExtension
	#tag Method, Flags = &h0
		Function View(extends c as iOSView) As iOSLibView
		  return new iOSLibView (c.ViewHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewHandle(extends v as iOSView) As Ptr
		  declare function view lib UIKit selector "view" (id as ptr) as ptr
		  return view (v.Handle)
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
