#tag Module
Protected Module AVFoundationFramework
	#tag Constant, Name = AVFoundationLibName, Type = Text, Dynamic = False, Default = \"AVFoundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResize, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResizeAspect, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResizeAspect", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResizeAspectFill, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResizeAspectFill", Scope = Public
	#tag EndConstant


	#tag Enum, Name = AVLayerGravity, Type = Integer, Flags = &h0
		Fill
		  FitProportional
		FillProportional
	#tag EndEnum


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
