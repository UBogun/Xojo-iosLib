#tag Module
Protected Module PointExtension
	#tag Method, Flags = &h0
		Function toCorePoint(extends p as NSPoint) As xojo.core.point
		  return new xojo.core.point (p.x, p.y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCorePoint(extends p as NSPoint32Bit) As xojo.core.point
		  return p.toNSPoint.toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint(extends p as NSPoint32Bit) As NSPoint
		  dim result as NSPoint
		  result.x = p.x
		  result.y = p.y
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint(extends p as xojo.core.point) As NSPoint
		  dim result as NSPoint
		  result.x = p.X
		  result.y = p.y
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint32(extends p as NSPoint) As NSPoint32Bit
		  dim result as NSPoint32Bit
		  result.x = p.x
		  result.y = p.y
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint32(extends p as xojo.core.point) As NSPoint32Bit
		  return p.toNSPoint.toNSPoint32
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
