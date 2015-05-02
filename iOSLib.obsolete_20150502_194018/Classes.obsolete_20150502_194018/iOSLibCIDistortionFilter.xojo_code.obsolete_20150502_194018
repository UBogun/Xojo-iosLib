#tag Class
Protected Class iOSLibCIDistortionFilter
Inherits iOSLibCIFilter
	#tag Method, Flags = &h1000
		Sub Constructor(Type as DistortionFilter)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibCIFilter
		  // Constructor(FilterName as CFStringRef) -- From iOSLibCIFilter
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  dim myType as text
		  Select case type
		  case DistortionFilter.Bump
		    myType = "CIBumpDistortion"
		  case DistortionFilter.BumpLinear
		    myType = "CIBumpDistortionLinear"
		  case DistortionFilter.CircleSplash
		    myType = "CICircleSplashDistortion"
		  case DistortionFilter.Glass
		    myType = "CIGlassDistortion"
		  case DistortionFilter.Hole
		    myType = "CIHoleDistortion"
		  case DistortionFilter.LightTunnel
		    myType = "CILightTunnel"
		  case DistortionFilter.Pinch
		    myType = "CIPinchDistortion"
		  case DistortionFilter.Twirl
		    myType = "CITwirlDistortion"
		  case DistortionFilter.Vortex
		    myType = "CIVortexDistortion"
		  End Select
		  
		  Super.Constructor (myType)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Type as DistortionFilter, anImage as iOSImage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibCIFilter
		  // Constructor(FilterName as CFStringRef) -- From iOSLibCIFilter
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Constructor (type)
		  InputImage = new ioslibimage (anImage)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Untitled()
		  
		End Sub
	#tag EndMethod


	#tag Enum, Name = DistortionFilter, Type = Integer, Flags = &h0
		Bump
		  BumpLinear
		  CircleSplash
		  Glass
		  Hole
		  LightTunnel
		  Pinch
		  Twirl
		Vortex
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
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
