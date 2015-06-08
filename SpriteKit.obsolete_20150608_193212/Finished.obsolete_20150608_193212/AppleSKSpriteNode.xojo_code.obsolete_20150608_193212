#tag Class
Protected Class AppleSKSpriteNode
Inherits AppleSKNode
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(acolor as AppleColor, aSize as nssize)
		  #if Target64Bit
		    declare Function initWithColor lib SpriteKit selector "initWithColor:size:" (id as ptr, acolor as ptr, asize as nssize) as ptr
		    super.Constructor (initWithColor (Alloc(ClassPtr), acolor.id, asize))
		  #elseif Target32Bit
		    declare Function initWithColor lib SpriteKit selector "initWithColor:size:" (id as ptr, acolor as ptr, asize as NSSize32Bit) as ptr
		    super.Constructor (initWithColor (Alloc(ClassPtr), acolor.id, asize.toNSSize32))
		  #endif
		  mhasownership = true
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(texture as AppleSKTexture)
		  Declare function initWithTexture lib SpriteKit selector "initWithTexture:" (id as ptr, texture as Ptr) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithTexture (alloc(classptr), texture.id))
		  Mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(texture as AppleSKTexture, aColor as AppleColor, size as NSSize)
		  #if Target64Bit
		    Declare function initWithTextureColorSize lib SpriteKit selector "initWithTexture:color:size:" (id as ptr, texture as Ptr, acolor as ptr, size as NSSize) as ptr
		    Super.Constructor (initWithTextureColorSize (alloc(classptr), texture.id, acolor.id, size))
		  #elseif Target32Bit
		    Declare function initWithTextureColorSize lib SpriteKit selector "initWithTexture:color:size:" (id as ptr, texture as Ptr, acolor as ptr, size as NSSize32Bit) as ptr
		    Super.Constructor (initWithTextureColorSize (alloc(classptr), texture.id, acolor.id, size.toNSSize32))
		  #endif
		  MHasOwnership = true
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(texture as AppleSKTexture, NormalMap as AppleSKTexture)
		  Declare function spriteNodeWithTextureNormal lib SpriteKit selector "spriteNodeWithTexture:normalMap:" (id as ptr, texture as Ptr, normalmap as ptr) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (spriteNodeWithTextureNormal (classptr, texture.id, NormalMap.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(texture as AppleSKTexture, size as NSSize)
		  #if Target64Bit
		    Declare function spriteNodeWithTextureSize lib SpriteKit selector "spriteNodeWithTexture:size:" (id as ptr, texture as Ptr, size as NSSize) as ptr
		    Super.Constructor (spriteNodeWithTextureSize (classptr, texture.id, size))
		  #elseif Target32Bit
		    Declare function spriteNodeWithTextureSize lib SpriteKit selector "spriteNodeWithTexture:size:" (id as ptr, texture as Ptr,  size as NSSize32Bit) as ptr
		    Super.Constructor (spriteNodeWithTextureSize (classptr, texture.id, size.toNSSize32))
		  #endif
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ImageName as CFStringRef, GenerateNormalMap as Boolean = false)
		  Declare function spriteNodeWithImageNamed lib SpriteKit selector "spriteNodeWithImageNamed:normalMapped:" (id as ptr, imagename as CFStringRef, normalMapped as Boolean) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (spriteNodeWithImageNamed (classptr, ImageName, GenerateNormalMap))
		  RetainClassObject
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getAnchorPoint
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAnchorPoint value
			End Set
		#tag EndSetter
		AnchorPoint As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getBlendColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBlendColor value
			End Set
		#tag EndSetter
		BlendColor As AppleColor
	#tag EndComputedProperty

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
			  return getCenterRect
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcenterrect value
			End Set
		#tag EndSetter
		CenterRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKSpriteNode")
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
			  return ColorBlendFactor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setColorBlendfactor value
			End Set
		#tag EndSetter
		ColorBlendFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function lightingBitMask lib SpriteKit selector "lightingBitMask" (id as ptr) as UInt32
			  return lightingBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setLightingBitMask lib SpriteKit selector "setLightingBitMask:" (id as ptr, value as UInt32)
			  setLightingBitMask id, value
			End Set
		#tag EndSetter
		LightingBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function normalTexture lib SpriteKit selector "normalTexture" (id as ptr) as ptr
			  return AppleSKTexture.MakefromPtr (normalTexture(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setNormalTexture lib SpriteKit selector "setNormalTexture:" (id as ptr, value as ptr)
			  setNormalTexture id, value.id
			End Set
		#tag EndSetter
		NormalTexture As AppleSKTexture
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function shadowCastBitMask lib SpriteKit selector "shadowCastBitMask" (id as ptr) as UInt32
			  return shadowCastBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShadowCastBitMask lib SpriteKit selector "setShadowCastBitMask:" (id as ptr, value as UInt32)
			  setShadowCastBitMask id, value
			End Set
		#tag EndSetter
		ShadowCastBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function shadowedBitMask lib SpriteKit selector "shadowedBitMask" (id as ptr) as UInt32
			  return shadowedBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShadowedBitMask lib SpriteKit selector "setShadowedBitMask:" (id as ptr, value as UInt32)
			  setShadowedBitMask id, value
			End Set
		#tag EndSetter
		ShadowedBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getSize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setSize value
			End Set
		#tag EndSetter
		Size As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function texture lib SpriteKit selector "texture" (id as ptr) as ptr
			  return AppleSKTexture.MakefromPtr (texture(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTexture lib SpriteKit selector "setTexture:" (id as ptr, value as ptr)
			  setTexture id, value.id
			End Set
		#tag EndSetter
		Texture As AppleSKTexture
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
			Name="ColorBlendFactor"
			Group="Behavior"
			Type="Double"
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
