#tag Module
Protected Module iOSLibSystem
	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub free Lib libsystem (p As cstring)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub free Lib libsystem (p As Ptr)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static eol as text = Text.FromUnicodeCodepoint(13)
			  return eol
			End Get
		#tag EndGetter
		EndOfline As Text
	#tag EndComputedProperty


	#tag Constant, Name = LibSystem, Type = Text, Dynamic = False, Default = \"/usr/lib/libSystem.B.dylib", Scope = Private
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
