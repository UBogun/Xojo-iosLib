#tag Class
Protected Class AppleGravityBehavior
Inherits AppleDynamicBehavior
	#tag Method, Flags = &h0
		Sub AddItem(item as AppleView)
		  Declare sub additem lib UIKitLibName selector "addItem:" (id as ptr, item as ptr)
		  additem id,item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
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
		Sub RemoveItem(item as AppleView)
		  Declare sub removeItem lib UIKitLibName selector "removeItem:" (id as ptr, item as ptr)
		  removeItem id,item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAngleAndMagnitude(Angle as Double, Magnitude as Double)
		  #if Target64Bit
		    Declare sub setAngleMagnitude lib UIKitLibName selector "setAngle:magnitude:" (id as ptr, angle as double, magnitude as double)
		  #elseif Target32Bit
		    Declare sub setAngleMagnitude lib UIKitLibName selector "setAngle:magnitude:" (id as ptr, angle as single, magnitude as single)
		  #endif
		  SetAngleMagnitude id, angle, Magnitude
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function angle lib UIKitLibName selector "angle" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function angle lib UIKitLibName selector "angle" (id as ptr) as single
			  #endif
			  return angle (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setAngle lib UIKitLibName selector "setAngle:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setAngle lib UIKitLibName selector "setAngle:" (id as ptr, value as single)
			  #endif
			  setangle (id, value)
			  
			End Set
		#tag EndSetter
		Angle As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Angle.RadianToDegree
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  angle = value.DegreeToRadian
			End Set
		#tag EndSetter
		AngleInDegrees As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("willMoveToAnimator:", AddressOf impl_willMoveToAnimator, "v@:@")
			    
			    targetID = BuildTargetClass ("UIGravityBehavior", "iOSLibGravityBehavior",methods)
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
			    Declare function gravityDirection lib UIKitLibName selector "gravityDirection" (id as ptr) as FoundationFrameWork.cgvector
			    return gravityDirection (id)
			  #elseif Target32Bit
			    Declare function gravityDirection lib UIKitLibName selector "gravityDirection" (id as ptr) as FoundationFrameWork.cgvector32bit
			    return gravityDirection(id).tocgvector
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setGravityDirection lib UIKitLibName selector "setGravityDirection:" (id as ptr, value as FoundationFrameWork.cgvector)
			    setGravityDirection (id, value)
			  #elseif Target32Bit
			    Declare sub setGravityDirection lib UIKitLibName selector "setGravityDirection:" (id as ptr, value as FoundationFrameWork.cgvector32Bit)
			    setGravityDirection (id, value.tocgvector32)
			  #endif
			  
			End Set
		#tag EndSetter
		GravityDirection As FoundationFrameWork.cgvector
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
			    Declare function magnitude lib UIKitLibName selector "magnitude" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function magnitude lib UIKitLibName selector "magnitude" (id as ptr) as single
			  #endif
			  return Magnitude (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setMagnitude lib UIKitLibName selector "setMagnitude:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setMagnitude lib UIKitLibName selector "setMagnitude:" (id as ptr, value as single)
			  #endif
			  setMagnitude (id, value)
			  
			End Set
		#tag EndSetter
		Magnitude As double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Angle"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AngleInDegrees"
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
			Name="Magnitude"
			Group="Behavior"
			Type="double"
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
