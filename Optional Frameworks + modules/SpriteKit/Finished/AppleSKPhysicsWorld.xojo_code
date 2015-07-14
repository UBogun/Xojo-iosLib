#tag Class
Protected Class AppleSKPhysicsWorld
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AddJoint(joint as AppleSKPhysicsJoint)
		  Declare sub addJoint lib SpriteKit selector "addJoint:" (id as ptr, joint as ptr)
		  addJoint id, joint.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyAlongRay(startPoint as NSPoint, endPoint as NSPoint) As AppleSKPhysicsBody
		  #if Target64Bit
		    Declare Function bodyAlongRay lib SpriteKit selector "bodyAlongRayStart:end:" (id as ptr, startPoint as NSPoint, endPoint as NSPoint) as Ptr
		    return AppleSKPhysicsBody.MakeFromPtr (bodyAlongRay (id, startPoint, endPoint))
		  #elseif Target32Bit
		    Declare Function bodyAlongRay lib SpriteKit selector "bodyAlongRayStart:end:" (id as ptr, startPoint as NSPoint32Bit, endPoint as NSPoint32Bit) as Ptr
		    return AppleSKPhysicsBody.MakeFromPtr (bodyAlongRay (id, startPoint.toNSPoint32, endPoint.toNSPoint32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyAtPoint(aPoint as NSPoint) As AppleSKPhysicsBody
		  #if Target64Bit
		    Declare Function bodyAtPoint lib SpriteKit selector "bodyAtPoint:" (id as ptr, aPoint as NSPoint) as Ptr
		    return AppleSKPhysicsBody.MakeFromPtr (bodyAtPoint (id, aPoint))
		  #elseif Target32Bit
		    Declare Function bodyAtPoint lib SpriteKit selector "bodyAtPoint:" (id as ptr, aPoint as NSPoint32Bit) as Ptr
		    return AppleSKPhysicsBody.MakeFromPtr (bodyAtPoint (id, aPoint.toNSPoint32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyInRect(aRect As NSRect) As AppleSKPhysicsBody
		  #if Target64Bit
		    Declare Function bodyInRect lib SpriteKit selector "bodyInRect:" (id as ptr, aRect as NSRect) as Ptr
		    return AppleSKPhysicsBody.MakeFromPtr (bodyInRect (id, aRect))
		  #elseif Target32Bit
		    Declare Function bodyInRect lib SpriteKit selector "bodyInRect:" (id as ptr, aRect as NSRect32Bit) as Ptr
		    return AppleSKPhysicsBody.MakeFromPtr (bodyInRect (id, aRect.toNSRect32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllJoints()
		  Declare sub removeAllJoints lib SpriteKit selector "removeAllJoints" (id as ptr)
		  removeAllJoints id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveJoint(joint as AppleSKPhysicsJoint)
		  Declare sub removeJoint lib SpriteKit selector "removeJoint:" (id as ptr, joint as ptr)
		  removeJoint id, joint.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RunBlockOnBodiesAlongRay(startPoint as NSPoint, endPoint as NSPoint, block as AppleBlock) As AppleSKPhysicsBody
		  #if Target64Bit
		    Declare Sub enumerateBodiesAlongRay lib SpriteKit selector "enumerateBodiesAlongRayStart:end:usingBlock:" _
		    (id as ptr, startPoint as NSPoint, endPoint as NSPoint, block as ptr)
		    enumerateBodiesAlongRay (id, startPoint, endPoint, block.Handle)
		  #elseif Target32Bit
		    Declare Sub enumerateBodiesAlongRay lib SpriteKit selector "enumerateBodiesAlongRayStart:end:usingBlock:" _
		    (id as ptr, startPoint as NSPoint32Bit, endPoint as NSPoint32Bit, block as ptr)
		    enumerateBodiesAlongRay (id, startPoint.toNSPoint32, endPoint.toNSPoint32, block.Handle)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RunBlockOnBodiesAtPoint(aPoint as NSPoint, block as AppleBlock) As AppleSKPhysicsBody
		  #if Target64Bit
		    Declare Sub enumerateBodiesAtPoint lib SpriteKit selector "enumerateBodiesAtPoint:usingBlock:" _
		    (id as ptr, atPoint as NSPoint, block as ptr)
		    enumerateBodiesAtPoint (id, aPoint, block.Handle)
		  #elseif Target32Bit
		    Declare Sub enumerateBodiesAtPoint lib SpriteKit selector "enumerateBodiesAtPoint:usingBlock:" _
		    (id as ptr, aPoint as NSPoint32Bit,  block as ptr)
		    enumerateBodiesAtPoint (id, aPoint.toNSPoint32, block.Handle)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RunBlockOnBodiesInRect(aRect as NSRect, block as AppleBlock) As AppleSKPhysicsBody
		  #if Target64Bit
		    Declare Sub enumerateBodiesInRect lib SpriteKit selector "enumerateBodiesInRect:usingBlock:" _
		    (id as ptr, aRect as NSRect, block as ptr)
		    enumerateBodiesInRect (id, aRect, block.Handle)
		  #elseif Target32Bit
		    Declare Sub enumerateBodiesInRect lib SpriteKit selector "enumerateBodiesInRect:usingBlock:" _
		    (id as ptr, aRect as NSRect32Bit,  block as ptr)
		    enumerateBodiesInRect (id, aRect.toNSRect32, block.Handle)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub RunBlockPointRectTemplate(Body as ptr, byref stop as Boolean)
		  dim PhysicsBody as AppleSKPhysicsBody = AppleSKPhysicsBody.MakeFromPtr (body)
		  // do whatever you want to perform on the Body
		  // if you want to stop further body processing, set stop = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub RunBlockRayTemplate32Bit(Body as ptr, ContactPoint as NSPoint32Bit, Normal as CGVector32Bit, byref stop as Boolean)
		  dim PhysicsBody as AppleSKPhysicsBody = AppleSKPhysicsBody.MakeFromPtr (body)
		  // here you can evalue the point in screen coordinates where the ray hit and the distance from its startpoint to contactpoint
		  // if you want to stop further body processing, set stop = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub RunBlockRayTemplate64Bit(Body as ptr, ContactPoint as NSPoint, Normal as CGVector, byref stop as Boolean)
		  dim PhysicsBody as AppleSKPhysicsBody = AppleSKPhysicsBody.MakeFromPtr (body)
		  // here you can evalue the point in screen coordinates where the ray hit and the distance from its startpoint to contactpoint
		  // if you want to stop further body processing, set stop = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SampleFields(Position as NSPoint) As CGVector
		  dim Vector as  Vector_Float3
		  Vector.x = Position.x
		  Vector.y = Position.y
		  dim result as  Vector_Float3 = SampleFields (vector)
		  return CGVector (result.x, result.y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SampleFields(Position as Vector_Float3) As Vector_Float3
		  Declare Function sampleFieldsAt lib SpriteKit selector "sampleFieldsAt:" (id as ptr, position as  Vector_Float3) as  Vector_Float3
		  return sampleFieldsAt (id, Position)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
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
			  return AppleSKScene.MakeFromPtr ( contactDelegate (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setContactDelegate lib SpriteKit selector "setContactDelegate:" (id as ptr, value as Ptr)
			  setContactDelegate id, value.id
			End Set
		#tag EndSetter
		ContactDelegate As AppleSKScene
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
			Name="Description"
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
