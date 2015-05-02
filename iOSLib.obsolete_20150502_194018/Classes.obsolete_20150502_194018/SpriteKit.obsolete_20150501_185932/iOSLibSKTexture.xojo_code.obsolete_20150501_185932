#tag Class
Protected Class iOSLibSKTexture
Inherits ioslibobject
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
		Sub Constructor(imagename as CFStringRef)
		  Declare function textureWithImageNamed lib SpriteKit selector "textureWithImageNamed:" (id as ptr, name as CFStringRef) as ptr
		  super.Constructor (textureWithImageNamed (ClassPtr, imagename))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as iOSLibCGImage)
		  Declare function textureWithCGImage lib SpriteKit selector "textureWithCGImage:" (id as ptr, animage as ptr) as ptr
		  super.Constructor (textureWithCGImage (ClassPtr, animage.CFTypeRef))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as iOSLibImage)
		  Declare function textureWithImage lib SpriteKit selector "textureWithImage:" (id as ptr, name as ptr) as ptr
		  super.Constructor (textureWithImage (ClassPtr, animage.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aTexture as iOSLibSKTexture, aRect as NSRect)
		  #if Target64Bit
		    Declare function textureWithRect lib SpriteKit selector "textureWithRect:inTexture:" (id as ptr, aRect as NSRect, texture as ptr) as ptr
		    super.Constructor (textureWithRect (ClassPtr, arect, aTexture.id))
		  #elseif Target32Bit
		    Declare function textureWithRect lib SpriteKit selector "textureWithRect:inTexture:" (id as ptr, aRect as NSRect32Bit, texture as ptr) as ptr
		    super.Constructor (textureWithRect (ClassPtr, arect.toNSRect32, aTexture.id))
		  #endif
		  
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As ioslibsktexture
		  return if (aptr = nil, nil, new iOSLibSKTexture(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ObjectArray(paramarray objects() as iOSLibGeneralObject) As iOSLibMutableArray
		  dim count as uinteger = objects.Ubound
		  dim myarray as new iOSLibMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.Addobject objects(q).GeneralID
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Preload()
		  Declare sub preload lib SpriteKit selector "preloadWithCompletionHandler:" (id as ptr, completion as ptr)
		  dim completion as new iosblock (AddressOf CompletionBlock)
		  preload id, completion.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub PreloadTextures(textures as ioslibarray)
		  Declare sub preloadtextures lib SpriteKit selector "preloadTextures:withCompletionHandler:" (id as ptr, textures as ptr, completion as ptr)
		  dim block as new iOSBlock (AddressOf ClassCompletionBlock)
		  preloadtextures ( classptr, textures.id, block.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function TextureArray(paramarray Images() as Text) As iOSLibMutableArray
		  dim count as uinteger = Images.Ubound
		  dim myarray as new iOSLibMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.Addobject new iOSLibSKTexture(images(q))
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextureByApplyingCIFilter(CIFIlter as iOSLibCIFilter) As iOSLibSKTexture
		  declare Function textureByApplyingCIFilter lib SpriteKit selector "textureByApplyingCIFilter:" (id as ptr, CIFIlter as ptr) as ptr
		  return new iOSLibSKTexture (textureByApplyingCIFilter(id, CIFIlter.id))
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
			    if iOSLibSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKTexture")
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
		Size As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function textureRect lib SpriteKit selector "textureRect" (id as ptr) as nsrect
			    return textureRect (id)
			  #elseif Target32Bit
			    Declare Function textureRect lib SpriteKit selector "textureRect" (id as ptr) as NSRect32Bit
			    return textureRect(id).toNSRect
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setTextureRect lib SpriteKit selector "setTextureRect:" (id as ptr, value as nsrect)
			    setTextureRect id, value
			  #elseif Target32Bit
			    Declare Sub setTextureRect lib SpriteKit selector "setTextureRect:" (id as ptr, value as NSRect32Bit)
			    setTextureRect id, value.toNSRect32
			  #endif
			End Set
		#tag EndSetter
		TextureRect As NSRect
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
