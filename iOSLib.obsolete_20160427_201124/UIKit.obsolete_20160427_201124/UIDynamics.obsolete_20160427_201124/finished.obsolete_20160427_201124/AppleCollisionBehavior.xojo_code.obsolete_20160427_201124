#tag Class
Protected Class AppleCollisionBehavior
Inherits AppleDynamicBehavior
	#tag Method, Flags = &h0
		Sub AddBoundary(Identifier as cfstringref, Boundary as AppleBezierPath)
		  Declare sub addBoundaryWithIdentifier lib UIKitLibName selector "addBoundaryWithIdentifier:forPath:" (id as ptr, identifer as cfstringref, boundary as ptr)
		  addBoundaryWithIdentifier id, Identifier, Boundary.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddBoundary(Identifier as cfstringref, Point1 as FoundationFrameWork.nspoint,  Point2 as FoundationFrameWork.nspoint)
		  #if Target64Bit
		    Declare sub addBoundaryWithIdentifierPath lib UIKitLibName selector "addBoundaryWithIdentifier:fromPoint:toPoint:" (id as ptr, identifer as cfstringref, point1 as FoundationFrameWork.NSPoint, point2 as FoundationFrameWork.NSPoint )
		    addBoundaryWithIdentifierPath id, Identifier, point1, point2
		  #elseif Target32Bit
		    Declare sub addBoundaryWithIdentifierPath lib UIKitLibName selector "addBoundaryWithIdentifier:fromPoint:toPoint:" (id as ptr, identifer as cfstringref, point1 as FoundationFrameWork.NSPoint32Bit, point2 as FoundationFrameWork.NSPoint32Bit )
		    addBoundaryWithIdentifierPath id, Identifier, point1.toNSPoint32, point2.toNSPoint32
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddItem(Item As AppleView)
		  Declare sub addItem lib UIKitLibName selector "addItem:" (id as ptr, Item as ptr)
		  addItem id, Item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Boundary(identifier as cfstringref) As AppleBezierPath
		  Declare function boundaryWithIdentifier lib UIKitLibName selector "boundaryWithIdentifier:" (id as ptr, identifier as cfstringref) as ptr
		  return AppleBezierPath.MakeFromPtr (boundaryWithIdentifier(id, Identifier))
		End Function
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
		  me.CollisionDelegate = me
		  
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

	#tag Method, Flags = &h1000
		Sub Constructor(aPtr as ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (aPtr)
		  if me.CollisionDelegate= nil then me.CollisionDelegate = me
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_beganContactWithBoundary32(pid as ptr, sel as ptr, behavior as Ptr, item as ptr, Identifier as CFStringRef, atPoint as FoundationFrameWork.NSPoint32Bit)
		  dim ego as new AppleCollisionBehavior (behavior)
		  if not ego.IsNIL then 
		    dim ContactItem as new AppleView(item)
		    ego.informonBeganContactWithBoundary (ContactItem, Identifier, atPoint.toNSPoint)
		  end if
		  
		  #Pragma Unused  sel
		  #Pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_beganContactWithBoundary64(pid as ptr, sel as ptr, behavior as Ptr, item as ptr, Identifier as CFStringRef, atPoint as FoundationFrameWork.NSPoint)
		  dim ego as new AppleCollisionBehavior (behavior)
		  if not ego.IsNIL then 
		    dim ContactItem as new AppleView(item)
		    ego.informonBeganContactWithBoundary (ContactItem, Identifier, atPoint)
		  end if
		  
		  #Pragma Unused  sel
		  #Pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_beganContactWithItem32(pid as ptr, sel as ptr, behavior as Ptr, foritem as ptr, withItem as ptr, atPoint as FoundationFrameWork.NSPoint32Bit)
		  dim ego as new AppleCollisionBehavior (behavior)
		  if not ego.IsNIL then 
		    dim ContactItem as new AppleView(foritem)
		    dim otheritem as new appleview (withitem)
		    ego.informonBeganContactWithItem (ContactItem, otheritem, atPoint.toNSPoint)
		  end if
		  
		  #Pragma Unused  sel
		  #Pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_beganContactWithItem64(pid as ptr, sel as ptr, behavior as Ptr, foritem as ptr, withItem as ptr, atPoint as FoundationFrameWork.NSPoint)
		  dim ego as new AppleCollisionBehavior (behavior)
		  if not ego.IsNIL then 
		    dim ContactItem as new AppleView(foritem)
		    dim otheritem as new appleview (withitem)
		    ego.informonBeganContactWithItem (ContactItem, otheritem, atPoint)
		  end if
		  
		  #Pragma Unused  sel
		  #Pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_endedContactWithBoundary(pid as ptr, sel as ptr, behavior as Ptr, item as ptr, Identifier as CFStringRef)
		  dim ego as new AppleCollisionBehavior (behavior)
		  if not ego.IsNIL then 
		    dim ContactItem as new AppleView(item)
		    ego.informonEndedContactWithBoundary (ContactItem, Identifier)
		  end if
		  
		  #Pragma Unused  sel
		  #Pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_endedContactWithItem(pid as ptr, sel as ptr, behavior as Ptr, foritem as ptr, withItem as ptr)
		  dim ego as new AppleCollisionBehavior (behavior)
		  if not ego.IsNIL then 
		    dim ContactItem as new AppleView(foritem)
		    dim otheritem as new appleview (withitem)
		    ego.informonEndedContactWithItem (ContactItem, otheritem)
		  end if
		  
		  #Pragma Unused  sel
		  #Pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonBeganContactWithBoundary(Item as AppleView, Identifier as Text, atPoint as FoundationFrameWork.NSPoint)
		  RaiseEvent BeganContactWithBoundary (item, identifier, atPoint)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonBeganContactWithItem(Item as AppleView, withItem as Appleview, atPoint as FoundationFrameWork.NSPoint)
		  RaiseEvent BeganContactWithItem (item, withItem, atPoint)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonEndedContactWithBoundary(Item as AppleView, Identifier as Text)
		  RaiseEvent EndedContactWithBoundary (item, identifier)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonEndedContactWithItem(Item as AppleView, withItem as Appleview)
		  RaiseEvent EndedContactWithItem (item, withItem)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllBoundaries()
		  Declare sub removeAllBoundaries lib UIKitLibName selector "removeAllBoundaries" (id as ptr)
		  removeAllBoundaries id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveBoundary(Identifier as CFStringRef)
		  Declare sub removeBoundaryWithIdentifier lib UIKitLibName selector "removeBoundaryWithIdentifier:" (id as ptr, identifier as CFStringRef)
		  removeBoundaryWithIdentifier id, Identifier
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveItem(Item As AppleView)
		  Declare sub removeItem lib UIKitLibName selector "removeItem:" (id as ptr, Item as ptr)
		  removeItem id, Item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTranslatesReferenceBoundsIntoBoundary(insets as UIEdgeInsets)
		  #if Target64Bit
		    Declare sub setTranslatesReferenceBoundsIntoBoundaryWithInsets lib UIKitLibName selector "setTranslatesReferenceBoundsIntoBoundaryWithInsets:" (id as ptr, insets as UIEdgeInsets)
		    setTranslatesReferenceBoundsIntoBoundaryWithInsets id, insets
		  #elseif Target32Bit
		    Declare sub setTranslatesReferenceBoundsIntoBoundaryWithInsets lib UIKitLibName selector "setTranslatesReferenceBoundsIntoBoundaryWithInsets:" (id as ptr, insets as UIEdgeInsets32Bit)
		    setTranslatesReferenceBoundsIntoBoundaryWithInsets id, insets.toUIEdgeInset32
		  #endif
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BeganContactWithBoundary(Item as AppleView, Identifier as Text, atPoint as FoundationFrameWork.NSPoint)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event BeganContactWithItem(Item as AppleView, withItem as Appleview, atPoint as FoundationFrameWork.NSPoint)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EndedContactWithBoundary(Item as AppleView, Identifier as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EndedContactWithItem(Item as AppleView, withItem as Appleview)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function boundaryIdentifiers lib UIKitLibName selector "boundaryIdentifiers" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (boundaryIdentifiers(id))
			End Get
		#tag EndGetter
		BoundaryIdentifiers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("willMoveToAnimator:", AddressOf impl_willMoveToAnimator, "v@:@")
			    methods.Append new TargetClassMethodHelper("collisionBehavior:endedContactForItem:withBoundaryIdentifier:", AddressOf impl_endedContactWithBoundary, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("collisionBehavior:endedContactForItem:withItem:", AddressOf impl_endedContactWithItem, "v@:@@@")
			    #if Target64Bit
			      methods.Append new TargetClassMethodHelper("collisionBehavior:beganContactForItem:withBoundaryIdentifier:atPoint:", AddressOf impl_beganContactWithBoundary64, "v@:@@@{CGPoint}")
			      methods.Append new TargetClassMethodHelper("collisionBehavior:beganContactForItem:withItem:atPoint:", AddressOf impl_beganContactWithItem64, "v@:@@@{CGPoint}")
			    #elseif Target32Bit
			      methods.Append new TargetClassMethodHelper("collisionBehavior:beganContactForItem:withBoundaryIdentifier:atPoint:", AddressOf impl_beganContactWithBoundary32, "v@:@@@{CGPoint}")
			      methods.Append new TargetClassMethodHelper("collisionBehavior:beganContactForItem:withItem:atPoint:", AddressOf impl_beganContactWithItem32, "v@:@@@{CGPoint}")
			    #endif
			    
			    
			    targetID = BuildTargetClass ("UICollisionBehavior", "iOSLibCollisionBehavior",methods)
			  end if
			  Return targetID
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim behavior as uinteger = CollisionMode
			  select case behavior
			  case 1
			    return UICollisionBehaviorMode.Items
			  case 2
			    return UICollisionBehaviorMode.Boundaries
			  else
			    return UICollisionBehaviorMode.Everything
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case  UICollisionBehaviorMode.Items
			    CollisionMode = 1
			  case UICollisionBehaviorMode.Boundaries
			    CollisionMode = 2
			  else
			    CollisionMode = if (IntegerSize = 4, &hffffffff, &hffffffffffffffff)
			  end select
			End Set
		#tag EndSetter
		CollisionBehavior As UICollisionBehaviorMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function collisionDelegate lib UIKitLibName selector "collisionDelegate" (id as ptr) as ptr
			  return AppleObject.MakeFromPtr (collisionDelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setCollisionDelegate lib UIKitLibName selector "setCollisionDelegate:" (id as ptr, value as ptr)
			  setCollisionDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		CollisionDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Declare function collisionMode lib UIKitLibName selector "collisionMode" (id as ptr) as UInteger
			  return collisionMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setCollisionMode lib UIKitLibName selector "setCollisionMode:" (id as ptr, value as UInteger)
			  setCollisionMode id, value
			End Set
		#tag EndSetter
		Private CollisionMode As UInteger
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
			  Declare function translatesReferenceBoundsIntoBoundary lib UIKitLibName selector "translatesReferenceBoundsIntoBoundary" (id as ptr) as boolean
			  return translatesReferenceBoundsIntoBoundary (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTranslatesReferenceBoundsIntoBoundary lib UIKitLibName selector "setTranslatesReferenceBoundsIntoBoundary:" (id as ptr, value as boolean)
			  settranslatesReferenceBoundsIntoBoundary (id, value)
			End Set
		#tag EndSetter
		TranslatesReferenceBoundsIntoBoundary As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = UICollisionBehaviorMode, Type = UInteger, Flags = &h0
		Items
		  Boundaries
		Everything
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="CollisionBehavior"
			Group="Behavior"
			Type="UICollisionBehaviorMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Items"
				"1 - Boundaries"
				"2 - Everything"
			#tag EndEnumValues
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
			Name="TranslatesReferenceBoundsIntoBoundary"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
