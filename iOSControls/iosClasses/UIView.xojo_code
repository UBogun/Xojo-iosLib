#tag Class
Protected Class UIView
Inherits iosView
	#tag Method, Flags = &h0
		Sub AnimateModalTo(aView as iOSView)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  iOSViewExtension.presentViewController id, aview.handle, true, completion.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CompletionBlock()
		  if self <> nil then RaiseEvent AnimationFinished
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame as rect)
		  dim myrect as CGRect = aFrame.tocGRect
		  mid = iOSControlExtension.initWithFrame(alloc(iOSControlExtension.classptr), myrect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DismissModal(aView as iOSView, animated as boolean = true)
		  dim completion as new iOSBlock (AddressOf CompletionBlock)
		  iOSViewExtension.dismissViewControllerAnimated id, animated, completion.Handle
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AnimationFinished()
	#tag EndHook


	#tag Note, Name = Read Me
		This is UIView, an subclass for Xojo iOSViews extending their features by a lot of native iOS methods and properties.
		
		I refrained from setting up separate classes because it would take years to extend each one with the base functions – and it would result in in enormus library.
		For most of the UIView features it is not necessary to use this subclass – instead use the iOSView extension included here.
		But in case you want events to fire when animations have completed, you need to use this vlass.
		
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
		In order to make full use of the UIIView features, set the superclass of an iOSViewto UIview.
		
		Most properties and methods are added via IOSView Extension. Look there.
		For animations, you will have to use this subclass as I found no way to attach the blocks and helper properties to the original class via a module.
		
		* Properties *
		
		– Id (Ptr, read-only): returns the handle of the underlying iOSView or the Prt to a newly created UIVIew with the constructor
		
		
		* Methods *
		
		– Constructor (aRect as Xojo.Core.Rect):
		   Use this to add a new UIView object to whatever you like. If you need to handle its value as a Ptr, refer to its value id
		
		– AnimateModalTo (iOSView). Use this method instead of PushTo for an animated transtition to the new view.
		   You need to return from a modally shown view by calling DismissModal
		
		– DismissModal (opt. Animated as Boolean): Returns from a modally shwon view to the view calling it.
		   If Animated with an animation set by TransitionStyle.
		
		
		** Events **
		   AnimationFinished():
		   Fires when an animation has finished. 
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return if ( mid <> NIL , mid, me.handle)
			End Get
		#tag EndGetter
		id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mid As Ptr
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BackButtonTitle"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
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
			Name="NavigationBarVisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabTitle"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
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
