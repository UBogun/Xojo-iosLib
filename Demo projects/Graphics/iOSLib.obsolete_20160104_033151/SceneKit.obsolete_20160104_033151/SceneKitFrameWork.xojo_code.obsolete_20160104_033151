#tag Module
Protected Module SceneKitFrameWork
	#tag Method, Flags = &h0
		Function SCNVector3Make(x as double, y as double, z as double) As SCNVector3
		  dim result as SCNVector3
		  result.x = x
		  result.y = y
		  result.z = z
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toVector3(extends v as SCNVector3_32Bit) As SCNVector3
		  return SCNVector3Make (v.x, v.y, v.z)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toVector3_32(extends v as SCNVector3) As SCNVector3_32Bit
		  dim result as SCNVector3_32Bit
		  result.x = v.x
		  result.y = v.y
		  result.z = v.z
		  return result
		End Function
	#tag EndMethod


	#tag Constant, Name = kBlockPreparationEnded, Type = Text, Dynamic = False, Default = \"BlockPreparationEnded", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kRendererUpdateAtTime, Type = Text, Dynamic = False, Default = \"RendererUpdateAtTime", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = SceneKitLib, Type = Text, Dynamic = False, Default = \"SceneKit.framework", Scope = Public
	#tag EndConstant


	#tag Structure, Name = SCNVector3, Flags = &h0
		x as Double
		  y as Double
		z as Double
	#tag EndStructure

	#tag Structure, Name = SCNVector3_32Bit, Flags = &h0
		x as Single
		  y as Single
		z as Single
	#tag EndStructure


	#tag Enum, Name = SCNAntialiasingMode, Type = UInteger, Flags = &h0
		None
		  Multi2X
		Multi4X
	#tag EndEnum

	#tag Enum, Name = SCNRenderingAPI, Type = UInteger, Flags = &h0
		Metal
		OpenGLES2
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
