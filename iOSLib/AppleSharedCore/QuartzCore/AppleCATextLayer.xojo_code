#tag Class
Protected Class AppleCATextLayer
Inherits AppleCALayer
	#tag Method, Flags = &h0, Description = 54616E736C6174657320746865204E53546578746669656C6420656E756D65726174696F6E20746F2074686520517561747A436F726520636F6E7374616E7473
		 Shared Function TextAlignmentConstant(value as appletextfield.NSTextAlignment) As text
		  select case value
		  case appletextfield.NSTextAlignment.Left
		    return kCAAlignmentLeft
		  case appletextfield.NSTextAlignment.Right
		    return kCAAlignmentRight
		  case appletextfield.NSTextAlignment.Center
		    return kCAAlignmentCenter
		  case appletextfield.NSTextAlignment.Justified
		    return kCAAlignmentJustified
		  case appletextfield.NSTextAlignment.Natural
		    return kCAAlignmentNatural
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54616E736C61746573207468652051756172747A436F726520616C69676E6D656E7420636F6E7374616E747320746F20746865204E53546578746669656C6420656E756D65726174696F6E
		 Shared Function TextAlignmentForConstant(value as text) As appletextfield.NSTextAlignment
		  select case value
		  case kCAAlignmentLeft 
		    return appletextfield.NSTextAlignment.Left
		  case kCAAlignmentRight 
		    return appletextfield.NSTextAlignment.Right
		  case kCAAlignmentCenter 
		    return appletextfield.NSTextAlignment.Center
		  case kCAAlignmentJustified
		    return appletextfield.NSTextAlignment.Justified
		  case kCAAlignmentNatural
		    return appletextfield.NSTextAlignment.Natural
		  end select
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CATextLayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function string_ lib QuartzCoreLib selector "string" (id as ptr) as CFStringRef
			  return string_ (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setString lib QuartzCoreLib selector "setString:" (id as ptr, value as CFStringRef)
			  setString (id, value)
			End Set
		#tag EndSetter
		Content As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkCAAlignmentCenter as text = SystemConstantName("kCAAlignmentCenter", QuartzCorePath)
			  return mkCAAlignmentCenter
			End Get
		#tag EndGetter
		Protected Shared kCAAlignmentCenter As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkCAAlignmentJustified as text = SystemConstantName("kCAAlignmentJustified", QuartzCorePath)
			  return mkCAAlignmentJustified
			End Get
		#tag EndGetter
		Protected Shared kCAAlignmentJustified As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkCAAlignmentLeft as text = SystemConstantName("kCAAlignmentLeft", QuartzCorePath)
			  return mkCAAlignmentLeft
			End Get
		#tag EndGetter
		Protected Shared kCAAlignmentLeft As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkCAAlignmentNatural as text = SystemConstantName("kCAAlignmentNatural", QuartzCorePath)
			  return mkCAAlignmentNatural
			End Get
		#tag EndGetter
		Protected Shared kCAAlignmentNatural As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkCAAlignmentRight as text = SystemConstantName("kCAAlignmentRightt", QuartzCorePath)
			  return mkCAAlignmentRight
			End Get
		#tag EndGetter
		Protected Shared kCAAlignmentRight As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATruncationEnd as text = SystemConstantName("kCATruncationEnd", QuartzCorePath)
			  return mkCATruncationEnd
			End Get
		#tag EndGetter
		Shared kCATruncationEnd As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATruncationMiddle as text = SystemConstantName("kCATruncationMiddle", QuartzCorePath)
			  return kCATruncationMiddle
			End Get
		#tag EndGetter
		Shared kCATruncationMiddle As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATruncationNone as text = SystemConstantName("kCATruncationNone", QuartzCorePath)
			  return mkCATruncationNone
			End Get
		#tag EndGetter
		Shared kCATruncationNone As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATruncationStart as text = SystemConstantName("kCATruncationStart", QuartzCorePath)
			  return mkCATruncationStart
			End Get
		#tag EndGetter
		Shared kCATruncationStart As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function wrapped lib QuartzCoreLib selector "isWrapped" (id as ptr) as Boolean
			  return wrapped (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setWrapped lib QuartzCoreLib selector "setWrapped:" (id as ptr, value as Boolean)
			  setWrapped (id, value)
			End Set
		#tag EndSetter
		Wrapped As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AnchorPointZ"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Autoreverses"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Content"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentsPositioning"
			Group="Behavior"
			Type="caLayerContentPosition"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Left"
				"4 - Right"
				"5 - TopLeft"
				"6 - TopRight"
				"7 - BottomLeft"
				"8 - BottomRight"
				"9 - Resize"
				"10 - ResizeProportionally"
				"11 - FillProportionally"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentsScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CornerRadius"
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
			Name="DoubleSided"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawsAsynchronously"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EdgeAntialiasing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillMode"
			Group="Behavior"
			Type="FillModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Remove"
				"1 - Remain"
				"2 - Reset"
				"3 - Both"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometryFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GroupOpacity"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MagnificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MasksToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilterBias"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsDisplayOnBoundsChange"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opacity"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RasterizationScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatCount"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowOpacity"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldRasterize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOffset"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Wrapped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
