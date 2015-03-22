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


End Module
#tag EndModule
