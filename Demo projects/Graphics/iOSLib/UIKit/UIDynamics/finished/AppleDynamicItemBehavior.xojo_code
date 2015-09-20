#tag Class
Protected Class AppleDynamicItemBehavior
Inherits AppleDynamicBehavior
	#tag Method, Flags = &h0
		Sub AddAngularVelocity(velocity as double, item as appleview)
		  #If Target64Bit
		    Declare sub addAngularVelocity lib UIKitLibName selector "addAngularVelocity:forItem:" (id as ptr, velocity as double, item as ptr)
		  #elseIf Target32Bit
		    Declare sub addAngularVelocity lib UIKitLibName selector "addAngularVelocity:forItem:" (id as ptr, velocity as single, item as ptr)
		  #endif
		  AddAngularVelocity id, velocity, item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddItem(item as AppleView)
		  Declare sub additem lib UIKitLibName selector "addItem:" (id as ptr, item as ptr)
		  additem id,item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLinearVelocity(velocity as FoundationFramework.cgvector, item as appleview)
		  #If Target64Bit
		    Declare sub addLinearVelocity lib UIKitLibName selector "addLinearVelocity:forItem:" (id as ptr, velocity as FoundationFrameWork.cgvector, item as ptr)
		    addLinearVelocity id, velocity, item.id
		  #elseIf Target32Bit
		    Declare sub addLinearVelocity lib UIKitLibName selector "addLinearVelocity:forItem:" (id as ptr, velocity as FoundationFrameWork.cgvector32Bit, item as ptr)
		    addLinearVelocity id, velocity.toCGVector32, item.id
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AngularVelocity(item as appleview) As double
		  #If Target64Bit
		    Declare Function angularVelocity lib UIKitLibName selector "angularVelocityForItem:" (id as ptr,  item as ptr) as Double
		  #elseIf Target32Bit
		    Declare Function angularVelocity lib UIKitLibName selector "angularVelocityForItem:" (id as ptr,  item as ptr) as single
		  #endif
		  return AngularVelocity (id, item.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(items as AppleArray)
		  Declare function initWithItems lib UIKitLibName selector "initWithItems:" (id as ptr, items as ptr) as ptr
		  super.Constructor (initWithItems(alloc(classptr), items.id))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(item as AppleView)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim myArray as AppleMutableArray = AppleMutableArray.fromAppleObjects (item)
		  Constructor (myArray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(item as ioscontrol)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Constructor (item.appleview)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LinearVelocity(item as appleview) As FoundationFramework.CGVector
		  #If Target64Bit
		    Declare function linearVelocity lib UIKitLibName selector "linearVelocityForItem:" (id as ptr,  item as ptr) as FoundationFrameWork.cgvector
		    return LinearVelocity (id, item.id)
		  #elseIf Target32Bit
		    Declare function linearVelocity lib UIKitLibName selector "linearVelocityForItem:" (id as ptr,  item as ptr) as FoundationFrameWork.cgvector32Bit
		    return LinearVelocity (id, item.id).tocgvector
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveItem(Item As AppleView)
		  Declare sub removeItem lib UIKitLibName selector "removeItem:" (id as ptr, Item as ptr)
		  removeItem id, Item.id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function allowsRotation lib UIKitLibName selector "allowsRotation" (id as ptr) as boolean
			  return allowsRotation (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setAllowsRotation lib UIKitLibName selector "setAllowsRotation:" (id as ptr, value as Boolean)
			  setAllowsRotation id, value
			End Set
		#tag EndSetter
		AllowsRotation As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function anchored lib UIKitLibName selector "isAnchored" (id as ptr) as boolean
			  return anchored (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setAnchored lib UIKitLibName selector "setAnchored:" (id as ptr, value as Boolean)
			  setAnchored id, value
			End Set
		#tag EndSetter
		Anchored As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function angularResistance lib UIKitLibName selector "angularResistance" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function angularResistance lib UIKitLibName selector "angularResistance" (id as ptr) as single
			  #endif
			  return angularResistance (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setAngularResistance lib UIKitLibName selector "setAngularResistance:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setAngularResistance lib UIKitLibName selector "setAngularResistance:" (id as ptr, value as single)
			  #endif
			  setAngularResistance (id, value)
			  
			End Set
		#tag EndSetter
		AngularResistance As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function charge lib UIKitLibName selector "charge" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function charge lib UIKitLibName selector "charge" (id as ptr) as single
			  #endif
			  return charge (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setCharge lib UIKitLibName selector "setCharge:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setCharge lib UIKitLibName selector "setCharge:" (id as ptr, value as single)
			  #endif
			  setCharge (id, value)
			  
			End Set
		#tag EndSetter
		Charge As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("willMoveToAnimator:", AddressOf impl_willMoveToAnimator, "v@:@")
			    
			    targetID = BuildTargetClass ("UIDynamicItemBehavior", "iOSLibDynamicItemBehavior",methods)
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
			    Declare function density lib UIKitLibName selector "density" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function density lib UIKitLibName selector "density" (id as ptr) as single
			  #endif
			  return density (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setDensity lib UIKitLibName selector "setDensity:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setDensity lib UIKitLibName selector "setDensity:" (id as ptr, value as single)
			  #endif
			  setDensity (id, value)
			  
			End Set
		#tag EndSetter
		Density As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function elasticity lib UIKitLibName selector "elasticity" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function elasticity lib UIKitLibName selector "elasticity" (id as ptr) as single
			  #endif
			  return elasticity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setElasticity lib UIKitLibName selector "setElasticity:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setElasticity lib UIKitLibName selector "setElasticity:" (id as ptr, value as single)
			  #endif
			  setElasticity (id, value)
			  
			End Set
		#tag EndSetter
		Elasticity As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function friction lib UIKitLibName selector "friction" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function friction lib UIKitLibName selector "friction" (id as ptr) as single
			  #endif
			  return friction (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setFriction lib UIKitLibName selector "setFriction:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setFriction lib UIKitLibName selector "setFriction:" (id as ptr, value as single)
			  #endif
			  setFriction (id, value)
			  
			End Set
		#tag EndSetter
		Friction As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function items lib UIKitLibName selector "items" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (items(id))
			End Get
		#tag EndGetter
		Items As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function resistance lib UIKitLibName selector "resistance" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function resistance lib UIKitLibName selector "resistance" (id as ptr) as single
			  #endif
			  return resistance (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setResistance lib UIKitLibName selector "setResistance:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setResistance lib UIKitLibName selector "setResistance:" (id as ptr, value as single)
			  #endif
			  setResistance (id, value)
			  
			End Set
		#tag EndSetter
		Resistance As double
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
