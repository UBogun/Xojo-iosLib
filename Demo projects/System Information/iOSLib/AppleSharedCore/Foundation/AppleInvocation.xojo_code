#tag Class
Protected Class AppleInvocation
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 52657475726E7320616E204E53496E766F636174696F6E206F626A6563742061626C6520746F20636F6E737472756374206D65737361676573207573696E67206120676976656E206D6574686F64207369676E61747572652E
		Sub Constructor(MethodSignature as AppleMethodSignature)
		  super.Constructor(invocationWithMethodSignature(classptr, MethodSignature.id))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetArgument(Index as Integer) As Ptr
		  dim placeholder as Ptr
		  declare sub GetArgument lib FoundationLibName  selector "getArgument:atIndex:" (id as ptr, byref agument as ptr, index as integer)
		  GetArgument id, placeholder, Index
		  return placeholder
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetArgumentObject(Index as Integer) As AppleObject
		  dim newptr as ptr 
		  declare sub GetArgument lib FoundationLibName  selector "getArgument:atIndex:" (id as ptr, agument as ptr, index as integer)
		  GetArgument id, newptr, Index
		  return AppleObject.MakeFromPtr(newptr)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetArgumentText(Index as Integer) As Text
		  dim placeholder as CFStringRef
		  declare sub GetArgument lib FoundationLibName  selector "getArgument:atIndex:" (id as ptr, byref agument as CFStringRef, index as integer)
		  GetArgument id, placeholder, Index
		  return placeholder
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function invocationWithMethodSignature Lib foundationlibname Selector "invocationWithMethodSignature:" (id as ptr, signature as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53656E64732074686520696E766F636174696F6E73E2809973206D65737361676520287769746820617267756D656E74732920746F206974732074617267657420616E642073657473207468652072657475726E2076616C75652E
		Sub Invoke()
		  invoke id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696E766F636174696F6EE2809973207461726765742C2073656E647320746865207265636569766572E2809973206D65737361676520287769746820617267756D656E74732920746F2074686174207461726765742C20616E642073657473207468652072657475726E2076616C75652E
		Sub Invoke(Target as AppleObject)
		  invokeWithTarget id, target.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub invoke Lib foundationlibname Selector "invoke" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub invokeWithTarget Lib foundationlibname Selector "invokeWithTarget:" (id as ptr, target as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleInvocation
		  return if (aptr = nil, nil, new AppleInvocation(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 49662074686520696E766F636174696F6E206861736EE280997420616C726561647920646F6E6520736F2C2072657461696E73207468652074617267657420616E6420616C6C206F626A65637420617267756D656E7473206F662074686520726563656976657220616E6420636F7069657320616C6C206F662069747320432D737472696E6720617267756D656E747320616E6420626C6F636B732E20496620612072657475726E76616C756520686173206265656E207365742C207468697320697320616C736F2072657461696E6564206F7220636F706965642E
		Sub RetainArguments()
		  declare sub retainArguments lib FoundationLibName  selector "retainArguments:" (id as ptr)
		  retainArguments id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320627920696E646972656374696F6E2074686520696E766F636174696F6EE280997320617267756D656E7420617420612073706563696669656420696E6465782E
		Sub SetArgument(argument as appleobject, Index as Integer)
		  declare sub setArgument lib FoundationLibName  selector "setArgument:atIndex:" (id as ptr, argument as ptr, index as integer)
		  setArgument id, if (argument = nil, nil, argument.id), Index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320627920696E646972656374696F6E2074686520696E766F636174696F6EE280997320617267756D656E7420617420612073706563696669656420696E6465782E
		Sub SetArgument(argument as cfstringref, Index as Integer)
		  declare sub setArgument lib FoundationLibName  selector "setArgument:atIndex:" (id as ptr, argument as cfstringref, index as integer)
		  setArgument id, argument, Index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696E766F636174696F6EE28099732072657475726E2076616C75652E
		Sub SetReturnValue(value as ptr)
		  declare sub setReturnValue lib FoundationLibName  selector "setReturnValue:" (id as ptr, value as ptr)
		  setReturnValue id, value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5472756520696620746865207265636569766572206861732072657461696E65642069747320617267756D656E74732C2066616C7365206F74686572776973652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function argumentsRetained lib FoundationLibName  selector "argumentsRetained" (id as ptr) as Boolean
			  return argumentsRetained (id)
			End Get
		#tag EndGetter
		ArgumentsRetained As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("NSInvocation")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E766F636174696F6EE2809973206D6574686F64207369676E61747572652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function methodSignature lib FoundationLibName  selector "methodSignature" (id as ptr) as Ptr
			  return ApplemethodSignature.makefromptr (methodSignature(id))
			End Get
		#tag EndGetter
		MethodSignature As AppleMethodSignature
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim buffer as new xojo.Core.MutableMemoryBlock (MethodSignature.MethodReturnLength)
			  declare sub getReturnValue lib FoundationLibName  selector "getReturnValue" (id as ptr, buffer as ptr)
			  getReturnValue (id, buffer.Data)
			  return buffer
			End Get
		#tag EndGetter
		ReturnValue As xojo.Core.MutableMemoryBlock
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E766F636174696F6EE28099732073656C6563746F722C206F72206E696C206966206974206861736EE2809974206265656E207365742E
		#tag Getter
			Get
			  Declare function getSelector lib FoundationLibName  selector "selector" (id as ptr) as ptr
			  return getSelector (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setSelector lib FoundationLibName  selector "setSelector:" (id as ptr, value as ptr)
			  setSelector (id, value)
			End Set
		#tag EndSetter
		Selector As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FoundationFrameWork.NSStringFromSelector (Selector)
			End Get
		#tag EndGetter
		SelectorName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E766F636174696F6EE2809873207461726765742C206F72206E696C20696620697420686173206E6F207461726765742E
		#tag Getter
			Get
			  Declare function target lib FoundationLibName  selector "target" (id as ptr) as ptr
			  return appleobject.MakeFromPtr( target (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTarget lib FoundationLibName  selector "setTarget:" (id as ptr, value as ptr)
			  setTarget id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Target As AppleObject
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ArgumentsRetained"
			Group="Behavior"
			Type="Boolean"
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
			Name="SelectorName"
			Group="Behavior"
			Type="Text"
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
