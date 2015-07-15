#tag Class
Protected Class AppleMethodSignature
Inherits AppleObject
	#tag Method, Flags = &h0
		Function ArgumentTypeAtIndex(index as UInteger) As cstring
		  declare function getArgumentTypeAtIndex lib Foundation selector "getArgumentTypeAtIndex:" (id as ptr, index as UInteger) as CString
		  return getArgumentTypeAtIndex (id, index)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub constructor()
		  // to prevent creating empty MethodSignatures
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Types as CString)
		  Declare Function signatureWithObjCTypes lib Foundation selector "signatureWithObjCTypes:" (id as ptr, types as cstring) As Ptr
		  Super.Constructor (signatureWithObjCTypes (ClassPtr, Types))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub constructor(anId as ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From MacOSObject
		  // Constructor(id as Ptr) -- From MacOSObject
		  Super.Constructor (anId)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getArgumentTypes() As text()
		  dim myTypes() as Text
		  for q as uinteger = 0 to NumberOfArguments -1
		    myTypes.Append TextExtension.FromCString (ArgumentTypeAtIndex (q))
		  next
		  return myTypes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleMethodSignature
		  return if (aptr = nil, nil, new AppleMethodSignature (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getArgumentTypes.toCommaList
			End Get
		#tag EndGetter
		Argumenttypes As CFStringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSMethodSignature")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function frameLength lib Foundation selector "frameLength" (id as ptr) as UInteger
			    return frameLength (id)
			  #endif
			End Get
		#tag EndGetter
		FrameLength As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function isOneway lib Foundation selector "isOneway" (id as ptr) as boolean
			    return isOneway (id)
			  #endif
			End Get
		#tag EndGetter
		isOneWay As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function methodReturnLength lib Foundation selector "methodReturnLength" (id as ptr) as UInteger
			    return methodReturnLength (id)
			  #endif
			End Get
		#tag EndGetter
		MethodReturnLength As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function methodReturnType lib Foundation selector "methodReturnType" (id as ptr) as CString
			    return methodReturnType (id)
			  #endif
			End Get
		#tag EndGetter
		MethodReturnType As CString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function numberOfArguments lib Foundation selector "numberOfArguments" (id as ptr) as UInteger
			    return numberOfArguments (id)
			  #endif
			End Get
		#tag EndGetter
		NumberOfArguments As UInteger
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
			Name="isOneWay"
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
