#tag Class
Protected Class AppleAVAudioUnitEQFilterParameters
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getbandwidth Lib AVFoundationLibname Selector "bandwidth" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getbypass Lib AVFoundationLibname Selector "bypass" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getfiltertype Lib AVFoundationLibname Selector "filterType" (id as ptr) As AVAudioUnitEQFilterType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getfrequency Lib AVFoundationLibname Selector "frequency" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getgain Lib AVFoundationLibname Selector "gain" (id as ptr) As single
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function makefromPtr(aPtr as Ptr) As AppleAVAudioUnitEQFilterParameters
		  return if (aptr = nil, nil, new AppleAVAudioUnitEQFilterParameters(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setbandwidth Lib AVFoundationLibname Selector "setBandwidth:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setbypass Lib AVFoundationLibname Selector "setBypass:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setfiltertype Lib AVFoundationLibname Selector "setFilterType:" (id as ptr, value as AVAudioUnitEQFilterType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setfrequency Lib AVFoundationLibname Selector "setFrequency:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setgain Lib AVFoundationLibname Selector "setGain:" (id as ptr, value as single)
	#tag EndExternalMethod


	#tag Note, Name = Status
		
		Finished, untested
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getbandwidth (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbandwidth (id, value)
			End Set
		#tag EndSetter
		Bandwidth As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getbypass (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbypass (id, value)
			End Set
		#tag EndSetter
		Bypass As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioUnitEQFilterParameters")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getfiltertype (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfiltertype (id, value)
			End Set
		#tag EndSetter
		FilterType As AVAudioUnitEQFilterType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getfrequency (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfrequency (id, value)
			End Set
		#tag EndSetter
		Frequency As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getgain (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setgain (id, value)
			End Set
		#tag EndSetter
		Gain As Single
	#tag EndComputedProperty


	#tag Enum, Name = AVAudioUnitEQFilterType, Type = Integer, Flags = &h0
		Parametric = 0
		  Lowpass
		  Highpass
		  ResonantLowpass
		  ResonantHighpass
		  Bandpass
		  Bandstop
		  LowShelf
		  HighShelf
		  ResonantLowShelf
		ResonantHighShelf
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
