#tag Class
Protected Class AppleSCNLight
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Declare function light lib SceneKitLib selector "light" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (light(ClassPtr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNLight
		  return if (aptr = nil, nil, new AppleSCNLight(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("SCNLight")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function color_ lib SceneKitLib selector "color" (id as ptr) as ptr
			  return AppleColor.MakeFromPtr (color_(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setColor lib SceneKitLib selector "setColor:" (id as ptr, value as Ptr)
			  setColor id,value.id
			End Set
		#tag EndSetter
		LightColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Declare function type lib SceneKitLib selector "type" (id as ptr) as CFStringRef
			  return type (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setType lib SceneKitLib selector "setType:" (id as ptr, value as CFStringRef)
			  setType id, value
			End Set
		#tag EndSetter
		Private LightType As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setName value
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case LightType
			  case kSCNLightTypeAmbient
			    return SCNLightType.Ambient
			  case kSCNLightTypeDirectional
			    return SCNLightType.Directional
			  case kSCNLightTypeOmni
			    return SCNLightType.Omni
			  case kSCNLightTypeSpot
			    return SCNLightType.Spot
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case SCNLightType.Ambient
			    LightType = kSCNLightTypeAmbient
			  case SCNLightType.Directional
			    LightType = kSCNLightTypeDirectional
			  case SCNLightType.Omni
			    LightType = kSCNLightTypeOmni
			  case SCNLightType.Spot
			    LightType = kSCNLightTypeSpot
			  end select
			End Set
		#tag EndSetter
		Type As SCNLightType
	#tag EndComputedProperty


	#tag Constant, Name = kSCNLightTypeAmbient, Type = Text, Dynamic = False, Default = \"SCNLightTypeAmbient", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSCNLightTypeDirectional, Type = Text, Dynamic = False, Default = \"SCNLightTypeDirectional", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSCNLightTypeOmni, Type = Text, Dynamic = False, Default = \"SCNLightTypeOmni", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSCNLightTypeSpot, Type = Text, Dynamic = False, Default = \"SCNLightTypeSpot", Scope = Private
	#tag EndConstant


	#tag Enum, Name = SCNLightType, Type = Integer, Flags = &h0
		Ambient
		  Omni
		  Directional
		Spot
	#tag EndEnum


	#tag ViewBehavior
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
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="SCNLightType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Ambient"
				"1 - Omni"
				"2 - Directional"
				"3 - Spot"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
