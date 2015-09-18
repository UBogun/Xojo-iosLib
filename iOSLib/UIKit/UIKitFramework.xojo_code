#tag Module
Protected Module UIKitFramework
	#tag Method, Flags = &h1
		Protected Function getbounds(id as ptr) As FoundationFramework.NSRect
		  #if Target64bit
		    declare function bounds lib UIKitLibname selector "bounds" (id as ptr)  as FoundationFramework.NSRect
		    return bounds (id)
		  #elseif target32bit
		    declare function bounds lib UIKitLibname selector "bounds" (id as ptr) as FoundationFramework.NSRect32Bit
		    return bounds(id).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getContents(id as ptr) As Ptr
		  declare function contents lib UIKitLibname selector "contents" (id as Ptr) as ptr
		  return contents(id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getEnabled(id as ptr) As Boolean
		  Declare function enabled lib UIKitLibname selector "isEnabled" (id as ptr) as Boolean
		  return enabled (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getFrame(id as ptr) As FoundationFramework.NSRect
		  #if target32bit
		    declare function getframe lib UIKitLibname selector "frame" (id as Ptr) as FoundationFramework.NSRect32Bit
		    return getframe(id).toNSRect
		  #elseif Target64Bit
		    declare function getframe lib UIKitLibname selector "frame" (id as Ptr)  as FoundationFramework.NSRect
		    return getframe (id)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOpaque(id as ptr) As Boolean
		  declare function opaque lib UIKitLibname selector "isOpaque" (id as ptr) as Boolean
		  return opaque (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBounds(id as ptr, value as FoundationFramework.NSRect)
		  #if Target64bit
		    declare sub setbounds lib UIKitLibname selector "setBounds:" (id as ptr, value  as FoundationFramework.NSRect)
		    setBounds id, value
		  #elseif target32bit
		    declare sub setBounds lib UIKitLibname selector "setBounds:" (id as ptr, value as FoundationFramework.NSRect32Bit)
		    setBounds id, value.toNSRect32
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setContents(id as ptr, value as ptr)
		  declare Sub setcontents lib UIKitLibname selector "setContents:" (id as Ptr, value as ptr)
		  setcontents (id, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetEnabled(id as ptr, value as Boolean)
		  Declare Sub setEnabled lib UIKitLibname selector "setEnabled:" (id as ptr, value as Boolean)
		  setenabled (id, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setFrame(id as ptr, value as FoundationFramework.NSRect)
		  #if target32bit
		    declare sub setFrame lib UIKitLibname selector "setFrame:" (id as Ptr, value as FoundationFramework.NSRect32Bit)
		    setFrame id, value.toNSRect32
		  #elseif target64bit
		    declare sub setFrame lib UIKitLibname selector "setFrame:" (id as Ptr, value  as FoundationFramework.NSRect)
		    setFrame id, value
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setOpaque(id as ptr, value as boolean)
		  declare sub setOpaque lib UIKitLibname selector "setOpaque:" (id as ptr, value as Boolean)
		  setOpaque id, value
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = UIKitLibName, Type = Text, Dynamic = False, Default = \"UIKit.framework", Scope = Public
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

	#tag Enum, Name = UIAlertActionStyle, Type = Integer, Flags = &h0
		Default
		  Cancel
		Destructive
	#tag EndEnum

	#tag Enum, Name = UIAlertControllerStyle, Type = Integer, Flags = &h0
		ActionSheet
		Alert
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

	#tag Enum, Name = UIDynamicItemCollisionBoundsType, Type = UInteger, Flags = &h0
		Rectangle
		  Ellipse
		Path
	#tag EndEnum

	#tag Enum, Name = UIGestureRecognizerState, Type = Integer, Flags = &h0
		Possible
		  Began
		  Changed
		  Ended
		  Cancelled
		Failed
	#tag EndEnum

	#tag Enum, Name = UIImageOrientation, Type = Integer, Flags = &h0
		Normal
		  HalfwayRound
		  QuarterRight
		  QuarerLeft
		  UpMirrored
		  DownMirrored
		  LeftMirrored
		RightMirrored
	#tag EndEnum

	#tag Enum, Name = UIImageRenderingMode, Type = Integer, Flags = &h0
		Automatic
		  AlwaysOriginal
		AlwaysTemplate
	#tag EndEnum

	#tag Enum, Name = UIImageResizingMode, Type = Integer, Flags = &h0
		Tiled
		Stretched
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

	#tag Enum, Name = UITextFieldBorderStyle, Type = Integer, Flags = &h0
		None
		  Line
		  Bezel
		RoundedRect
	#tag EndEnum

	#tag Enum, Name = UITextFieldViewMode, Type = Integer, Flags = &h0
		Never
		  WhileEditing
		  UnlessEditing
		Always
	#tag EndEnum

	#tag Enum, Name = UIUserInterfaceIdiom, Type = Integer, Flags = &h0
		Unspecified = -1
		  iPhone
		iPad
	#tag EndEnum

	#tag Enum, Name = UIUserInterfaceSizeClass, Type = Integer, Flags = &h0
		Unspecified
		  Compact
		Regular
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
