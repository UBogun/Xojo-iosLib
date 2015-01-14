#tag Module
Protected Module ColorExtension
	#tag Method, Flags = &h0
		Function ToText(extends c as color) As Text
		  dim r as text = c.Red.ToHex
		  dim g as text = c.Green.ToHex
		  dim b as text = c.Blue.ToHex
		  dim a as text = c.Alpha.ToHex
		  return r+g+b+a
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UIColor(extends c as color) As Ptr
		  // returns a Ptr to a new Uicolor Created from a Xojo Color
		  
		  declare function colorFromRGBA lib UIKit selector "colorWithRed:green:blue:alpha:" (id as Ptr, red as Single, green as Single, blue as Single, alpha as Single) as Ptr
		  
		  dim r as single = c.red/255
		  dim g as single = c.Green/255
		  dim b as single = c.Blue/255
		  dim a as single = (255 - c.Alpha) / 255
		  
		  return colorFromRGBA(NSClassFromString ("UIColor"), r, g, b, a)
		  
		  
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
