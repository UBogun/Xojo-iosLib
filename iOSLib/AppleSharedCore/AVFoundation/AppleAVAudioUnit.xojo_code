#tag Class
Protected Class AppleAVAudioUnit
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function AudioComponentDescription Lib AVFoundationLibname Selector "audioComponentDescription" (id as ptr) As AudioComponentDescription
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function AudioUnit Lib AVFoundationLibname Selector "audioUnit" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function loadAudioUnitPresetAtURL Lib AVFoundationLibname Selector "loadAudioUnitPresetAtURL:url:error:" (id as ptr, url as ptr, error as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function LoadPreset(PresetURL As AppleURL, error as AppleError = nil) As Boolean
		  return loadAudioUnitPresetAtURL (id, PresetURL.id,if (error = nil, nil, error.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function manufacturerName Lib AVFoundationLibname Selector "manufacturerName" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function UnitName Lib AVFoundationLibname Selector "name" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function UnitVersion Lib AVFoundationLibname Selector "version" (id as ptr) As UInteger
	#tag EndExternalMethod


	#tag Note, Name = Status
		
		complete, untested
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioUnit")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AudioComponentDescription (id)
			End Get
		#tag EndGetter
		ComponentDescription As AudioComponentDescription
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AudioUnit (id)
			End Get
		#tag EndGetter
		CoreAudioUnit As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			return ManufacturerName(id)
		#tag EndNote
		#tag Getter
			Get
			  return manufacturerName (id)
			End Get
		#tag EndGetter
		Manufacturer As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return UnitName (id)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return UnitVersion (id)
			End Get
		#tag EndGetter
		Version As UINteger
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
