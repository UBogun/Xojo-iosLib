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
		Protected Declare Function getparticleAngle Lib SceneKitLib Selector "particleAngle" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleAngleVariation Lib SceneKitLib Selector "particleAngleVariation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleAngularVelocity Lib SceneKitLib Selector "particleAngularVelocity" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleAngularVelocityVariation Lib SceneKitLib Selector "particleAngularVelocityVariation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleColor Lib SceneKitLib Selector "particleColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleColorVariation Lib SceneKitLib Selector "particleColorVariation" (id as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleColorVariation32 Lib SceneKitLib Selector "particleColorVariation" (id as ptr) As SCNVector4_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleImage Lib SceneKitLib Selector "particleImage" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleLifeSpan Lib SceneKitLib Selector "particleLifeSpan" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleLifeSpanVariation Lib SceneKitLib Selector "particleLifeSpanVariation" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleSize Lib SceneKitLib Selector "particleSize" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleSizeVariation Lib SceneKitLib Selector "particleSizeVariation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleVelocity Lib SceneKitLib Selector "particleVelocity" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleVelocityVariation Lib SceneKitLib Selector "particleVelocityVariation" (id as ptr) As CGFloat
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
		Protected Declare Sub setParticleAngle Lib SceneKitLib Selector "setParticleAngle:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleAngleVariation Lib SceneKitLib Selector "setParticleAngleVariation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleAngularVelocity Lib SceneKitLib Selector "setParticleAngularVelocity:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleAngularVelocityVariation Lib SceneKitLib Selector "setParticleAngularVelocityVariation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleColor Lib SceneKitLib Selector "setParticleColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleColorVariation Lib SceneKitLib Selector "setParticleColorVariation:" (id as ptr, value as SCNVector4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleColorVariation32 Lib SceneKitLib Selector "setParticleColorVariation:" (id as ptr, value as SCNVector4_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleImage Lib SceneKitLib Selector "setParticleImage:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleLifeSpan Lib SceneKitLib Selector "setParticleLifeSpan:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleLifeSpanVariation Lib SceneKitLib Selector "setParticleLifeSpanVariation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleSize Lib SceneKitLib Selector "setParticleSize:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleSizeVariation Lib SceneKitLib Selector "setParticleSizeVariation:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleVelocity Lib SceneKitLib Selector "setParticleVelocity:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleVelocityVariation Lib SceneKitLib Selector "setParticleVelocityVariation:" (id as ptr, value as CGFloat)
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


	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E6573207768657468657220677261766974792C20617320646566696E656420627920746865207363656E65E280997320706879736963732073696D756C6174696F6E2C206166666563747320746865206D6F74696F6E206F66207061727469636C65732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getaffectedByGravity(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setaffectedByGravity(id, value)
			End Set
		#tag EndSetter
		AffectedByGravity As Boolean
	#tag EndComputedProperty

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

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F746174696F6E20616E676C652C20696E20646567726565732C206F66206E65776C7920737061776E6564207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleAngle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setParticleAngle id, value
			End Set
		#tag EndSetter
		ParticleAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E67652C20696E20646567726565732C206F662072616E646F6D697A656420696E697469616C207061727469636C6520616E676C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleAngleVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleAngleVariation id, value
			End Set
		#tag EndSetter
		ParticleAngleVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E697469616C207370696E20726174652C20696E206465677265657320706572207365636F6E642C206F66206E65776C7920737061776E6564207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleAngularVelocity(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleAngularVelocity id, value
			End Set
		#tag EndSetter
		ParticleAngularVelocity As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E67652C20696E206465677265657320706572207365636F6E642C206F662072616E646F6D697A656420696E697469616C20616E67756C61722076656C6F63697469657320666F72207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleAngularVelocityVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleAngularVelocityVariation id, value
			End Set
		#tag EndSetter
		ParticleAngularVelocityVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F66206E65776C7920737061776E6564207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return applecolor.MakeFromPtr(getparticleColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ParticleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E676573206F662072616E646F6D697A6564207061727469636C6520636F6C6F7220636F6D706F6E656E74732E20416E696D617461626C652E2056616C75657320617265206875652C2073617475726174696F6E2C206269726768746E65737320616E6420616C7068612028696E2074686973206F72646572292E
		#tag Getter
			Get
			  #if Target64Bit
			    return getparticleColorVariation(id)
			  #elseif Target32Bit
			    return getparticleColorVariation32(id).toVector4
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setparticleColorVariation id, value
			  #elseif Target32Bit
			    setparticleColorVariation32 id, value.toVector4_32
			  #endif
			End Set
		#tag EndSetter
		ParticleColorVariation As SCNVector4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F66206E65776C7920737061776E6564207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(getparticleImage(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ParticleImage As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E2C20696E207365636F6E64732C20666F722077686963682065616368207061727469636C652069732072656E6465726564206265666F7265206265696E672072656D6F7665642066726F6D20746865207363656E652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleLifeSpan(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleLifeSpan id, value
			End Set
		#tag EndSetter
		ParticleLifeSpan As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E67652C20696E207365636F6E64732C206F662072616E646F6D697A6564207061727469636C65206C696665207370616E732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleLifeSpanVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleLifeSpanVariation id, value
			End Set
		#tag EndSetter
		ParticleLifeSpanVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656E64657265642073697A652C20696E20756E697473206F6620746865207363656E65E280997320776F726C6420636F6F7264696E6174652073706163652C206F6620746865207061727469636C6520696D6167652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleSize(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleSize id, value
			End Set
		#tag EndSetter
		ParticleSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656E64657265642073697A652C20696E20756E697473206F6620746865207363656E65E280997320776F726C6420636F6F7264696E6174652073706163652C206F6620746865207061727469636C6520696D6167652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleSizeVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleSizeVariation id, value
			End Set
		#tag EndSetter
		ParticleSizeVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E697469616C2073706565642C20696E20756E69747320706572207365636F6E642C20666F72206E65776C7920737061776E6564207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleVelocity(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleVelocity id, value
			End Set
		#tag EndSetter
		ParticleVelocity As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E697469616C2073706565642C20696E20756E69747320706572207365636F6E642C20666F72206E65776C7920737061776E6564207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleVelocityVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleVelocityVariation id, value
			End Set
		#tag EndSetter
		ParticleVelocityVariation As Double
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
			EditorType="Enum"
			#tag EnumValues
				"0 - ConstantDirection"
				"1 - SurfaceNormal"
				"2 - RandomDirection"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BirthLocation"
			Group="Behavior"
			Type="SCNParticleBirthLocation"
			EditorType="Enum"
			#tag EnumValues
				"0 - Surface"
				"1 - Volume"
				"2 - Vertex"
			#tag EndEnumValues
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
