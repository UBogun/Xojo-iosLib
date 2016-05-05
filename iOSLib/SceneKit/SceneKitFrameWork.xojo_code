#tag Module
Protected Module SceneKitFrameWork
	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addAnimation Lib SceneKitLib Selector "addAnimation:forKey:" (id as ptr, animation as ptr, key as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyForce Lib SceneKitLib Selector "applyForce:impulse:" (id as ptr, direction as SCNVector3, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyForce32 Lib SceneKitLib Selector "applyForce:impulse:" (id as ptr, direction as SCNVector3_32Bit, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyForceAtPosition Lib SceneKitLib Selector "applyForce:atPosition:impulse:" (id as ptr, direction as SCNVector3, position as SCNVector3, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyForceAtPosition32 Lib SceneKitLib Selector "applyForce:atPosition:impulse:" (id as ptr, direction as SCNVector3_32Bit, position as SCNVector3_32Bit, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyTorque Lib SceneKitLib Selector "applyTorque:impulse:" (id as ptr, torue as SCNVector4, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub applyTorque32 Lib SceneKitLib Selector "applyTorque:impulse:" (id as ptr, torque as SCNVector4_32Bit, impulse as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getactionForKey Lib SceneKitLib Selector "actionForKey:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getactionKeys Lib SceneKitLib Selector "actionKeys" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaffectedByGravity Lib SceneKitLib Selector "isAffectedByGravity" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsResting Lib SceneKitLib Selector "allowsResting" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getangularDamping Lib SceneKitLib Selector "angularDamping" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getangularVelocity Lib SceneKitLib Selector "angularVelocity" (id as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getangularVelocity32 Lib SceneKitLib Selector "angularVelocity" (id as ptr) As SCNVector4_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getangularVelocityFactor Lib SceneKitLib Selector "angularVelocityFactor" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getangularVelocityFactor32 Lib SceneKitLib Selector "angularVelocityFactor" (id as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimationForKey Lib SceneKitLib Selector "animationForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimationKeys Lib SceneKitLib Selector "animationKeys" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAttributeForKey Lib SceneKitLib Selector "attributeForKey:" (id as ptr, key as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaudioEngine Lib SceneKitLib Selector "audioEngine" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaudioListener Lib SceneKitLib Selector "audioListener" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoenablesDefaultLighting Lib SceneKitLib Selector "autoenablesDefaultLighting" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBoundingBoxMin Lib SceneKitLib Selector "getBoundingBoxMin:max:" (id as ptr, min as SCNVector3, max as scnvector3) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBoundingBoxMin32 Lib SceneKitLib Selector "getBoundingBoxMin:max:" (id as ptr, min as SCNVector3_32Bit, max as SCNVector3_32Bit) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBoundingSphereCenter Lib SceneKitLib Selector "getBoundingSphereCenter:radius:" (id as ptr, center as SCNVector3, radius as double) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBoundingSphereCenter32 Lib SceneKitLib Selector "getBoundingSphereCenter:radius:" (id as ptr, center as SCNVector3_32Bit, radius as single) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcastsShadow Lib SceneKitLib Selector "castsShadow" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcategoryBitMask Lib SceneKitLib Selector "categoryBitMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getCharge Lib SceneKitLib Selector "charge" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcollisionBitMask Lib SceneKitLib Selector "collisionBitMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactTestBitMask Lib SceneKitLib Selector "contactTestBitMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getdamping Lib SceneKitLib Selector "damping" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdebugOptions Lib SceneKitLib Selector "debugOptions" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getduration Lib SceneKitLib Selector "duration" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfilters Lib SceneKitLib Selector "filters" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfriction Lib SceneKitLib Selector "friction" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasActions Lib SceneKitLib Selector "hasActions" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getHidden Lib SceneKitLib Selector "isHidden" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisAnimationForKeyPaused Lib SceneKitLib Selector "isAnimationForKeyPaused:" (id as ptr, key as CFStringRef) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisNodeInsideFrustum Lib SceneKitLib Selector "isNodeInsideFrustum:withPointOfView:" (id as ptr, node as ptr, pov as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getJitteringEnabled Lib SceneKitLib Selector "isJitteringEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getloops Lib SceneKitLib Selector "loops" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getMass Lib SceneKitLib Selector "mass" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getmomentOfInertia Lib SceneKitLib Selector "momentOfInertia" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getmomentOfInertia32 Lib SceneKitLib Selector "momentOfInertia" (id as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnodesInsideFrustumWithPointOfView Lib SceneKitLib Selector "nodesInsideFrustumWithPointOfView:" (id as ptr, pov as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getopacity Lib SceneKitLib Selector "opacity" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getoptions Lib SceneKitLib Selector "options" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getorientation Lib SceneKitLib Selector "orientation" (id as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getorientation32 Lib SceneKitLib Selector "orientation" (id as ptr) As SCNVector4_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getorthographicScale Lib SceneKitLib Selector "orthographicScale" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getoverlaySKScene Lib SceneKitLib Selector "overlaySKScene" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getPaused Lib SceneKitLib Selector "isPaused" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getphysicsBody Lib SceneKitLib Selector "physicsBody" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getphysicsField Lib SceneKitLib Selector "physicsField" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpivot Lib SceneKitLib Selector "pivot" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getPlaying Lib SceneKitLib Selector "isPlaying" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpointOfView Lib SceneKitLib Selector "pointOfView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrate Lib SceneKitLib Selector "rate" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrendererDelegate Lib SceneKitLib Selector "rendererDelegate" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrenderingAPI Lib SceneKitLib Selector "renderingAPI" (id as ptr) As SceneKitFrameWork.SCNRenderingAPI
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrenderingOrder Lib SceneKitLib Selector "renderingOrder" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getResting Lib SceneKitLib Selector "isResting" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getrestitution Lib SceneKitLib Selector "restitution" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getreverbBlend Lib SceneKitLib Selector "reverbBlend" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getrollingFriction Lib SceneKitLib Selector "rollingFriction" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getRotation Lib SceneKitLib Selector "rotation" (id as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getRotation32 Lib SceneKitLib Selector "rotation" (id as ptr) As SCNVector4_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getscale Lib SceneKitLib Selector "scale" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getscale32 Lib SceneKitLib Selector "scale" (id as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getScene Lib SceneKitLib Selector "scene" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsceneTime Lib SceneKitLib Selector "sceneTime" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshouldStream Lib SceneKitLib Selector "shouldStream" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsStatistics Lib SceneKitLib Selector "showsStatistics" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsourceObject Lib SceneKitLib Selector "sourceObject" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getspeed Lib SceneKitLib Selector "speed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettransform Lib SceneKitLib Selector "transform" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettransforms Lib SceneKitLib Selector "transforms" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesDefaultMomentOfInertia Lib SceneKitLib Selector "usesDefaultMomentOfInertia" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getvelocity Lib SceneKitLib Selector "velocity" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getvelocity32 Lib SceneKitLib Selector "velocity" (id as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getvelocityFactor Lib SceneKitLib Selector "velocityFactor" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getvelocityFactor32 Lib SceneKitLib Selector "velocityFactor" (id as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvolume Lib SceneKitLib Selector "volume" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getworldTransform Lib SceneKitLib Selector "worldTransform" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub load Lib SceneKitLib Selector "load" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function MakeAppleValue(value as SCNVector3) As applevalue
		  #if Target64Bit
		    declare Function valueWithSCNVector3 lib SceneKitLib selector "valueWithSCNVector3:" (id as ptr, value as SCNVector3) as ptr
		    dim result as new AppleValue(valueWithSCNVector3(AppleValue.ClassPtr, value))
		    result.retainclassobject
		    return result
		  #elseif Target32Bit
		    declare Function valueWithSCNVector3 lib SceneKitLib selector "valueWithSCNVector3:" (id as ptr, value as SCNVector3_32Bit) as ptr
		    dim result as new AppleValue(valueWithSCNVector3(AppleValue.ClassPtr, value.toVector3_32))
		    result.retainclassobject
		    return result
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub pauseAnimationForKey Lib SceneKitLib Selector "pauseAnimationForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function PrepareObject Lib SceneKitLib Selector "prepareObject:shouldAbortBlock:" (id as ptr, anObject as ptr, block as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub PrepareObjects Lib SceneKitLib Selector "prepareObjects:withCompletionHandler:" (id as ptr, Objects as ptr, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function projectPoint Lib SceneKitLib Selector "projectPoint:" (id as ptr, vector as SCNVector3) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function projectPoint32 Lib SceneKitLib Selector "projectPoint:" (id as ptr, vector as SCNVector3_32Bit) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeActionForKey Lib SceneKitLib Selector "removeActionForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllActions Lib SceneKitLib Selector "removeAllActions" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllAnimations Lib SceneKitLib Selector "removeAllAnimations" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAnimationForKey Lib SceneKitLib Selector "removeAnimationForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetIOS and (Target64Bit))
		Protected Declare Sub removeAnimationForKeyFadeOut Lib SceneKitLib Selector "removeAnimationForKey:fadeOutDuration:" (id as ptr, key as CFStringRef, Duration as Double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit)) or  (TargetWeb and (Target32Bit)) or  (TargetDesktop and (Target32Bit)) or  (TargetIOS and (Target32Bit))
		Protected Declare Sub removeAnimationForKeyFadeOut Lib SceneKitLib Selector "removeAnimationForKey:fadeOutDuration:" (id as ptr, key as CFStringRef, Duration as Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub resetTransform Lib SceneKitLib Selector "resetTransform" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub resumeAnimationForKey Lib SceneKitLib Selector "resumeAnimationForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runAction Lib SceneKitLib Selector "runAction:" (id as ptr, action as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionCompletion Lib SceneKitLib Selector "runAction:completionHandler:" (id as ptr, action as ptr, completion as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionforKey Lib SceneKitLib Selector "runAction:forKey:" (id as ptr, action as ptr, forKey as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionforKeyCompletion Lib SceneKitLib Selector "runAction:forKey:completionHandler:" (id as ptr, action as ptr, forKey as cfstringRef, completion as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function SCNVector3Make(x as double, y as double, z as double) As SCNVector3
		  dim result as SCNVector3
		  result.x = x
		  result.y = y
		  result.z = z
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SCNVector3Value(extends v as AppleValue) As SCNVector3
		  #if Target64Bit
		    declare Function SCNVector3Value lib SceneKitLib selector "SCNVector3Value" (id as ptr) as SCNVector3
		    return SCNVector3Value(v.Id)
		  #elseif Target32Bit
		    declare Function SCNVector3Value lib SceneKitLib selector "SCNVector3Value" (id as ptr) as SCNVector3_32Bit
		    return SCNVector3Value(v.Id).toVector3
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SCNVector4Make(x as double, y as double, z as double, w as double) As SCNVector4
		  dim result as SCNVector4
		  result.x = x
		  result.y = y
		  result.z = z
		  result.w = w
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setaffectedByGravity Lib SceneKitLib Selector "setAffectedByGravity:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsResting Lib SceneKitLib Selector "setAllowsResting:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setangularDamping Lib SceneKitLib Selector "setAngularDamping:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setangularVelocity Lib SceneKitLib Selector "setAngularVelocity:" (id as ptr, value as SCNVector4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setangularVelocity32 Lib SceneKitLib Selector "setAngularVelocity:" (id as ptr, value as SCNVector4_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setangularVelocityFactor Lib SceneKitLib Selector "setAngularVelocityFactor:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setangularVelocityFactor32 Lib SceneKitLib Selector "setAngularVelocityFactor:" (id as ptr, value as SCNVector3_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAttributeForKey Lib SceneKitLib Selector "setAttribute:forKey:" (id as ptr, attribute as ptr, key as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setaudioListener Lib SceneKitLib Selector "setAudioListener:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAutoenablesDefaultLighting Lib SceneKitLib Selector "setAutoenablesDefaultLighting:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBoundingBoxMin Lib SceneKitLib Selector "setBoundingBoxMin:max:" (id as ptr, min as SCNVector3, max as scnvector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBoundingBoxMin32 Lib SceneKitLib Selector "setBoundingBoxMin:max:" (id as ptr, min as SCNVector3_32Bit, max as SCNVector3_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcastsShadow Lib SceneKitLib Selector "setCastsShadow:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcategoryBitMask Lib SceneKitLib Selector "setCategoryBitMask:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setcharge Lib SceneKitLib Selector "setCharge:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcollisionBitMask Lib SceneKitLib Selector "setCollisionBitMask:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontactTestBitMask Lib SceneKitLib Selector "setContactTestBitMask:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setdamping Lib SceneKitLib Selector "setDamping:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdebugOptions Lib SceneKitLib Selector "setDebugOptions:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setduration Lib SceneKitLib Selector "setDuration:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfilters Lib SceneKitLib Selector "setFilters:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfriction Lib SceneKitLib Selector "setFriction:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setHidden Lib SceneKitLib Selector "setHidden:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setJitteringEnabled Lib SceneKitLib Selector "setJitteringEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setloops Lib SceneKitLib Selector "setLoops:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setMass Lib SceneKitLib Selector "setMass:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setmomentOfInertia Lib SceneKitLib Selector "setMomentOfInertia:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setmomentOfInertia32 Lib SceneKitLib Selector "setMomentOfInertia:" (id as ptr, value as SCNVector3_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setopacity Lib SceneKitLib Selector "setOpacity:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setorientation Lib SceneKitLib Selector "setOrientation:" (id as ptr, value as SCNVector4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setOrientation32 Lib SceneKitLib Selector "setOrientation:" (id as ptr, value as SCNVector4_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setorthographicScale Lib SceneKitLib Selector "setOrthographicScale:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setoverlaySKScene Lib SceneKitLib Selector "setOverlaySKScene:" (id as ptr, alue as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPaused Lib SceneKitLib Selector "setPaused:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setphysicsBody Lib SceneKitLib Selector "setPhysicsBody:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setphysicsField Lib SceneKitLib Selector "setPhysicsField:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpivot Lib SceneKitLib Selector "setPivot:" (id as ptr, value as SCNMatrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPlaying Lib SceneKitLib Selector "setPlaying:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpointOfView Lib SceneKitLib Selector "setPointOfView:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrate Lib SceneKitLib Selector "setRate:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrendererDelegate Lib SceneKitLib Selector "setRendererDelegate:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrenderingOrder Lib SceneKitLib Selector "setRenderingOrder:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setrestitution Lib SceneKitLib Selector "setRestitution:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setreverbBlend Lib SceneKitLib Selector "setReverbBlend:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setrollingFriction Lib SceneKitLib Selector "setRollingFriction:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setRotation Lib SceneKitLib Selector "setRotation:" (id as ptr, value as SCNVector4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setRotation32 Lib SceneKitLib Selector "setRotation:" (id as ptr, value as SCNVector4_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setscale Lib SceneKitLib Selector "setScale:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setScale32 Lib SceneKitLib Selector "setScale:" (id as ptr, value as SCNVector3_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setScene Lib SceneKitLib Selector "setScene:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setSceneTime Lib SceneKitLib Selector "setSceneTime:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshouldStream Lib SceneKitLib Selector "setShouldStream:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setShowsStatistics Lib SceneKitLib Selector "setShowsStatistics:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setspeed Lib SceneKitLib Selector "setSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settransform Lib SceneKitLib Selector "setTransform:" (id as ptr, value as SCNMatrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesDefaultMomentOfInertia Lib SceneKitLib Selector "setUsesDefaultMomentOfInertia:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setvelocity Lib SceneKitLib Selector "setVelocity:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setvelocity32 Lib SceneKitLib Selector "setVelocity:" (id as ptr, value as SCNVector3_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setvelocityFactor Lib SceneKitLib Selector "setVelocityFactor:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setvelocityFactor32 Lib SceneKitLib Selector "setVelocityFactor:" (id as ptr, value as SCNVector3_32Bit)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setvolume Lib SceneKitLib Selector "setVolume:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function toVector3(extends v as SCNVector3_32Bit) As SCNVector3
		  return SCNVector3Make (v.x, v.y, v.z)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toVector3_32(extends v as SCNVector3) As SCNVector3_32Bit
		  dim result as SCNVector3_32Bit
		  result.x = v.x
		  result.y = v.y
		  result.z = v.z
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toVector4(extends v as SCNVector4_32Bit) As SCNVector4
		  return SCNVector4Make (v.x, v.y, v.z, v.w)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toVector4_32(extends v as SCNVector4) As SCNVector4_32Bit
		  dim result as SCNVector4_32Bit
		  result.x = v.x
		  result.y = v.y
		  result.z = v.z
		  result.w = v.w
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function unprojectPoint Lib SceneKitLib Selector "unprojectPoint:" (id as ptr, vector as SCNVector3) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function unprojectPoint32 Lib SceneKitLib Selector "unprojectPoint:" (id as ptr, vector as SCNVector3_32Bit) As SCNVector3_32Bit
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticBoneIndices as text = SystemConstantName("SCNGeometrySourceSemanticBoneIndices", SceneKitPath)
			  return mkSCNGeometrySourceSemanticBoneIndices
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticBoneIndices As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticBoneWeights as text = SystemConstantName("SCNGeometrySourceSemanticBoneWeights", SceneKitPath)
			  return mkSCNGeometrySourceSemanticBoneWeights
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticBoneWeights As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticColor as text = SystemConstantName("SCNGeometrySourceSemanticColor", SceneKitPath)
			  return mkSCNGeometrySourceSemanticColor
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticColor As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticEdgeCrease as text = SystemConstantName("SCNGeometrySourceSemanticEdgeCrease", SceneKitPath)
			  return mkSCNGeometrySourceSemanticEdgeCrease
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticEdgeCrease As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticTexcoord as text = SystemConstantName("SCNGeometrySourceSemanticTexcoord", SceneKitPath)
			  return mkSCNGeometrySourceSemanticTexcoord
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticTexcoord As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticVertex as text = SystemConstantName("SCNGeometrySourceSemanticVertex", SceneKitPath)
			  return mkSCNGeometrySourceSemanticVertex
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticVertex As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticVertexCrease as text = SystemConstantName("SCNGeometrySourceSemanticVertexCrease", SceneKitPath)
			  return mkSCNGeometrySourceSemanticVertexCrease
			End Get
		#tag EndGetter
		Protected kSCNGeometrySourceSemanticVertexCrease As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestBackFaceCullingKey as text = SystemConstantName("SCNHitTestBackFaceCullingKey", SceneKitPath)
			  return mkSCNHitTestBackFaceCullingKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestBackFaceCullingKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestBoundingBoxOnlyKey as text = SystemConstantName("SCNHitTestBoundingBoxOnlyKey", SceneKitPath)
			  return mkSCNHitTestBoundingBoxOnlyKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestBoundingBoxOnlyKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestClipToZRangeKey as text = SystemConstantName("SCNHitTestClipToZRangeKey", SceneKitPath)
			  return mkSCNHitTestClipToZRangeKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestClipToZRangeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestFirstFoundOnlyKey as text = SystemConstantName("SCNHitTestFirstFoundOnlyKey", SceneKitPath)
			  return mkSCNHitTestFirstFoundOnlyKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestFirstFoundOnlyKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestIgnoreChildNodesKey as text = SystemConstantName("SCNHitTestIgnoreChildNodesKey", SceneKitPath)
			  return mkSCNHitTestIgnoreChildNodesKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestIgnoreChildNodesKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestIgnoreHiddenNodesKey as text = SystemConstantName("SCNHitTestIgnoreHiddenNodesKey", SceneKitPath)
			  return mkSCNHitTestIgnoreHiddenNodesKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestIgnoreHiddenNodesKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestRootNodeKey as text = SystemConstantName("SCNHitTestRootNodeKey", SceneKitPath)
			  return mkSCNHitTestRootNodeKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestRootNodeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNHitTestSortResultsKey as text = SystemConstantName("SCNHitTestSortResultsKey", SceneKitPath)
			  return mkSCNHitTestSortResultsKey
			End Get
		#tag EndGetter
		Protected kSCNHitTestSortResultsKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNGeometrySourceSemanticNormal as text = SystemConstantName("SCNGeometrySourceSemanticNormal", SceneKitPath)
			  return mkSCNGeometrySourceSemanticNormal
			End Get
		#tag EndGetter
		Protected SCNGeometrySourceSemanticNormalk As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as  SCNMatrix4
			  result.m11 = 1.0
			  result.m22 = 1.0
			  result.m33 = 1.0
			  result.m44 = 1.0
			  return result
			End Get
		#tag EndGetter
		SCNMatrix4Identity As SCNMatrix4
	#tag EndComputedProperty


	#tag Constant, Name = SceneKitLib, Type = Text, Dynamic = False, Default = \"SceneKit.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SceneKitPath, Type = Text, Dynamic = False, Default = \"com.apple.SceneKit", Scope = Public
	#tag EndConstant


	#tag Structure, Name = SCNMatrix4, Flags = &h0
		m11 as single
		  m12 as single
		  m13 as single
		  m14 as single
		  m21 as single
		  m22 as single
		  m23 as single
		  m24 as single
		  m31 as single
		  m32 as single
		  m33 as single
		  m34 as single
		  m41 as single
		  m42 as single
		  m43 as single
		m44 as single
	#tag EndStructure

	#tag Structure, Name = SCNVector3, Flags = &h0
		x as Double
		  y as Double
		z as Double
	#tag EndStructure

	#tag Structure, Name = SCNVector3_32Bit, Flags = &h0
		x as Single
		  y as Single
		z as Single
	#tag EndStructure

	#tag Structure, Name = SCNVector4, Flags = &h0
		x as Double
		  y as Double
		  z as Double
		w as double
	#tag EndStructure

	#tag Structure, Name = SCNVector4_32Bit, Flags = &h0
		x as Single
		  y as Single
		  z as Single
		w as Single
	#tag EndStructure


	#tag Enum, Name = SCNAntialiasingMode, Type = UInteger, Flags = &h0
		None
		  Multi2X
		Multi4X
	#tag EndEnum

	#tag Enum, Name = SCNRenderingAPI, Type = UInteger, Flags = &h0
		Metal
		OpenGLES2
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
