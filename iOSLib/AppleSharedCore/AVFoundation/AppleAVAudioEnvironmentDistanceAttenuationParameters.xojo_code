#tag Class
Protected Class AppleAVAudioEnvironmentDistanceAttenuationParameters
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function getdistanceAttenuationModel Lib AVFoundationLibname Selector "distanceAttenuationModel" (id as ptr) As AVAudioEnvironmentDistanceAttenuationModel
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getmaximumDistance Lib AVFoundationLibname Selector "maximumDistance" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getreferenceDistance Lib AVFoundationLibname Selector "referenceDistance" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getrolloffFactor Lib AVFoundationLibname Selector "rolloffFactor" (id as ptr) As Single
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleAVAudioEnvironmentDistanceAttenuationParameters
		  return if (aptr = nil, nil, new AppleAVAudioEnvironmentDistanceAttenuationParameters(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setmaximumDistance Lib AVFoundationLibname Selector "setMaximumDistance:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setreferenceDistance Lib AVFoundationLibname Selector "setReferenceDistance:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setrolloffFactor Lib AVFoundationLibname Selector "setRolloffFactor:" (id as ptr, value as single)
	#tag EndExternalMethod


	#tag Note, Name = Status
		
		fully implemented, untested
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioEnvironmentDistanceAttenuationParameters")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getdistanceAttenuationModel (id)
			End Get
		#tag EndGetter
		DistanceAttenuationModel As AVAudioEnvironmentDistanceAttenuationModel
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getmaximumDistance (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmaximumDistance (id, value)
			End Set
		#tag EndSetter
		MaximumDistance As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getreferenceDistance (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setreferenceDistance (id, value)
			End Set
		#tag EndSetter
		ReferenceDistance As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getrolloffFactor (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setrolloffFactor (id, value)
			End Set
		#tag EndSetter
		RolloffFactor As Single
	#tag EndComputedProperty


	#tag Enum, Name = AVAudioEnvironmentDistanceAttenuationModel, Type = Integer, Flags = &h0
		Exponential
		  Inverse
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
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
