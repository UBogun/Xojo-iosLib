#tag Module
Protected Module CoreRectExtension
	#tag Method, Flags = &h0
		Function fromCGRect(aRect as CGRect) As Rect
		  return new rect (CorePointExtension.fromGCPoint (aRect.origin), CoreSizeExtension.fromCGSize (aRect.rectSize))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGRect(extends arect as xojo.core.rect) As CGRect
		  dim myrect as CGRect
		  myrect.origin = aRect.Origin.toCGPoint
		  myrect.rectSize = aRect.Size.tocgsize
		  return myrect
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
