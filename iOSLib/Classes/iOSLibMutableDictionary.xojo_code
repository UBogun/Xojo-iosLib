#tag Class
Protected Class iOSLibMutableDictionary
Inherits iOSLibDictionary
	#tag Method, Flags = &h1000
		Sub Constructor(Capacity as uinteger)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (DoInitWithCapacity (alloc(classptr), Capacity))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetObjectForKey(Key as CFstringRef, anObject as iOSLibObject)
		  Declare sub setObjectForKey lib UIKit selector "setObject:forKey:" (id as ptr, value  as ptr, key as CFStringRef)
		  setObjectForKey id, anObject.id, key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueForKey(Key as CFstringRef, value as cfstringref)
		  Declare sub setValueForKey lib UIKit selector "setValue:forKey:" (id as ptr, value as CFStringRef, key as CFStringRef)
		  setValueForKey id, value, key
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSMutableDictionary")
			  return mClassPtr
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
