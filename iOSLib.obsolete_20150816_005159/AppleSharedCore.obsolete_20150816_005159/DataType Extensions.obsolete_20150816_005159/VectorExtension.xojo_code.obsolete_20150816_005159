#tag Module
Protected Module VectorExtension
	#tag Method, Flags = &h0
		Function CGVector(dx as double, dy as double) As CGVector
		  dim v as CGVector
		  v.dx = dx
		  v.dy = dy
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGVector(extends v as CGVector32Bit) As CGVector
		  dim result as CGVector
		  result.dx = v.dx
		  result.dy = v.dy
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGVector32(extends v as CGVector) As CGVector32Bit
		  dim result as CGVector32Bit
		  result.dx = v.dx
		  result.dy = v.dy
		  return result
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
