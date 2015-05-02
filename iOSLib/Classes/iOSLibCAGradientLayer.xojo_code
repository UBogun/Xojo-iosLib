#tag Class
Protected Class iOSLibCAGradientLayer
Inherits iOSLibCALayer
	#tag Method, Flags = &h1000
		Sub Constructor()
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibCALayer
		  // Constructor(aLayer As iOSLibCALayer) -- From iOSLibCALayer
		  // Constructor() -- From iOSLibResponder
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ColorArray() As Color)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibCALayer
		  // Constructor(aLayer As iOSLibCALayer) -- From iOSLibCALayer
		  // Constructor() -- From iOSLibResponder
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  SetColors  (colorarray)
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ColorArray() As Color, LocationsArray() As Double)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibCALayer
		  // Constructor(aLayer As iOSLibCALayer) -- From iOSLibCALayer
		  // Constructor() -- From iOSLibResponder
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mhasownership = true
		  SetColors colorarray
		  SetLocations LocationsArray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ColorArray() As Color, LocationsArray() As Double, Start_point as Point, End_point as Point)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibCALayer
		  // Constructor(aLayer As iOSLibCALayer) -- From iOSLibCALayer
		  // Constructor() -- From iOSLibResponder
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mhasownership = true
		  
		  SetColors (colorarray)
		  SetLocations LocationsArray
		  startpoint = start_point.toNSPoint
		  EndPoint = End_point.toNSPoint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DistributeLocationsEvenly()
		  Locations = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub SetColors(ColorArray() As Color)
		  Colors = iOSLibMutableArray.CGColorArray (colorarray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub SetLocations(LocationArray() As Double)
		  Locations = iOSLibMutableArray.NumberArray (locationarray)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CAGradientLayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function colors lib UIKit selector "colors" (id as ptr) as Ptr
			  Return iOSLibArray.MakeFromPtr (colors (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setColors lib UIKit selector "setColors:" (id as ptr, value as ptr)
			  setColors (id, value.Id)
			End Set
		#tag EndSetter
		Colors As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare function endPoint lib UIKit selector "endPoint" (id as ptr) as NSPoint
			    return endPoint (id)
			  #elseif Target32Bit
			    declare function endPoint lib UIKit selector "endPoint" (id as ptr) as NSPoint32Bit
			    return endPoint(id).toNSPoint
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target64bit
			    declare Sub setEndPoint lib UIKit selector "setEndPoint:" (id as ptr, value as NSPoint)
			    setEndPoint (id, value)
			  #elseif Target32Bit
			    declare Sub setEndPoint lib UIKit selector "setEndPoint:" (id as ptr, value as NSPoint32Bit)
			    setEndPoint (id, value.toNSPoint32)
			  #endif
			End Set
		#tag EndSetter
		EndPoint As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function locations lib UIKit selector "locations" (id as ptr) as Ptr
			  Return iOSLibArray.MakeFromPtr (locations (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLocations lib UIKit selector "setLocations:" (id as ptr, value as ptr)
			  setLocations (id, if (value <> NIL, value.Id, NIL))
			End Set
		#tag EndSetter
		Locations As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target64bit
			    declare function startPoint lib UIKit selector "startPoint" (id as ptr) as NSPoint
			    return startPoint (id)
			  #elseif Target32Bit
			    declare function startPoint lib UIKit selector "startPoint" (id as ptr) as NSPoint32Bit
			    return startPoint(id).toNSPoint
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target64bit
			    declare Sub setStartPoint lib UIKit selector "setStartPoint:" (id as ptr, value as NSPoint)
			    setStartPoint (id, value)
			  #elseif Target32Bit
			    declare Sub setStartPoint lib UIKit selector "setStartPoint:" (id as ptr, value as NSPoint32Bit)
			    setStartPoint (id, value.toNSPoint32)
			  #endif
			End Set
		#tag EndSetter
		StartPoint As NSPoint
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
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
