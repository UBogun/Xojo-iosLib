#tag Class
Protected Class AppleDynamicAnimator
Inherits Appleobject
	#tag Method, Flags = &h0
		Sub AddBehavior(Behavior as AppleDynamicBehavior)
		  declare sub addBehavior lib UIKitLibName selector "addBehavior:" (id as ptr, behavior as ptr)
		  addBehavior id, Behavior.id
		  if Behavior isa AppleCollisionBehavior then
		    dim mycollision as AppleCollisionBehavior = AppleCollisionBehavior (Behavior)
		    dim classname as text = TextExtension.fromCString(me.EventDelegate.ClassName)
		    if classname = "iOSLibAppleDynamicEventDelegate" then 
		      dim myDelegate as AppleDynamicsEventDelegate = new AppleDynamicsEventDelegate(me.EventDelegate.id)
		      myDelegate.AddItem (Behavior.id, WeakRef.create(me))
		      mycollision.CollisionDelegate = myDelegate
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(ReferenceView as AppleView)
		  Declare function initWithReferenceView lib UIKitLibName selector "initWithReferenceView:" (id as ptr, ReferenceView as ptr) as ptr
		  super.Constructor (initWithReferenceView(Alloc(ClassPtr), ReferenceView.id))
		  if me.getDelegate = nil then me.setDelegate (id)
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ReferenceView as iOSControl)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Constructor (ReferenceView.AppleView)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ReferenceView as iOSView)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Constructor (ReferenceView.AppleView)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aPtr as Ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (aptr)
		  if me.getDelegate = nil then me.setDelegate (id)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_dynamicAnimatorDidPause(pid as ptr, sel as ptr, animator as Ptr)
		  dim ego as new AppleDynamicAnimator (animator)
		  if not ego.IsNIL then ego.informonDidPause
		  
		  #Pragma Unused  sel
		  #Pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_dynamicAnimatorWillResume(pid as ptr, sel as ptr, animator as Ptr)
		  dim ego as new AppleDynamicAnimator (animator)
		  if not ego.IsNIL then ego.informonWillResume
		  
		  #Pragma Unused  sel
		  #Pragma unused pid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnDidPause()
		  raiseEvent DidPause
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnWillResume()
		  raiseEvent WillResume
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ItemsInRect(aRect as FoundationFrameWork.nsrect) As AppleArray
		  #if Target64Bit
		    declare function itemsinRect lib UIKitLibName selector "itemsInRect:" (id as ptr, rect as FoundationFrameWork.nsrect) as Ptr
		    return AppleMutableArray.MakeFromPtr( itemsinRect (id, aRect))
		  #elseif Target32Bit
		    declare function itemsinRect lib UIKitLibName selector "itemsInRect:" (id as ptr, rect as FoundationFrameWork.nsrect32Bit) as Ptr
		    return AppleMutableArray.MakeFromPtr( itemsinRect (id, aRect.tonsRect32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleDynamicAnimator
		  return if (aptr = nil, nil, new AppleDynamicAnimator(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllBehaviors()
		  declare sub removeAllBehaviors lib UIKitLibName selector "removeAllBehaviors" (id as ptr)
		  removeAllBehaviors id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveBehavior(Behavior as AppleDynamicBehavior)
		  declare sub removeBehavior lib UIKitLibName selector "removeBehavior:" (id as ptr, behavior as ptr)
		  removeBehavior id, Behavior.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateItem(Item as AppleView)
		  declare sub updateItemUsingCurrentState lib UIKitLibName selector "updateItemUsingCurrentState:" (id as ptr, item as ptr)
		  updateItemUsingCurrentState id, item.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateItem(Item as iOSControl)
		  UpdateItem item.AppleView
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DidPause()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillResume()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function behaviors lib UIKitLibName selector "behaviors" (id as ptr) as ptr
			  return AppleMutableArray.MakeFromPtr ( behaviors (id))
			End Get
		#tag EndGetter
		Behaviors As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("dynamicAnimatorDidPause:", AddressOf impl_dynamicAnimatorDidPause, "v@:@")
			    methods.Append new TargetClassMethodHelper("dynamicAnimatorWillResume:", AddressOf impl_dynamicAnimatorWillResume, "v@:@")
			    
			    targetID = BuildTargetClass ("UIDynamicAnimator", "iOSLibDynamicAnimator",methods)
			  end if
			  Return targetID
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function elapsedTime lib UIKitLibName selector "elapsedTime" (id as ptr) as double
			  return elapsedTime (id)
			End Get
		#tag EndGetter
		ElapsedTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleobject.MakeFromPtr (me.getDelegate)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.setDelegate if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		EventDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function referenceView lib UIKitLibName selector "referenceView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr ( referenceView (id))
			End Get
		#tag EndGetter
		ReferenceView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function running lib UIKitLibName selector "isRunning" (id as ptr) as boolean
			  return running (id)
			End Get
		#tag EndGetter
		Running As Boolean
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
			Name="ElapsedTime"
			Group="Behavior"
			Type="Double"
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
			Name="Running"
			Group="Behavior"
			Type="Boolean"
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
