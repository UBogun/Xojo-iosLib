#tag Class
Protected Class NSNotificationCenterCore
	#tag Method, Flags = &h1
		Protected Function addObserverForName(NotificationName as CFStringRef, Obj as Ptr, queue as nsoperationqueue, block as ptr) As Ptr
		  declare function addObserverForName lib UIKit selector "addObserverForName:object:queue:usingBlock:" _
		  (id as ptr, NotificationName as CFStringRef, Obj as Ptr, queue as ptr, block as ptr) as ptr
		  return addObserverForName (SharedNotificationCenter, NotificationName, obj, queue.Handle, block)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(NotificationName as CFStringRef, Obj as Ptr)
		  dim block as new iOSBlock (AddressOf NotificationBlock)
		  dim queue as NSOperationQueue = NSOperationQueue.MainQueue
		  mhandle = addObserverForName (NotificationName, obj, Queue, block.handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function defaultCenter(id as ptr) As ptr
		  declare function defaultCenter lib UIKit selector "defaultCenter" (id as ptr) as ptr
		  return defaultCenter (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  removeObserver mHandle
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NotificationBlock(NotificationPtr as Ptr)
		  if self <> NIL then RaiseEvent ReceivedNotification (new NSNotification (notificationptr))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub removeObserver(observer as ptr)
		  declare sub removeObserver lib UIKit selector "removeObserver:" (id as ptr, observer as ptr)
		  removeObserver SharedNotificationCenter, observer
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ReceivedNotification(Notification as NSNotification)
	#tag EndHook


	#tag Note, Name = Read Me
		This is NSNotificationCenter, an custom class for Xojo iOS encorporating the features of a NSNotificationCenter.
		NSNotificationcenter delivers a shared property that can be used for registering Objects into the Notificationcenter
		You can even have a global instance of this class in your appor attach it to custom classes.
		
		This is part of the iOSControls library for easy-to-use Xojo iOS,extensions, hopefully to find soon on xojoblog.me.
		
		
		
		Disclaimer
		This software is delivered AS IS. You are free to use it in your project, modify it according to your needs and you are very welcome to share your contributions too.
		I can not guarantee for data loss, computer problems and all that stuff that may arise from using the classes and methods, but I do guarantee that I use them myself
		in my projects and have not experienced such. Therefore the usual legal warning: Use at your own risk!
		
		
		Copyright
		Written 2015 by Ulrich Bogun, xojoblog.me. This is a private project not connected to my job as german Xojo evangelist.
		This all is only possible because of the tremendous help of some extraordinary gurus sharing their wisdom on forum.xojo.com and, of course, the guys behind MacOSLib.
		Therefore a copyright would be very stange and wrong. Again: iOSControls are free to use and modify.
		
		However, you surely can imagine this took me (and will probably take) a lot of time, and I want to continue refining the classes and adding more to them.
		If you use the classes and find them useful, feel absolutely free to send me a "keep it up"-contribution via PayPal to bogun@satzservice.de.
		The amount is completely up to you and every sum will be appreciated regardless of its height.
		If you cannot afford a few bucks or don't want to: Hey, that's still ok!
		Maybe you like to send me a line abot their use or add a "Uses iOSControls …" line to your splashscreen.
		And if not you’re still not a bad guy. Enjoy, share, contribute.
		
		
		--------------------------------------------------------------------------------------------------------------------------------------------------------------
		
		
		* USE *
		
		Drop the included modules and classes somewhere into your project folder. That's all.
		
		
		* Methods *
		
		– Constructor (AttachTo as Ptr, NotificationName as CFStringRef, Obj as Ptr)
		   Use this constructor for setting up a Notificationcenter with 
		   AttachTo the Ptr to the object to attach to (the handle for Xojo controls)
		   NotificationName the Notification you want to register – "" for all –
		   Obj the Ptr to the object you wish to receive notifications from.
		
		
		** Events **
		   AnimationFinished():
		   Fires when an animation has finished. 
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mclassPtr as Ptr = NSClassFromString ("NSNotificationCenter")
			  return mclassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHandle
			End Get
		#tag EndGetter
		Handle As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mHandle As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mSharedCenter as ptr= defaultCenter (ClassPtr)
			  return mSharedCenter
			End Get
		#tag EndGetter
		SharedNotificationCenter As Ptr
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
