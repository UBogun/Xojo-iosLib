#tag Class
Protected Class AppleCIImage
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Declare function emptyImage lib CoreImage selector "emptyImage" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (emptyImage (ClassPtr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as AppleCGImage)
		  Declare function imageWithCGImage lib CoreImage selector "imageWithCGImage:" (id as ptr, ainimage as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (imageWithCGImage (ClassPtr, anImage.CFTypeRef))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as AppleImage)
		  Declare function initWithImage lib CoreImage selector "initWithImage:" (id as ptr, ainimage as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (initWithImage (alloc(ClassPtr), anImage.id))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as iOSImage)
		  Constructor (anImage.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CropToRect(aRect as FoundationFramework.NSRect) As AppleCIImage
		  #if Target64Bit
		    Declare function imageByCroppingToRect lib CoreImage selector "imageByCroppingToRect:" (id as ptr, aRect  as FoundationFramework.NSRect) as ptr
		    return new AppleCIImage( imageByCroppingToRect (id, aRect))
		  #elseif Target32Bit
		    Declare function imageByCroppingToRect lib CoreImage selector "imageByCroppingToRect:" (id as ptr, aRect as FoundationFramework.NSRect32Bit) as ptr
		    return new AppleCIImage( imageByCroppingToRect (id, aRect.toNSRect32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As Appleciimage
		  return if (aptr = nil, nil, new AppleCIImage(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CIImage")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function extent lib CoreImage selector "extent" (id as ptr)  as FoundationFramework.NSRect
			    return extent (id)
			  #elseif Target32Bit
			    Declare function extent lib coreimage selector "extent" (id as ptr) as FoundationFramework.NSRect32Bit
			    return extent(id).toNSRect
			  #endif
			End Get
		#tag EndGetter
		Extent As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function properties lib CoreImage selector "properties" (id as ptr) as ptr
			  return appleDictionary.MakeFromPtr (properties(id))
			  
			End Get
		#tag EndGetter
		Properties As AppleDictionary
	#tag EndComputedProperty


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
	#tag EndViewBehavior
End Class
#tag EndClass
