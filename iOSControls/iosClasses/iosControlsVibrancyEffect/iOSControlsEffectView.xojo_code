#tag Class
Protected Class iOSControlsEffectView
Inherits iOSUserControl
	#tag Method, Flags = &h1
		Protected Function CreateView() As UInteger
		  BlurEffect = new UIBlurEffect (me.style)
		  dim t as UIVisualEffectView.EffectType= me.Type
		  dim s as UIVisualEffectView.BlurEffectStyle = me.Style
		  select case me.type
		  case UIVisualEffectView.EffectType.Blur
		    mHandle = initWithEffect (alloc(ClassPtr), BlurEffect.Handle)
		  case UIVisualEffectView.EffectType.Vibrancy
		    VibrancyEffect = new UIVibrancyEffect (BlurEffect.Handle)
		    mHandle = initWithEffect (alloc(ClassPtr), VibrancyEffect.Handle)
		  end select
		  dim i as UInteger = integer (Handle)
		  return i
		  
		  // NOTE: A selector for Vibrancy:NotificationCenterEffect shouldprobably be added.
		  // Thats the constructor myEffect = new UIVibrancyEffect ()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function initWithEffect(id as ptr, effectstyle as ptr) As ptr
		  declare function initWithEffect lib uikit selector "initWithEffect:" (id as ptr, effectStyle as Ptr) as Ptr
		  return initWithEffect (id, effectstyle)
		End Function
	#tag EndMethod


	#tag Note, Name = Read Me
		This is iosControlsVibranceEffect, an subclass for Xojo iOS based on an iOSUserControl to add UIVisualEffectView features to Xojo.
		
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
		In order to make full use of the UIIView features, set the superclass of an iOSViewto UIview.
		
		This class is work in progress as I try to redesign the subclasses according to Christian's remark on possible name conflicts.
		While there is already a pure control by code (UIVisualEffectView), please use this subclass for now.
		
		
		* IMPORTANT *
		Due to limitations in reading the instance properties of a custom class during design time, I had to set up a lot of sublcasses.
		This will surely be replaced by something easier once the Inspector properties can be accessed early enough.
		Therefore, you will not want to use this Base Class but one of its subclasses.
		
		As a general rule: There are currently 3 BlurEffectViews and 3 VibrancyEffectViews you can use.
		Just add one of them to your project in the IDE and choose its subclass.
		
		
		* Background * 
		A UIVisualEffectView is just the base class for its children. Each of those consists of a BlurEffect that comes in three flavors: Light, ExtraLight and Dark.
		If you do not intend to use visible controls on it, restrain to one of the thre IOSControlBlurEffectViews. A VibrancyEffectView adds another processing layer to a BlurView, so they need more CPU and GPU power.
		
		If you want to place text on it, do this in form of a label and put the label's handle on the subview of the VibrancyViews’ contentView.
		Do not use a BlurEffectView, the VibrancyEffectView contain one on their own.
		* NOTE *: I have the feeling that adding the labels to the vibrancy view in the demo does not work. The vibrancy is shown for the scrollbar when you scroll the table in the background but not the text.
		If you have any advice, please let me know.
		
		
		* Properties *
		Besides handling the contentview which at this time doesn't seem to work, there are currently no properties and methods that can be changed in a useful way.
		
	#tag EndNote


	#tag Property, Flags = &h0
		BlurEffect As UIBlurEffect
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIVisualEffectView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function contentView_ lib UIKit selector "contentView" (id as ptr) as ptr
			  return contentView_ (Handle)
			End Get
		#tag EndGetter
		contentView As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHandle
			End Get
		#tag EndGetter
		Handle As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mHandle As Ptr
	#tag EndProperty

	#tag Property, Flags = &h0
		Style As UIVisualEffectView.BlurEffectStyle
	#tag EndProperty

	#tag Property, Flags = &h0
		Type As UIVisualEffectView.EffectType
	#tag EndProperty

	#tag Property, Flags = &h0
		VibrancyEffect As UIVibrancyEffect
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Style"
			Visible=true
			Group="Behavior"
			Type="UIVisualEffectView.BlurEffectStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - ExtraLight"
				"1 - Light"
				"2 - Dark"
			#tag EndEnumValues
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Visible=true
			Group="Behavior"
			Type="UIVisualEffectView.EffectType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Blur"
				"1 - Vibrancy"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
