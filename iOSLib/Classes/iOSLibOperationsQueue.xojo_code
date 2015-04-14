#tag Class
Protected Class iOSLibOperationsQueue
Inherits iosLibObject
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
		 Shared Function MakeFromPtr(aPtr as Ptr) As iOSLibOperationsQueue
		  return if (aptr <> NIL, new iOSLibOperationsQueue (aptr), NIL)
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
			  static mcurrentQueue as new iOSLibOperationsQueue (currentQueue (ClassPtr))
			  return mcurrentQueue
			End Get
		#tag EndGetter
		Shared CurrentQueue As iOSLibOperationsQueue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function mainQueue lib Foundation selector "mainQueue" (id as ptr) as ptr
			  static mMainQueue as new iOSLibOperationsQueue (mainQueue (ClassPtr))
			  return mMainQueue
			End Get
		#tag EndGetter
		Shared MainQueue As iOSLibOperationsQueue
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
			  Declare Sub setMaxConcurrentOperationCount lib UIKit selector "setMaxConcurrentOperationCount:" (id as ptr, value as integer)
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
			  return iOSLibArray.MakeFromPtr (Operations(id))
			End Get
		#tag EndGetter
		Operations As iOSLibArray
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
			  Declare Sub setSuspended lib UIKit selector "setSuspended:" (id as ptr, value as Boolean)
			  setSuspended (id, value)
			End Set
		#tag EndSetter
		Suspended As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function underlyingQueue lib Foundation selector "underlyingQueue" (id as ptr) as ptr
			  return iOSLibObject.MakeFromPtr (underlyingQueue(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setUnderlyingQueue lib UIKit selector "setUnderlyingQueue:" (id as ptr, value as Ptr)
			  setUnderlyingQueue (id, value.id)
			End Set
		#tag EndSetter
		UnderlyingQueue As iOSLibObject
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
