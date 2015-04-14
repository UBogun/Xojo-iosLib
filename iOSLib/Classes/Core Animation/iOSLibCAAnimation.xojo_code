#tag Class
Protected Class iOSLibCAAnimation
Inherits ioslibcamediatimingobject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  declare function animation lib UIKit selector "animation" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From MacOSObject
		  // Constructor(id as Ptr) -- From MacOSObject
		  Super.Constructor (animation (ClassPtr))
		  MHasOwnership = true
		  
		  dim mydelegate as new iOSLibCAAnimationDelegate
		  setDelegate mydelegate.id
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DefaultValueForKey(Key As CFStringRef) As iosLibObject
		  declare function defaultValueForKey lib UIKit selector "defaultValueForKey:" (id as ptr, key as CFStringRef) as Ptr
		  return iOSLibObject.MakeFromPtr (defaultValueForKey(id, key))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnStart()
		  RaiseEvent AnimationDidStart
		  // system.debuglog "animation started"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnStop(Finished as boolean)
		  RaiseEvent AnimationDidStop (finished)
		  // system.debuglog "animation stopped"+ if (finished, " successfully", "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As iOSLibCAAnimation
		  return if (aptr <> NIL, new iOSLibCAAnimation (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NameForProperty(aProperty as Properties) As Text
		  select case aProperty
		  case Properties.Position
		    return Position
		  case Properties.Anchorpoint
		    return AnchorPoint
		  case Properties.Left
		    return PositionX
		  case Properties.Top
		    return PositionY
		  case Properties.width
		    return Width
		  case Properties.height
		    return height
		  case Properties.BorderColor
		    Return borderColor
		  case Properties.BackgroundColor
		    return BackgroundColor
		  case Properties.BorderWidth
		    return BorderWidth
		  case Properties.Bounds
		    return Bounds
		  case Properties.ContentsRect
		    return CContentsRect
		  case properties.CornerRadius
		    return CornerRadius
		  case properties.Filters
		    return Filters
		  case Properties.Hidden
		    return Hidden
		  case Properties.MasksToBounds
		    return MasksToBounds
		  case Properties.Opacity
		    return Opacity
		  case Properties.ShadowColor
		    return ShadowColor
		  case Properties.ShadowOffset
		    return ShadowOffset
		  case Properties.ShadowOpacity
		    return shadowOpacity
		  case Properties.ShadowRadius
		    return ShadowRadius
		  case Properties.Transform
		    return Transform
		  case Properties.Contents
		    return Contents
		  case Properties.doublesided
		    return DoubleSided
		  case Properties.Mask
		    Return Mask
		  case properties.ShadowPath
		    return ShadowPath
		  case properties.sublayers
		    return SubLayers
		  case properties.sublayerTransform
		    return SubLayerTransform
		  case properties.zPosition
		    return ZPosition
		  Case Properties.GradientColors
		    Return GradientColors
		  Case Properties.GradientLocations
		    Return GradientLocations
		  Case Properties.GradientStartPoint
		    Return GradientStartPoint
		  Case Properties.GradientEndpoint
		    Return GradientEndPoint
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PropertyForName(aPropertyName as Text) As Properties
		  select case aPropertyName
		  case Position
		    return Properties.Position
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShouldArchiveValueForKey(Key As CFStringRef) As Boolean
		  
		  declare function shouldArchiveValueForKey lib UIKit selector "shouldArchiveValueForKey:" (id as ptr, key as CFStringRef) as Boolean
		  return shouldArchiveValueForKey (id, key)
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AnimationDidStart()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event AnimationDidStop(Finished as Boolean)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CAAnimation")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function removedOnCompletion lib UIKit selector "isRemovedOnCompletion" (id as ptr) as Boolean
			  return removedOnCompletion (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setremovedOnCompletion lib UIKit selector "setRemovedOnCompletion:" (id as ptr, value as Boolean)
			  setremovedOnCompletion (id, value)
			  
			End Set
		#tag EndSetter
		RemoveOnCompletion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function timingFunction lib UIKit selector "timingFunction" (id as ptr) as ptr
			  dim myptr as ptr = timingFunction (id)
			  return if (myptr <> NIL, new iOSLibCAMediaTimingFunction (timingFunction (id)), NIL)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setTimingFunction lib UIKit selector "setTimingFunction:" (id as ptr, value as ptr)
			  settimingFunction id , value.id
			  
			End Set
		#tag EndSetter
		TimingFunction As iOSLIbCAMediaTimingFunction
	#tag EndComputedProperty


	#tag Constant, Name = AnchorPoint, Type = Text, Dynamic = False, Default = \"anchorPoint", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = BackgroundColor, Type = Text, Dynamic = False, Default = \"backgroundColor", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = BorderColor, Type = Text, Dynamic = False, Default = \"borderColor", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = BorderWidth, Type = Text, Dynamic = False, Default = \"borderWidth", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Bounds, Type = Text, Dynamic = False, Default = \"bounds", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = CContentsRect, Type = Text, Dynamic = False, Default = \"contentsRect", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Contents, Type = Text, Dynamic = False, Default = \"contents", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = CornerRadius, Type = Text, Dynamic = False, Default = \"cornerRadius", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DoubleSided, Type = Text, Dynamic = False, Default = \"doubleSided", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Filters, Type = Text, Dynamic = False, Default = \"filters", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = GradientColors, Type = Text, Dynamic = False, Default = \"colors", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = GradientEndPoint, Type = Text, Dynamic = False, Default = \"endPoint", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = GradientLocations, Type = Text, Dynamic = False, Default = \"locations", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = GradientStartPoint, Type = Text, Dynamic = False, Default = \"startPoint", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Height, Type = Text, Dynamic = False, Default = \"bounds.size.height", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Hidden, Type = Text, Dynamic = False, Default = \"hidden", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Mask, Type = Text, Dynamic = False, Default = \"mask", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = MasksToBounds, Type = Text, Dynamic = False, Default = \"masksToBounds", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Opacity, Type = Text, Dynamic = False, Default = \"opacity", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Position, Type = Text, Dynamic = False, Default = \"position", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = PositionX, Type = Text, Dynamic = False, Default = \"position.x", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = PositionY, Type = Text, Dynamic = False, Default = \"position.y", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ShadowColor, Type = Text, Dynamic = False, Default = \"shadowColor", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ShadowOffset, Type = Text, Dynamic = False, Default = \"shadowOffset", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ShadowOpacity, Type = Text, Dynamic = False, Default = \"shadowOpacity", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ShadowPath, Type = Text, Dynamic = False, Default = \"shadowPath", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ShadowRadius, Type = Text, Dynamic = False, Default = \"shadowRadius", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = SubLayers, Type = Text, Dynamic = False, Default = \"sublayers", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = SubLayerTransform, Type = Text, Dynamic = False, Default = \"sublayerTransform", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Transform, Type = Text, Dynamic = False, Default = \"transform", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Width, Type = Text, Dynamic = False, Default = \"bounds.size.width", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ZPosition, Type = Text, Dynamic = False, Default = \"zPosition", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = Properties, Type = Integer, Flags = &h0
		Position
		  Anchorpoint
		  BorderColor
		  BackgroundColor
		  ShadowColor
		  Bounds
		  BorderWidth
		  CornerRadius
		  Hidden
		  MasksToBounds
		  ShadowRadius
		  ShadowOffset
		  ContentsRect
		  Filters
		  Opacity
		  ShadowOpacity
		  Transform
		  Left
		  Top
		  Width
		  Height
		  Contents
		  DoubleSided
		  Mask
		  ShadowPath
		  SubLayers
		  SubLayerTransform
		  ZPosition
		  GradientColors
		  GradientLocations
		  GradientStartPoint
		GradientEndPoint
	#tag EndEnum


	#tag ViewBehavior
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
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
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
			Name="HasOwnership"
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
			Name="mHasOwnership"
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
			Name="RemoveOnCompletion"
			Group="Behavior"
			Type="Boolean"
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
	#tag EndViewBehavior
End Class
#tag EndClass
