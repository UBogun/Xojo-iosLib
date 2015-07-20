#tag Module
Protected Module UIKitFramework
	#tag Constant, Name = UIKit, Type = Text, Dynamic = False, Default = \"UIKit.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = UIKitPath, Type = Text, Dynamic = False, Default = \"com.apple.UIKit", Scope = Public
	#tag EndConstant


	#tag Structure, Name = UIOffset, Flags = &h0
		Horizontal as Double
		Vertical As Double
	#tag EndStructure

	#tag Structure, Name = UIOffset32Bit, Flags = &h0
		Horizontal as Single
		Vertical As Single
	#tag EndStructure


	#tag Enum, Name = NSTextAlignment, Flags = &h0
		Left
		  Center
		  Right
		  Justified
		Natural
	#tag EndEnum

	#tag Enum, Name = UIBarMetrics, Type = Integer, Flags = &h0
		Default
		  Compact
		  DefaultPrompt = 101
		CompactPrompt
	#tag EndEnum

	#tag Enum, Name = UIBarPosition, Type = Integer, Flags = &h0
		Any
		  Bottom
		  Top
		TopAttached
	#tag EndEnum

	#tag Enum, Name = UIBarStyle, Type = Integer, Flags = &h0
		Default
		Black
	#tag EndEnum

	#tag Enum, Name = UIControlContentHorizontalAlignment, Type = Integer, Flags = &h0
		Center
		  Left
		  Right
		Fill
	#tag EndEnum

	#tag Enum, Name = UIControlContentVerticalAlignment, Type = Integer, Flags = &h0
		Center
		  Top
		  Bottom
		Fill
	#tag EndEnum

	#tag Enum, Name = UIControlState, Type = UInteger, Flags = &h0
		Normal
		  Highlighted
		  Disabled
		  Selected
		  Application
		Reserved
	#tag EndEnum

	#tag Enum, Name = UIModalTransitionStyle, Type = Integer, Flags = &h0
		CoverVertical
		  FlipHorizontal
		  CrossDissolve
		PartialCurl
	#tag EndEnum

	#tag Enum, Name = UIScrollViewIndicatorStyle, Type = Integer, Flags = &h0
		Default
		  Black
		White
	#tag EndEnum

	#tag Enum, Name = UIScrollViewKeyboardDismissMode, Type = Integer, Flags = &h0
		None
		  OnDrag
		Interactive
	#tag EndEnum

	#tag Enum, Name = UISearchBarIcon, Type = Integer, Flags = &h0
		Search
		  Clear
		  Bookmark
		ResultsList
	#tag EndEnum

	#tag Enum, Name = UISearchBarStyle, Type = UInteger, Flags = &h0
		Default
		  Prominent
		Minimal
	#tag EndEnum

	#tag Enum, Name = UIVIewAnimationCurve, Type = Integer, Flags = &h0
		EaseInEaseOut
		  EaseIn
		  EaseOut
		Linear
	#tag EndEnum

	#tag Enum, Name = UIVIewAnimationTransition, Type = Integer, Flags = &h0
		None
		  FlipFromLeft
		  FlipFromRight
		  CurlUp
		CurlDown
	#tag EndEnum

	#tag Enum, Name = UIViewContentMode, Type = Integer, Flags = &h0
		ScaleToFill
		  ScaleAspectFit
		  ScaleAspectFill
		  Redraw
		  Center
		  Top
		  Bottom
		  Left
		  Right
		  TopLeft
		  TopRight
		  BottomLeft
		BottomRight
	#tag EndEnum

	#tag Enum, Name = UIViewModalPresentationStyle, Type = Integer, Flags = &h0
		FullScreen = 0
		  PageSheet
		  FormSheet
		  CurrentContext
		  Custom
		  OverFullScreen
		  OverCurrentContext
		  PopOver
		None = -1
	#tag EndEnum

	#tag Enum, Name = UIViewTintAdjustmentMode, Type = Integer, Flags = &h0
		Automatic
		  Normal
		Dimmed
	#tag EndEnum

	#tag Enum, Name = UIVIewTransition, Type = Integer, Flags = &h0
		None
		  FlipFromLeft
		  FlipFromRight
		  CurlUp
		  CurlDown
		  CrossDissolve
		  FlipFromTop
		FlipFromBottom
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
