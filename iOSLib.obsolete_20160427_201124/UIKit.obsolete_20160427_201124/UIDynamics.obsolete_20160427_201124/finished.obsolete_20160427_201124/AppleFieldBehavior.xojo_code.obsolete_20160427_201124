#tag Class
Protected Class AppleFieldBehavior
Inherits AppleDynamicBehavior
	#tag Method, Flags = &h0
		Sub AddItem(item as AppleView)
		  Declare sub additem lib UIKitLibName selector "addItem:" (id as ptr, item as ptr)
		  additem id,item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  // All the consturctors here are shared Methods!
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function CustomField(Block as iOSBlock) As AppleFieldBehavior
		  // you need to implement a 32Bit and 64Bit block – see the CustomFieldBlockTemplates in this class!
		  
		  Declare function fieldWithEvaluationBlock lib UIKitLibName selector "fieldWithEvaluationBlock:" (id as ptr, block as ptr) as ptr
		  dim result as new AppleFieldBehavior(fieldWithEvaluationBlock(classptr, block.Handle))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CustomFieldBlockTemplate32Bit(mBehavior as ptr, mPosition as FoundationFrameWork.NSPoint32Bit, Velocity as single, Mass As single, Charge As single, DeltaTime As single) As FoundationFrameWork.cgvector
		  // use this template to create your own custom fields. Return a CGVector that reflects diretion and magnitude of the field force to apply.
		  // Don't forget to implement a 64Bit template too.
		  
		  dim Behavior as new AppleFieldBehavior (mBehavior)
		  dim Position as FoundationFrameWork.NSPoint = mPosition.toNSPoint
		  
		  #pragma Unused position
		  #pragma Unused Velocity
		  #pragma Unused Mass
		  #pragma Unused Charge
		  #pragma Unused DeltaTime
		  #pragma Unused Behavior
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CustomFieldBlockTemplate64Bit(mBehavior as ptr, Position as FoundationFrameWork.NSPoint, Velocity as Double, Mass As Double, Charge As Double, DeltaTime As Double) As FoundationFrameWork.cgvector
		  // use this template to create your own custom fields. Return a CGVector that reflects diretion and magnitude of the field force to apply.
		  // Don't forget to implement a 32Bit template too.
		  
		  dim Behavior as new AppleFieldBehavior (mBehavior)
		  
		  #pragma Unused position
		  #pragma Unused Velocity
		  #pragma Unused Mass
		  #pragma Unused Charge
		  #pragma Unused DeltaTime
		  #pragma Unused Behavior
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DragField() As AppleFieldBehavior
		  Declare function DragField lib UIKitLibName selector "dragField" (id as ptr) as ptr
		  dim result as new AppleFieldBehavior(DragField(classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ElectricField() As AppleFieldBehavior
		  Declare function electricField lib UIKitLibName selector "electricField" (id as ptr) as ptr
		  dim result as new AppleFieldBehavior(electricField(classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function LinearGravityField(Direction As FoundationFrameWork.cgvector) As AppleFieldBehavior
		  #if Target64Bit
		    Declare function linearGravityFieldWithVector lib UIKitLibName selector "linearGravityFieldWithVector:" (id as ptr, direction as FoundationFrameWork.CGVector) as ptr
		    dim result as new AppleFieldBehavior(linearGravityFieldWithVector(classptr, direction))
		  #elseif Target32Bit
		    Declare function linearGravityFieldWithVector lib UIKitLibName selector "linearGravityFieldWithVector:" (id as ptr, direction as FoundationFrameWork.CGVector32Bit) as ptr
		    dim result as new AppleFieldBehavior(linearGravityFieldWithVector(classptr, direction.toCGVector32))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MagneticField() As AppleFieldBehavior
		  Declare function magneticField lib UIKitLibName selector "magneticField" (id as ptr) as ptr
		  dim result as new AppleFieldBehavior(magneticField(classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NoiseField(Smoothness as Double, animationSpeed as Double) As AppleFieldBehavior
		  #if Target64Bit
		    Declare function noiseFieldWithSmoothness lib UIKitLibName selector "noiseFieldWithSmoothness:animationSpeed:" (id as ptr, Smoothness as double, animationSpeed as double) as ptr
		  #elseif Target32Bit
		    Declare function noiseFieldWithSmoothness lib UIKitLibName selector "noiseFieldWithSmoothness:animationSpeed:" (id as ptr, Smoothness as single, animationSpeed as single) as ptr
		  #endif
		  dim result as new AppleFieldBehavior(noiseFieldWithSmoothness(classptr, Smoothness, animationSpeed))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RadialGravityField(Position As FoundationFrameWork.nspoint) As AppleFieldBehavior
		  #if Target64Bit
		    Declare function radialGravityFieldWithPosition lib UIKitLibName selector "radialGravityFieldWithPosition:" (id as ptr, position as FoundationFrameWork.NSPoint) as ptr
		    dim result as new AppleFieldBehavior(radialGravityFieldWithPosition(classptr, Position))
		  #elseif Target32Bit
		    Declare function radialGravityFieldWithPosition lib UIKitLibName selector "radialGravityFieldWithPosition:" (id as ptr, position as FoundationFrameWork.NSPoint32Bit) as ptr
		    dim result as new AppleFieldBehavior(radialGravityFieldWithPosition(classptr, Position.toNSPoint32))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveItem(item as AppleView)
		  Declare sub removeItem lib UIKitLibName selector "removeItem:" (id as ptr, item as ptr)
		  removeItem id,item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function SpringField() As AppleFieldBehavior
		  Declare function springField lib UIKitLibName selector "springField" (id as ptr) as ptr
		  dim result as new AppleFieldBehavior(springField(classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function TurbulenceField(Smoothness as Double, animationSpeed as Double) As AppleFieldBehavior
		  #if Target64Bit
		    Declare function turbulenceFieldWithSmoothness lib UIKitLibName selector "turbulenceFieldWithSmoothness:animationSpeed:" (id as ptr, Smoothness as double, animationSpeed as double) as ptr
		  #elseif Target32Bit
		    Declare function turbulenceFieldWithSmoothness lib UIKitLibName selector "turbulenceFieldWithSmoothness:animationSpeed:" (id as ptr, Smoothness as single, animationSpeed as single) as ptr
		  #endif
		  dim result as new AppleFieldBehavior(turbulenceFieldWithSmoothness(classptr, Smoothness, animationSpeed))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function VelocityField(Direction As FoundationFrameWork.cgvector) As AppleFieldBehavior
		  #if Target64Bit
		    Declare function velocityFieldWithVector lib UIKitLibName selector "velocityFieldWithVector:" (id as ptr, direction as FoundationFrameWork.CGVector) as ptr
		    dim result as new AppleFieldBehavior(velocityFieldWithVector(classptr, direction))
		  #elseif Target32Bit
		    Declare function velocityFieldWithVector lib UIKitLibName selector "velocityFieldWithVector:" (id as ptr, direction as FoundationFrameWork.CGVector32Bit) as ptr
		    dim result as new AppleFieldBehavior(velocityFieldWithVector(classptr, direction.toCGVector32))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function VortexField() As AppleFieldBehavior
		  Declare function vortexField lib UIKitLibName selector "vortexField" (id as ptr) as ptr
		  dim result as new AppleFieldBehavior(vortexField(classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function animationSpeed lib UIKitLibName selector "animationSpeed" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function animationSpeed lib UIKitLibName selector "animationSpeed" (id as ptr) as single
			  #endif
			  return animationSpeed (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setAnimationSpeed lib UIKitLibName selector "setAnimationSpeed:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setAnimationSpeed lib UIKitLibName selector "setAnimationSpeed:" (id as ptr, value as single)
			  #endif
			  setAnimationSpeed (id, value)
			  
			End Set
		#tag EndSetter
		AnimationSpeed As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return (ClassPtr <> nil)
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    if FoundationFrameWork.NSClassFromString ("UIFieldBehavior") <> NIL then
			      
			      dim methods() as TargetClassMethodHelper
			      methods.Append new TargetClassMethodHelper("willMoveToAnimator:", AddressOf impl_willMoveToAnimator, "v@:@")
			      
			      targetID = BuildTargetClass ("UIFieldBehavior", "iOSLibFieldBehavior",methods)
			    end if
			  end if
			  Return targetID
			  
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function direction lib UIKitLibName selector "direction" (id as ptr) as FoundationFrameWork.cgvector
			    return direction (id)
			  #elseif Target32Bit
			    Declare function direction lib UIKitLibName selector "direction" (id as ptr) as FoundationFrameWork.cgvector32Bit
			    return direction(id).tocgvector
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setDirection lib UIKitLibName selector "setDirection:" (id as ptr, value as FoundationFrameWork.cgvector)
			    setDirection (id, value)
			  #elseif Target32Bit
			    Declare sub setDirection lib UIKitLibName selector "setDirection:" (id as ptr, value as FoundationFrameWork.cgvector32Bit)
			    setDirection (id, value.toCGVector32)
			  #endif
			  
			End Set
		#tag EndSetter
		Direction As FoundationFrameWork.CGVector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function falloff lib UIKitLibName selector "falloff" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function falloff lib UIKitLibName selector "falloff" (id as ptr) as single
			  #endif
			  return falloff (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setFalloff lib UIKitLibName selector "setFalloff:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setFalloff lib UIKitLibName selector "setFalloff:" (id as ptr, value as single)
			  #endif
			  setFalloff (id, value)
			  
			End Set
		#tag EndSetter
		FallOff As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function items lib UIKitLibName selector "items" (id as ptr) as ptr
			  return AppleMutableArray.MakeFromPtr ( items (id))
			End Get
		#tag EndGetter
		Items As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function minimumRadius lib UIKitLibName selector "minimumRadius" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function minimumRadius lib UIKitLibName selector "minimumRadius" (id as ptr) as single
			  #endif
			  return minimumRadius (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setMinimumRadius lib UIKitLibName selector "setMinimumRadius:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setMinimumRadius lib UIKitLibName selector "setMinimumRadius:" (id as ptr, value as single)
			  #endif
			  setMinimumRadius (id, value)
			  
			End Set
		#tag EndSetter
		MinimumRadius As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function position lib UIKitLibName selector "position" (id as ptr) as FoundationFrameWork.nspoint
			    return position (id)
			  #elseif Target32Bit
			    Declare function position lib UIKitLibName selector "position" (id as ptr) as FoundationFrameWork.nspoint32bit
			    return position(id).toNSPoint
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setPosition lib UIKitLibName selector "setPosition:" (id as ptr, value as FoundationFrameWork.nspoint)
			    setPosition (id, value)
			  #elseif Target32Bit
			    Declare sub setPosition lib UIKitLibName selector "setPosition:" (id as ptr, value as FoundationFrameWork.nspoint32Bit)
			    setPosition (id, value.tonsPoint32)
			  #endif
			  
			End Set
		#tag EndSetter
		Position As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function smoothness lib UIKitLibName selector "smoothness" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function smoothness lib UIKitLibName selector "smoothness" (id as ptr) as single
			  #endif
			  return smoothness (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setSmoothness lib UIKitLibName selector "setSmoothness:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setSmoothness lib UIKitLibName selector "setSmoothness:" (id as ptr, value as single)
			  #endif
			  setSmoothness (id, value)
			  
			End Set
		#tag EndSetter
		Smoothness As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function strength lib UIKitLibName selector "strength" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function strength lib UIKitLibName selector "strength" (id as ptr) as single
			  #endif
			  return strength (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setStrength lib UIKitLibName selector "setStrength:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setStrength lib UIKitLibName selector "setStrength:" (id as ptr, value as single)
			  #endif
			  setStrength (id, value)
			  
			End Set
		#tag EndSetter
		Strength As double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AnimationSpeed"
			Group="Behavior"
			Type="double"
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
			Name="FallOff"
			Group="Behavior"
			Type="double"
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
			Name="MinimumRadius"
			Group="Behavior"
			Type="double"
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
			Name="Smoothness"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Strength"
			Group="Behavior"
			Type="double"
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
