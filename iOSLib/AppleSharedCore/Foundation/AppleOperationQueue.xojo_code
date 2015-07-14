#tag Class
Protected Class AppleOperationQueue
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub CancelAllOperations()
		  Declare Sub cancelAllOperations lib Foundation selector "cancelAllOperations" (id as ptr)
		  CancelAllOperations id
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleOperationQueue
		  return if (aptr <> NIL, new AppleOperationQueue (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WaitUntilFinished()
		  Declare Sub waitUntilAllOperationsAreFinished lib Foundation selector "waitUntilAllOperationsAreFinished" (id as ptr)
		  waitUntilAllOperationsAreFinished id
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSOperationQueue")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function currentQueue lib Foundation selector "currentQueue" (id as ptr) as ptr
			  dim result as new AppleOperationQueue (currentQueue(classptr))
			  result.RetainClassObject
			  return result
			End Get
		#tag EndGetter
		Shared CurrentQueue As AppleOperationQueue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mMainQueue as new AppleOperationQueue
			  if mMainQueue = nil then
			    Declare function mainQueue lib Foundation selector "mainQueue" (id as ptr) as ptr
			    dim result as new AppleOperationQueue  (mainQueue (ClassPtr))
			    result.RetainClassObject
			    mMainQueue = result
			  end if
			  return mMainQueue
			End Get
		#tag EndGetter
		Shared MainQueue As AppleOperationQueue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function maxConcurrentOperationCount lib Foundation selector "maxConcurrentOperationCount" (id as ptr) as Integer
			  return maxConcurrentOperationCount (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMaxConcurrentOperationCount lib foundation selector "setMaxConcurrentOperationCount:" (id as ptr, value as integer)
			  setMaxConcurrentOperationCount (id, value)
			End Set
		#tag EndSetter
		MaxConcurrentOperationCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setname value
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function operationCount lib Foundation selector "operationCount" (id as ptr) as UInteger
			  return operationCount (id)
			  
			End Get
		#tag EndGetter
		OperationCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function Operations lib Foundation selector "operations" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (Operations(id))
			End Get
		#tag EndGetter
		Operations As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isSuspended lib Foundation selector "isSuspended" (id as ptr) as Boolean
			  return isSuspended (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSuspended lib Foundation selector "setSuspended:" (id as ptr, value as Boolean)
			  setSuspended (id, value)
			End Set
		#tag EndSetter
		Suspended As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function underlyingQueue lib Foundation selector "underlyingQueue" (id as ptr) as ptr
			  return AppleObject.MakeFromPtr (underlyingQueue(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setUnderlyingQueue lib Foundation selector "setUnderlyingQueue:" (id as ptr, value as Ptr)
			  setUnderlyingQueue (id, value.id)
			End Set
		#tag EndSetter
		UnderlyingQueue As AppleObject
	#tag EndComputedProperty


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
			Name="MaxConcurrentOperationCount"
			Group="Behavior"
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
			Name="Suspended"
			Group="Behavior"
			Type="Boolean"
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