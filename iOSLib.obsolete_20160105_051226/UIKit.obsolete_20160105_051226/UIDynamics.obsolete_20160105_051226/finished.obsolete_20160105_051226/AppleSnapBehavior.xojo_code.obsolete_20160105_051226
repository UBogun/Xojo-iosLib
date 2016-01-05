#tag Class
Protected Class AppleSnapBehavior
Inherits AppleDynamicBehavior
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  // All the consturctors here are shared Methods!
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(item as Appleview, SnapPoint as FoundationFrameWork.nspoint)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    Declare function initWithItemsnap lib UIKitLibName selector "initWithItem:snapToPoint:" (id as ptr, item as Ptr, anchor as FoundationFrameWork.nspoint) as ptr
		    Super.Constructor (initWithItemsnap(alloc(classptr), item.id, SnapPoint))
		  #elseif Target32Bit
		    Declare function initWithItemsnap lib UIKitLibName selector "initWithItem:snapToPoint:" (id as ptr, item as Ptr, anchor as FoundationFrameWork.nspoint32bit) as ptr
		    Super.Constructor (initWithItemsnap(alloc(classptr), item.id, SnapPoint.toNSPoint32))
		  #endif
		  MHasOwnership = true
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("willMoveToAnimator:", AddressOf impl_willMoveToAnimator, "v@:@")
			    
			    targetID = BuildTargetClass ("UISnapBehavior", "iOSLibSnapBehavior",methods)
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
			    Declare function damping lib UIKitLibName selector "damping" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function damping lib UIKitLibName selector "damping" (id as ptr) as single
			  #endif
			  return damping (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setDamping lib UIKitLibName selector "setDamping:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setDamping lib UIKitLibName selector "setDamping:" (id as ptr, value as single)
			  #endif
			  setDamping (id, value)
			  
			End Set
		#tag EndSetter
		Damping As double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Damping"
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
