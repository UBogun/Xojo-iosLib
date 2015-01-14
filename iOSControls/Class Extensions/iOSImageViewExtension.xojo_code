#tag Module
Protected Module iOSImageViewExtension
	#tag Method, Flags = &h0
		Function Animate(extends v as iOSImageView) As boolean
		  return getisAnimating (v.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Animate(extends v as iOSImageView, assigns value as Boolean)
		  if value then setstartanimating (v.handle) else setstopAnimating (v.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AnimationDuration(extends v as iOSImageView) As Double
		  return getanimationDuration (v.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimationDuration(extends v as iOSImageView, assigns value as double)
		  setanimationDuration v.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AnimationImages(extends v as iOSImageView) As iosImage()
		  return getanimationImages(v.handle).toiosimagearray
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AnimationImages(extends v as iOSImageView, assigns value() as iosimage) As iosImage()
		  dim nsarray as new NSMutableArray (value)
		  setanimationImages  v.handle, nsarray.id
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AnimationImages(extends v as iOSImageView, assigns value as ptr) As iosImage()
		  setanimationImages  v.handle, value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AnimationRepeatCount(extends v as iOSImageView) As Integer
		  return getanimationRepeatCount (v.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimationRepeatCount(extends v as iOSImageView, assigns value as integer)
		  setanimationRepeatCount v.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromImage(anImage as iosimage) As Ptr
		   return initWithImage (anImage.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromPtr(aUIImage as Ptr) As Ptr
		  return initWithImage (aUIImage)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getanimationDuration(id as ptr) As Double
		  declare Function animationDuration lib UIKit selector "animationDuration" (id as ptr) as Double
		  return animationDuration (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getanimationImages(id as ptr) As Ptr
		  declare Function animationImages lib UIKit selector "animationImages" (id as ptr) as ptr
		  return animationImages (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getanimationRepeatCount(id as ptr) As Integer
		  declare Function animationRepeatCount lib UIKit selector "animationRepeatCount" (id as ptr) as Integer
		  return animationRepeatCount (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getHighlighted(id as ptr) As boolean
		  declare Function highlighted lib UIKit selector "highlighted" (id as ptr) as boolean
		  return highlighted (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getHighlightedanimationImages(id as ptr) As Ptr
		  declare Function highlightedAnimationImages lib UIKit selector "highlightedAnimationImages" (id as ptr) as ptr
		  return highlightedAnimationImages (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getHighlightedImage(id as ptr) As Ptr
		  declare Function highlightedImage lib UIKit selector "highlightedImage" (id as ptr) as ptr
		  return highlightedImage (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getImage(id as ptr) As Ptr
		  declare Function image lib UIKit selector "image" (id as ptr) as ptr
		  return image (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getisAnimating(id as ptr) As Boolean
		  declare Function isAnimating lib UIKit selector "isAnimating" (id as ptr) as Boolean
		  return isAnimating (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Highlighted(extends v as iOSImageView) As Boolean
		  return getHighlighted (v.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Highlighted(extends v as iOSImageView, assigns value as boolean)
		  setHighlighted v.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function highlightedAnimationImages(extends v as iOSImageView) As iosImage()
		  return gethighlightedanimationImages(v.handle).toiosimagearray
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function highlightedAnimationImages(extends v as iOSImageView, assigns value() as iosimage) As iosImage()
		  dim nsarray as new NSMutableArray (value)
		  sethighlightedanimationImages  v.handle, nsarray.id
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighLightedAnimationImages(extends v as iOSImageView, assigns value as ptr) As iosImage()
		  sethighlightedanimationImages  v.handle, value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedImage(extends v as iOSImageView) As iOSImage
		  return getHighlightedImage(v.Handle).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedImage(extends v as iOSImageView, assigns value as iosimage)
		  setHighlightedImage v.Handle, value.handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedImage(extends v as iOSImageView, assigns value as ptr)
		  setHighlightedImage v.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Image(extends v as iOSImageView) As iosImage
		  return getImage(v.handle).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Image(extends v as iOSImageView, assigns value as iOSImage)
		  setImage v.Handle, value.handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Image(extends v as iOSImageView, assigns value as Ptr)
		  setImage v.handle,  value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function initWithImage(animage as ptr) As Ptr
		  Declare function initWithImage lib UIKit selector "initWithImage:" (id as ptr, animage as ptr) as ptr
		  return initWithImage (alloc(classptr), animage)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setanimationDuration(id as ptr, value as double)
		  declare Sub setanimationDuration lib UIKit selector "setAnimationDuration:" (id as ptr, value as Double)
		  setanimationDuration id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setanimationImages(id as ptr, value as ptr)
		  declare Sub setAnimationImages lib UIKit selector "setAnimationImages:" (id as ptr, value as ptr)
		  setAnimationImages id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setanimationRepeatCount(id as ptr, value as integer)
		  declare Sub setAnimationRepeatCount lib UIKit selector "setAnimationRepeatCount:" (id as ptr, value as Integer)
		  setanimationRepeatCount id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub sethighlighted(id as ptr, value as boolean)
		  declare Sub setHighlighted lib UIKit selector "setHighlighted:" (id as ptr, value as boolean)
		  setHighlighted id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub sethighlightedanimationImages(id as ptr, value as ptr)
		  declare Sub sethighlightedanimationImages lib UIKit selector "setHighlightedAnimationImages:" (id as ptr, value as ptr)
		  sethighlightedanimationImages id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setHighlightedImage(id as ptr, anImage as Ptr)
		  declare sub setHighlightedImage lib UIKit selector "setHighlightedImage:" (id as ptr, anImage as ptr)
		  setHighlightedImage id, anImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setImage(id as ptr, anImage as Ptr)
		  declare sub setImage lib UIKit selector "setImage:" (id as ptr, anImage as ptr)
		  setImage id, anImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setstartanimating(id as ptr)
		  declare Sub startAnimating lib UIKit selector "startAnimating" (id as ptr) 
		  startAnimating (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setstopAnimating(id as ptr)
		  declare Sub stopAnimating lib UIKit selector "stopAnimating" (id as ptr) 
		  stopAnimating (id)
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Me
		This is iOSImageView, an extension for Xojo iOS adding UIImageView features to a iOSImageView
		
		You will find that the properties-as-methods refer to separate protected methods. 
		While this may seem complicated, you can always use them in your own classes in case you need to call them on a different object than id/handle.
		Hopefully this will help saving you from recreating the same lines of code again and again.
		
		This is part of the iOSControls library for easy-to-use Xojo iOS,extensions, hopefully to find soon on xojoblog.me.
		
		
		
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
		Maybe you like to send me a line abot their use or add a "Uses iOSControls …" line to your splashscreen.
		And if not you’re still not a bad guy. Enjoy, share, contribute.
		
		
		--------------------------------------------------------------------------------------------------------------------------------------------------------------
		
		
		* USE *
		
		Drop the module somewhere into your project folder. That's all.
		
		For every Xojo iOS control that inherits from UIImageView, you can address the following features (all are addressed as methods but I list them separated by their real function)
		
		
		* Properties *
		
		– Animate (Boolean) = True to run, false to stop the animation.
		
		– AnimationDuration (Double) = the amount of time in seconds it takes to go through one complete set of animationimages.
		
		– AnimationImages (iosImage()) = an array of images the view will play in sequence if startAnimating() is called.
		– AnimationImages = Ptr: Alternatively you can assign a Ptr to a NSArray of UIImages if you created it with some API call. No need for conversion.
		
		– AnimationRepeatCount (Integer) = The number of times an animations should be repeated. 0 = indefinitely.
		
		– Highlighted (Boolean) = If true, the view is highlighted, showing its highlithted image if one is set.
		
		– HighlightedAnimationImages (iosImage()) = an array of images the view will play in sequence if startAnimating() is called and the view is highlighted.
		– HighlightedAnimationImages = Ptr: Alternatively you can assign a Ptr to a NSArray of UIImages if you created it with some API call. No need for conversion.
		
		– HighlightedImage (iOSImage) = The image the view shows in highlighted state.
		– HighlightedImage = ptr: Alternatively you can assign a Ptr to a UIImage if you created it with some API call. No need for conversion.
		
		– Image (iOSImage) = Override of the Xojo implementation so you can read the property too.
		– Image = ptr: Alternatively you can assign a Ptr to a UIImage if you created it with some API call. No need for conversion.
		
		
		* Methods *
		
		– fromPtr (anUIImage as Ptr) as Ptr: Returns a new uiimageview from an UIImage
		
		– fromImage (anImage as iOSImage) as Ptr: Returns a new uiimageview from an iOSImage
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIImageView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected ClassPtr As Ptr
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
End Module
#tag EndModule
