#tag Module
Protected Module iOSSwitchExtension
	#tag Method, Flags = &h0
		Function AppleSwitch(extends s as iOSSwitch) As AppleSwitch
		  return new appleswitch (s.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub On(extends s as iOSSwitch, assigns value as boolean)
		  s.AppleSwitch.On = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OnTintColor(extends s as iOSSwitch) As Color
		  return s.AppleSwitch.OnTintColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OnTintColor(extends s as iOSSwitch, assigns value as Color)
		  s.AppleSwitch.OnTintColor = new AppleColor(value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ThumbTintColor(extends s as iOSSwitch) As Color
		  return s.AppleSwitch.ThumbTintColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ThumbTintColor(extends s as iOSSwitch, assigns value as Color)
		  s.AppleSwitch.ThumbTintColor = new AppleColor(value)
		End Sub
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
