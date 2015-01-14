#tag Module
Protected Module TextExtension
	#tag Method, Flags = &h0
		Function ColorFromHex(extends t as Text) As Color
		  dim temp as text = t.Replace("&h","")
		  dim r_Value as integer = integer.FromHex (temp.mid(0,2))
		  dim g_value as integer = Integer.FromHex(temp.mid (2,2))
		  dim b_value as integer = Integer.FromHex(temp.mid (4,2))
		  dim a_value as integer = if (temp.Length = 8, integer.fromhex (temp.Right(2)), 0)
		  
		  return color.rgba (r_Value, g_value, b_value, a_value)
		  
		  
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
