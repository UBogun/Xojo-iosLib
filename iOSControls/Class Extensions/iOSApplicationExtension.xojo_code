#tag Module
Protected Module iOSApplicationExtension
	#tag Method, Flags = &h1
		Protected Function getStatusbarhidden(id as ptr) As Boolean
		  declare function isStatusBarHidden lib UIKit selector "isStatusBarHidden"(id as ptr) as Boolean
		  return isStatusBarHidden (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle(extends a as iOSApplication) As Ptr
		  return AppPtr
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HideStatusBarAnimated(extends a as iOSApplication, value as StatusBarAnimation)
		  setStatusbarhiddenwithAnimation a.Handle, true, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setStatusbarhidden(id as ptr, value as boolean)
		  declare Sub statusBarHidden lib UIKit selector "setStatusBarHidden:"(id as ptr, value as Boolean)
		  StatusBarHidden id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setStatusbarhiddenwithAnimation(id as ptr, value as boolean, animation as StatusBarAnimation)
		  declare Sub statusBarHiddenwithAnimation lib UIKit selector "setStatusBarHidden:withAnimation:" (id as ptr, value as Boolean, animation as StatusBarAnimation)
		  statusBarHiddenwithAnimation id, value, animation
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowStatusBarAnimated(extends a as iOSApplication, value as StatusBarAnimation)
		  setStatusbarhiddenwithAnimation a.Handle, false, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatusBarHidden(extends a as iOSApplication) As Boolean
		  return getstatusbarhidden (a.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StatusBarHidden(extends a as iOSApplication, assigns value as boolean)
		  setstatusbarhidden a.Handle, value
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Me
		This is iOSApplication, an extension for Xojo iOS adding UIApplication features to an iOS App.
		
		You will find that the properties-as-methods refer to separate protected methods. 
		While this may seem complicated, you can always use them in your own classes in case you need to call them on a different object than id/handle.
		Hopefully this will help saving you from recreating the same lines of code again and again.
		
		This is part of the iOSControls library for easy-to-use Xojo iOS,extensions, hopefully to find soon on xojoblog.me.
		
		* Important *
		If you want to have a feedback on the view animations, in other words have an animationfinished event fire when transition has completed, 
		you need to replace your iOSView by UIView which is a subclass of it but with additional help properties and methods I could not attach to a module.
		
		
		
		Disclaimer
		This software is delivered AS IS. You are free to use it in your project, modify it according to your needs and you are very welcome to share your contributions too.
		I can not guarantee for data loss, computer problems and all that stuff that may arise from using the classes and methods, but I do guarantee that I use them myself
		in my projects and have not experienced such. Therefore the usual legal warning: Use at your own risk!
		
		
		Copyright
		Written 2014 by Ulrich Bogun, xojoblog.me. This is a private project not connected to my job as german Xojo evangelist.
		This all is only possible because of the tremendous help of some extraordinary gurus sharing their wisdom on forum.xojo.com and, of course, the guys behind MacOSLib.
		Therefore a copyright would be very stange and wrong. Again: iOSCOntrols are free to use and modify.
		
		However, you surely can imagine this took me (and will probably take) a lot of time, and I want to continue refining the classes and adding more to them.
		If you use the classes and find them useful, feel absolutely free to send me a "keep it up"-contribution via PayPal to bogun@satzservice.de.
		The amount is completely up to you and every sum will be appreciated regardless of its height.
		If you cannot afford a few bucks or don't want to: Hey, that's still ok!
		Maybe you like to send me a line about their use or add a "Uses iOSControls …" line to your splashscreen.
		And if not you’re still not a bad guy. Enjoy, share, contribute.
		
		
		--------------------------------------------------------------------------------------------------------------------------------------------------------------
		
		
		**Unfinished**
		
		This is work in progess, do not use yet!
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		* USE *
		
		Drop the module somewhere into your project folder. That's all.
		
		
		* Properties *
		
		
		
		
		More to follow soon!
	#tag EndNote


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  declare function sharedApplication lib UIKit selector "sharedApplication" (id as ptr) as Ptr
			  static mAppPtr as ptr = sharedApplication (ClassPtr)
			  return mAppPtr
			End Get
		#tag EndGetter
		Private AppPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mclassptr as ptr = NSClassFromString ("UIApplication")
			  return mclassptr
			End Get
		#tag EndGetter
		Protected ClassPtr As Ptr
	#tag EndComputedProperty


	#tag Enum, Name = StatusBarAnimation, Type = Integer, Flags = &h1
		None
		  Fade
		Slide
	#tag EndEnum

	#tag Enum, Name = StatusBarStyle, Type = Integer, Flags = &h1
		Default
		  Light
		  BlackTranslucent
		BlackOpaque
	#tag EndEnum


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
End Module
#tag EndModule
