#tag Class
Protected Class NSMethodSignature
	#tag Method, Flags = &h0
		Function ArgumentType(index as UInteger) As cstring
		  declare function getArgumentTypeAtIndex lib UIKit selector "getArgumentTypeAtIndex:" (id as ptr, index as UInteger) as CString
		  return getArgumentTypeAtIndex (id, index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Address as Ptr)
		  mid = Address
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Me
		
		This is an implementation of NSMethodSignature, an iOS class used for introspection into methods. 
		Part of the iOSControls library available on xojoblog.me
		
		
		* Use *
		
		Currently there is no real consturctor, use it to decipher Signatures delivered from NSObject's methodSignatureforSelector: method.
		The appopriate way would be something like
		DIM mySignature as MethodSignature = myobject.MethodSignature (aSelector as Text)
		
		and then you can read out its properties:
		
		– Asynchronous as Boolean (Read-Only): The sender of the message doesn't block code execution awaiting a reply.
		
		– FrameLength as UInteger (Read-only): The number of bytes that the arguments, taken together, occupy on the stack. 
		
		– NumberOfArguments as UInteger (Read-Only): The number or aguments to be passed to the method.
		
		– ReturnLength as UInteger (Read-Only): The number of bytes required for the return value
		
		– ReturnType as CString (Read-Only): The return type of the method.
		
		
		and via a method
		
		– Argumenttype (Index as Uinteger) as Cstring: The argument Type of the argument at index. 
		  Note there are two hidden arguments self (of type id) and _cmd (of type SEL)  at indices 0 and 1.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function isOneway lib UIKit selector "isOneway" (id as ptr) as Boolean
			  return isOneway (id)
			End Get
		#tag EndGetter
		Asynchronous As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString("NSMethodSignature")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function frameLength lib UIKit selector "frameLength" (id as ptr) as UInteger
			  return frameLength (id)
			End Get
		#tag EndGetter
		frameLength As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function numberOfArguments lib UIKit selector "numberOfArguments" (id as ptr) as UInteger
			  return numberOfArguments (id)
			End Get
		#tag EndGetter
		NumberOfArguments As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function methodReturnLength lib UIKit selector "methodReturnLength" (id as ptr) as UInteger
			  return methodReturnLength (id)
			End Get
		#tag EndGetter
		ReturnLength As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function methodReturnType lib UIKit selector "methodReturnType" (id as ptr) as CString
			  return methodReturnType (id)
			End Get
		#tag EndGetter
		ReturnType As CString
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Asynchronous"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
