#tag Class
Protected Class AppleSKEffectNode
Inherits AppleSKNode
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BlendMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBlendMode value
			End Set
		#tag EndSetter
		BlendMode As SKBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function shouldCenterFilter lib SpriteKit selector "shouldCenterFilter" (id as ptr) as Boolean
			  return shouldCenterFilter (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShouldCenterFilter lib SpriteKit selector "setShouldCenterFilter:" (id as ptr, value as Boolean)
			  setShouldCenterFilter (id, value)
			End Set
		#tag EndSetter
		CenterFilter As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKEffectNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function shouldEnableEffects lib SpriteKit selector "shouldEnableEffects" (id as ptr) as Boolean
			  return shouldEnableEffects (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShouldEnableEffects lib SpriteKit selector "setShouldEnableEffects:" (id as ptr, value as Boolean)
			  setShouldEnableEffects (id, value)
			End Set
		#tag EndSetter
		EnableEffects As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function filter lib SpriteKit selector "filter" (id as ptr) as ptr
			  return AppleCIFilter.MakeFromPtr (filter(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setFilter lib SpriteKit selector "setFilter:" (id as ptr, value as Ptr)
			  setFilter (id, value.id)
			End Set
		#tag EndSetter
		Filter As AppleCIFilter
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function shouldRasterize lib SpriteKit selector "shouldRasterize" (id as ptr) as Boolean
			  return shouldRasterize (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setShouldRasterize lib SpriteKit selector "setShouldRasterize:" (id as ptr, value as Boolean)
			  setShouldRasterize id, value
			End Set
		#tag EndSetter
		Rasterize As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function shader lib spritekit selector "shader" (id as ptr) as ptr
			  return AppleSKShader.MakeFromPtr (shader (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShader lib spritekit selector "setShader:" (id as ptr, value as ptr)
			  setShader id, value.id
			  
			End Set
		#tag EndSetter
		Shader As AppleSKShader
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="SKBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - MultiplyX2"
				"5 - Screen"
				"6 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CenterFilter"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableEffects"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isProxy"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rasterize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
