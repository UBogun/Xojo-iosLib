#tag Class
Protected Class AppleURLSessionTask1
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub Cancel()
		  Declare sub cancel lib Foundation selector "cancel" (id as ptr)
		  cancel id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLSessionTask
		  return if (aptr = nil, nil, new AppleURLSessionTask(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Resume()
		  Declare sub resume lib Foundation selector "resume" (id as ptr)
		  resume id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Suspend()
		  Declare sub suspend lib Foundation selector "suspend" (id as ptr)
		  suspend id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function countOfBytesExpectedToReceive lib Foundation selector "countOfBytesExpectedToReceive" (id as ptr) as Int64
			  return countOfBytesExpectedToReceive (id)
			End Get
		#tag EndGetter
		BytesExpectedToReceive As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function countOfBytesExpectedToSend lib Foundation selector "countOfBytesExpectedToSend" (id as ptr) as Int64
			  return countOfBytesExpectedToSend (id)
			End Get
		#tag EndGetter
		BytesExpectedToSend As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function countOfBytesReceived lib Foundation selector "countOfBytesReceived" (id as ptr) as Int64
			  return countOfBytesReceived (id)
			End Get
		#tag EndGetter
		BytesReceived As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function countOfBytesSent lib Foundation selector "countOfBytesSent" (id as ptr) as Int64
			  return countOfBytesSent (id)
			End Get
		#tag EndGetter
		BytesSent As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSURLSessionTask")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function currentRequest lib Foundation selector "currentRequest" (id as ptr) as Ptr
			  return AppleURLRequest.MakeFromPtr (currentRequest(id))
			End Get
		#tag EndGetter
		CurrentRequest As AppleURLRequest
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function error lib Foundation selector "error" (id as ptr) as Ptr
			  return AppleError.MakefromPtr (error (id))
			End Get
		#tag EndGetter
		Error As AppleError
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function originalRequest lib Foundation selector "originalRequest" (id as ptr) as Ptr
			  return AppleURLRequest.MakeFromPtr (originalRequest(id))
			End Get
		#tag EndGetter
		OriginalRequest As AppleURLRequest
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function response lib Foundation selector "response" (id as ptr) as Ptr
			  return AppleURLResponse.MakeFromPtr (response(id))
			End Get
		#tag EndGetter
		Response As AppleURLResponse
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function state lib Foundation selector "state" (id as ptr) as NSURLSessionTaskState
			  return state (id)
			End Get
		#tag EndGetter
		State As NSURLSessionTaskState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function taskDescription lib Foundation selector "taskDescription" (id as ptr) as CFStringRef
			  return taskDescription (id)
			End Get
		#tag EndGetter
		TaskDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function taskIdentifier lib Foundation selector "taskIdentifier" (id as ptr) as UInteger
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
