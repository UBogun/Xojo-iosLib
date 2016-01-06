#tag Module
Protected Module MathExtension
	#tag Method, Flags = &h0
		Function DegreeToRadian(extends d as double) As double
		  static factor as double = pi/180
		  return d * factor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RadianToDegree(extends d as double) As double
		  static factor as double = 180/pi
		  return d * factor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toOSType(extends i as int32) As Text
		  dim mb as new MutableMemoryBlock (4)
		  mb.Int32Value(0) = i
		  return TextEncoding.ASCII.ConvertDataToText (mb)
		End Function
	#tag EndMethod


	#tag Constant, Name = Pi, Type = Double, Dynamic = False, Default = \"3.1415926535897932384626", Scope = Public
	#tag EndConstant


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
