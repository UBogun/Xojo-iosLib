#tag Class
Protected Class OSLibSKLightNode
Inherits AppleSKNode
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function ambientColor lib SpriteKit selector "ambientColor" (id as ptr) as ptr
			  return new AppleColor (ambientColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAmbientColor lib SpriteKit selector "setAmbientColor:" (id as ptr, value as ptr)
			  setAmbientColor id, value.id
			End Set
		#tag EndSetter
		AmbientColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function categoryBitMask lib SpriteKit selector "categoryBitMask" (id as ptr) as UInt32
			  return categoryBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setCategoryBitMask lib SpriteKit selector "setCategoryBitMask:" (id as ptr, value as UInt32)
			  setCategoryBitMask id, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKLightNode")
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
			  Declare function enabled lib SpriteKit selector "enabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setEnabled lib SpriteKit selector "setEnabled:" (id as ptr, value as Boolean)
			  setenabled id, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function falloff lib SpriteKit selector "falloff" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function falloff lib SpriteKit selector "falloff" (id as ptr) as single
			  #endif
			  return falloff (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setFalloff lib SpriteKit selector "setFalloff:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare Sub setFalloff lib SpriteKit selector "setFalloff:" (id as ptr, value as Single)
			  #endif
			  setFalloff(id, value)
			  
			End Set
		#tag EndSetter
		Falloff As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function lightColor lib SpriteKit selector "lightColor" (id as ptr) as ptr
			  return new AppleColor (lightColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLightColor lib SpriteKit selector "setLightColor:" (id as ptr, value as ptr)
			  setLightColor id, value.id
			End Set
		#tag EndSetter
		LightColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function shadowColor lib SpriteKit selector "shadowColor" (id as ptr) as ptr
			  return new AppleColor (shadowColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setShadowColor lib SpriteKit selector "setShadowColor:" (id as ptr, value as ptr)
			  setShadowColor id, value.id
			End Set
		#tag EndSetter
		ShadowColor As AppleColor
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Falloff"
			Group="Behavior"
			Type="Double"
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
			Name="Paused"
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
