#tag Class
Protected Class OSControlsVibrancyforDarkBlurEffectView
Inherits iOSControlsVibrancyEffectView
	#tag Event
		Function CreateView() As UInteger
		  BlurEffect = new UIBlurEffect (UIVisualEffectView.BlurEffectStyle.Dark)
		  VibrancyEffect = new UIVibrancyEffect (BlurEffect)
		  mHandle = initWithEffect (alloc(ClassPtr), BlurEffect.Handle)
		  dim i as UInteger = integer (Handle)
		  return i
		End Function
	#tag EndEvent


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
