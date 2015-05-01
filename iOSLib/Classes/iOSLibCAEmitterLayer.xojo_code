#tag Class
Protected Class iOSLibCAEmitterLayer
Inherits iOSLibCALayer
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  Seed = randomint (0, &hffffffff)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableEmitters()
		  BirthRate = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableEmitters()
		  BirthRate = 1
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function birthRate lib UIKit selector "birthRate" (id as ptr) as single
			  Return birthRate (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBirthRate lib UIKit selector "setBirthRate:" (id as ptr, value as single)
			  setBirthRate id, value
			End Set
		#tag EndSetter
		BirthRate As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CAEmitterLayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mConstantLib as iOSLibmutableDictionary
			  if mConstantLib = nil then
			    mConstantLib = new iOSLibmutableDictionary (15)
			    mConstantLib.ValueForKey (kCAEmitterLayerCircle) = SystemConstantName (kCAEmitterLayerCircle, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerCuboid) = SystemConstantName (kCAEmitterLayerCuboid, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerLine) = SystemConstantName (kCAEmitterLayerLine, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerPoint) = SystemConstantName (kCAEmitterLayerPoint, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerRectangle) = SystemConstantName (kCAEmitterLayerRectangle, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerSphere) = SystemConstantName (kCAEmitterLayerSphere, QuartzCorePath)
			    
			    mConstantLib.ValueForKey (kCAEmitterLayerPoints) = SystemConstantName (kCAEmitterLayerPoints, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerOutline) = SystemConstantName (kCAEmitterLayerOutline, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerSurface) = SystemConstantName (kCAEmitterLayerSurface, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerVolume) = SystemConstantName (kCAEmitterLayerVolume, QuartzCorePath)
			    
			    mConstantLib.ValueForKey (kCAEmitterLayerUnordered) = SystemConstantName (kCAEmitterLayerUnordered, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerOldestFirst) = SystemConstantName (kCAEmitterLayerOldestFirst, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerOldestLast) = SystemConstantName (kCAEmitterLayerOldestLast, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerBackToFront) = SystemConstantName (kCAEmitterLayerBackToFront, QuartzCorePath)
			    mConstantLib.ValueForKey (kCAEmitterLayerAdditive) = SystemConstantName (kCAEmitterLayerAdditive, QuartzCorePath)
			    
			  end if
			  return mConstantLib
			End Get
		#tag EndGetter
		Private Shared ConstantDict As iOSLibDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function emitterCells lib UIKit selector "emitterCells" (id as ptr) as ptr
			  Return iOSLibArray.MakeFromPtr ( emitterCells (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setEmitterCells lib UIKit selector "setEmitterCells:" (id as ptr, value as ptr)
			  setEmitterCells id, value.id
			End Set
		#tag EndSetter
		EmitterCells As iOSLibarray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64bit
			    Declare Function emitterDepth lib UIKit selector "emitterDepth" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function emitterDepth lib UIKit selector "emitterDepth" (id as ptr) as single
			  #endif
			  Return emitterDepth (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64bit
			    Declare Sub setEmitterDepth lib UIKit selector "setEmitterDepth:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setEmitterDepth lib UIKit selector "setEmitterDepth:" (id as ptr, value as single)
			  #endif
			  setEmitterDepth (id, value)
			  
			End Set
		#tag EndSetter
		EmitterDepth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case mEmitterMode
			  case ConstantDict.TextForKey (kCAEmitterLayerPoints)
			    return EmitterModes.Points
			  case ConstantDict.TextForKey (kCAEmitterLayerOutline)
			    return EmitterModes.Outline
			  case ConstantDict.TextForKey (kCAEmitterLayerSurface)
			    return EmitterModes.Surface
			  case ConstantDict.TextForKey (kCAEmitterLayerVolume)
			    return EmitterModes.Volume
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim result as text
			  select case value
			  case EmitterModes.Outline
			    result = ConstantDict.TextForKey (kCAEmitterLayerOutline)
			  case EmitterModes.Points
			    result = ConstantDict.TextForKey (kCAEmitterLayerPoints)
			  case EmitterModes.Surface
			    result = ConstantDict.TextForKey (kCAEmitterLayerSurface)
			  case EmitterModes.Volume
			    result = ConstantDict.TextForKey (kCAEmitterLayerVolume)
			  end select
			  mEmitterMode = result
			End Set
		#tag EndSetter
		EmitterMode As EmitterModes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case mEmitterShape
			  case ConstantDict.TextForKey (kCAEmitterLayerPoint)
			    return EmitterShapes.Point
			  case ConstantDict.TextForKey (kCAEmitterLayerLine)
			    return EmitterShapes.Line
			  case ConstantDict.TextForKey (kCAEmitterLayerRectangle)
			    return EmitterShapes.Rectangle
			  case ConstantDict.TextForKey (kCAEmitterLayerCircle)
			    return EmitterShapes.Circle
			  case ConstantDict.TextForKey (kCAEmitterLayerCuboid)
			    return EmitterShapes.Cuboid
			  end select
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim result as text
			  select case value
			  case EmitterShapes.Circle
			    result = ConstantDict.TextForKey (kCAEmitterLayerCircle)
			  case EmitterShapes.Cuboid
			    result = ConstantDict.TextForKey (kCAEmitterLayerCuboid)
			  case EmitterShapes.Line
			    result = ConstantDict.TextForKey (kCAEmitterLayerLine)
			  case EmitterShapes.Point
			    result = ConstantDict.TextForKey (kCAEmitterLayerPoint)
			  case EmitterShapes.Rectangle
			    result = ConstantDict.TextForKey (kCAEmitterLayerRectangle)
			  case EmitterShapes.Sphere
			    result = ConstantDict.TextForKey (kCAEmitterLayerSphere)
			  end select
			  mEmitterShape = result
			End Set
		#tag EndSetter
		EmitterShape As EmitterShapes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64bit
			    Declare Function emitterSize lib UIKit selector "emitterSize" (id as ptr) as NSSize
			    return emitterSize (id)
			  #elseif Target32Bit
			    Declare Function emitterSize lib UIKit selector "emitterSize" (id as ptr) as NSSize32Bit
			    return emitterSize (id).toNSSize
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64bit
			    Declare Sub setEmitterSize lib UIKit selector "setEmitterSize:" (id as ptr, value as nssize)
			    setEmitterSize id, value
			  #elseif Target32Bit
			    Declare Sub setEmitterSize lib UIKit selector "setEmitterSize:" (id as ptr, value as NSSize32Bit)
			    setEmitterSize id, value.toNSSize32
			  #endif
			  
			End Set
		#tag EndSetter
		EmitterSize As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64bit
			    Declare Function emitterZPosition lib UIKit selector "emitterZPosition" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function emitterZPosition lib UIKit selector "emitterZPosition" (id as ptr) as single
			  #endif
			  Return emitterZPosition (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64bit
			    Declare Sub setEmitterZPosition lib UIKit selector "setEmitterZPosition:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setEmitterZPosition lib UIKit selector "setEmitterZPosition:" (id as ptr, value as single)
			  #endif
			  setEmitterZPosition (id, value)
			  
			End Set
		#tag EndSetter
		EmitterZPosition As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function lifetime lib UIKit selector "lifetime" (id as ptr) as single
			  Return lifetime (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLifetime lib UIKit selector "setLifetime:" (id as ptr, value as single)
			  setLifetime id, value
			End Set
		#tag EndSetter
		LifeTime As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  declare function emitterMode lib UIKit selector "emitterMode" (id as ptr) as CFStringRef
			  return emitterMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setEmitterMode lib UIKit selector "setEmitterMode:" (id as ptr, value as CFStringRef)
			  setEmitterMode (id, value)
			End Set
		#tag EndSetter
		Protected mEmitterMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  declare function emitterShape lib UIKit selector "emitterShape" (id as ptr) as CFStringRef
			  return emitterShape (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setEmitterShape lib UIKit selector "setEmitterShape:" (id as ptr, value as CFStringRef)
			  setemitterShape (id, value)
			End Set
		#tag EndSetter
		Protected mEmitterShape As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  declare function renderMode lib UIKit selector "renderMode" (id as ptr) as CFStringRef
			  return renderMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setRenderMode lib UIKit selector "setRenderMode:" (id as ptr, value as CFStringRef)
			  setRenderMode (id, value)
			End Set
		#tag EndSetter
		Protected mRenderMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function preservesDepth lib UIKit selector "preservesDepth" (id as ptr) as Boolean
			  Return preservesDepth (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPreservesDepth lib UIKit selector "setPreservesDepth:" (id as ptr, value as Boolean)
			  setPreservesDepth id, value
			End Set
		#tag EndSetter
		PreservesDepth As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case mRenderMode
			  case ConstantDict.TextForKey (kCAEmitterLayerUnordered)
			    return RenderModes.Unordered
			  case ConstantDict.TextForKey (kCAEmitterLayerOldestFirst)
			    return RenderModes.OldestFirst
			  case ConstantDict.TextForKey (kCAEmitterLayerOldestLast)
			    return RenderModes.OldestLast
			  case ConstantDict.TextForKey (kCAEmitterLayerBackToFront)
			    return RenderModes.BackTFront
			  case ConstantDict.TextForKey (kCAEmitterLayerAdditive)
			    return RenderModes.Additive
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim result as text
			  select case value
			  case RenderModes.Additive
			    result = ConstantDict.TextForKey (kCAEmitterLayerAdditive)
			  case RenderModes.BackTFront
			    result = ConstantDict.TextForKey (kCAEmitterLayerBackToFront)
			  case RenderModes.OldestFirst
			    result = ConstantDict.TextForKey (kCAEmitterLayerOldestFirst)
			  case RenderModes.OldestLast
			    result = ConstantDict.TextForKey (kCAEmitterLayerOldestLast)
			  case RenderModes.Unordered
			    result = ConstantDict.TextForKey (kCAEmitterLayerUnordered)
			  end select
			  mRenderMode = result
			End Set
		#tag EndSetter
		RenderMode As RenderModes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scale lib UIKit selector "scale" (id as ptr) as single
			  Return scale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setScale lib UIKit selector "setScale:" (id as ptr, value as single)
			  setscale (id, value)
			  
			End Set
		#tag EndSetter
		Scale As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function seed lib UIKit selector "seed" (id as ptr) as uint32
			  Return  seed (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSeed lib UIKit selector "setSeed:" (id as ptr, value as uint32)
			  setSeed id, value
			End Set
		#tag EndSetter
		Seed As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function spin lib UIKit selector "spin" (id as ptr) as single
			  Return spin (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSpin lib UIKit selector "setSpin:" (id as ptr, value as single)
			  setSpin (id, value)
			  
			End Set
		#tag EndSetter
		Spin As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function velocity lib UIKit selector "velocity" (id as ptr) as single
			  Return velocity (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setVelocity lib UIKit selector "setVelocity:" (id as ptr, value as single)
			  setVelocity (id, value)
			  
			End Set
		#tag EndSetter
		Velocity As Single
	#tag EndComputedProperty


	#tag Constant, Name = kCAEmitterLayerAdditive, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerAdditive", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerBackToFront, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerBackToFront", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerCircle, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerCircle", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerCuboid, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerCuboid", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerLine, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerLine", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerOldestFirst, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerOldestFirst", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerOldestLast, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerOldestLast", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerOutline, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerOutline", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerPoint, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerPoint", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerPoints, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerPoints", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerRectangle, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerRectangle", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerSphere, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerSphere", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerSurface, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerSurface", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerUnordered, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerUnordered", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCAEmitterLayerVolume, Type = Text, Dynamic = False, Default = \"kCAEmitterLayerVolume", Scope = Private
	#tag EndConstant


	#tag Enum, Name = EmitterModes, Type = Integer, Flags = &h0
		Points
		  Outline
		  Surface
		Volume
	#tag EndEnum

	#tag Enum, Name = EmitterShapes, Type = Integer, Flags = &h0
		Point
		  Line
		  Rectangle
		  Cuboid
		  Circle
		Sphere
	#tag EndEnum

	#tag Enum, Name = RenderModes, Type = Integer, Flags = &h0
		Unordered
		  OldestFirst
		  OldestLast
		  BackTFront
		Additive
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
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
			Name="BirthRate"
			Group="Behavior"
			Type="Single"
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
			Name="EmitterDepth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EmitterMode"
			Group="Behavior"
			Type="EmitterModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Points"
				"1 - Outline"
				"2 - Surface"
				"3 - Volume"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="EmitterShape"
			Group="Behavior"
			Type="EmitterShapes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Point"
				"1 - Line"
				"2 - Rectangle"
				"3 - Cuboid"
				"4 - Circle"
				"5 - Sphere"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="EmitterZPosition"
			Group="Behavior"
			Type="Double"
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
			Name="LifeTime"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MagnificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
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
			Name="PreservesDepth"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RasterizationScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderMode"
			Group="Behavior"
			Type="RenderModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unordered"
				"1 - OldestFirst"
				"2 - OldestLast"
				"3 - BackTFront"
				"4 - Additive"
			#tag EndEnumValues
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
			Name="Scale"
			Group="Behavior"
			Type="Single"
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
			Name="Spin"
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
			Name="Velocity"
			Group="Behavior"
			Type="Single"
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
