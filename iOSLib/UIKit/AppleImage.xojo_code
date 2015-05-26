#tag Class
Protected Class AppleImage
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as AppleCGImage)
		  #if Target64Bit
		    Declare function imageWithCGImage lib UIKit selector "imageWithCGImage:" (id as ptr, animage as ptr) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCGImage lib UIKit selector "imageWithCGImage:" (id as ptr, animage as ptr) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCGImage ( ClassPtr, animage.CFTypeRef))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as AppleCGImage, scale as double, orientation as UIImageOrientation = UIImageOrientation.normal)
		  #if Target64Bit
		    Declare function imageWithCGImage lib UIKit selector "imageWithCGImage:scale:orientation:" (id as ptr, animage as ptr, scale as double, orientation as UIImageOrientation) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCGImage lib UIKit selector "imageWithCGImage:scale:orientation:" (id as ptr, animage as ptr, scale as single, orientation as UIImageOrientation) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCGImage ( ClassPtr, animage.CFTypeRef, scale, orientation))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as AppleCIImage)
		  Declare function imageWithCIImage lib UIKit selector "imageWithCIImage:" (id as ptr, animage as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCIImage (classptr, animage.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as AppleCIImage, scale as double, orientation as UIImageOrientation = UIImageOrientation.normal)
		  #if Target64Bit
		    Declare function imageWithCIImage lib UIKit selector "imageWithCIImage:scale:orientation:" (id as ptr, animage as ptr, scale as double, orientation as UIImageOrientation) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCIImage lib UIKit selector "imageWithCIImage:scale:orientation:" (id as ptr, animage as ptr, scale as single, orientation as UIImageOrientation) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCIImage (classptr, animage.id, scale, orientation))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(imagename as cfstringref)
		  Declare function imageNamed lib UIKit selector "imageNamed:" (id as ptr, imagename as cfstringref) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imagenamed (classptr, imagename))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as iOSImage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (animage.Handle)
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleImage
		  return if (aptr <> NIL, new AppleImage (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resize(Scalefactor as double) As AppleImage
		  if toCGImage <> NIL then
		    return new AppleImage (toCGImage, Scalefactor)
		  elseif toCIImage <> NIL then
		    return new AppleImage (toCIImage, Scalefactor)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resize(NewRect as NSRect) As AppleImage
		  dim scale as double = min (NewRect.Size_.width / Width, NewRect.Size_.height/Height)
		  return Resize (scale)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIImage")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Size.height
			End Get
		#tag EndGetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getSize
			End Get
		#tag EndGetter
		Size As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function CGImage lib UIKit selector "CGImage" (id as ptr) as ptr
			  return  AppleCGImage.MakeFromCFTypeRef ( CGImage (id), false)
			End Get
		#tag EndGetter
		toCGImage As AppleCGImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function CIImage lib uikit selector "CIImage" (id as ptr) as ptr
			  return AppleCIImage.MakefromPtr (CIImage(id))
			End Get
		#tag EndGetter
		toCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return  iOSImage.FromHandle (id)
			End Get
		#tag EndGetter
		toiOSImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Size.width
			End Get
		#tag EndGetter
		Width As Double
	#tag EndComputedProperty


	#tag Enum, Name = UIImageOrientation, Type = Integer, Flags = &h0
		Normal
		  HalfwayRound
		  QuarterRight
		  QuarerLeft
		  UpMirrored
		  DownMirrored
		  LeftMirrored
		RightMirrored
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
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
