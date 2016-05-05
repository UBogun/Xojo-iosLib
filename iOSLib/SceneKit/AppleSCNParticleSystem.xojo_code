#tag Class
Protected Class AppleSCNParticleSystem
Inherits Appleobject
	#tag Method, Flags = &h0, Description = 437265617465732061206E6577207061727469636C652073797374656D2E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(particleSystem(ClassPtr))
		  Retainclassobject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C6F6164732061207061727469636C652073797374656D2066726F6D20612066696C6520696E2074686520617070E28099732062756E646C65207265736F75726365732E
		Sub Constructor(ParticlesystemName as Text, inDirectoy as Text)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(particleSystemNamed(ClassPtr, particleSystemName, inDirectoy))
		  Retainclassobject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getbirthDirection Lib SceneKitLib Selector "birthDirection" (id as ptr) As SCNParticleBirthDirection
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getbirthLocation Lib SceneKitLib Selector "birthLocation" (id as ptr) As SCNParticleBirthLocation
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getbirthRate Lib SceneKitLib Selector "birthRate" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getbirthRateVariation Lib SceneKitLib Selector "birthRateVariation" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getemissionDuration Lib SceneKitLib Selector "emissionDuration" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getemissionDurationVariation Lib SceneKitLib Selector "emissionDurationVariation" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getemitterShape Lib SceneKitLib Selector "emitterShape" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getemittingDirection Lib SceneKitLib Selector "emittingDirection" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getemittingDirection32 Lib SceneKitLib Selector "emittingDirection" (id as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getidleDuration Lib SceneKitLib Selector "idleDuration" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getidleDurationVariation Lib SceneKitLib Selector "idleDurationVariation" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getspreadingAngle Lib SceneKitLib Selector "spreadingAngle" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getwarmupDuration Lib SceneKitLib Selector "warmupDuration" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function makefromPtr(aPtr as Ptr) As AppleSCNParticleSystem
		  return if (aptr= nil, nil, new AppleSCNParticleSystem(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function particleSystem Lib SceneKitLib Selector "particleSystem" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function particleSystemNamed Lib SceneKitLib Selector "particleSystemNamed:inDirectory:" (id as ptr, particlesysname as cfstringref, inDirectory as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setbirthDirection Lib SceneKitLib Selector "setBirthDirection:" (id as ptr, value as SCNParticleBirthDirection)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setbirthLocation Lib SceneKitLib Selector "setBirthLocation:" (id as ptr, value as SCNParticleBirthLocation)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setbirthRate Lib SceneKitLib Selector "setBirthRate:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setBirthRateVariation Lib SceneKitLib Selector "setBirthRateVariation:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setemissionDuration Lib SceneKitLib Selector "setEmissionDuration:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setemissionDurationVariation Lib SceneKitLib Selector "setEmissionDurationVariation:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setemitterShape Lib SceneKitLib Selector "setEmitterShape:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setemittingDirection Lib SceneKitLib Selector "setEmittingDirection:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setemittingDirection32 Lib SceneKitLib Selector "setEmittingDirection:" (id as ptr, value as SCNVector3_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setidleDuration Lib SceneKitLib Selector "setIdleDuration:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setidleDurationVariation Lib SceneKitLib Selector "setIdleDurationVariation:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setspreadingAngle Lib SceneKitLib Selector "setSpreadingAngle:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setwarmupDuration Lib SceneKitLib Selector "setWarmupDuration:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		everything from Managing Particle Motion in Apple’s docs missing.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520706F737369626C6520696E697469616C20646972656374696F6E7320666F72206E65776C7920737061776E6564207061727469636C65732C2072656C617469766520746F2074686520656D69747465722073686170652E2044656661756C7420697320436F6E7374616E74446972656374696F6E2E
		#tag Getter
			Get
			  return getbirthDirection(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbirthDirection id, value
			End Set
		#tag EndSetter
		BirthDirection As SCNParticleBirthDirection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F737369626C65206C6F636174696F6E7320666F72206E65776C7920737061776E6564207061727469636C65732C2072656C617469766520746F2074686520656D69747465722073686170652E2044656661756C7420697320737572666163652E
		#tag Getter
			Get
			  return getbirthLocation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbirthLocation id, value
			End Set
		#tag EndSetter
		BirthLocation As SCNParticleBirthLocation
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207061727469636C657320737061776E656420647572696E67206561636820656D697373696F6E20706572696F642E20416E696D617461626C652E2044656661756C7420312E302E
		#tag Getter
			Get
			  return getbirthRate(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbirthRate id, value
			End Set
		#tag EndSetter
		BirthRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F662072616E646F6D697A6564207061727469636C6520626972746820726174652076616C7565732E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getbirthRateVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBirthRateVariation id, value
			End Set
		#tag EndSetter
		BirthRateVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNParticleSystem")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E2C20696E207365636F6E64732C206F766572207768696368207468652073797374656D20737061776E73206E6577207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getemissionDuration(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setemissionDuration id, value
			End Set
		#tag EndSetter
		EmissionDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E67652C20696E207365636F6E64732C206F662072616E646F6D697A656420656D697373696F6E206475726174696F6E2076616C7565732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getemissionDurationVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setemissionDurationVariation id, value
			End Set
		#tag EndSetter
		EmissionDurationVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207368617065206F662074686520726567696F6E206F66207370616365207768657265207468652073797374656D20737061776E73206E6577207061727469636C65732E
		#tag Getter
			Get
			  return AppleSCNGeometry.MakeFromPtr(getemitterShape(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setemitterShape id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		EmitterShape As AppleSCNGeometry
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E697469616C20646972656374696F6E20666F72206E65776C7920737061776E6564207061727469636C65732E20416E696D617461626C652E2044656661756C74207B302E302C20302E302C20312E307D20E2809320737061776E696E6720696E20706F736974697665207A20646972656374696F6E2E
		#tag Getter
			Get
			  #if Target64Bit
			    return getemittingDirection(id)
			  #elseif Target32Bit
			    return getemittingDirection32(id).toVector3
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setemittingDirection id, value
			  #elseif Target32Bit
			    setemittingDirection32 id, value.toVector3_32
			  #endif
			End Set
		#tag EndSetter
		EmittingDirection As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E2C20696E207365636F6E64732C206F6620706572696F6473207768656E207468652073797374656D20656D697473206E6F207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getidleDuration(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setidleDuration id, value
			End Set
		#tag EndSetter
		IdleDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E67652C20696E207365636F6E64732C206F662072616E646F6D697A65642069646C65206475726174696F6E2076616C7565732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getidleDurationVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setidleDurationVariation id, value
			End Set
		#tag EndSetter
		IdleDurationVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652073797374656D20726570656174732069747320656D697373696F6E20616E642069646C6520706572696F64732E2044656661756C7420547275652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getloops (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setLoops id, value
			End Set
		#tag EndSetter
		Loops As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207061727469636C657320737061776E656420647572696E67206561636820656D697373696F6E20706572696F642E20416E696D617461626C652E2044656661756C7420312E302E
		#tag Getter
			Get
			  return getspreadingAngle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setspreadingAngle id, value
			End Set
		#tag EndSetter
		SpreadingAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E2C20696E207365636F6E64732C20666F72207768696368207061727469636C65732061726520737061776E6564206265666F7265207468652073797374656D2069732066697273742072656E64657265642E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getwarmupDuration(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setwarmupDuration id, value
			End Set
		#tag EndSetter
		WarmupDuration As Double
	#tag EndComputedProperty


	#tag Enum, Name = SCNParticleBirthDirection, Type = Integer, Flags = &h0
		ConstantDirection
		  SurfaceNormal
		RandomDirection
	#tag EndEnum

	#tag Enum, Name = SCNParticleBirthLocation, Type = Integer, Flags = &h0
		Surface
		  Volume
		Vertex
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="BirthDirection"
			Group="Behavior"
			Type="SCNParticleBirthDirection"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BirthLocation"
			Group="Behavior"
			Type="SCNParticleBirthLocation"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BirthRate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BirthRateVariation"
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
			Name="EmissionDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EmissionDurationVariation"
			Group="Behavior"
			Type="Double"
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
			Name="IdleDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IdleDurationVariation"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Loops"
			Group="Behavior"
			Type="Boolean"
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
			Name="SpreadingAngle"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WarmupDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
