#tag Class
Protected Class NSNotification
	#tag Method, Flags = &h0
		Sub Constructor(Name as CFStringRef, Obj as Ptr)
		  mHandle = notificationWithName (name, obj)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(id as ptr)
		  mHandle = id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getName(id as ptr) As CFStringRef
		  Declare function name_ lib UIKit selector "name" (id as ptr) as CFStringRef
		  return name_ (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getObject(id as ptr) As Ptr
		  Declare function obj_ lib UIKit selector "object" (id as ptr) as Ptr
		  return obj_ (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getuserInfo(id as ptr) As Ptr
		  Declare function userInfo lib UIKit selector "userInfo" (id as ptr) as Ptr
		  return userInfo (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function notificationWithName(name as CFStringRef, anObject as Ptr) As Ptr
		  declare Function notificationWithName lib uikit selector "notificationWithName:object:" (id as ptr, name as CFStringRef, anObject as Ptr) as Ptr
		  return notificationWithName (ClassPtr, name, anObject)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UserInfoAsObjectDict() As xojo.Core.Dictionary
		  return CoreDictionaryExtension.fromNSDictionarytoObjectDict (UserInfo)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UserInfoAsTextDict() As xojo.Core.Dictionary
		  return CoreDictionaryExtension.fromNSDictionarytoTextDict (userinfo)
		End Function
	#tag EndMethod


	#tag Note, Name = Read Me
		This is NSNotification, an custom class for Xojo iOS encorporating the features of a NSNotification
		
		This is part of the iOSControls library for easy-to-use Xojo iOS,extensions, hopefully to find soon on xojoblog.me.
		
		
		
		Disclaimer
		This software is delivered AS IS. You are free to use it in your project, modify it according to your needs and you are very welcome to share your contributions too.
		I can not guarantee for data loss, computer problems and all that stuff that may arise from using the classes and methods, but I do guarantee that I use them myself
		in my projects and have not experienced such. Therefore the usual legal warning: Use at your own risk!
		
		
		Copyright
		Written 2014 by Ulrich Bogun, xojoblog.me. This is a private project not connected to my job as german Xojo evangelist.
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
		
		– Constructor (Id as Ptr):
		   Use this constructor for inspecting NSNotifications sent as Ptr
		
		– Constructor (Name as CFStringRef, Obj as Ptr):
		   This is one of the constuctors for custom notifications. Create one with the name of Name and containing the Object (in case of Xojo classes pass a handle)
		
		– DismissModal (opt. Animated as Boolean): Returns from a modally shwon view to the view calling it.
		   If Animated with an animation set by TransitionStyle.
		
		
		** Events **
		   AnimationFinished():
		   Fires when an animation has finished. 
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mclassPtr as Ptr = NSClassFromString ("NSNotification")
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
			  Return getName (handle)
			End Get
		#tag EndGetter
		Name As cfstringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getObject (handle)
			End Get
		#tag EndGetter
		Obj As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getuserInfo (handle)
			End Get
		#tag EndGetter
		UserInfo As Ptr
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
