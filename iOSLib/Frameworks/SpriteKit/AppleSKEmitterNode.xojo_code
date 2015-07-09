#tag Class
Protected Class AppleSKEmitterNode
Inherits AppleSKNode
	#tag Method, Flags = &h0
		Sub AdvanceSimulationTime(Seconds As Double)
		  Declare Sub advanceSimulationTime lib SpriteKit selector "advanceSimulationTime:" (id as ptr, time as double)
		  advanceSimulationTime id, Seconds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetSimulation()
		  Declare Sub resetSimulation lib SpriteKit selector "resetSimulation" (id as ptr)
		  resetSimulation id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKEmitterNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function emissionAngle lib spritekit selector "emissionAngle" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function emissionAngle lib spritekit selector "emissionAngle" (id as ptr) as single
			  #endif
			  return emissionAngle(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setEmissionAngle lib spritekit selector "setEmissionAngle:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setEmissionAngle lib spritekit selector "setEmissionAngle:" (id as ptr, value as single)
			  #endif
			  setEmissionAngle id, value
			  
			End Set
		#tag EndSetter
		EmissionAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function emissionAngleRange lib spritekit selector "emissionAngleRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function emissionAngleRange lib spritekit selector "emissionAngleRange" (id as ptr) as single
			  #endif
			  return emissionAngleRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setEmissionAngleRange lib spritekit selector "setEmissionAngleRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setEmissionAngleRange lib spritekit selector "setEmissionAngleRange:" (id as ptr, value as single)
			  #endif
			  setEmissionAngleRange id, value
			  
			End Set
		#tag EndSetter
		EmissionAngleRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function fieldBitMask lib SpriteKit selector "fieldBitMask" (id as ptr) as UInt32
			  return fieldBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setFieldBitMask lib SpriteKit selector "setFieldBitMask:" (id as ptr, value as UInt32)
			  setFieldBitMask id, value
			End Set
		#tag EndSetter
		FieldBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function particleAction lib spritekit selector "particleAction" (id as ptr) as Ptr
			  Return AppleSKAction.MakeFromPtr (particleAction(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setParticleAction lib spritekit selector "setParticleAction:" (id as ptr, value as Ptr)
			  setParticleAction id, value.id
			  
			End Set
		#tag EndSetter
		ParticleAction As AppleSKAction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleAlpha lib spritekit selector "particleAlpha" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleAlpha lib spritekit selector "particleAlpha" (id as ptr) as single
			  #endif
			  return particleAlpha(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleAlpha lib spritekit selector "setParticleAlpha:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleAlpha lib spritekit selector "setParticleAlpha:" (id as ptr, value as single)
			  #endif
			  setParticleAlpha id, value
			  
			End Set
		#tag EndSetter
		ParticleAlpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleAlphaRange lib spritekit selector "particleAlphaRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleAlphaRange lib spritekit selector "particleAlphaRange" (id as ptr) as single
			  #endif
			  return particleAlphaRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleAlphaRange lib spritekit selector "setParticleAlphaRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleAlphaRange lib spritekit selector "setParticleAlphaRange:" (id as ptr, value as single)
			  #endif
			  setParticleAlphaRange id, value
			  
			End Set
		#tag EndSetter
		ParticleAlphaRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleAlphaSpeed lib spritekit selector "particleAlphaSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleAlphaSpeed lib spritekit selector "particleAlphaSpeed" (id as ptr) as single
			  #endif
			  return particleAlphaSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleAlphaSpeed lib spritekit selector "setParticleAlphaSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleAlphaSpeed lib spritekit selector "setParticleAlphaSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleAlphaSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleAlphaSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleBirthRate lib spritekit selector "particleBirthRate" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleBirthRate lib spritekit selector "particleBirthRate" (id as ptr) as single
			  #endif
			  return particleBirthRate(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleBirthRate lib spritekit selector "setParticleBirthRate:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleBirthRate lib spritekit selector "setParticleBirthRate:" (id as ptr, value as single)
			  #endif
			  setParticleBirthRate id, value
			  
			End Set
		#tag EndSetter
		ParticleBirthRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function particleBlendMode lib SpriteKit selector "particleBlendMode" (id as ptr) as SKBlendMode
			  return particleBlendMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setParticleBlendMode lib SpriteKit selector "setParticleBlendMode:" (id as ptr, value as SKBlendMode)
			  setParticleBlendMode (id, value)
			End Set
		#tag EndSetter
		ParticleBlendMode As SKBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function particleColor lib spritekit selector "particleColor" (id as ptr) as Ptr
			  Return AppleColor.MakeFromPtr (particleColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setParticleColor lib spritekit selector "setParticleColor:" (id as ptr, value as Ptr)
			  setParticleColor id, value.id
			  
			End Set
		#tag EndSetter
		ParticleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorAlphaRange lib spritekit selector "particleColorAlphaRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorAlphaRange lib spritekit selector "particleColorAlphaRange" (id as ptr) as single
			  #endif
			  return particleColorAlphaRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorAlphaRange lib spritekit selector "setParticleColorAlphaRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorAlphaRange lib spritekit selector "setParticleColorAlphaRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorAlphaRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorAlphaRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorAlphaSpeed lib spritekit selector "particleColorAlphaSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorAlphaSpeed lib spritekit selector "particleColorAlphaSpeed" (id as ptr) as single
			  #endif
			  return particleColorAlphaSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorAlphaSpeed lib spritekit selector "setParticleColorAlphaSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorAlphaSpeed lib spritekit selector "setParticleColorAlphaSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorAlphaSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorAlphaSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlendFactor lib spritekit selector "particleColorBlendFactor" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlendFactor lib spritekit selector "particleColorBlendFactor" (id as ptr) as single
			  #endif
			  return particleColorBlendFactor(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlendFactor lib spritekit selector "setParticleColorBlendFactor:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlendFactor lib spritekit selector "setParticleColorBlendFactor:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlendFactor id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlendFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlendFactorRange lib spritekit selector "particleColorBlendFactorRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlendFactorRange lib spritekit selector "particleColorBlendFactorRange" (id as ptr) as single
			  #endif
			  return particleColorBlendFactorRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlendFactorRange lib spritekit selector "setParticleColorBlendFactorRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlendFactorRange lib spritekit selector "setParticleColorBlendFactorRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlendFactorRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlendFactorRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlendFactorSpeed lib spritekit selector "particleColorBlendFactorSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlendFactorSpeed lib spritekit selector "particleColorBlendFactorSpeed" (id as ptr) as single
			  #endif
			  return particleColorBlendFactorSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlendFactorSpeed lib spritekit selector "setParticleColorBlendFactorSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlendFactorSpeed lib spritekit selector "setParticleColorBlendFactorSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlendFactorSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlendFactorSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlueRange lib spritekit selector "particleColorBlueRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlueRange lib spritekit selector "particleColorBlueRange" (id as ptr) as single
			  #endif
			  return particleColorBlueRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlueRange lib spritekit selector "setParticleColorBlueRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlueRange lib spritekit selector "setParticleColorBlueRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlueRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlueRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorBlueSpeed lib spritekit selector "particleColorBlueSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorBlueSpeed lib spritekit selector "particleColorBlueSpeed" (id as ptr) as single
			  #endif
			  return particleColorBlueSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorBlueSpeed lib spritekit selector "setParticleColorBlueSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorBlueSpeed lib spritekit selector "setParticleColorBlueSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorBlueSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorBlueSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorGreenRange lib spritekit selector "particleColorGreenRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorGreenRange lib spritekit selector "particleColorGreenRange" (id as ptr) as single
			  #endif
			  return particleColorGreenRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorGreenRange lib spritekit selector "setParticleColorGreenRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorGreenRange lib spritekit selector "setParticleColorGreenRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorGreenRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorGreenRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorGreenSpeed lib spritekit selector "particleColorGreenSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorGreenSpeed lib spritekit selector "particleColorGreenSpeed" (id as ptr) as single
			  #endif
			  return particleColorGreenSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorGreenSpeed lib spritekit selector "setParticleColorGreenSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorGreenSpeed lib spritekit selector "setParticleColorGreenSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorGreenSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorGreenSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorRedRange lib spritekit selector "particleColorRedRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorRedRange lib spritekit selector "particleColorRedRange" (id as ptr) as single
			  #endif
			  return particleColorRedRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorRedRange lib spritekit selector "setParticleColorRedRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorRedRange lib spritekit selector "setParticleColorRedRange:" (id as ptr, value as single)
			  #endif
			  setParticleColorRedRange id, value
			  
			End Set
		#tag EndSetter
		ParticleColorRedRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleColorRedSpeed lib spritekit selector "particleColorRedSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleColorRedSpeed lib spritekit selector "particleColorRedSpeed" (id as ptr) as single
			  #endif
			  return particleColorRedSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleColorRedSpeed lib spritekit selector "setParticleColorRedSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleColorRedSpeed lib spritekit selector "setParticleColorRedSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleColorRedSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleColorRedSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleLifetime lib spritekit selector "particleLifetime" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleLifetime lib spritekit selector "particleLifetime" (id as ptr) as single
			  #endif
			  return particleLifetime(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleLifetime lib spritekit selector "setParticleLifetime:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleLifetime lib spritekit selector "setParticleLifetime:" (id as ptr, value as single)
			  #endif
			  setParticleLifetime id, value
			  
			End Set
		#tag EndSetter
		ParticleLifetime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleLifetimeRange lib spritekit selector "particleLifetimeRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleLifetimeRange lib spritekit selector "particleLifetimeRange" (id as ptr) as single
			  #endif
			  return particleLifetimeRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleLifetimeRange lib spritekit selector "setParticleLifetimeRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleLifetimeRange lib spritekit selector "setParticleLifetimeRange:" (id as ptr, value as single)
			  #endif
			  setParticleLifetimeRange id, value
			  
			End Set
		#tag EndSetter
		ParticleLifetimeRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particlePosition lib spritekit selector "particlePosition" (id as ptr) as NSPoint
			    return particlePosition (id)
			  #elseif Target32Bit
			    declare function particlePosition lib spritekit selector "particlePosition" (id as ptr) as NSPoint32Bit
			    return particlePosition(id).toNSPoint
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticlePosition lib spritekit selector "setParticlePosition:" (id as ptr, value as NSPoint)
			    setParticlePosition id, value
			  #elseif Target32Bit
			    declare sub setParticlePosition lib spritekit selector "setParticlePosition:" (id as ptr, value as NSPoint32Bit)
			    setParticlePosition id, value.toNSPoint32
			  #endif
			  
			End Set
		#tag EndSetter
		ParticlePosition As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particlePositionRange lib spritekit selector "particlePositionRange" (id as ptr) as CGVector
			    return particlePositionRange (id)
			  #elseif Target32Bit
			    declare function particlePositionRange lib spritekit selector "particlePositionRange" (id as ptr) as CGVector32Bit
			    return particlePositionRange(id).toCGVector
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticlePositionRange lib spritekit selector "setParticlePositionRange:" (id as ptr, value as CGVector)
			    setParticlePositionRange id, value
			  #elseif Target32Bit
			    declare sub setParticlePositionRange lib spritekit selector "setParticlePositionRange:" (id as ptr, value as CGVector32Bit)
			    setParticlePositionRange id, value.toCGVector32
			  #endif
			  
			End Set
		#tag EndSetter
		ParticlePositionRange As CGVector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleRotation lib spritekit selector "particleRotation" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleRotation lib spritekit selector "particleRotation" (id as ptr) as single
			  #endif
			  return particleRotation(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleRotation lib spritekit selector "setParticleRotation:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleRotation lib spritekit selector "setParticleRotation:" (id as ptr, value as single)
			  #endif
			  setParticleRotation id, value
			  
			End Set
		#tag EndSetter
		ParticleRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleRotationRange lib spritekit selector "particleRotationRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleRotationRange lib spritekit selector "particleRotationRange" (id as ptr) as single
			  #endif
			  return particleRotationRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleRotationRange lib spritekit selector "setParticleRotationRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleRotationRange lib spritekit selector "setParticleRotationRange:" (id as ptr, value as single)
			  #endif
			  setParticleRotationRange id, value
			  
			End Set
		#tag EndSetter
		ParticleRotationRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleRotationSpeed lib spritekit selector "particleRotationSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleRotationSpeed lib spritekit selector "particleRotationSpeed" (id as ptr) as single
			  #endif
			  return particleRotationSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleRotationSpeed lib spritekit selector "setParticleRotationSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleRotationSpeed lib spritekit selector "setParticleRotationSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleRotationSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleRotationSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleScale lib spritekit selector "particleScale" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleScale lib spritekit selector "particleScale" (id as ptr) as single
			  #endif
			  return particleScale(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleScale lib spritekit selector "setParticleScale:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleScale lib spritekit selector "setParticleScale:" (id as ptr, value as single)
			  #endif
			  setParticleScale id, value
			  
			End Set
		#tag EndSetter
		ParticleScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleScaleRange lib spritekit selector "particleScaleRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleScaleRange lib spritekit selector "particleScaleRange" (id as ptr) as single
			  #endif
			  return particleScaleRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleScaleRange lib spritekit selector "setParticleScaleRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleScaleRange lib spritekit selector "setParticleScaleRange:" (id as ptr, value as single)
			  #endif
			  setParticleScaleRange id, value
			  
			End Set
		#tag EndSetter
		ParticleScaleRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleScaleSpeed lib spritekit selector "particleScaleSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleScaleSpeed lib spritekit selector "particleScaleSpeed" (id as ptr) as single
			  #endif
			  return particleScaleSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleScaleSpeed lib spritekit selector "setParticleScaleSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleScaleSpeed lib spritekit selector "setParticleScaleSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleScaleSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleScaleSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleSize lib spritekit selector "particleSize" (id as ptr) as NSSize
			    return particleSize (id)
			  #elseif Target32Bit
			    declare function particleSize lib spritekit selector "particleSize" (id as ptr) as NSSize32Bit
			    return particleSize(id).toNSSize
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleSize lib spritekit selector "setParticleSize:" (id as ptr, value as NSSize)
			    setParticleSize id, value
			  #elseif Target32Bit
			    declare sub setParticleSize lib spritekit selector "setParticleSize:" (id as ptr, value as NSSize32Bit)
			    setParticleSize id, value.toNSSize32
			  #endif
			  
			End Set
		#tag EndSetter
		ParticleSize As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleSpeed lib spritekit selector "particleSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleSpeed lib spritekit selector "particleSpeed" (id as ptr) as single
			  #endif
			  return particleSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleSpeed lib spritekit selector "setParticleSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleSpeed lib spritekit selector "setParticleSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleSpeedRange lib spritekit selector "particleSpeedRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleSpeedRange lib spritekit selector "particleSpeedRange" (id as ptr) as single
			  #endif
			  return particleSpeedRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleSpeedRange lib spritekit selector "setParticleSpeedRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleSpeedRange lib spritekit selector "setParticleSpeedRange:" (id as ptr, value as single)
			  #endif
			  setParticleSpeedRange id, value
			  
			End Set
		#tag EndSetter
		ParticleSpeedRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function numParticlesToEmit lib spritekit selector "numParticlesToEmit" (id as ptr) as UInteger
			  return numParticlesToEmit (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setNumParticlesToEmit lib spritekit selector "setNumParticlesToEmit:" (id as ptr, value as uinteger)
			  setNumParticlesToEmit id, value
			  
			End Set
		#tag EndSetter
		ParticlesToEmit As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function particleTexture lib spritekit selector "particleTexture" (id as ptr) as ptr
			  return AppleSKTexture.MakeFromPtr (particleTexture (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setParticleTexture lib spritekit selector "setParticleTexture:" (id as ptr, value as ptr)
			  setParticleTexture id, value.id
			  
			End Set
		#tag EndSetter
		ParticleTexture As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleZPosition lib spritekit selector "particleZPosition" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleZPosition lib spritekit selector "particleZPosition" (id as ptr) as single
			  #endif
			  return particleZPosition(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleZPosition lib spritekit selector "setParticleZPosition:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleZPosition lib spritekit selector "setParticleZPosition:" (id as ptr, value as single)
			  #endif
			  setParticleZPosition id, value
			  
			End Set
		#tag EndSetter
		ParticleZPosition As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleZPositionRange lib spritekit selector "particleZPositionRange" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleZPositionRange lib spritekit selector "particleZPositionRange" (id as ptr) as single
			  #endif
			  return particleZPositionRange(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleZPositionRange lib spritekit selector "setParticleZPositionRange:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleZPositionRange lib spritekit selector "setParticleZPositionRange:" (id as ptr, value as single)
			  #endif
			  setParticleZPositionRange id, value
			  
			End Set
		#tag EndSetter
		ParticleZPositionRange As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function particleZPositionSpeed lib spritekit selector "particleZPositionSpeed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function particleZPositionSpeed lib spritekit selector "particleZPositionSpeed" (id as ptr) as single
			  #endif
			  return particleZPositionSpeed(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setParticleZPositionSpeed lib spritekit selector "setParticleZPositionSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setParticleZPositionSpeed lib spritekit selector "setParticleZPositionSpeed:" (id as ptr, value as single)
			  #endif
			  setParticleZPositionSpeed id, value
			  
			End Set
		#tag EndSetter
		ParticleZPositionSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function shader lib spritekit selector "shader" (id as ptr) as ptr
			  return AppleSKShader.MakeFromPtr (shader (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShader lib spritekit selector "setShader:" (id as ptr, value as ptr)
			  setShader id, value.id
			  
			End Set
		#tag EndSetter
		Shader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function targetNode lib spritekit selector "targetNode" (id as ptr) as ptr
			  return AppleSKNode.MakeFromPtr (targetNode (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setTargetNode lib spritekit selector "setTargetNode:" (id as ptr, value as ptr)
			  setTargetNode id, value.id
			  
			End Set
		#tag EndSetter
		TargetNode As AppleSKNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function xAcceleration lib spritekit selector "xAcceleration" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function xAcceleration lib spritekit selector "xAcceleration" (id as ptr) as single
			  #endif
			  return xAcceleration(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setXAcceleration lib spritekit selector "setXAcceleration:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setXAcceleration lib spritekit selector "setXAcceleration:" (id as ptr, value as single)
			  #endif
			  setXAcceleration id, value
			  
			End Set
		#tag EndSetter
		XAcceleration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function yAcceleration lib spritekit selector "yAcceleration" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function yAcceleration lib spritekit selector "yAcceleration" (id as ptr) as single
			  #endif
			  return yAcceleration(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setYAcceleration lib spritekit selector "setYAcceleration:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setYAcceleration lib spritekit selector "setYAcceleration:" (id as ptr, value as single)
			  #endif
			  setYAcceleration id, value
			  
			End Set
		#tag EndSetter
		YAcceleration As Double
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
			Name="EmissionAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EmissionAngleRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FieldBitMask"
			Group="Behavior"
			Type="UInt32"
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
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
			Name="ParticleAlpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleAlphaRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleAlphaSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleBirthRate"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleBlendMode"
			Group="Behavior"
			Type="SKBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - MultiplyX2"
				"5 - Screen"
				"6 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorAlphaRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorAlphaSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlendFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlendFactorRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlendFactorSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlueRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorBlueSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorGreenRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorGreenSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorRedRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleColorRedSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleLifetime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleLifetimeRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleRotationRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleRotationSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleScaleRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleScaleSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleSpeedRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticlesToEmit"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleZPositionRange"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticleZPositionSpeed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
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
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XAcceleration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YAcceleration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
