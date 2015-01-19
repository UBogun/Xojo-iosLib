#tag Class
Protected Class UIVisualEffectView
	#tag Method, Flags = &h0
		Sub Constructor(id as ptr)
		  mhandle = id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Type as UIVisualEffectView.EffectType, blurstyle as UIVisualEffectView.BlurEffectStyle = UIVisualEffectView.blureffectstyle.Light)
		  declare function initWithEffect lib uikit selector "initWithEffect:" (id as ptr, effectStyle as Ptr) as Ptr
		  select case type
		  case UIVisualEffectView.EffectType.Blur
		    dim BlurEffect as new UIBlurEffect (blurstyle)
		    mHandle = initWithEffect (alloc(ClassPtr), BlurEffect.Handle)
		  case UIVisualEffectView.EffectType.Vibrancy
		    dim BlurEffect as new UIBlurEffect (blurstyle)
		    dim VibrancyEffect as new UIVibrancyEffect (BlurEffect.Handle)
		    mHandle = initWithEffect (alloc(ClassPtr), VibrancyEffect.Handle)
		    myEffect = VibrancyEffect
		  end select
		  
		  // NOTE: A selector for Vibrancy:NotificationCenterEffect shouldprobably be added.
		  // Thats the constructor myEffect = new UIVibrancyEffect ()
		  
		End Sub
	#tag EndMethod


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
			  declare function contentView lib uikit selector "contentView" (id as ptr) as Ptr
			  return contentView (handle)
			End Get
		#tag EndGetter
		ContentView As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function effect lib UIKit selector "effect" (id as ptr) as ptr
			  return new UIVisualEffectView (effect (Handle))
			End Get
		#tag EndGetter
		Effect As uiVisualEffectView
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

	#tag Property, Flags = &h21
		Private myEffect As UIVisualEffectView
	#tag EndProperty


	#tag Enum, Name = BlurEffectStyle, Flags = &h0
		ExtraLight
		  Light
		Dark
	#tag EndEnum

	#tag Enum, Name = EffectType, Flags = &h0
		Blur
		Vibrancy
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
End Class
#tag EndClass
