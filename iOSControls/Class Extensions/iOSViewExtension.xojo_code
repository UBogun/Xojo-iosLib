#tag Module
Protected Module iOSViewExtension
	#tag Method, Flags = &h0
		Function Alpha(extends v as iOSView) As Double
		  return iOSControlExtension.getAlpha (getView(v.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Alpha(extends v as iOSView, assigns value as double)
		  iOSControlExtension.setAlpha (getView(v.handle), value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateModalTo(extends v as iosview, NewView as iosview)
		  presentViewController v.Handle, NewView.Handle, true, nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundColor(extends v as iOSView) As Color
		  return iOSControlExtension.getBackgroundColor(getView (v.handle)).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundColor(extends v as iOSView, assigns value as color)
		  iOSControlExtension.setBackgroundColor getView (v.handle), value.touicolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DismissModal(extends v as iosview, Animated as Boolean = false)
		  dismissViewControllerAnimated v.Handle, animated, NIL
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub dismissViewControllerAnimated(id as ptr, animated as Boolean, completion as ptr)
		  declare sub dismissViewControllerAnimated lib UIKit selector "dismissViewControllerAnimated:completion:" (id as ptr, animated as boolean, completion as ptr)
		  dismissViewControllerAnimated id, animated, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getmodalPresentationStyle(id as ptr) As PresentationStyle
		  Declare Function modalPresentationStyle lib UIKit selector "modalPresentationStyle" (id as ptr) as PresentationStyle
		  return modalPresentationStyle (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getmodalTransitionStyle(id as ptr) As TransitionStyle
		  Declare Function modalTransitionStyle lib UIKit selector "modalTransitionStyle" (id as ptr) as TransitionStyle
		  return modalTransitionStyle (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getpreferredContentSize(id as ptr) As CGSize
		  Declare Function preferredContentSize lib UIKit selector "preferredContentSize" (id as ptr) as CGSize
		  return preferredContentSize (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getprefersStatusBarHidden(id as ptr) As boolean
		  Declare function prefersStatusBarHidden lib UIKit selector "prefersStatusBarHidden" (id as ptr) as boolean
		  return prefersStatusBarHidden (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getView(id as ptr) As ptr
		  declare function view lib UIKit selector "view" (id as ptr) as ptr
		  return view (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ModalPresentationStyle(extends v as iOSView) As PresentationStyle
		  return getmodalPresentationStyle (v.ViewControllerHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ModalPresentationStyle(extends v as iOSView, assigns value as presentationstyle)
		  setmodalPresentationStyle v.ViewControllerHandle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ModalTransitionStyle(extends v as iOSView) As Transitionstyle
		  return getmodalTransitionStyle (v.ViewControllerHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ModalTransitionStyle(extends v as iOSView, assigns value as TransitionStyle)
		  setmodalTransitionStyle v.ViewControllerHandle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Opaque(extends v as iOSView) As Boolean
		  return iOSControlExtension.getOpaque (getView(v.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Opaque(extends v as iOSView, assigns value as Boolean)
		  iOSControlExtension.setOpaque getView(v.handle), value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreferredContentSize(extends v as iOSView) As xojo.core.size
		  return iOSControlExtension.CoreSize (getpreferredContentSize (v.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreferredContentSize(extends v as iOSView, assigns value as xojo.core.size)
		  setpreferredContentSize v.Handle, value.tocgsize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PrefersStatusBarHidden(extends v as iOSView) As Boolean
		  return getprefersStatusBarHidden (v.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrefersStatusBarHidden(extends v as iOSView, assigns value as boolean)
		  setprefersStatusBarHidden v.ViewControllerHandle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub presentViewController(id as ptr, ViewController as Ptr, animated as Boolean, completion as ptr)
		  declare sub presentViewController lib UIKit selector "presentViewController:animated:completion:" (id as ptr, ViewController as ptr, animated as boolean, completion as ptr)
		  presentViewController id, ViewController, animated, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushModalTo(extends v as iosview, NewView as iosview)
		  presentViewController v.Handle, NewView.Handle, false, nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setmodalPresentationStyle(id as ptr, value as presentationStyle)
		  Declare Sub setModalPresentationStyle lib UIKit selector "setModalPresentationStyle:" (id as ptr, value as PresentationStyle)
		  setmodalPresentationStyle id,value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setmodalTransitionStyle(id as ptr, value as TransitionStyle)
		  Declare sub setModalTransitionStyle lib UIKit selector "setModalTransitionStyle:" (id as ptr, value as TransitionStyle)
		  setmodalTransitionStyle id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setpreferredContentSize(id as ptr, value as CGSize)
		  Declare Sub setpreferredContentSize lib UIKit selector "setPreferredContentSize:" (id as ptr, value as CGSize)
		  setpreferredContentSize id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setprefersStatusBarHidden(id as ptr, value as Boolean)
		  Declare Sub setPrefersStatusBarHidden lib UIKit selector "setPrefersStatusBarHidden:" (id as ptr, value as boolean)
		  setprefersStatusBarHidden id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setView(id as ptr, value as ptr)
		  declare sub setview lib UIKit selector "setView:" (id as ptr, value as ptr)
		  setview id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function View(extends v as iOSView) As Ptr
		  return getView (v.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub View(extends v as iOSView, assigns value as ptr)
		  setView v.Handle, value
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Me
		This is iOSViewExtension, an extension for Xojo iOS adding iosViewController features to an iOSView
		
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
		
		
		* USE *
		
		Drop the module somewhere into your project folder. That's all.
		
		For every Xojo iOS control that inherits from iOSView, you can address the following features (all are addressed as methods but I list them separated by their real function)
		
		
		* Properties *
		
		– Alpha (Double): Sets the view’s Alpha value. Take this as a guidline how to influence the view property of an iOSView.
		
		– BackgroundColor (Color): Sets the background color of the view.
		
		– ModalPresentationStyle (PresentationStyle) = Sets view presentation options for a horizontally regular (?!?) environment (That's what Apple says)
		
		– ModalTransitionStyle (TransitionStyle) = Some ways to change the bevahior of an iOSView before it is displayed via AnimateTo.
		   Please note you have to set this property on the view to appear, not on the current one.
		
		– Opaque (Boolean): Sets the opaque value of the view.
		
		– View (ptr) = The ptr to the view of the iosView giving you access to its properties like alpha.
		
		* Methods *
		
		– AnimateModalTo (iOSView). Use this method instead of PushTo for an animated transtition to the new view. 
		   You need to return from a modally shown view by calling DismissModal
		
		– DismissModal (opt. Animated as Boolean): Returns from a modally shown view to the view calling it.
		   If Animated with an animation set by TransitionStyle.
		
		– PushModalTo (iOSView): The same like AnimateModal but without Animation
		
		
		More to follow soon!
	#tag EndNote


	#tag Enum, Name = PresentationStyle, Type = Integer, Flags = &h1
		FullScreen = 0
		  PageSheet
		  FormSheet
		  CurrentContext
		  Custom
		  OverFullScreen
		  OverCurrentContext
		  PopOver
		None = -1
	#tag EndEnum

	#tag Enum, Name = TransitionStyle, Type = Integer, Flags = &h1
		CoverVertical = 0
		  FlipHorizontal
		  CrossDissolve
		PartialCurl
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
