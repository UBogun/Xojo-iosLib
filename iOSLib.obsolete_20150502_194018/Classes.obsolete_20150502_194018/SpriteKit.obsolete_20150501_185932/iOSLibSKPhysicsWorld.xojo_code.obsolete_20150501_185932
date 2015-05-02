#tag Class
Protected Class iOSLibSKPhysicsWorld
Inherits iOSLibObject
	#tag Method, Flags = &h0
		Function BodyAlongRay(startPoint as NSPoint, endPoint as NSPoint) As iOSLibSKPhysicsBody
		  #if Target64Bit
		    Declare Function bodyAlongRay lib SpriteKit selector "bodyAlongRayStart:end:" (id as ptr, startPoint as NSPoint, endPoint as NSPoint) as Ptr
		    return iOSLibSKPhysicsBody.MakeFromPtr (bodyAlongRay (id, startPoint, endPoint))
		  #elseif Target32Bit
		    Declare Function bodyAlongRay lib SpriteKit selector "bodyAlongRayStart:end:" (id as ptr, startPoint as NSPoint32Bit, endPoint as NSPoint32Bit) as Ptr
		    return iOSLibSKPhysicsBody.MakeFromPtr (bodyAlongRay (id, startPoint.toNSPoint32, endPoint.toNSPoint32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyAtPoint(aPoint as NSPoint) As iOSLibSKPhysicsBody
		  #if Target64Bit
		    Declare Function bodyAtPoint lib SpriteKit selector "bodyAtPoint:" (id as ptr, aPoint as NSPoint) as Ptr
		    return iOSLibSKPhysicsBody.MakeFromPtr (bodyAtPoint (id, aPoint))
		  #elseif Target32Bit
		    Declare Function bodyAtPoint lib SpriteKit selector "bodyAtPoint:" (id as ptr, aPoint as NSPoint32Bit) as Ptr
		    return iOSLibSKPhysicsBody.MakeFromPtr (bodyAtPoint (id, aPoint.toNSPoint32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyInRect(aRect As NSRect) As iOSLibSKPhysicsBody
		  #if Target64Bit
		    Declare Function bodyInRect lib SpriteKit selector "bodyInRect:" (id as ptr, aRect as NSRect) as Ptr
		    return iOSLibSKPhysicsBody.MakeFromPtr (bodyInRect (id, aRect))
		  #elseif Target32Bit
		    Declare Function bodyInRect lib SpriteKit selector "bodyInRect:" (id as ptr, aRect as NSRect32Bit) as Ptr
		    return iOSLibSKPhysicsBody.MakeFromPtr (bodyInRect (id, aRect.toNSRect32))
		  #endif
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if iOSLibSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKPhysicsWorld")
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
			  declare function contactDelegate lib SpriteKit selector "contactDelegate" (id as ptr) as Ptr
			  return iOSLibSKScene.MakeFromPtr ( contactDelegate (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setContactDelegate lib SpriteKit selector "setContactDelegate:" (id as ptr, value as Ptr)
			  setContactDelegate id, value.id
			End Set
		#tag EndSetter
		ContactDelegate As iOSLibSKScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare Function gravity lib SpriteKit selector "gravity" (id as ptr) as CGVector
			    return gravity (id)
			  #elseif Target32Bit
			    declare Function gravity lib SpriteKit selector "gravity" (id as ptr) as CGVector32Bit
			    return gravity(id).toCGVector
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setGravity lib SpriteKit selector "setGravity:" (id as ptr, value as CGVector)
			    setGravity id, value
			  #elseif Target32Bit
			    declare sub setGravity lib SpriteKit selector "setGravity:" (id as ptr, value as CGVector32Bit)
			    setGravity id, value.toCGVector32
			  #endif
			  
			End Set
		#tag EndSetter
		Gravity As CGVector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function speed lib SpriteKit selector "speed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function speed lib SpriteKit selector "speed" (id as ptr) as Single
			  #endif
			  return speed (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setSpeed lib SpriteKit selector "setSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare Sub setSpeed lib SpriteKit selector "setSpeed:" (id as ptr, value as Single)
			  #endif
			  setSpeed (id, value)
			  
			End Set
		#tag EndSetter
		Speed As Double
	#tag EndComputedProperty


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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
