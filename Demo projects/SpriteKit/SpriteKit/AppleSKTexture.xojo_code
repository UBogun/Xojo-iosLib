#tag Class
Protected Class AppleSKTexture
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Shared Sub ClassCompletionBlock()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CompletionBlock()
		  if self <> nil then RaiseEvent TextureLoaded
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as AppleCGImage)
		  Declare function textureWithCGImage lib SpriteKit selector "textureWithCGImage:" (id as ptr, animage as ptr) as ptr
		  super.Constructor (textureWithCGImage (ClassPtr, animage.CFTypeRef))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as AppleImage)
		  Declare function textureWithImage lib SpriteKit selector "textureWithImage:" (id as ptr, name as ptr) as ptr
		  super.Constructor (textureWithImage (ClassPtr, animage.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aTexture as AppleSKTexture, aRect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare function textureWithRect lib SpriteKit selector "textureWithRect:inTexture:" (id as ptr, aRect  as FoundationFramework.NSRect, texture as ptr) as ptr
		    super.Constructor (textureWithRect (ClassPtr, arect, aTexture.id))
		  #elseif Target32Bit
		    Declare function textureWithRect lib SpriteKit selector "textureWithRect:inTexture:" (id as ptr, aRect as FoundationFramework.NSRect32Bit, texture as ptr) as ptr
		    super.Constructor (textureWithRect (ClassPtr, arect.toNSRect32, aTexture.id))
		  #endif
		  
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(imagename as CFStringRef)
		  Declare function textureWithImageNamed lib SpriteKit selector "textureWithImageNamed:" (id as ptr, name as CFStringRef) as ptr
		  super.Constructor (textureWithImageNamed (ClassPtr, imagename))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSKTexture
		  return if (aptr = nil, nil, new AppleSKTexture(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NoiseTexture(Smoothness as Double, Size as FoundationFramework.NSSize, grayscale as boolean = false) As AppleSKTexture
		  dim result as AppleSKTexture
		  #if Target64Bit
		    Declare function textureNoiseWithSmoothness lib SpriteKit selector "textureNoiseWithSmoothness:size:grayscale:" _
		    (id as ptr, Smoothness as Double, size as FoundationFramework.NSSize, grayscale as boolean) as ptr
		    result =  new AppleSKTexture (textureNoiseWithSmoothness (ClassPtr, Smoothness, Size, grayscale))
		  #elseif Target32Bit
		    Declare function textureNoiseWithSmoothness lib SpriteKit selector "textureNoiseWithSmoothness:size:grayscale:" _
		    (id as ptr, Smoothness as Single, size as FoundationFramework.NSSize32Bit, grayscale as boolean) as ptr
		    result =  new AppleSKTexture (textureNoiseWithSmoothness (ClassPtr, Smoothness, Size.toNSSize32, grayscale))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Preload()
		  Declare sub preload lib SpriteKit selector "preloadWithCompletionHandler:" (id as ptr, completion as ptr)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  preload id, completion.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub PreloadTextures(textures as AppleArray)
		  Declare sub preloadtextures lib SpriteKit selector "preloadTextures:withCompletionHandler:" (id as ptr, textures as ptr, completion as ptr)
		  dim block as new AppleBlock (AddressOf ClassCompletionBlock)
		  preloadtextures ( classptr, textures.id, block.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function TextureArray(paramarray Images() as Text) As AppleMutableArray
		  dim count as uinteger = Images.Ubound
		  dim myarray as new AppleMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.Addobject new AppleSKTexture(images(q))
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextureByApplyingCIFilter(CIFIlter as AppleCIFilter) As AppleSKTexture
		  declare Function textureByApplyingCIFilter lib SpriteKit selector "textureByApplyingCIFilter:" (id as ptr, CIFIlter as ptr) as ptr
		  return new AppleSKTexture (textureByApplyingCIFilter(id, CIFIlter.id))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event TextureLoaded()
	#tag EndHook


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKTexture")
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
			  declare Function filteringMode lib SpriteKit selector "filteringMode" (id as ptr) as SKTextureFilteringMode
			  return filteringMode (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setFilteringMode lib SpriteKit selector "setFilteringMode:" (id as ptr, value as SKTextureFilteringMode)
			  setFilteringMode id, value
			  
			End Set
		#tag EndSetter
		FilteringMode As SKTextureFilteringMode
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
		Size As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function textureRect lib SpriteKit selector "textureRect" (id as ptr)  as FoundationFramework.NSRect
			    return textureRect (id)
			  #elseif Target32Bit
			    Declare Function textureRect lib SpriteKit selector "textureRect" (id as ptr) as FoundationFramework.NSRect32Bit
			    return textureRect(id).toNSRect
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setTextureRect lib SpriteKit selector "setTextureRect:" (id as ptr, value  as FoundationFramework.NSRect)
			    setTextureRect id, value
			  #elseif Target32Bit
			    Declare Sub setTextureRect lib SpriteKit selector "setTextureRect:" (id as ptr, value as FoundationFramework.NSRect32Bit)
			    setTextureRect id, value.toNSRect32
			  #endif
			End Set
		#tag EndSetter
		TextureRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function usesMipmaps lib SpriteKit selector "usesMipmaps" (id as ptr) as Boolean
			  return usesMipmaps (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setUsesMipmaps lib SpriteKit selector "setUsesMipmaps:" (id as ptr, value as Boolean)
			  setUsesMipmaps id, value
			  
			End Set
		#tag EndSetter
		UsesMipMaps As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = SKTextureFilteringMode, Type = Integer, Flags = &h0
		Nearest
		Linear
	#tag EndEnum


	#tag ViewBehavior
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
			Name="FilteringMode"
			Group="Behavior"
			Type="SKTextureFilteringMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Nearest"
				"1 - Linear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="UsesMipMaps"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
