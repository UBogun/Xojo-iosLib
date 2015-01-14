#tag Module
Protected Module CorePointExtension
	#tag Method, Flags = &h0
		Function fromGCPoint(aCGPoint as CGPoint) As Point
		  return new point (aCGPoint.x, aCGPoint.y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGPoint(extends apoint as xojo.core.point) As CGPoint
		  dim mypoint as CGPoint
		  mypoint.x = apoint.X
		  mypoint.y = apoint.Y
		  return mypoint
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
