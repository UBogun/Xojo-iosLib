#tag Class
Protected Class iOSLibNotificationCenter
Inherits iosLibObject
	#tag Method, Flags = &h1
		Protected Function addObserverForName(NotificationName as CFStringRef, Obj as ptr, queue as ptr, block as ptr) As Ptr
		  declare function addObserverForName lib UIKit selector "addObserverForName:object:queue:usingBlock:" _
		  (id as ptr, NotificationName as CFStringRef, Obj as Ptr, queue as ptr, block as ptr) as ptr
		  dim did as ptr = DefaultCenter
		  return addObserverForName (DefaultCenter, NotificationName, obj, iOSLibOperationsQueue.mainQueue.id, block)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(NotificationName as CFStringRef, Obj as ptr)
		  dim block as new iOSBlock (AddressOf NotificationBlock)
		  // dim queue as NSOperationQueue = NSOperationQueue.MainQueue
		  super.Constructor( addObserverForName (nil, obj, nil, block.handle))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  removeObserver self
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NotificationBlock(NotificationPtr as Ptr)
		  // if self <> NIL then RaiseEvent ReceivedNotification (new NSNotification (notificationptr))
		  if self <> nil then 
		    dim notification as new iOSLibObject (NotificationPtr)
		    System.DebugLog notification.DebugDescription
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub removeObserver(observer as iOSLibObject)
		  declare sub removeObserver lib UIKit selector "removeObserver:" (id as ptr, observer as ptr)
		  removeObserver DefaultCenter, observer.id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSNotificationCenter")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function defaultCenter lib UIKit selector "defaultCenter" (id as ptr) as ptr
			  static mdefaultcenter as ptr = (defaultCenter(ClassPtr))
			  return mdefaultcenter
			End Get
		#tag EndGetter
		DefaultCenter As Ptr
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
