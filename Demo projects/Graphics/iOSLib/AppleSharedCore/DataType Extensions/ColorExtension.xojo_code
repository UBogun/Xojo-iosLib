#tag Module
Protected Module ColorExtension
	#tag Method, Flags = &h0
		Function RandomColor(minval as integer, maxval as integer) As Color
		  return color.rgb (math.RandomInt(minval, maxval), math.RandomInt(minval, maxval), math.RandomInt(minval, maxval))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toAppleCGColor(extends c() as color) As AppleArray
		  dim myArray as new AppleMutableArray(c.Ubound+1)
		  for q as uinteger = 0 to c.Ubound
		    myArray.Addobject new AppleCGColor(c(q))
		  next
		  return myArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toAppleCGColor(extends c as color) As AppleCGColor
		  return AppleCGColor.FromColor (c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toAppleColor(extends c as color) As AppleColor
		  return AppleColor.FromColor (c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCommaList(extends c() as Color) As Text
		  if c.Ubound > -1 then
		    dim result as text = c(0).totext
		    if c.Ubound > 0 then
		      for q as UInteger = 1 to c.Ubound
		        result = result +", "+c(q).totext
		      next
		    end if
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toText(extends c as Color) As Text
		  Return "&c"+c.Red.ToHex(2)+c.Green.ToHex(2)+c.Blue.ToHex(2)+c.Alpha.ToHex(2)
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
