#tag Class
Protected Class DelegateClass
	#tag Method, Flags = &h1
		Protected Sub CreationError()
		  dim err as new xojo.Core.ErrorException
		  err.Reason = "Unable to create Delegate class "+DelegateClassName
		  Raise err
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Me - DelegateClass
		this is a base class for custom iOS Delegates. 
		use it by creating a subclass of it with a custom DelegateClassName Constant, adding the needed funtions in the subclass' constructor and calling ObjectiveCRuntime.objc_registerClassPair on it
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = NSClassFromString ("NSObject")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHandle
			End Get
		#tag EndGetter
		Handle As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mHandle As Ptr
	#tag EndProperty


	#tag Constant, Name = DelegateClassName, Type = Text, Dynamic = False, Default = \"iOSControlObject", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDelegateMethodTypeSignature, Type = Text, Dynamic = False, Default = \"v@:@", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
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
