#tag Class
Protected Class AppleSKPhysicsBody
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub ApplyAngularImpulse(Impulse as double)
		  #if Target64Bit
		    Declare sub applyAngularImpulse lib SpriteKit selector "applyAngularImpulse:" (id as ptr, force as double)
		    applyAngularImpulse id, Impulse
		  #elseif Target32Bit
		    Declare sub applyAngularImpulse lib SpriteKit selector "applyAngularImpulse:" (id as ptr, force as single)
		    applyAngularImpulse id, Impulse
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplyForce(Vector as CGVector)
		  #if Target64Bit
		    Declare sub applyForce lib SpriteKit selector "applyForce:" (id as ptr, force as CGVector)
		    ApplyForce id, Vector
		  #elseif Target32Bit
		    Declare sub applyForce lib SpriteKit selector "applyForce:" (id as ptr, force as CGVector32Bit)
		    ApplyForce id, Vector.toCGVector32
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplyForce(Vector as CGVector, atPoint as NSPoint)
		  #if Target64Bit
		    Declare sub applyForceatPoint lib SpriteKit selector "applyForce:atPoint:" (id as ptr, force as CGVector, atPoint as NSPoint)
		    applyForceatPoint id, Vector, atPoint
		  #elseif Target32Bit
		    Declare sub applyForceatPoint lib SpriteKit selector "applyForce:atPoint:" (id as ptr, force as CGVector32Bit, apoint as NSPoint32Bit)
		    applyForceatPoint id, Vector.toCGVector32, atPoint.toNSPoint32
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplyImpulse(Vector as CGVector)
		  #if Target64Bit
		    Declare sub applyImpulse lib SpriteKit selector "applyImpulse:" (id as ptr, force as CGVector)
		    applyImpulse id, Vector
		  #elseif Target32Bit
		    Declare sub applyImpulse lib SpriteKit selector "applyImpulse:" (id as ptr, force as CGVector32Bit)
		    applyImpulse id, Vector.toCGVector32
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplyImpulse(Vector as CGVector, atPoint as NSPoint)
		  #if Target64Bit
		    Declare sub applyImpulseatPoint lib SpriteKit selector "applyImpulse:atPoint:" (id as ptr, force as CGVector, apoint as NSPoint)
		    applyImpulseatPoint id, Vector, atPoint
		  #elseif Target32Bit
		    Declare sub applyImpulseatPoint lib SpriteKit selector "applyImpulse:atPoint:" (id as ptr, force as CGVector32Bit, atPoint as NSPoint32Bit)
		    applyImpulseatPoint id, Vector.toCGVector32, atPoint.toNSPoint32
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplyTorque(Torque as double)
		  #if Target64Bit
		    Declare sub applyTorque lib SpriteKit selector "applyTorque:" (id as ptr, force as double)
		  #elseif Target32Bit
		    Declare sub applyTorque lib SpriteKit selector "applyTorque:" (id as ptr, force as single)
		  #endif
		  applyTorque id, torque
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(BodyArray as AppleArray)
		  declare Function bodyWithBodies lib SpriteKit selector "bodyWithBodies:" (id as ptr,  bodies as ptr) as ptr
		  super.Constructor (bodyWithBodies (ClassPtr, BodyArray.id))
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Polygon as AppleCGPath)
		  declare Function bodyWithPolygonFromPath lib SpriteKit selector "bodyWithPolygonFromPath:" (id as ptr,  bodies as ptr) as ptr
		  super.Constructor (bodyWithPolygonFromPath (ClassPtr, Polygon.CFTypeRef))
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Node As AppleSKNode)
		  Constructor (node.Frame.Size_)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Texture As AppleSKTexture)
		  Constructor (Texture, Texture.Size)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Texture As AppleSKTexture, size as NSSize)
		  #if Target64Bit
		    declare Function bodyWithTexture lib SpriteKit selector "bodyWithTexture:size:" (id as ptr,  Texture as Ptr, asize as NSSize) as ptr
		    super.Constructor (bodyWithTexture (ClassPtr, texture.id, size))
		  #elseif Target32Bit
		    declare Function bodyWithTexture lib SpriteKit selector "bodyWithTexture:size:" (id as ptr,  Texture As Ptr, asize as NSSize32Bit) as ptr
		    super.Constructor (bodyWithTexture (ClassPtr, texture.id, size.toNSSize32))
		  #endif
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Texture As AppleSKTexture, AlphaTreshold as single)
		  Constructor (Texture, AlphaTreshold, Texture.Size)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Texture As AppleSKTexture, AlphaTreshold as single, size as NSSize)
		  #if Target64Bit
		    declare Function bodyWithTexturealphaThreshold lib SpriteKit selector "bodyWithTexture:alphaThreshold:size:" (id as ptr,  Texture as Ptr, alphaThreshold as single, asize as NSSize) as ptr
		    super.Constructor (bodyWithTexturealphaThreshold (ClassPtr, texture.id, AlphaTreshold, size))
		  #elseif Target32Bit
		    declare Function bodyWithTexturealphaThreshold lib SpriteKit selector "bodyWithTexture:alphaThreshold:size:" (id as ptr,  Texture As Ptr, alphaThreshold as single, asize as NSSize32Bit) as ptr
		    super.Constructor (bodyWithTexturealphaThreshold (ClassPtr, texture.id, AlphaTreshold, size.toNSSize32))
		  #endif
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Radius as Double)
		  #if Target64Bit
		    declare Function bodyWithCircleOfRadius lib SpriteKit selector "bodyWithCircleOfRadius:" (id as ptr,  asize as double) as ptr
		  #elseif Target32Bit
		    declare Function bodyWithCircleOfRadius lib SpriteKit selector "bodyWithCircleOfRadius:" (id as ptr,  asize as single) as ptr
		  #endif
		  super.Constructor (bodyWithCircleOfRadius (ClassPtr, radius))
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Radius as Double, Center as NSPoint)
		  #if Target64Bit
		    declare Function bodyWithCircleOfRadiusCenter lib SpriteKit selector "bodyWithCircleOfRadius:center:" (id as ptr,  asize as double, center as NSPoint) as ptr
		    super.Constructor (bodyWithCircleOfRadiusCenter (ClassPtr, radius, center))
		  #elseif Target32Bit
		    declare Function bodyWithCircleOfRadiusCenter lib SpriteKit selector "bodyWithCircleOfRadius:center:" (id as ptr,  asize as single, center as NSPoint32Bit) as ptr
		    super.Constructor (bodyWithCircleOfRadiusCenter (ClassPtr, radius, center.toNSPoint32))
		  #endif
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aSize as nssize)
		  #if Target64Bit
		    declare Function bodyWithRectangleOfSize lib SpriteKit selector "bodyWithRectangleOfSize:" (id as ptr,  asize as nssize) as ptr
		    super.Constructor (bodyWithRectangleOfSize (ClassPtr, asize))
		  #elseif Target32Bit
		    declare Function bodyWithRectangleOfSize lib SpriteKit selector "bodyWithRectangleOfSize:" (id as ptr,  asize as NSSize32Bit) as ptr
		    super.Constructor (bodyWithRectangleOfSize (ClassPtr, asize.toNSSize32))
		  #endif
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aSize as nssize, Center as NSPoint)
		  #if Target64Bit
		    declare Function bodyWithRectangleOfSizeCenter lib SpriteKit selector "bodyWithRectangleOfSize:center:" (id as ptr,  asize as nssize, center as NSPoint) as ptr
		    super.Constructor (bodyWithRectangleOfSizeCenter (ClassPtr, asize, center))
		  #elseif Target32Bit
		    declare Function bodyWithRectangleOfSizeCenter lib SpriteKit selector "bodyWithRectangleOfSize:center:" (id as ptr,  asize as NSSize32Bit, center as NSPoint32Bit) as ptr
		    super.Constructor (bodyWithRectangleOfSizeCenter (ClassPtr, asize.toNSSize32, center.toNSPoint32))
		  #endif
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function EdgeChain(aPath as AppleCGPath) As AppleSKPhysicsBody
		  declare Function bodyWithEdgeChainFromPath lib SpriteKit selector "bodyWithEdgeChainFromPath:" (id as ptr,  aPath as Ptr) as ptr
		  dim result as new AppleSKPhysicsBody (bodyWithEdgeChainFromPath (ClassPtr, aPath.CFTypeRef))
		  Result.retainClassObject
		  return result
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function EdgeLoop(aPath as AppleCGPath) As AppleSKPhysicsBody
		  declare Function bodyWithEdgeLoopFromPath lib SpriteKit selector "bodyWithEdgeLoopFromPath:" (id as ptr,  aPath as Ptr) as ptr
		  dim result as  new AppleSKPhysicsBody (bodyWithEdgeLoopFromPath (ClassPtr, aPath.CFTypeRef))
		  result.RetainClassObject
		  return result
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function EdgeLoop(P1 as NSPoint, P2 as NSPoint) As AppleSKPhysicsBody
		  dim result as AppleSKPhysicsBody
		  #if Target64Bit
		    declare Function bodyWithEdgeFromPoint lib SpriteKit selector "bodyWithEdgeFromPoint:toPoint:" (id as ptr,  P1 as NSPoint, P2 as NSPoint) as ptr
		    result = new AppleSKPhysicsBody (bodyWithEdgeFromPoint (ClassPtr, P1, P2))
		  #elseif Target32Bit
		    declare Function bodyWithEdgeFromPoint lib SpriteKit selector "bodyWithEdgeFromPoint:toPoint:" (id as ptr,  P1 as NSPoint32Bit, P2 as NSPoint32Bit) as ptr
		    result = new AppleSKPhysicsBody (bodyWithEdgeFromPoint (ClassPtr, P1.toNSPoint32, P2.toNSPoint32))
		  #endif
		  result.RetainClassObject
		  return result
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function EdgeLoop(aRect as NSRect) As AppleSKPhysicsBody
		  dim result as AppleSKPhysicsBody
		  #if Target64Bit
		    declare Function bodyWithEdgeLoopFromRect lib SpriteKit selector "bodyWithEdgeLoopFromRect:" (id as ptr,  asize as nsrect) as ptr
		    result = new AppleSKPhysicsBody (bodyWithEdgeLoopFromRect (ClassPtr, arect))
		  #elseif Target32Bit
		    declare Function bodyWithEdgeLoopFromRect lib SpriteKit selector "bodyWithEdgeLoopFromRect:" (id as ptr,  asize as NSRect32Bit) as ptr
		    result = new AppleSKPhysicsBody (bodyWithEdgeLoopFromRect (ClassPtr, arect.toNSRect32))
		  #endif
		  result.RetainClassObject
		  return result
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor(SKSFileName as CFStringREf) -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKPhysicsBody
		  Return if (aptr = NIL, NIL, new AppleSKPhysicsBody (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function affectedByGravity lib SpriteKit selector "affectedByGravity" (id as ptr) as boolean
			  return affectedByGravity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setAffectedByGravity lib SpriteKit selector "setAffectedByGravity:" (id as ptr, value as Boolean)
			  setAffectedByGravity id, value
			End Set
		#tag EndSetter
		AffectedByGravity As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function allContactedBodies lib SpriteKit selector "allContactedBodies" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (allContactedBodies(id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setAllContactedBodies lib SpriteKit selector "setAllContactedBodies:" (id as ptr, value as ptr)
			  setAllContactedBodies id, value.id
			End Set
		#tag EndSetter
		AllContactedBodies As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function allowsRotation lib SpriteKit selector "allowsRotation" (id as ptr) as boolean
			  return allowsRotation (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setAllowsRotation lib SpriteKit selector "setAllowsRotation:" (id as ptr, value as Boolean)
			  setAllowsRotation id, value
			End Set
		#tag EndSetter
		AllowsRotation As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function angularDamping lib SpriteKit selector "angularDamping" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function angularDamping lib SpriteKit selector "angularDamping" (id as ptr) as Single
			  #endif
			  return angularDamping (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setAngularDamping lib SpriteKit selector "setAngularDamping:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setAngularDamping lib SpriteKit selector "setAngularDamping:" (id as ptr, value as Single)
			  #endif
			  setAngularDamping id, value
			End Set
		#tag EndSetter
		AngularDamping As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function angularVelocity lib SpriteKit selector "angularVelocity" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function angularVelocity lib SpriteKit selector "angularVelocity" (id as ptr) as Single
			  #endif
			  return angularVelocity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setAngularVelocity lib SpriteKit selector "setAngularVelocity:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setAngularVelocity lib SpriteKit selector "setAngularVelocity:" (id as ptr, value as Single)
			  #endif
			  setAngularVelocity id, value
			End Set
		#tag EndSetter
		AngularVelocity As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function area lib SpriteKit selector "area" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function area lib SpriteKit selector "area" (id as ptr) as Single
			  #endif
			  return area (id)
			  
			End Get
		#tag EndGetter
		Area As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function categoryBitMask lib SpriteKit selector "categoryBitMask" (id as ptr) as UInt32
			  return categoryBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setCategoryBitMask lib SpriteKit selector "setCategoryBitMask:" (id as ptr, value as UInt32)
			  setCategoryBitMask id, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function charge lib SpriteKit selector "charge" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function charge lib SpriteKit selector "charge" (id as ptr) as Single
			  #endif
			  return charge (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setCharge lib SpriteKit selector "setCharge:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setCharge lib SpriteKit selector "setCharge:" (id as ptr, value as Single)
			  #endif
			  setCharge id, value
			End Set
		#tag EndSetter
		Charge As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKPhysicsBody")
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
			  declare Function collisionBitMask lib SpriteKit selector "collisionBitMask" (id as ptr) as UInt32
			  return collisionBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setCollisionBitMask lib SpriteKit selector "setCollisionBitMask:" (id as ptr, value as UInt32)
			  setCollisionBitMask id, value
			End Set
		#tag EndSetter
		CollisionBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function contactTestBitMask lib SpriteKit selector "contactTestBitMask" (id as ptr) as UInt32
			  return contactTestBitMask (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setContactTestBitMask lib SpriteKit selector "setContactTestBitMask:" (id as ptr, value as UInt32)
			  setContactTestBitMask id, value
			End Set
		#tag EndSetter
		ContactTestBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function density lib SpriteKit selector "density" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function density lib SpriteKit selector "density" (id as ptr) as Single
			  #endif
			  return density (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setDensity lib SpriteKit selector "setDensity:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setDensity lib SpriteKit selector "setDensity:" (id as ptr, value as Single)
			  #endif
			  setDensity id, value
			End Set
		#tag EndSetter
		Density As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function isDynamic lib SpriteKit selector "isDynamic" (id as ptr) as boolean
			  return isDynamic (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setDynamic lib SpriteKit selector "setDynamic:" (id as ptr, value as Boolean)
			  setDynamic id, value
			End Set
		#tag EndSetter
		Dynamic As Boolean
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
			  #if Target64Bit
			    declare Function friction lib SpriteKit selector "friction" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function friction lib SpriteKit selector "friction" (id as ptr) as Single
			  #endif
			  return friction (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setFriction lib SpriteKit selector "setFriction:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setFriction lib SpriteKit selector "setFriction:" (id as ptr, value as Single)
			  #endif
			  setFriction id, value
			End Set
		#tag EndSetter
		Friction As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function joints lib SpriteKit selector "joints" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (joints(id))
			  
			End Get
		#tag EndGetter
		Joints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function linearDamping lib SpriteKit selector "linearDamping" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function linearDamping lib SpriteKit selector "linearDamping" (id as ptr) as Single
			  #endif
			  return linearDamping (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setLinearDamping lib SpriteKit selector "setLinearDamping:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setLinearDamping lib SpriteKit selector "setLinearDamping:" (id as ptr, value as Single)
			  #endif
			  setLinearDamping id, value
			End Set
		#tag EndSetter
		LinearDamping As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function mass lib SpriteKit selector "mass" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function mass lib SpriteKit selector "mass" (id as ptr) as Single
			  #endif
			  return mass (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setMass lib SpriteKit selector "setMass:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setMass lib SpriteKit selector "setMass:" (id as ptr, value as Single)
			  #endif
			  setmass id, value
			End Set
		#tag EndSetter
		Mass As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function node lib SpriteKit selector "node" (id as ptr) as ptr
			  return AppleSKNode.MakeFromPtr (node(id))
			  
			End Get
		#tag EndGetter
		Node As AppleSKNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function pinned lib SpriteKit selector "pinned" (id as ptr) as boolean
			  return pinned (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setPinned lib SpriteKit selector "setPinned:" (id as ptr, value as Boolean)
			  setPinned id, value
			End Set
		#tag EndSetter
		Pinned As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function usesPreciseCollisionDetection lib SpriteKit selector "usesPreciseCollisionDetection" (id as ptr) as boolean
			  return usesPreciseCollisionDetection (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setUsesPreciseCollisionDetection lib SpriteKit selector "setUsesPreciseCollisionDetection:" (id as ptr, value as Boolean)
			  setUsesPreciseCollisionDetection id, value
			End Set
		#tag EndSetter
		PreciseCollisionDetection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function isResting lib SpriteKit selector "isResting" (id as ptr) as boolean
			  return isResting (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setResting lib SpriteKit selector "setResting:" (id as ptr, value as Boolean)
			  setResting id, value
			End Set
		#tag EndSetter
		Resting As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function restitution lib SpriteKit selector "restitution" (id as ptr) as double
			  #elseif Target32Bit
			    declare Function restitution lib SpriteKit selector "restitution" (id as ptr) as Single
			  #endif
			  return restitution (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setRestitution lib SpriteKit selector "setRestitution:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setRestitution lib SpriteKit selector "setRestitution:" (id as ptr, value as Single)
			  #endif
			  setRestitution id, value
			End Set
		#tag EndSetter
		Restitution As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function velocity lib SpriteKit selector "velocity" (id as ptr) as CGVector
			    return velocity (id)
			  #elseif Target32Bit
			    declare Function velocity lib SpriteKit selector "velocity" (id as ptr) as CGVector32Bit
			    return velocity(id).toCGVector
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setVelocity lib SpriteKit selector "setVelocity:" (id as ptr, value as CGVector)
			    setVelocity id, value
			  #elseif Target32Bit
			    declare sub setVelocity lib SpriteKit selector "setVelocity:" (id as ptr, value as CGVector32Bit)
			    setVelocity id, value.toCGVector32
			  #endif
			  
			End Set
		#tag EndSetter
		Velocity As CGVector
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AffectedByGravity"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsRotation"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AngularDamping"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AngularVelocity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Area"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Charge"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContactTestBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Density"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dynamic"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FieldBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Friction"
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
			Name="LinearDamping"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mass"
			Group="Behavior"
			Type="Double"
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
			Name="Pinned"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreciseCollisionDetection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Resting"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Restitution"
			Group="Behavior"
			Type="Double"
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
