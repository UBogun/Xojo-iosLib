#tag Class
Protected Class AppleSlider
Inherits AppleControl
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setvalue(value as single, animated as boolean)
		  Declare Sub setValue lib UIKitLibname selector "setValue:animated:" (id as ptr, value as single, animated as boolean)
		  setValue id, value, animated
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function value lib UIKitLibname selector "value" (id as ptr) as single
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
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UISlider")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function continuous lib UIKitLibname selector "isContinuous" (id as ptr) as boolean
			  Return continuous (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setContinuous lib UIKitLibname selector "setContinuous:" (id as ptr, value as boolean)
			  setContinuous id, value
			End Set
		#tag EndSetter
		Continuous As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function minimumTrackTintColor lib UIKitLibname selector "minimumTrackTintColor" (id as ptr) as ptr
			  Return new AppleColor (minimumTrackTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumTrackTintColor lib UIKitLibname selector "setMinimumTrackTintColor:" (id as ptr, value as ptr)
			  setMinimumTrackTintColor id, value.id
			End Set
		#tag EndSetter
		MaximumTrackTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function MaximumTrackTintColor lib UIKitLibname selector "maximumTrackTintColor" (id as ptr) as ptr
			  Return new AppleColor (MaximumTrackTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMaximumTrackTintColor lib UIKitLibname selector "setMaximumTrackTintColor:" (id as ptr, value as ptr)
			  setMaximumTrackTintColor id, value.id
			End Set
		#tag EndSetter
		MinimumTrackTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function minimumValueImage lib UIKitLibname selector "minimumValueImage" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (minimumValueImage (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumValueImage lib UIKitLibname selector "setMinimumValueImage:" (id as ptr, value as ptr)
			  setMinimumValueImage id, value.id
			End Set
		#tag EndSetter
		MinimumValueImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function minimumValueImageRectForBounds lib UIKitLibname selector "minimumValueImageRectForBounds:" (id as ptr, mybounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
			    return minimumValueImageRectForBounds (id, me.Bounds)
			  #elseif Target32Bit
			    declare Function minimumValueImageRectForBounds lib UIKitLibname selector "minimumValueImageRectForBounds:" (id as ptr, mybounds as FoundationFramework.NSRect32Bit) as FoundationFramework.NSRect32Bit
			    return minimumValueImageRectForBounds(id, me.Bounds.toNSRect32).toNSRect
			  #endif
			End Get
		#tag EndGetter
		MinimumValueImageRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function thumbRectForBounds lib UIKitLibname selector "thumbRectForBounds:trackRect:value:" _
			    (id as ptr, mybounds  as FoundationFramework.NSRect, trackrect  as FoundationFramework.NSRect, value as single)  as FoundationFramework.NSRect
			    return thumbRectForBounds (id, me.Bounds, me.TrackRect, me.AnimateValue)
			  #elseif Target32Bit
			    declare Function thumbRectForBounds lib UIKitLibname selector "thumbRectForBounds:trackRect:value:" _
			    (id as ptr, mybounds as FoundationFramework.NSRect32Bit, trackrect as FoundationFramework.NSRect32Bit, value as single) as FoundationFramework.NSRect32Bit
			    return thumbRectForBounds(id, me.Bounds.toNSRect32, me.TrackRect.toNSRect32, me.AnimateValue).toNSRect
			  #endif
			End Get
		#tag EndGetter
		ThumbRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function thumbTintColor lib UIKitLibname selector "thumbTintColor" (id as ptr) as ptr
			  Return new AppleColor (thumbTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setThumbTintColor lib UIKitLibname selector "setThumbTintColor:" (id as ptr, value as ptr)
			  setThumbTintColor id, value.id
			End Set
		#tag EndSetter
		ThumbTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare Function trackRectForBounds lib UIKitLibname selector "trackRectForBounds:" (id as ptr, mybounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
			    return trackRectForBounds (id, me.Bounds)
			  #elseif Target32Bit
			    declare Function trackRectForBounds lib UIKitLibname selector "trackRectForBounds:" (id as ptr, mybounds as FoundationFramework.NSRect32Bit) as FoundationFramework.NSRect32Bit
			    return trackRectForBounds(id, me.Bounds.toNSRect32).toNSRect
			  #endif
			End Get
		#tag EndGetter
		TrackRect As FoundationFramework.NSRect
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
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
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
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
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
			Name="ControlsCount"
			Group="Behavior"
			Type="Integer"
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
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
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
			Name="RestorationIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
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
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
