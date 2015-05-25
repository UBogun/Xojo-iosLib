#tag Class
Protected Class AppleLabel
Inherits AppleView
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getAdjustsFontSizeToFitWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAdjustsFontSizeToFitWidth value
			End Set
		#tag EndSetter
		AdjustsFontSizeToFitWidth As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getAttributedText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAttributedText value
			End Set
		#tag EndSetter
		AttributedCaption As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function baselineAdjustment lib UIKit selector "baselineAdjustment" (id as ptr) as UIBaselineAdjustment
			  return baselineAdjustment (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setBaselineAdjustment lib UIKit selector "setBaselineAdjustment:" (id as ptr, value as UIBaselineAdjustment)
			  setBaselineAdjustment id, value
			End Set
		#tag EndSetter
		BaselineAdjustment As UIBaselineAdjustment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return GetText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setText value
			End Set
		#tag EndSetter
		Caption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UILabel")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function enabled lib UIKit selector "isEnabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setEnabled lib UIKit selector "setEnabled:" (id as ptr, value as Boolean)
			  setenabled id, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getFont
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfont value
			End Set
		#tag EndSetter
		Font As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isHighlighted lib UIKit selector "isHighlighted" (id as ptr) as Boolean
			  return isHighlighted (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setHighlighted lib UIKit selector "setHighlighted:" (id as ptr, value as Boolean)
			  setHighlighted id, value
			End Set
		#tag EndSetter
		Highlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function highlightedTextColor lib UIKit selector "highlightedTextColor" (id as ptr) as ptr
			  return AppleColor.MakeFromPtr (highlightedTextColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setHighlightedTextColor lib UIKit selector "setHighlightedTextColor:" (id as ptr, value as ptr)
			  setHighlightedTextColor id, value.id
			End Set
		#tag EndSetter
		HighlightedTextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function lineBreakMode lib UIKit selector "lineBreakMode" (id as ptr) as NSLineBreakMode
			  return lineBreakMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLineBreakMode lib UIKit selector "setLineBreakMode:" (id as ptr, value as NSLineBreakMode)
			  setLineBreakMode id, value
			End Set
		#tag EndSetter
		LineBreakMode As NSLineBreakMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function MinimumScaleFactor lib Foundation selector "minimumScaleFactor" (id as ptr) as double
			  #elseif Target32Bit
			    declare function MinimumScaleFactor lib Foundation selector "minimumScaleFactor" (id as ptr) as single
			  #endif
			  return MinimumScaleFactor (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setMinimumScaleFactor lib Foundation selector "setMinimumScaleFactor:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare Sub setMinimumScaleFactor lib Foundation selector "setMinimumScaleFactor:" (id as ptr, value as single)
			  #endif
			  setMinimumScaleFactor (id, value)
			End Set
		#tag EndSetter
		MinimumScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function numberOfLines lib UIKit selector "numberOfLines" (id as ptr) as Integer
			  return numberOfLines (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setNumberOfLines lib UIKit selector "setNumberOfLines:" (id as ptr, value as integer)
			  setNumberOfLines id, value
			End Set
		#tag EndSetter
		NumberOfLines As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function preferredMaxLayoutWidth lib Foundation selector "preferredMaxLayoutWidth" (id as ptr) as double
			  #elseif Target32Bit
			    declare function preferredMaxLayoutWidth lib Foundation selector "preferredMaxLayoutWidth" (id as ptr) as single
			  #endif
			  return preferredMaxLayoutWidth (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setPreferredMaxLayoutWidth lib Foundation selector "setPreferredMaxLayoutWidth:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare Sub setPreferredMaxLayoutWidth lib Foundation selector "setPreferredMaxLayoutWidth:" (id as ptr, value as single)
			  #endif
			  setPreferredMaxLayoutWidth (id, value)
			End Set
		#tag EndSetter
		PreferredMaxLayoutWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function shadowColor lib UIKit selector "shadowColor" (id as ptr) as ptr
			  return  AppleColor.MakeFromPtr (shadowColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setShadowColor lib UIKit selector "setShadowColor:" (id as ptr, value as ptr)
			  setShadowColor id, value.id
			End Set
		#tag EndSetter
		ShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function shadowOffset lib UIKit selector "shadowOffset" (id as ptr) as NSSize32Bit
			    return shadowOffset(id).toNSSize
			  #elseif Target64Bit
			    DEclare Function shadowOffset lib UIKit selector "shadowOffset" (id as ptr) as NSSize
			    return shadowOffset (id)
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setShadowOffset lib UIKit selector "setShadowOffset:" (id as ptr, value as NSSize32Bit)
			    setShadowOffset id, value.toNSSize32
			  #elseif Target64Bit
			    DEclare Sub setShadowOffset lib UIKit selector "setShadowOffset:" (id as ptr, value as NSSize)
			    setShadowOffset id, value
			  #endif
			End Set
		#tag EndSetter
		ShadowOffset As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return gettextAlignment
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTextAlignment value
			End Set
		#tag EndSetter
		TextAlignment As NSTextAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTextColor value
			End Set
		#tag EndSetter
		TextColor As AppleColor
	#tag EndComputedProperty


	#tag Enum, Name = NSLineBreakMode, Type = Integer, Flags = &h0
		WordWrap
		  CharWrap
		  Clip
		  TruncateHead
		  TruncateTail
		TruncateMiddle
	#tag EndEnum

	#tag Enum, Name = UIBaselineAdjustment, Type = Integer, Flags = &h0
		BaseLines
		  Centers
		None
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdjustsFontSizeToFitWidth"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineAdjustment"
			Group="Behavior"
			Type="UIBaselineAdjustment"
			EditorType="Enum"
			#tag EnumValues
				"0 - BaseLines"
				"1 - Centers"
				"2 - None"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isProxy"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineBreakMode"
			Group="Behavior"
			Type="NSLineBreakMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - WordWrap"
				"1 - CharWrap"
				"2 - Clip"
				"3 - TruncateHead"
				"4 - TruncateTail"
				"5 - TruncateMiddle"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfLines"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredMaxLayoutWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
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
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlignment"
			Group="Behavior"
			Type="NSTextAlignment"
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
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
