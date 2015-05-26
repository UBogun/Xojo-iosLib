#tag Module
Protected Module iOSCoreModule
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static eol as text = Text.FromUnicodeCodepoint(13)
			  return eol
			End Get
		#tag EndGetter
		EndOfline As Text
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		LibDebug As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="EndOfline"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
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
