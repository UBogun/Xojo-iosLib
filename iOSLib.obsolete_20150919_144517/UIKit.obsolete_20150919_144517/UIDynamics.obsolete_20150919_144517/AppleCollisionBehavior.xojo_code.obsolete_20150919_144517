#tag Class
Protected Class AppleCollisionBehavior
Inherits AppleDynamicBehavior
	#tag Method, Flags = &h0
		Sub AddItem(Item As AppleView)
		  Declare sub addItem lib UIKitLibName selector "addItem:" (id as ptr, Item as ptr)
		  addItem id, Item.id
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
		Sub RemoveItem(Item As AppleView)
		  Declare sub removeItem lib UIKitLibName selector "removeItem:" (id as ptr, Item as ptr)
		  removeItem id, Item.id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("willMoveToAnimator:", AddressOf impl_willMoveToAnimator, "v@:@")
			    
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
