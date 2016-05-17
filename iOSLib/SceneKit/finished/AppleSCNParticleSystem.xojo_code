#tag Class
Protected Class AppleSCNParticleSystem
Inherits Appleobject
	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub addModifierForProperties Lib SceneKitLib Selector "addModifierForProperties:atStage:withBlock:" (id as ptr, Properties as ptr, Stage as SCNParticleModifierStage, block as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 41646473206120626C6F636B2074686174206D6F646966696573207061727469636C652070726F706572746965732C20746F20626520657865637574656420656163682074696D65205363656E654B69742072656E646572732061206672616D652E0A536565207468652053434E5061727469636C654D6F646966696572426C6F636B54656D706C6174652070726976617465206D6574686F64206F66207468697320636C61737320666F722074686520626C6F636B207374727563747572652E
		Sub AddModifiers(Properties as AppleArray, Stage as SCNParticleModifierStage, Block as AppleBlock)
		  addModifierForProperties id, Properties.id, Stage, block.handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646473206120626C6F636B2074686174206D6F646966696573207061727469636C652070726F706572746965732C20746F206265206578656375746564206174206120737065636966696564206576656E7420696E20746865206C69666574696D6573206F66207061727469636C657320696E207468652073797374656D2E20536565207468652053434E5061727469636C654576656E74426C6F636B54656D706C6174652070726976617465206D6574686F64206F66207468697320636C61737320666F722074686520626C6F636B207374727563747572652E
		Sub AddParticleEvent(ParticleEvent as SCNParticleEvent, Properties As Applearray, Block as appleblock)
		  handleEvent id, ParticleEvent,Properties.id, block.Handle
		End Sub
	#tag EndMethod

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
		Protected Declare Function getacceleration Lib SceneKitLib Selector "acceleration" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getacceleration32 Lib SceneKitLib Selector "acceleration" (id as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getaffectedByPhysicsFields Lib SceneKitLib Selector "affectedByPhysicsFields" (id as ptr) As Boolean
	#tag EndExternalMethod

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
		Protected Declare Function getblackPassEnabled Lib SceneKitLib Selector "isBlackPassEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getblendMode Lib SceneKitLib Selector "blendMode" (id as ptr) As SCNParticleBlendMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getcolliderNodes Lib SceneKitLib Selector "colliderNodes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getdampingFactor Lib SceneKitLib Selector "dampingFactor" (id as ptr) As cgfloat
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
		Protected Declare Function getimageSequenceAnimationMode Lib SceneKitLib Selector "imageSequenceAnimationMode" (id as ptr) As SCNParticleImageSequenceAnimationMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getimageSequenceColumnCount Lib SceneKitLib Selector "imageSequenceColumnCount" (id as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getimageSequenceFrameRate Lib SceneKitLib Selector "imageSequenceFrameRate" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getimageSequenceFrameRateVariation Lib SceneKitLib Selector "imageSequenceFrameRateVariation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getimageSequenceInitialFrame Lib SceneKitLib Selector "imageSequenceInitialFrame" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getimageSequenceInitialFrameVariation Lib SceneKitLib Selector "imageSequenceInitialFrameVariation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getimageSequenceRowCount Lib SceneKitLib Selector "imageSequenceRowCount" (id as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getlightingEnabled Lib SceneKitLib Selector "isLightingEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getlocal Lib SceneKitLib Selector "isLocal" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getorientationMode Lib SceneKitLib Selector "orientationMode" (id as ptr) As SCNParticleOrientationMode
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
		Protected Declare Function getparticleBounce Lib SceneKitLib Selector "particleBounce" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleBounceVariation Lib SceneKitLib Selector "particleBounceVariation" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleCharge Lib SceneKitLib Selector "particleCharge" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleChargeVariation Lib SceneKitLib Selector "particleChargeVariation" (id as ptr) As cgfloat
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
		Protected Declare Function getparticleDiesOnCollision Lib SceneKitLib Selector "particleDiesOnCollision" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleFriction Lib SceneKitLib Selector "particleFriction" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleFrictionVariation Lib SceneKitLib Selector "particleFrictionVariation" (id as ptr) As cgfloat
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
		Protected Declare Function getparticleMass Lib SceneKitLib Selector "particleMass" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleMassVariation Lib SceneKitLib Selector "particleMassVariation" (id as ptr) As cgfloat
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
		Protected Declare Function getpropertyControllers Lib SceneKitLib Selector "propertyControllers" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getsortingMode Lib SceneKitLib Selector "sortingMode" (id as ptr) As SCNParticleSortingMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getspeedFactor Lib SceneKitLib Selector "speedFactor" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getspreadingAngle Lib SceneKitLib Selector "spreadingAngle" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getstretchFactor Lib SceneKitLib Selector "stretchFactor" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getsystemSpawnedOnCollision Lib SceneKitLib Selector "systemSpawnedOnCollision" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getsystemSpawnedOnDying Lib SceneKitLib Selector "systemSpawnedOnDying" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getsystemSpawnedOnLiving Lib SceneKitLib Selector "systemSpawnedOnLiving" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getwarmupDuration Lib SceneKitLib Selector "warmupDuration" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub handleEvent Lib SceneKitLib Selector "handleEvent:forProperties:withBlock:" (id as ptr, ParticleEvent as SCNParticleEvent, properties as ptr, block as ptr)
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

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C207061727469636C65206D6F64696669657220626C6F636B73206173736F636961746564207769746820746865207061727469636C652073797374656D2E
		Sub RemoveAllModifiers()
		  removeAllModifiers id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub removeAllModifiers Lib SceneKitLib Selector "removeAllModifiers" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207061727469636C65206D6F64696669657220626C6F636B7320666F722074686520737065636966696564207374616765206F6620746865207061727469636C652073696D756C6174696F6E2E
		Sub RemoveModifiers(Stage as SCNParticleModifierStage)
		  removeModifiersOfStage id, Stage
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub removeModifiersOfStage Lib SceneKitLib Selector "removeModifiersOfStage:" (id as ptr, Stage as SCNParticleModifierStage)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207061727469636C652073797374656D20746F2069747320696E697469616C2073746174652E
		Sub Reset()
		  reset id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub reset Lib SceneKitLib Selector "reset" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub SCNParticleEventBlockTemplate(Data as ptr, DataStride as ptr, Indices as ptr, Count as Integer)
		  #pragma Unused data
		  #pragma unused DataStride
		  #pragma Unused Indices
		  #pragma unused count
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SCNParticleModifierBlockTemplate(Data as ptr, DataStride as ptr, StartIndex as Integer, EndIndex as Integer, deltaTime As Single)
		  #pragma Unused data
		  #pragma unused DataStride
		  #pragma Unused StartIndex
		  #pragma unused EndIndex
		  #pragma unused deltaTime
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setacceleration Lib SceneKitLib Selector "setAcceleration:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setacceleration32 Lib SceneKitLib Selector "setAcceleration:" (id as ptr, value as SCNVector3_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setaffectedByPhysicsFields Lib SceneKitLib Selector "setAffectedByPhysicsFields:" (id as ptr, value as Boolean)
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
		Protected Declare Sub setblackPassEnabled Lib SceneKitLib Selector "setBlackPassEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setblendMode Lib SceneKitLib Selector "setBlendMode:" (id as ptr, value as SCNParticleBlendMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setcolliderNodes Lib SceneKitLib Selector "setColliderNodes:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setdampingFactor Lib SceneKitLib Selector "setDampingFactor:" (id as ptr, value as cgfloat)
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
		Protected Declare Sub setimageSequenceAnimationMode Lib SceneKitLib Selector "setImageSequenceAnimationMode:" (id as ptr, value as SCNParticleImageSequenceAnimationMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setimageSequenceColumnCount Lib SceneKitLib Selector "setImageSequenceColumnCount:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setimageSequenceFrameRate Lib SceneKitLib Selector "setImageSequenceFrameRate:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setimageSequenceFrameRateVariation Lib SceneKitLib Selector "setImageSequenceFrameRateVariation:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setimageSequenceInitialFrame Lib SceneKitLib Selector "setImageSequenceInitialFrame:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setimageSequenceInitialFrameVariation Lib SceneKitLib Selector "setImageSequenceInitialFrameVariation:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setimageSequenceRowCount Lib SceneKitLib Selector "setImageSequenceRowCount:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setlightingEnabled Lib SceneKitLib Selector "setLightingEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setlocal Lib SceneKitLib Selector "setLocal:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setorientationMode Lib SceneKitLib Selector "setOrientationMode:" (id as ptr, value as SCNParticleOrientationMode)
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
		Protected Declare Sub setparticleBounce Lib SceneKitLib Selector "setParticleBounce:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleBounceVariation Lib SceneKitLib Selector "setParticleBounceVariation:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleCharge Lib SceneKitLib Selector "setParticleCharge:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleChargeVariation Lib SceneKitLib Selector "setParticleChargeVariation:" (id as ptr, value as cgfloat)
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
		Protected Declare Sub setparticleDiesOnCollision Lib SceneKitLib Selector "setParticleDiesOnCollision:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleFriction Lib SceneKitLib Selector "setParticleFriction:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleFrictionVariation Lib SceneKitLib Selector "setParticleFrictionVariation:" (id as ptr, value as CGFloat)
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
		Protected Declare Sub setparticleMass Lib SceneKitLib Selector "setParticleMass:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setparticleMassVariation Lib SceneKitLib Selector "setParticleMassVariation:" (id as ptr, value as cgfloat)
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
		Protected Declare Sub setpropertyControllers Lib SceneKitLib Selector "setPropertyControllers:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setsortingMode Lib SceneKitLib Selector "setSortingMode:" (id as ptr, value as SCNParticleSortingMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setspeedFactor Lib SceneKitLib Selector "setSpeedFactor:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setspreadingAngle Lib SceneKitLib Selector "setSpreadingAngle:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setstretchFactor Lib SceneKitLib Selector "setStretchFactor:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setsystemSpawnedOnCollision Lib SceneKitLib Selector "setSystemSpawnedOnCollision:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setsystemSpawnedOnDying Lib SceneKitLib Selector "setSystemSpawnedOnDying:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setsystemSpawnedOnLiving Lib SceneKitLib Selector "setSystemSpawnedOnLiving:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setwarmupDuration Lib SceneKitLib Selector "setWarmupDuration:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		iOs 9.2, but could use more convenience methods
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E7374616E7420616363656C65726174696F6E20766563746F722C20696E20756E69747320706572207365636F6E6420706572207365636F6E642C206170706C69656420746F20616C6C207061727469636C657320696E207468652073797374656D2E20416E696D617461626C652E2044656661756C74207B302E302C20302E302C20302E307D
		#tag Getter
			Get
			  #if Target64Bit
			    return getacceleration(id)
			  #elseif Target32Bit
			    return getacceleration32(id).toVector3
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    setacceleration id, value
			  #elseif Target32Bit
			    setacceleration32 id, value.toVector3_32
			  #endif
			End Set
		#tag EndSetter
		Acceleration As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220677261766974792C20617320646566696E656420627920746865207363656E65E280997320706879736963732073696D756C6174696F6E2C206166666563747320746865206D6F74696F6E206F66207061727469636C65732E2044656661756C742046616C73652E
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

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722070687973696373206669656C647320696E20746865207363656E652061666665637420746865206D6F74696F6E206F66207061727469636C65732E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getaffectedByPhysicsFields(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setaffectedByPhysicsFields (id, value)
			End Set
		#tag EndSetter
		AffectedByPhysicsField As Boolean
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

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B69742072656E64657273207061727469636C657320696E20626C61636B206265666F72652072656E646572696E6720746865207061727469636C6520696D6167652E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getblackPassEnabled(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setblackPassEnabled (id, value)
			End Set
		#tag EndSetter
		BlackPassEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C656E64696E67206D6F646520666F7220636F6D706F736974696E67207061727469636C6520696D6167657320696E746F207468652072656E6465726564207363656E652E
		#tag Getter
			Get
			  return getblendMode(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setblendMode id, value
			End Set
		#tag EndSetter
		BlendMode As SCNParticleBlendMode
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F6465732077686F73652067656F6D65747279207468652073797374656DE2809973207061727469636C65732063616E20636F6C6C69646520776974682E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getcolliderNodes(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcolliderNodes id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ColliderNodes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666163746F72207468617420736C6F7773207061727469636C65732072656C617469766520746F2074686569722076656C6F636974792E20416E696D617461626C652E0A412076616C7565206F6620302E3020287468652064656661756C742920737065636966696573206E6F20736C6F77696E67E28094746861742069732C2065616368207061727469636C65206D61696E7461696E73206120636F6E7374616E742073706565642028756E6C65737320616666656374656420627920677261766974792C20616363656C65726174696F6E2C2070687973696373206669656C64732C206F72206F7468657220696E666C75656E636573292E20412076616C7565206F6620312E302070726576656E7473207061727469636C65732066726F6D206D6F76696E672E
		#tag Getter
			Get
			  return getdampingFactor(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setdampingFactor id, value
			End Set
		#tag EndSetter
		DampingFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E2C20696E207365636F6E64732C206F766572207768696368207468652073797374656D20737061776E73206E6577207061727469636C65732E20416E696D617461626C652E2044656661756C7420312E302E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865207368617065206F662074686520726567696F6E206F66207370616365207768657265207468652073797374656D20737061776E73206E6577207061727469636C65732E2044656661756C74204E494C20E280932020612073696E676C6520706F696E742E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865207265666C6563746976697479206578706F6E656E74205363656E654B69742075736573207768656E2072656E646572696E6720746865207061727469636C65E280997320696D61676520617320612063756265206D61702E20416E696D617461626C652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getfresnelExponent(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setfresnelExponent id, value
			End Set
		#tag EndSetter
		FresnelExponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E2C20696E207365636F6E64732C206F6620706572696F6473207768656E207468652073797374656D20656D697473206E6F207061727469636C65732E20416E696D617461626C652E2044656661756C7420302E302E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E696D6174696F6E206D6F646520666F72207061727469636C6520696D61676520616E696D6174696F6E2E2044656661756C74205265706561742E
		#tag Getter
			Get
			  return getimageSequenceAnimationMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimageSequenceAnimationMode id, value
			End Set
		#tag EndSetter
		ImageSequenceAnimationMode As SCNParticleImageSequenceAnimationMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620636F6C756D6E7320666F72207472656174696E6720746865207061727469636C6520696D61676520617320612067726964206F6620616E696D6174696F6E206672616D65732E
		#tag Getter
			Get
			  return getimageSequenceColumnCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimageSequenceColumnCount id, value
			End Set
		#tag EndSetter
		ImageSequenceColumnCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652C20696E206672616D657320706572207365636F6E642C206F66207061727469636C6520696D61676520616E696D6174696F6E2E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getimageSequenceFrameRate (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimageSequenceFrameRate id, value
			End Set
		#tag EndSetter
		ImageSequenceFrameRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652C20696E206672616D657320706572207365636F6E642C206F66207061727469636C6520696D61676520616E696D6174696F6E2E20416E696D617461626C652E
		#tag Getter
			Get
			  return getimageSequenceFrameRateVariation (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimageSequenceFrameRateVariation id, value
			End Set
		#tag EndSetter
		ImageSequenceFrameRateVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F6620746865206669727374206672616D6520696E2061207061727469636C6520696D61676520616E696D6174696F6E2E20416E696D617461626C652E204672616374696F6E616C2076616C7565732070726F6475636520747765656E20696D616765732E2044656661756C7420302E302C20746F70206C65667420696D6167652E
		#tag Getter
			Get
			  return getimageSequenceInitialFrame (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimageSequenceInitialFrame id, value
			End Set
		#tag EndSetter
		ImageSequenceInitialFrame As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F662072616E646F6D697A656420696E697469616C206672616D657320666F72207061727469636C6520696D61676520616E696D6174696F6E2E20416E696D617461626C652E
		#tag Getter
			Get
			  return getimageSequenceInitialFrameVariation (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimageSequenceInitialFrameVariation id, value
			End Set
		#tag EndSetter
		ImageSequenceInitialFrameVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620726F777320666F72207472656174696E6720746865207061727469636C6520696D61676520617320612067726964206F6620616E696D6174696F6E206672616D65732E
		#tag Getter
			Get
			  return getimageSequenceRowCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimageSequenceRowCount id, value
			End Set
		#tag EndSetter
		ImageSequenceRowCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyAngle as text = SystemConstantName("SCNParticlePropertyAngle", SceneKitPath)
			  return mkSCNParticlePropertyAngle
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyAngle As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyAngularVelocity as text = SystemConstantName("SCNParticlePropertyAngularVelocity", SceneKitPath)
			  return mkSCNParticlePropertyAngularVelocity
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyAngularVelocity As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyBounce as text = SystemConstantName("SCNParticlePropertyBounce", SceneKitPath)
			  return mkSCNParticlePropertyBounce
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyBounce As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyCharge as text = SystemConstantName("SCNParticlePropertyCharge", SceneKitPath)
			  return mkSCNParticlePropertyCharge
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyCharge As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyColor as text = SystemConstantName("SCNParticlePropertyColor", SceneKitPath)
			  return mkSCNParticlePropertyColor
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyColor As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyContactNormal as text = SystemConstantName("SCNParticlePropertyContactNormal", SceneKitPath)
			  return mkSCNParticlePropertyContactNormal
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyContactNormal As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyContactPoint as text = SystemConstantName("SCNParticlePropertyContactPoint", SceneKitPath)
			  return mkSCNParticlePropertyContactPoint
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyContactPoint As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyFrame as text = SystemConstantName("SCNParticlePropertyFrame", SceneKitPath)
			  return mkSCNParticlePropertyFrame
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyFrame As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyFrameRate as text = SystemConstantName("SCNParticlePropertyFrameRate", SceneKitPath)
			  return mkSCNParticlePropertyFrameRate
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyFrameRate As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyFriction as text = SystemConstantName("SCNParticlePropertyFriction", SceneKitPath)
			  return mkSCNParticlePropertyFriction
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyFriction As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyLife as text = SystemConstantName("SCNParticlePropertyLife", SceneKitPath)
			  return mkSCNParticlePropertyLife
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyLife As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyOpacity as text = SystemConstantName("SCNParticlePropertyOpacity", SceneKitPath)
			  return mkSCNParticlePropertyOpacity
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyOpacity As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyPosition as text = SystemConstantName("SCNParticlePropertyPosition", SceneKitPath)
			  return mkSCNParticlePropertyPosition
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyPosition As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyRotationAxis as text = SystemConstantName("SCNParticlePropertyRotationAxis", SceneKitPath)
			  return mkSCNParticlePropertyRotationAxis
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyRotationAxis As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertySize as text = SystemConstantName("SCNParticlePropertySize", SceneKitPath)
			  return mkSCNParticlePropertySize
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertySize As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNParticlePropertyVelocity as text = SystemConstantName("SCNParticlePropertyVelocity", SceneKitPath)
			  return mkSCNParticlePropertyVelocity
			End Get
		#tag EndGetter
		Shared kSCNParticlePropertyVelocity As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B6974206170706C696573206C69676874696E6720746F207061727469636C6520696D61676573207768656E2072656E646572696E672E
		#tag Getter
			Get
			  return getlightingEnabled(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlightingEnabled (id, value)
			End Set
		#tag EndSetter
		LightingEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207061727469636C652073696D756C6174696F6E2072756E7320696E20746865206C6F63616C20636F6F7264696E617465207370616365206F6620746865206E6F646520636F6E7461696E696E672069742E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getlocal(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlocal (id, value)
			End Set
		#tag EndSetter
		Local As Boolean
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F646520646566696E696E67207768657468657220616E6420686F77207061727469636C6573206D617920726F746174652E
		#tag Getter
			Get
			  return getorientationMode(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setorientationMode id, value
			End Set
		#tag EndSetter
		OrientationMode As SCNParticleOrientationMode
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

	#tag ComputedProperty, Flags = &h0, Description = 546865207265737469747574696F6E20636F656666696369656E74206F662065616368207061727469636C6520696E207468652073797374656D2E20416E696D617461626C652E0A412076616C7565206F6620312E302073706563696669657320746861742061207061727469636C65206C6F736573206E6F20656E6572677920696E206120636F6C6C6973696F6E2028666F72206578616D706C652C2061207061727469636C6520746861742066616C6C732066726F6D2061206365727461696E20686569676874206F6E746F206120666C6174207375726661636520626F756E636573206261636B20746F207468652073616D6520686569676874292E204C61726765722076616C756573207370656369667920656E65726779206761696E65642C20616E6420736D616C6C65722076616C75657320737065636966792061206C6F7373206F6620656E657267792E20412076616C7565206F6620302E302070726576656E7473207061727469636C65732066726F6D20626F756E63696E672E20596F752063616E2072616E646F6D697A652074686520626F756E636520666163746F7273206F66207061727469636C657320696E207468652073797374656D207769746820746865207061727469636C65426F756E6365566172696174696F6E2070726F70657274792E0A44656661756C7420302E372E
		#tag Getter
			Get
			  return getparticleBounce(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleBounce id, value
			End Set
		#tag EndSetter
		ParticleBounce As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265737469747574696F6E20636F656666696369656E74206F662065616368207061727469636C6520696E207468652073797374656D2E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleBounceVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleBounceVariation id, value
			End Set
		#tag EndSetter
		ParticleBounceVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656C656374726963206368617267652C20696E20636F756C6F6D62732C206F662065616368207061727469636C6520696E207468652073797374656D2E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleCharge(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleCharge id, value
			End Set
		#tag EndSetter
		ParticleCharge As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E67652C20696E20636F756C6F6D62732C206F662072616E646F6D697A6564207061727469636C6520636861726765732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleChargeVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleChargeVariation id, value
			End Set
		#tag EndSetter
		ParticleChargeVariation As Double
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E676573206F662072616E646F6D697A6564207061727469636C6520636F6C6F7220636F6D706F6E656E74732E20416E696D617461626C652E2056616C75657320617265206875652C2073617475726174696F6E2C206272696768746E65737320616E6420616C7068612028696E2074686973206F72646572292E
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

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207061727469636C6573206172652072656D6F7665642066726F6D20746865207363656E652075706F6E20636F6C6C6964696E67207769746820616E6F74686572206F626A6563742E
		#tag Getter
			Get
			  return getparticleDiesOnCollision (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleDiesOnCollision (id, value)
			End Set
		#tag EndSetter
		ParticleDiesOnCollision As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672696374696F6E20636F656666696369656E74206F662065616368207061727469636C6520696E207468652073797374656D2E20416E696D617461626C652E0A5468652064656661756C74206F6620312E3020616C6C6F77732061207061727469636C6520746F20736C69646520667265656C792C20616E6420612076616C7565206F6620302E302070726576656E74732061207061727469636C652066726F6D20736C6964696E672E
		#tag Getter
			Get
			  return getparticleFriction(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleFriction id, value
			End Set
		#tag EndSetter
		ParticleFriction As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F662072616E646F6D697A6564206672696374696F6E20636F656666696369656E747320666F72207061727469636C65732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleFrictionVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleFrictionVariation id, value
			End Set
		#tag EndSetter
		ParticleFrictionVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787475726520696D616765205363656E654B6974207573657320746F2072656E6465722065616368207061727469636C652E0A546865207061727469636C65436F6C6F722070726F706572747920636F6C6F72697A65732074686520696D616765206265666F72652072656E646572696E672E20596F75206D6179207370656369667920616E20204170706C65496D6167652C206F7220612054657874206F72204170706C6555524C55524C20696E7374616E636520636F6E7461696E696E67207468652070617468206F722055524C20746F20616E20696D6167652066696C652E0A4966207468652076616C7565206973206E696C20287468652064656661756C74292C205363656E654B69742072656E646572732065616368207061727469636C65206173206120736D616C6C207768697465207371756172652028636F6C6F72697A656420627920746865207061727469636C65436F6C6F722070726F7065727479292E0A546F207370656369667920612073657175656E6365206F66206672616D657320666F7220616E696D6174696E672065616368207061727469636C652C20617272616E676520746865206672616D65732061732061206772696420696E20612073696E676C6520696D6167652C207468656E20757365207468652070726F70657274696573206C697374656420696E20416E696D6174696E67205061727469636C6520496D6167657320746F206964656E74696679206672616D657320696E20746865206772696420616E64207365742074686520737065656420616E64207374796C65206F662074686520616E696D6174696F6E2E0A0A
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E2C20696E207365636F6E64732C20666F722077686963682065616368207061727469636C652069732072656E6465726564206265666F7265206265696E672072656D6F7665642066726F6D20746865207363656E652E20416E696D617461626C652E2044656661756C7420312E302E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6173732C20696E206B696C6F6772616D732C206F662065616368207061727469636C6520696E207468652073797374656D2E20416E696D617461626C652E2044656661756C7420312E302E
		#tag Getter
			Get
			  return getparticleMass(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleMass id, value
			End Set
		#tag EndSetter
		ParticleMass As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E67652C20696E206B696C6F6772616D732C206F662072616E646F6D697A6564207061727469636C65206D61737365732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getparticleMassVariation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setparticleMassVariation id, value
			End Set
		#tag EndSetter
		ParticleMassVariation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656E64657265642073697A652C20696E20756E697473206F6620746865207363656E65E280997320776F726C6420636F6F7264696E6174652073706163652C206F6620746865207061727469636C6520696D6167652E20416E696D617461626C652E2044656661756C7420312E302E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E697469616C2073706565642C20696E20756E69747320706572207365636F6E642C20666F72206E65776C7920737061776E6564207061727469636C65732E20416E696D617461626C652E2044656661756C7420302E302E
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

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792074686174206F7074696F6E616C6C79206173736F636961746573207061727469636C652070726F706572746965732077697468206F626A65637473207468617420616E696D61746520612070726F7065727479E28099732076616C756520666F722065616368207061727469636C652E200A45616368206B657920696E20746869732064696374696F6E617279206973206F6E65206F662074686520636F6E7374616E747320617661696C61626C652061732073686172656420746578742070726F70657274696573206F66207468697320636C6173732C20616E64207468652076616C756520666F722065616368206B657920697320612053434E5061727469636C6550726F7065727479436F6E74726F6C6C6572206F626A65637420726573706F6E7369626C6520666F722076617279696E6720746861742070726F7065727479206F7665722074696D652E20
		#tag Getter
			Get
			  return AppleDictionary.MakeFromPtr(getpropertyControllers(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpropertyControllers id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		PropertyControllers As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F646520646566696E696E6720746865206F7264657220696E207768696368205363656E654B69742072656E64657273207468652073797374656DE2809973207061727469636C65732E
		#tag Getter
			Get
			  return getsortingMode(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsortingMode id, value
			End Set
		#tag EndSetter
		SortingMode As SCNParticleSortingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D756C7469706C69657220666F7220746865207370656564206174207768696368205363656E654B69742072756E7320746865207061727469636C652073696D756C6174696F6E2E20416E696D617461626C652E
		#tag Getter
			Get
			  return getspeedFactor(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setspeedFactor id, value
			End Set
		#tag EndSetter
		SpeedFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E67652C20696E20646567726565732C206F662072616E646F6D697A656420696E697469616C207061727469636C6520646972656374696F6E732E20416E696D617461626C652E2044656661756C7420302E302E20486173206E6F20656666656374206966205F4269727468446972656374696F6E5F2069732053434E5061727469636C654269727468446972656374696F6E2E52616E646F6D2E
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

	#tag ComputedProperty, Flags = &h0, Description = 41206D756C7469706C69657220666F722073747265746368696E67207061727469636C6520696D6167657320616C6F6E6720746865697220646972656374696F6E206F66206D6F74696F6E2E20416E696D617461626C652E
		#tag Getter
			Get
			  return getstretchFactor(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setstretchFactor id, value
			End Set
		#tag EndSetter
		StretchFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E6F74686572207061727469636C652073797374656D20746F20626520616464656420746F20746865207363656E65207768656E2061207061727469636C6520636F6C6C696465732077697468207363656E652067656F6D657472792E
		#tag Getter
			Get
			  return AppleSCNParticleSystem.MakeFromPtr(getsystemSpawnedOnCollision(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsystemSpawnedOnCollision id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		SystemSpawnedOnCollision As AppleSCNParticleSystem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E6F74686572207061727469636C652073797374656D20746F20626520616464656420746F20746865207363656E65207768656E2061207061727469636C6520646965732E
		#tag Getter
			Get
			  return AppleSCNParticleSystem.MakeFromPtr(getsystemSpawnedOnDying(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsystemSpawnedOnDying id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		SystemSpawnedOnDying As AppleSCNParticleSystem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E6F74686572207061727469636C652073797374656D20746F20626520616464656420746F20746865207363656E6520666F722065616368206C6976696E67207061727469636C6520696E207468652073797374656D2E
		#tag Getter
			Get
			  return AppleSCNParticleSystem.MakeFromPtr(getsystemSpawnedOnLiving(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsystemSpawnedOnLiving id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		SystemSpawnedOnLiving As AppleSCNParticleSystem
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

	#tag Enum, Name = SCNParticleBlendMode, Type = Integer, Flags = &h0
		Additive
		  Subtract
		  Multiply
		  Screen
		  Alpha
		Replace
	#tag EndEnum

	#tag Enum, Name = SCNParticleEvent, Type = Integer, Flags = &h0
		Birth
		  Death
		Collision
	#tag EndEnum

	#tag Enum, Name = SCNParticleImageSequenceAnimationMode, Type = Integer, Flags = &h0
		Repeat
		  Clamp
		AutoReverse
	#tag EndEnum

	#tag Enum, Name = SCNParticleModifierStage, Type = Integer, Flags = &h0
		PreDynamics
		  PostDynamics
		  PreCollision
		PostCollision
	#tag EndEnum

	#tag Enum, Name = SCNParticleOrientationMode, Type = Integer, Flags = &h0
		ScreenAligned
		  ViewAligned
		  Free
		YAligned
	#tag EndEnum

	#tag Enum, Name = SCNParticleSortingMode, Type = Integer, Flags = &h0
		None
		  ProjectedDepth
		  Distance
		  OldestFirst
		YoungestFirst
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AffectedByGravity"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AffectedByPhysicsField"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="BlackPassEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="SCNParticleBlendMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DampingFactor"
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
			Name="FresnelExponent"
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
			Name="ImageSequenceAnimationMode"
			Group="Behavior"
			Type="SCNParticleImageSequenceAnimationMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageSequenceColumnCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageSequenceFrameRate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageSequenceFrameRateVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageSequenceInitialFrame"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageSequenceInitialFrameVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageSequenceRowCount"
			Group="Behavior"
			Type="UInteger"
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
			Name="LightingEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Local"
			Group="Behavior"
			Type="Boolean"
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
			Name="OrientationMode"
			Group="Behavior"
			Type="SCNParticleOrientationMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleAngleVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleAngularVelocity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleAngularVelocityVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleBounce"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleBounceVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleCharge"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleChargeVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleDiesOnCollision"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleFriction"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleFrictionVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleLifeSpan"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleLifeSpanVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleMass"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleMassVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleSize"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleSizeVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleVelocity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleVelocityVariation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SortingMode"
			Group="Behavior"
			Type="SCNParticleSortingMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SpeedFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SpreadingAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StretchFactor"
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
