#tag Class
Protected Class iOSLabeliOSLibEnhanced
Inherits iOSLabel
	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520666F6E742073697A652073686F756C64206265207265647563656420696E206F7264657220746F2066697420746865207469746C6520737472696E6720696E746F20746865206C6162656CE280997320626F756E64696E672072656374616E676C652E
		#tag Getter
			Get
			  return me.view.AdjustsFontSizeToFitWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.AdjustsFontSizeToFitWidth = value
			End Set
		#tag EndSetter
		AdjustFontSize As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206C6162656C207469676874656E732074657874206265666F7265207472756E636174696E672E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  return me.view.AllowsDefaultTighteningForTruncation
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.AllowsDefaultTighteningForTruncation = value
			End Set
		#tag EndSetter
		AllowTightening As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 486F77207465787420626173656C696E6573206172652061646A7573746564207768656E2074657874206E6565647320746F20736872696E6B20746F2066697420696E20746865206C6162656C2E
		#tag Getter
			Get
			  return me.view.BaselineAdjustment
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.BaselineAdjustment = value
			End Set
		#tag EndSetter
		BaselineAdjustment As AppleLabel.UIBaselineAdjustment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C2073686F756C6420626520647261776E2077697468206120686967686C696768742E
		#tag Getter
			Get
			  return me.view.Highlighted
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.Highlighted = value
			End Set
		#tag EndSetter
		Highlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686967686C6967687420636F6C6F72206170706C69656420746F20746865206C6162656CE280997320746578742E
		#tag Getter
			Get
			  return me.view.HighlightedTextColor.toColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.HighlightedTextColor = value.toapplecolor
			End Set
		#tag EndSetter
		HighlightedTextColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D207363616C6520666163746F7220737570706F7274656420666F7220746865206C6162656CE280997320746578742E
		#tag Getter
			Get
			  return me.view.MinimumScaleFactor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.MinimumScaleFactor = value
			End Set
		#tag EndSetter
		MinimumScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520707265666572726564206D6178696D756D2077696474682028696E20706F696E74732920666F722061206D756C74696C696E65206C6162656C2E
		#tag Getter
			Get
			  return me.view.PreferredMaxLayoutWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.View.PreferredMaxLayoutWidth = value
			End Set
		#tag EndSetter
		MultilineMaxWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F66206C696E657320746F2075736520666F722072656E646572696E6720746578742E2044656661756C74203D20312E20556E6C696D69746564203D20302E
		#tag Getter
			Get
			  return me.view.NumberOfLines
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.NumberOfLines = value
			End Set
		#tag EndSetter
		NumberOfLines As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736861646F7720636F6C6F72206F662074686520746578742E
		#tag Getter
			Get
			  return me.view.ShadowColor.toColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.ShadowColor = value.toapplecolor
			End Set
		#tag EndSetter
		ShadowColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520782076616C756520666F7220736861646F77206F666673657420286D6561737572656420696E20706F696E74732920666F722074686520746578742E
		#tag Getter
			Get
			  return me.view.ShadowOffset.width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.ShadowOffset = FoundationFrameWork.NSMakeSize (value, ShadowYOffset)
			End Set
		#tag EndSetter
		ShadowXOffset As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520782076616C756520666F7220736861646F77206F666673657420286D6561737572656420696E20706F696E74732920666F722074686520746578742E
		#tag Getter
			Get
			  return me.view.ShadowOffset.height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.view.ShadowOffset = FoundationFrameWork.NSMakeSize (ShadowxOffset, value)
			End Set
		#tag EndSetter
		ShadowYOffset As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleLabel(me.Handle)
			End Get
		#tag EndGetter
		View As AppleLabel
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AdjustFontSize"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTightening"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineAdjustment"
			Group="Behavior"
			Type="AppleLabel.UIBaselineAdjustment"
			EditorType="Enum"
			#tag EnumValues
				"0 - BaseLines"
				"1 - Centers"
				"2 - None"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightedTextColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c44444400"
			Type="Color"
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
			Name="LineBreakMode"
			Visible=true
			Group="Behavior"
			Type="xojo.iOSLineBreakMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - BreakByWordWrapping"
				"1 - BreakByCharWrapping"
				"2 - BreakByClipping"
				"3 - BreakByTruncatingHead"
				"4 - BreakByTruncatingTail"
				"5 - BreakByTruncatingMiddle"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumScaleFactor"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultilineMaxWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfLines"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000FF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowXOffset"
			Visible=true
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowYOffset"
			Visible=true
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlignment"
			Visible=true
			Group="Behavior"
			Type="xojo.iOSTextAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"1 - Center"
				"2 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			InitialValue="true"
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
