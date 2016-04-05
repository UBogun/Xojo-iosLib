#tag Class
Protected Class AppleCGBitmapContext
Inherits AppleCGContext
	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function CGBitmapContextGetHeight Lib CoreGraphicsLibName (id as ptr) As integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function CGBitmapContextGetWidth Lib CoreGraphicsLibName (id as ptr) As integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function CurrentContext() As AppleCGBitmapContext
		  dim result as ptr = UIGraphicsGetCurrentContext
		  return if (result = nil, nil, new AppleCGBitmapContext(result))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGBitmapContextGetHeight (mcftyperef)
			End Get
		#tag EndGetter
		Height As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGBitmapContextGetWidth (mcftyperef)
			End Get
		#tag EndGetter
		Width As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowFontSmoothing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFontSubpixelPositioning"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFontSubpixelQuantization"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="CGBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Normal"
				"1 - Multiply"
				"2 - Screen"
				"3 - Overlay"
				"4 - Darken"
				"5 - Lighten"
				"6 - ColorDodge"
				"7 - ColorBurn"
				"8 - SoftLight"
				"9 - HardLight"
				"10 - Difference"
				"11 - Exclusion"
				"12 - Hue"
				"13 - Saturation"
				"14 - Color"
				"15 - Luminosity"
				"16 - Clear"
				"17 - Copy"
				"18 - SourceIn"
				"19 - SourceOut"
				"20 - SourceAtop"
				"21 - DestinationOver"
				"22 - DestinationIn"
				"23 - DestinationOut"
				"24 - DestinationAtop"
				"25 - ModeXOR"
				"26 - PlusDarker"
				"27 - PlusLighter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Flatness"
			Group="Behavior"
			Type="Double"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InterpolationQuality"
			Group="Behavior"
			Type="CGInterpolationQuality"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Low"
				"4 - Medium"
				"3 - High"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNIL"
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
			Name="LineCap"
			Group="Behavior"
			Type="CGLineCap"
			EditorType="Enum"
			#tag EnumValues
				"0 - Butt"
				"1 - Round"
				"2 - Square"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineJoin"
			Group="Behavior"
			Type="CGLineJoin"
			EditorType="Enum"
			#tag EnumValues
				"0 - Miter"
				"1 - Round"
				"2 - Bevel"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MiterLimit"
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
			Name="PathIsEmpty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingIntent"
			Group="Behavior"
			Type="CGColorRenderingIntent"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - AbsoluteColorimetric"
				"2 - RelativeColorimetric"
				"3 - Perceptual"
				"4 - Saturation"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldSmoothFonts"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldSubpixelPositionFonts"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldSubpixelQuantizeFonts"
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
			Name="TextDrawingMode"
			Group="Behavior"
			Type="CGTextDrawingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Fill"
				"1 - Stroke"
				"2 - FillStroke"
				"3 - Invisible"
				"4 - FillClip"
				"5 - StrokeClip"
				"6 - FillStrokeClip"
				"7 - Clip"
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
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
