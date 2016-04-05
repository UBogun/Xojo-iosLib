#tag Module
Protected Module PointerExtension
	#tag Method, Flags = &h0
		Function toNilTerminatedMemoryBlock(extends p() as ptr) As Memoryblock
		  dim mb as new MutableMemoryBlock ((p.Ubound+ 1)*IntegerSize)
		  for q as uinteger = 0 to p.Ubound
		    mb.PtrValue(q*IntegerSize) = p(q)
		  next
		  return mb
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
