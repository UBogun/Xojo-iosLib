#tag Class
Protected Class AppleDynamicsEventDelegate
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AddItem(item as ptr, value as weakref)
		  InstanceDict.value(item) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (init(Alloc(classptr)))
		  MHasownership = true
		  system.debuglog "Delegate: "+ integer(me.id).ToHex
		  if InstanceDict = nil then InstanceDict= new Dictionary
		  InstanceDict.Value (id)= WeakRef.Create (me)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_beganContactWithBoundary32(pid as ptr, sel as ptr, behavior as Ptr, item as ptr, Identifier as CFStringRef, atPoint as FoundationFrameWork.NSPoint32Bit)
		  if InstanceDict.HasKey (pid) then
		    dim wr as WeakRef = InstanceDict.value(pid)
		    if wr.Value <> nil then
		      dim ego as AppleDynamicsEventDelegate = AppleDynamicsEventDelegate ( wr.Value)
		      dim mybehavior as new AppleDynamicBehavior (behavior)
		      dim ContactItem as new AppleView (item)
		      ego.informonBeganContactWithBoundary (mybehavior, ContactItem, Identifier, atPoint.toNSPoint)
		    end if
		  end if
		  
		  #Pragma Unused  sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_beganContactWithBoundary64(pid as ptr, sel as ptr, behavior as Ptr, item as ptr, Identifier as CFStringRef, atPoint as FoundationFrameWork.NSPoint)
		  if InstanceDict.HasKey (pid) then
		    dim wr as WeakRef = InstanceDict.value(pid)
		    if wr.Value <> nil then
		      dim ego as AppleDynamicsEventDelegate = AppleDynamicsEventDelegate ( wr.Value)
		      dim mybehavior as new AppleDynamicBehavior (behavior)
		      dim ContactItem as new AppleView (item)
		      ego.informonBeganContactWithBoundary (mybehavior, ContactItem, Identifier, atPoint)
		    end if
		  end if
		  
		  #Pragma Unused  sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_beganContactWithItem32(pid as ptr, sel as ptr, behavior as Ptr, foritem as ptr, withItem as ptr, atPoint as FoundationFrameWork.NSPoint32Bit)
		  if InstanceDict.HasKey (pid) then
		    dim wr as WeakRef = InstanceDict.value(pid)
		    if wr.Value <> nil then
		      dim ego as AppleDynamicsEventDelegate = AppleDynamicsEventDelegate ( wr.Value)
		      dim mybehavior as new AppleDynamicBehavior (behavior)
		      dim ContactItem as new AppleView (foritem)
		      dim otheritem as new appleview (withitem)
		      ego.informonBeganContactWithItem (mybehavior, ContactItem, otheritem, atPoint.toNSPoint)
		    end if
		  end if
		  
		  #Pragma Unused  sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_beganContactWithItem64(pid as ptr, sel as ptr, behavior as Ptr, foritem as ptr, withItem as ptr, atPoint as FoundationFrameWork.NSPoint)
		  if InstanceDict.HasKey (pid) then
		    dim wr as WeakRef = InstanceDict.value(pid)
		    if wr.Value <> nil then
		      dim ego as AppleDynamicsEventDelegate = AppleDynamicsEventDelegate ( wr.Value)
		      dim mybehavior as new AppleDynamicBehavior (behavior)
		      dim ContactItem as new AppleView (foritem)
		      dim otheritem as new AppleView (withitem)
		      ego.informonBeganContactWithItem (mybehavior, ContactItem, otheritem, atPoint)
		    end if
		  end if
		  
		  #Pragma Unused  sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_dynamicAnimatorDidPause(pid as ptr, sel as ptr, animator as Ptr)
		  if InstanceDict.HasKey (pid) then
		    dim wr as WeakRef = InstanceDict.value(pid)
		    if wr.Value <> nil then
		      dim ego as AppleDynamicsEventDelegate = AppleDynamicsEventDelegate ( wr.Value)
		      
		      ego.informonDidPause (animator)
		    end if
		  end if
		  
		  #Pragma Unused  sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_dynamicAnimatorWillResume(pid as ptr, sel as ptr, animator as Ptr)
		  if InstanceDict.HasKey (pid) then
		    dim wr as WeakRef = InstanceDict.value(pid)
		    if wr.Value <> nil then
		      dim ego as AppleDynamicsEventDelegate = AppleDynamicsEventDelegate ( wr.Value)
		      
		      ego.informonWillResume (animator)
		    end if
		  end if
		  
		  #Pragma Unused  sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_endedContactWithBoundary(pid as ptr, sel as ptr, behavior as Ptr, item as ptr, Identifier as CFStringRef)
		  if InstanceDict.HasKey (pid) then
		    dim wr as WeakRef = InstanceDict.value(pid)
		    if wr.Value <> nil then
		      dim ego as AppleDynamicsEventDelegate = AppleDynamicsEventDelegate ( wr.Value)
		      dim mybehavior as new AppleDynamicBehavior (behavior)
		      dim ContactItem as new AppleView (item)
		      ego.informonEndedContactWithBoundary (mybehavior, ContactItem, Identifier)
		    end if
		  end if
		  
		  #Pragma Unused  sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_endedContactWithItem(pid as ptr, sel as ptr, behavior as Ptr, foritem as ptr, withItem as ptr)
		  if InstanceDict.HasKey (pid) then
		    dim wr as WeakRef = InstanceDict.value(pid)
		    if wr.Value <> nil then
		      dim ego as AppleDynamicsEventDelegate = AppleDynamicsEventDelegate ( wr.Value)
		      dim mybehavior as new AppleDynamicBehavior (behavior)
		      dim ContactItem as new AppleView (foritem)
		      dim mywithitem as new appleview (withItem)
		      ego.informonEndedContactWithItem (mybehavior, ContactItem, mywithitem)
		    end if
		  end if
		  
		  #Pragma Unused  sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonBeganContactWithBoundary(behavior as appledynamicbehavior, Item as AppleView, Identifier as Text, atPoint as FoundationFrameWork.NSPoint)
		  RaiseEvent BeganContactWithBoundary (behavior, item, identifier, atPoint)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonBeganContactWithItem(behavior as appledynamicbehavior, Item as AppleView, withItem as Appleview, atPoint as FoundationFrameWork.NSPoint)
		  RaiseEvent BeganContactWithItem (behavior, item, withItem, atPoint)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnDidPause(animator as ptr)
		  raiseEvent AnimatorDidPause (new AppleDynamicAnimator(animator))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonEndedContactWithBoundary(behavior as appledynamicbehavior, Item as AppleView, Identifier as Text)
		  RaiseEvent EndedContactWithBoundary (behavior, item, identifier)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonEndedContactWithItem(behavior as appledynamicbehavior, Item as AppleView, withItem as Appleview)
		  RaiseEvent EndedContactWithItem (behavior, item, withItem)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnWillResume(animator as ptr)
		  raiseEvent AnimatorWillResume (new AppleDynamicAnimator(animator))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveItem(item as ptr)
		  if InstanceDict.HasKey (item) then InstanceDict.Remove (item)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AnimatorDidPause(animator as AppleDynamicAnimator)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event AnimatorWillResume(animator as AppleDynamicAnimator)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event BeganContactWithBoundary(Bevahior as AppleDynamicBehavior,  Item as AppleView, Identifier as Text, atPoint as FoundationFrameWork.NSPoint)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event BeganContactWithItem(Bevahior as AppleDynamicBehavior, Item as AppleView, withItem as Appleview, atPoint as FoundationFrameWork.NSPoint)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EndedContactWithBoundary(Bevahior as AppleDynamicBehavior, Item as AppleView, Identifier as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EndedContactWithItem(Bevahior as AppleDynamicBehavior, Item as AppleView, withItem as Appleview)
	#tag EndHook


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("dynamicAnimatorDidPause:", AddressOf impl_dynamicAnimatorDidPause, "v@:@")
			    methods.Append new TargetClassMethodHelper("dynamicAnimatorWillResume:", AddressOf impl_dynamicAnimatorWillResume, "v@:@")
			    methods.Append new TargetClassMethodHelper("collisionBehavior:endedContactForItem:withBoundaryIdentifier:", AddressOf impl_endedContactWithBoundary, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("collisionBehavior:endedContactForItem:withItem:", AddressOf impl_endedContactwithItem, "v@:@@@")
			    #if Target64Bit
			      methods.Append new TargetClassMethodHelper("collisionBehavior:beganContactForItem:withBoundaryIdentifier:atPoint:", AddressOf impl_beganContactWithBoundary64, "v@:@@@{CGPoint}")
			      methods.Append new TargetClassMethodHelper("collisionBehavior:beganContactForItem:withItem:atPoint:", AddressOf impl_beganContactWithItem64, "v@:@@@{CGPoint}")
			    #elseif Target32Bit
			      methods.Append new TargetClassMethodHelper("collisionBehavior:beganContactForItem:withBoundaryIdentifier:atPoint:", AddressOf impl_beganContactWithBoundary32, "v@:@@@{CGPoint}")
			      methods.Append new TargetClassMethodHelper("collisionBehavior:beganContactForItem:withItem:atPoint:", AddressOf impl_beganContactWithItem32, "v@:@@@{CGPoint}")
			    #endif
			    
			    targetID = BuildTargetClass ("NSObject", "iOSLibAppleDynamicEventDelegate",methods)
			  end if
			  Return targetID
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Shared InstanceDict As Dictionary
	#tag EndProperty


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
	#tag EndViewBehavior
End Class
#tag EndClass
