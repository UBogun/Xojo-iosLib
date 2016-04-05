#tag Class
Protected Class AppleURLSessionTask
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 43616E63656C7320746865207461736B2E
		Sub Cancel()
		  Declare sub cancel lib FoundationLibName  selector "cancel" (id as ptr)
		  cancel id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getpriority Lib foundationlibname Selector "priority" (id as ptr) As single
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLSessionTask
		  return if (aptr = nil, nil, new AppleURLSessionTask(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573756D657320746865207461736B2C2069662069742069732073757370656E6465642E
		Sub Resume()
		  Declare sub resume lib FoundationLibName  selector "resume" (id as ptr)
		  resume id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setpriority Lib foundationlibname Selector "setPriority:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 54656D706F726172696C792073757370656E64732061207461736B2E
		Sub Suspend()
		  Declare sub suspend lib FoundationLibName  selector "suspend" (id as ptr)
		  suspend id
		End Sub
	#tag EndMethod


	#tag Note, Name = Finished
		
		session priority constants not retrieved
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206279746573207468617420746865207461736B206578706563747320746F207265636569766520696E2074686520726573706F6E736520626F64792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function countOfBytesExpectedToReceive lib FoundationLibName  selector "countOfBytesExpectedToReceive" (id as ptr) as Int64
			  return countOfBytesExpectedToReceive (id)
			End Get
		#tag EndGetter
		BytesExpectedToReceive As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 6865206E756D626572206F66206279746573207468617420746865207461736B206578706563747320746F2073656E6420696E20746865207265717565737420626F64792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function countOfBytesExpectedToSend lib FoundationLibName  selector "countOfBytesExpectedToSend" (id as ptr) as Int64
			  return countOfBytesExpectedToSend (id)
			End Get
		#tag EndGetter
		BytesExpectedToSend As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206279746573207468617420746865207461736B206861732072656365697665642066726F6D207468652073657276657220696E2074686520726573706F6E736520626F64792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function countOfBytesReceived lib FoundationLibName  selector "countOfBytesReceived" (id as ptr) as Int64
			  return countOfBytesReceived (id)
			End Get
		#tag EndGetter
		BytesReceived As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206279746573207468617420746865207461736B206861732073656E7420746F207468652073657276657220696E20746865207265717565737420626F64792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function countOfBytesSent lib FoundationLibName  selector "countOfBytesSent" (id as ptr) as Int64
			  return countOfBytesSent (id)
			End Get
		#tag EndGetter
		BytesSent As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSURLSessionTask")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055524C2072657175657374206F626A6563742063757272656E746C79206265696E672068616E646C656420627920746865207461736B2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function currentRequest lib FoundationLibName  selector "currentRequest" (id as ptr) as Ptr
			  return AppleURLRequest.MakeFromPtr (currentRequest(id))
			End Get
		#tag EndGetter
		CurrentRequest As AppleURLRequest
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206572726F72206F626A656374207468617420696E646963617465732077687920746865207461736B206661696C65642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function error lib FoundationLibName  selector "error" (id as ptr) as Ptr
			  return AppleError.MakefromPtr (error (id))
			End Get
		#tag EndGetter
		Error As AppleError
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F726967696E616C2072657175657374206F626A65637420706173736564207768656E20746865207461736B2077617320637265617465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function originalRequest lib FoundationLibName  selector "originalRequest" (id as ptr) as Ptr
			  return AppleURLRequest.MakeFromPtr (originalRequest(id))
			End Get
		#tag EndGetter
		OriginalRequest As AppleURLRequest
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656C6174697665207072696F7269747920617420776869636820796F75E2809964206C696B65206120686F737420746F2068616E646C6520746865207461736B2C20737065636966696564206173206120666C6F6174696E6720706F696E742076616C7565206265747765656E20302E3020286C6F77657374207072696F726974792920616E6420312E30202868696768657374207072696F72697479292E
		#tag Getter
			Get
			  return getpriority (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpriority id, value
			End Set
		#tag EndSetter
		Priority As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736572766572E280997320726573706F6E736520746F207468652063757272656E746C792061637469766520726571756573742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function response lib FoundationLibName  selector "response" (id as ptr) as Ptr
			  return AppleURLResponse.MakeFromPtr (response(id))
			End Get
		#tag EndGetter
		Response As AppleURLResponse
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207374617465206F6620746865207461736BE280946163746976652C2073757370656E6465642C20696E207468652070726F63657373206F66206265696E672063616E63656C65642C206F7220636F6D706C657465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function state lib FoundationLibName  selector "state" (id as ptr) as NSURLSessionTaskState
			  return state (id)
			End Get
		#tag EndGetter
		State As NSURLSessionTaskState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206170702D70726F7669646564206465736372697074696F6E206F66207468652063757272656E74207461736B2E
		#tag Getter
			Get
			  Declare Function taskDescription lib FoundationLibName  selector "taskDescription" (id as ptr) as CFStringRef
			  return taskDescription (id)
			End Get
		#tag EndGetter
		TaskDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206964656E74696669657220756E697175656C79206964656E74696669657320746865207461736B2077697468696E206120676976656E2073657373696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function taskIdentifier lib FoundationLibName  selector "taskIdentifier" (id as ptr) as UInteger
			  return taskIdentifier (id)
			End Get
		#tag EndGetter
		TaskIdentifier As UInteger
	#tag EndComputedProperty


	#tag Enum, Name = NSURLSessionTaskState, Type = Integer, Flags = &h0
		Running
		  Suspended
		  Canceling
		Completed
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="BytesExpectedToReceive"
			Group="Behavior"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BytesExpectedToSend"
			Group="Behavior"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BytesReceived"
			Group="Behavior"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BytesSent"
			Group="Behavior"
			Type="Int64"
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
			Name="Priority"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="NSURLSessionTaskState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Running"
				"1 - Suspended"
				"2 - Canceling"
				"3 - Completed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TaskDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TaskIdentifier"
			Group="Behavior"
			Type="UInteger"
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
