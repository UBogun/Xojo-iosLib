#tag Class
Protected Class AppleGestureRecognizerReceiver
Inherits AppleObject
Implements AppleNSEventForwarder
	#tag Method, Flags = &h1000
		Sub Constructor(receiver as AppleNSEventReceiver)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (init(Alloc(classptr)))
		  MHasOwnership = true
		  if Observers = nil then Observers = new Dictionary
		  RegisterObserver (receiver)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  if mhasownership then RemoveObserver
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_GestureRecognized(pid as ptr, sel as ptr)
		  dim ego as new AppleGestureRecognizerReceiver (pid)
		  if not ego.IsNIL then
		    ego.NotifyObservers (Nil)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(EventProperties As AppleArray)
		  // Part of the AppleNSEventForwarder interface.
		  
		  if Observers.HasKey(id) then
		    dim wr as WeakRef = WeakRef(Observers.Value(id))
		    if wr.Value <> nil then
		      dim myParent as iOSLibGestureRecognizer = iOSLibGestureRecognizer(wr.Value)
		      myParent.GestureRecognized
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As AppleNSEventReceiver)
		  // Part of the AppleNSEventForwarder interface.
		  
		  observers.Value (id) = weakref.create(observer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver()
		  // Part of the AppleNSEventForwarder interface.
		  
		  if Observers.HasKey(id) then Observers.Remove id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    if Observers = nil then Observers = new Dictionary
			    dim methods() as TargetClassMethodHelper
			    
			    methods.Append new TargetClassMethodHelper("gestureRecognized", AddressOf impl_GestureRecognized, "v@:")
			    
			    targetID = BuildTargetClass ("NSObject", "iOSLibGestureRecognizerReceiver",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected Shared Observers As Dictionary
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
