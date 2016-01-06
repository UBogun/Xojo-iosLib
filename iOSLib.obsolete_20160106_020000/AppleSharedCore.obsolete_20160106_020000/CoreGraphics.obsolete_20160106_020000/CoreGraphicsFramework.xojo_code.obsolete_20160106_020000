#tag Module
Protected Module CoreGraphicsFramework
	#tag Method, Flags = &h1
		Protected Function CGMakeVector(dx as double, dy as double) As FoundationFrameWork.CGVector
		  dim v as FoundationFrameWork.CGVector
		  v.dx = dx
		  v.dy = dy
		  return v
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return TransformExtension.CGAffineTransformIdentity
			End Get
		#tag EndGetter
		ioslibCGAffineTransformIdentity As CGAffineTransform
	#tag EndComputedProperty


	#tag Constant, Name = CoreGraphicsLibName, Type = Text, Dynamic = False, Default = \"CoreGraphics.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreGraphicsPath, Type = Text, Dynamic = False, Default = \"com.apple.CoreGraphics", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreImage, Type = Text, Dynamic = False, Default = \"QuartzCore.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreImagePath, Type = Text, Dynamic = False, Default = \"com.apple.CoreImage", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CGAffineTransform, Flags = &h0
		a as double
		  b as double
		  c as double
		  d as double
		  tx as double
		ty as double
	#tag EndStructure

	#tag Structure, Name = CGAffineTransform32Bit, Flags = &h0
		a as single
		  b as Single
		  c as Single
		  d as Single
		  tx as Single
		ty as Single
	#tag EndStructure


	#tag Enum, Name = CGBlendMode, Type = UInt32, Flags = &h0
		Normal
		  Multiply
		  Screen
		  Overlay
		  Darken
		  Lighten
		  ColorDodge
		  ColorBurn
		  SoftLight
		  HardLight
		  Difference
		  Exclusion
		  Hue
		  Saturation
		  Color
		  Luminosity
		  Clear
		  Copy
		  SourceIn
		  SourceOut
		  SourceAtop
		  DestinationOver
		  DestinationIn
		  DestinationOut
		  DestinationAtop
		  ModeXOR
		  PlusDarker
		PlusLighter
	#tag EndEnum

	#tag Enum, Name = CGColorRenderingIntent, Type = UInt32, Flags = &h0
		Default
		  AbsoluteColorimetric
		  RelativeColorimetric
		  Perceptual
		Saturation
	#tag EndEnum

	#tag Enum, Name = CGInterpolationQuality, Flags = &h0
		Default = 0
		  None = 1
		  Low = 2
		  Medium = 4
		High = 3
	#tag EndEnum

	#tag Enum, Name = CGLineCap, Type = UInt32, Flags = &h0
		Butt
		  Round
		Square
	#tag EndEnum

	#tag Enum, Name = CGLineJoin, Type = UInt32, Flags = &h0
		Miter
		  Round
		Bevel
	#tag EndEnum

	#tag Enum, Name = CGPathDrawingMode, Flags = &h0
		Fill
		  EvenOddFill
		  Stroke
		  FillStroke
		EvenOddFillStroke
	#tag EndEnum

	#tag Enum, Name = CGTextDrawingMode, Type = UInt32, Flags = &h0
		Fill
		  Stroke
		  FillStroke
		  Invisible
		  FillClip
		  StrokeClip
		  FillStrokeClip
		Clip
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
End Module
#tag EndModule
