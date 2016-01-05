#tag Class
Protected Class AppleCAAnimationDelegate
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  super.Constructor  (Init(Alloc(classptr)))
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_animationdidstart(pid as ptr, sel as ptr, animation as ptr) As ptr
		  dim myAni as new AppleCAAnimation (animation)
		  if not myAni.IsNIL  then myani.informonstart
		  #Pragma Unused Pid
		  #pragma unused SEL
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_animationdidstopFinished(pid as ptr, sel as ptr, animation as ptr, Finished as boolean) As ptr
		  dim myAni as new AppleCAAnimation (animation)
		  if not myAni.IsNIL  then myani.informonstop (Finished)
		  #Pragma Unused Pid
		  #pragma unused SEL
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    //delegate methods
			    methods.Append new TargetClassMethodHelper("animationDidStart:", AddressOf impl_animationdidstart, "v@:@")
			    methods.Append new TargetClassMethodHelper("animationDidStop:finished:", AddressOf impl_animationdidstopFinished, "v@:@c")
			    targetID = BuildTargetClass ("NSObject", "AppleCAAnimationDelegate",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
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
