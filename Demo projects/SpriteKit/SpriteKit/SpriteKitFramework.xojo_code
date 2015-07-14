#tag Module
Protected Module SpriteKitFramework
	#tag Constant, Name = SpriteKit, Type = Text, Dynamic = False, Default = \"SpriteKit.Framework", Scope = Public
	#tag EndConstant


	#tag Structure, Name = Vector_Float2, Flags = &h0
		x as single
		y as single
	#tag EndStructure

	#tag Structure, Name = Vector_Float3, Flags = &h0
		x as single
		  y as single
		z as single
	#tag EndStructure

	#tag Structure, Name = Vector_Float4, Flags = &h0
		x as single
		  y as single
		  z as single
		w as single
	#tag EndStructure

	#tag Structure, Name = Vector_Maxtrix2, Flags = &h0
		m00 as single
		  m01 as single
		  m10 as single
		m11 as single
	#tag EndStructure

	#tag Structure, Name = Vector_Maxtrix3, Flags = &h0
		m00 as single
		  m01 as single
		  m02 as single
		  m10 as single
		  m11 as single
		  m12 as single
		  m20 as single
		  m21 as single
		m22 as single
	#tag EndStructure

	#tag Structure, Name = Vector_Maxtrix4, Flags = &h0
		m00 as single
		  m01 as single
		  m02 as single
		  m03 as single
		  m10 as single
		  m11 as single
		  m12 as single
		  m13 as single
		  m20 as single
		  m21 as single
		  m22 as single
		  m23 as single
		  m30 as single
		  m31 as single
		  m32 as single
		m33 as single
	#tag EndStructure


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
