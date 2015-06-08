#tag Class
Protected Class AppleSlider
Inherits AppleControl
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setvalue(value as single, animated as boolean)
		  Declare Sub setValue lib UIKit selector "setValue:animated:" (id as ptr, value as single, animated as boolean)
		  setValue id, value, animated
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function value lib UIKit selector "value" (id as ptr) as single
			  Return value (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setvalue value, True
			End Set
		#tag EndSetter
		AnimateValue As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UISlider")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function continuous lib UIKit selector "isContinuous" (id as ptr) as boolean
			  Return continuous (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setContinuous lib UIKit selector "setContinuous:" (id as ptr, value as boolean)
			  setContinuous id, value
			End Set
		#tag EndSetter
		Continuous As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function minimumTrackTintColor lib UIKit selector "minimumTrackTintColor" (id as ptr) as ptr
			  Return new AppleColor (minimumTrackTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumTrackTintColor lib UIKit selector "setMinimumTrackTintColor:" (id as ptr, value as ptr)
			  setMinimumTrackTintColor id, value.id
			End Set
		#tag EndSetter
		MaximumTrackTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function MaximumTrackTintColor lib UIKit selector "maximumTrackTintColor" (id as ptr) as ptr
			  Return new AppleColor (MaximumTrackTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMaximumTrackTintColor lib UIKit selector "setMaximumTrackTintColor:" (id as ptr, value as ptr)
			  setMaximumTrackTintColor id, value.id
			End Set
		#tag EndSetter
		MinimumTrackTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function minimumValueImage lib UIKit selector "minimumValueImage" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (minimumValueImage (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumValueImage lib UIKit selector "setMinimumValueImage:" (id as ptr, value as ptr)
			  setMinimumValueImage id, value.id
			End Set
		#tag EndSetter
		MinimumValueImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function minimumValueImageRectForBounds lib UIKit selector "minimumValueImageRectForBounds:" (id as ptr, mybounds as nsrect) as nsrect
			    return minimumValueImageRectForBounds (id, me.Bounds)
			  #elseif Target32Bit
			    declare Function minimumValueImageRectForBounds lib UIKit selector "minimumValueImageRectForBounds:" (id as ptr, mybounds as NSRect32Bit) as NSRect32Bit
			    return minimumValueImageRectForBounds(id, me.Bounds.toNSRect32).toNSRect
			  #endif
			End Get
		#tag EndGetter
		MinimumValueImageRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function thumbRectForBounds lib UIKit selector "thumbRectForBounds:trackRect:value:" _
			    (id as ptr, mybounds as nsrect, trackrect as nsrect, value as single) as nsrect
			    return thumbRectForBounds (id, me.Bounds, me.TrackRect, me.AnimateValue)
			  #elseif Target32Bit
			    declare Function thumbRectForBounds lib UIKit selector "thumbRectForBounds:trackRect:value:" _
			    (id as ptr, mybounds as NSRect32Bit, trackrect as NSRect32Bit, value as single) as NSRect32Bit
			    return thumbRectForBounds(id, me.Bounds.toNSRect32, me.TrackRect.toNSRect32, me.AnimateValue).toNSRect
			  #endif
			End Get
		#tag EndGetter
		ThumbRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function thumbTintColor lib UIKit selector "thumbTintColor" (id as ptr) as ptr
			  Return new AppleColor (thumbTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setThumbTintColor lib UIKit selector "setThumbTintColor:" (id as ptr, value as ptr)
			  setThumbTintColor id, value.id
			End Set
		#tag EndSetter
		ThumbTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function trackRectForBounds lib UIKit selector "trackRectForBounds:" (id as ptr, mybounds as nsrect) as nsrect
			    return trackRectForBounds (id, me.Bounds)
			  #elseif Target32Bit
			    declare Function trackRectForBounds lib UIKit selector "trackRectForBounds:" (id as ptr, mybounds as NSRect32Bit) as NSRect32Bit
			    return trackRectForBounds(id, me.Bounds.toNSRect32).toNSRect
			  #endif
			End Get
		#tag EndGetter
		TrackRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AnimateValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setvalue value, false
			End Set
		#tag EndSetter
		Value As Single
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimateValue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
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
			Name="ContentHorizontalAlignment"
			Group="Behavior"
			Type="UIControlContentHorizontalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Left"
				"2 - Right"
				"3 - Fill"
			#tag EndEnumValues
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
			Name="ContentVerticalAlignment"
			Group="Behavior"
			Type="UIControlContentVerticalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Fill"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Group="Behavior"
			Type="boolean"
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
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
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="UIControlState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Normal"
				"1 - Highlighted"
				"2 - Disabled"
				"3 - Selected"
				"4 - Application"
				"5 - Reserved"
			#tag EndEnumValues
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
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
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
			Name="TouchInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tracking"
			Group="Behavior"
			Type="Boolean"
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
		#tag ViewProperty
			Name="Value"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
