#tag Module
Protected Module iOSImageExtension
	#tag Method, Flags = &h1
		Protected Function CGImage(Id as ptr) As ptr
		  declare function CGImage lib uikit selector "CGImage" (id as ptr) as ptr
		  return CGImage (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CIImage(Id as ptr) As ptr
		  declare function CIImage lib uikit selector "CIImage" (id as ptr) as ptr
		  return CIImage (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(extends img as iosimage, aPoint as xojo.Core.Point)
		  declare sub drawAtPoint lib UIKit selector "drawAtPoint:" (id as Ptr, apoint as cgpoint)
		  
		  dim misze as CGSize
		  misze.width = 500
		  misze.height = 500
		  UIGraphicsBeginImageContext misze
		  drawAtPoint img.Handle, aPoint.tocgpoint
		  UIGraphicsEndImageContext
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromPtr(aUIImage as Ptr) As iOSImage
		  // Converts a UIImage to an iOSImage
		  return  iOSImage.FromHandle (aUIImage)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Scaledimage(extends img as iOSImage, reductionfactor as single, orientation as Orientation = Orientation.Normal) As iOSImage
		  return img.ScaledUIImage (reductionfactor, orientation).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ScaledUIImage(extends img as iOSImage, reductionfactor as single, orientation as Orientation = Orientation.Normal) As ptr
		  dim id as ptr = img.handle
		  if CGImage(id) <> NIL then
		    declare function imageWithCGImage lib UIKit selector "imageWithCGImage:scale:orientation:" _
		    (id as ptr, CGRef as ptr, reductionfactor as single, orientation as Orientation) as ptr
		    return imageWithCGImage (ClassPtr, CGImage (id), reductionfactor, orientation)
		  elseif CIImage (id) <> NIL then
		    declare function imageWithCIImage lib UIKit selector "imageWithCIImage:scale:orientation:" _
		    (id as ptr, CIRef as ptr, reductionfactor as single, orientation as Orientation) as ptr
		    return imageWithCIImage (ClassPtr, CIImage (id), reductionfactor, orientation)
		  end if
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub UIGraphicsBeginImageContext Lib uikit (size as cgsize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub UIGraphicsEndImageContext Lib uikit ()
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function UIGraphicsGetCurrentContext Lib UIKit () As Ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mClassPtr as ptr = NSClassFromString ("UIImage")
			  return mClassPtr
			End Get
		#tag EndGetter
		Private ClassPtr As Ptr
	#tag EndComputedProperty


	#tag Enum, Name = Orientation, Type = Integer, Flags = &h1
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
