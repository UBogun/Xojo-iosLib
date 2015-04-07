#tag Class
Protected Class iOSLibCAKeyframeAnimation
Inherits iOSLibCAPropertyAnimation
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties)
		  dim myprop as text = NameForProperty (key)
		  Super.Constructor (AnimationWithKeyPath (classptr, myProp))
		  dim mydelegate as new iOSLibCAAnimationDelegate
		  setDelegate mydelegate.id
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, myvalues as iOSLibArray)
		  self.Constructor (key)
		  Values = myvalues
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // dim myValue as text = CalculationValueConstants (mCalculationMode)
			  // select case myValue
			  // case
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case ValueCalculationModes.Paced
			    mCalculationMode = CalculationValueConstants.TextForKey(paced)
			  case ValueCalculationModes.Cubic
			    mCalculationMode = CalculationValueConstants.TextForKey(Cubic)
			  case ValueCalculationModes.CubicPaced
			    mCalculationMode = CalculationValueConstants.TextForKey(CubicPaced)
			  case ValueCalculationModes.Discrete
			    mCalculationMode = CalculationValueConstants.TextForKey(Discrete)
			  case ValueCalculationModes.Linear
			    mCalculationMode = CalculationValueConstants.TextForKey(Linear)
			  end select
			End Set
		#tag EndSetter
		CalculationMode As ValueCalculationModes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mConstantDict as iOSLibMutableDictionary
			  if mConstantDict = nil then
			    mConstantDict = new iOSLibMutableDictionary (5)
			    mConstantDict.ValueForKey (Linear) = SystemConstantName ("kCAAnimationLinear", QuartzCorePath)
			    mConstantDict.ValueForKey (Discrete) = SystemConstantName ("kCAAnimationDiscrete", QuartzCorePath)
			    mConstantDict.ValueForKey (Paced) = SystemConstantName ("kCAAnimationPaced", QuartzCorePath)
			    mConstantDict.ValueForKey (Cubic) = SystemConstantName ("kCAAnimationCubic", QuartzCorePath)
			    mConstantDict.ValueForKey (CubicPaced) = SystemConstantName ("kCAAnimationCubicPaced", QuartzCorePath)
			  end if
			  return mConstantDict
			End Get
		#tag EndGetter
		Shared CalculationValueConstants As ioslibdictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CAKeyframeAnimation")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function keyTimes lib UIKit selector "keyTimes" (id as ptr) as Ptr
			  return iOSLibArray.MakeFromPtr (keyTimes (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setKeyTimes lib UIKit selector "setKeyTimes:" (id as ptr, value as Ptr)
			  setKeyTimes (id, value.id)
			  
			End Set
		#tag EndSetter
		KeyTimes As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Declare Function calculationMode lib UIKit selector "calculationMode" (id as ptr) as CFStringRef
			  return calculationMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setCalculationMode lib UIKit selector "setCalculationMode:" (id as ptr, value as CFStringRef)
			  setCalculationMode id, value
			End Set
		#tag EndSetter
		Private mCalculationMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Declare Function rotationMode lib UIKit selector "rotationMode" (id as ptr) as CFStringRef
			  return rotationMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setRotationMode lib UIKit selector "setRotationMode:" (id as ptr, value as CFStringRef)
			  Declare sub setRotationModePtr lib UIKit selector "setRotationMode:" (id as ptr, value as ptr)
			  if value.Empty then
			    setRotationModePtr id, nil
			  else
			    setRotationMode id, value
			  end if
			End Set
		#tag EndSetter
		Private mRotationMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function path lib UIKit selector "path" (id as ptr) as Ptr
			  dim result as ptr = path(id)
			  return if (result <> NIL, new iOSLibCGPath (result), NIL)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setPath lib UIKit selector "setPath:" (id as ptr, value as Ptr)
			  setPath (id, value.CFTypeRef)
			  
			End Set
		#tag EndSetter
		Path As iOSLibCGPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mRotateAuto as text = SystemConstantName ("kCAAnimationRotateAuto", QuartzCorePath)
			  return mRotateAuto
			End Get
		#tag EndGetter
		Private Shared RotateAuto As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mRotateAutoReverse as text = SystemConstantName ("kCAAnimationRotateAutoReverse", QuartzCorePath)
			  return mRotateAutoReverse
			End Get
		#tag EndGetter
		Private Shared RotateAutoReverse As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  select case mRotationMode
			  case ""
			    return RotationModes.None
			  case RotateAuto
			    return RotationModes.RotateAuto
			  case RotateAutoReverse
			    return RotationModes.RotateAutoReverse
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case RotationModes.None
			    mRotationMode =""
			  case RotationModes.RotateAuto
			    mRotationMode = RotateAuto
			  case RotationModes.RotateAutoReverse
			    mRotationMode = RotateAutoReverse
			  end select
			End Set
		#tag EndSetter
		RotationMode As RotationModes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function timingFunctions lib UIKit selector "timingFunctions" (id as ptr) as Ptr
			  return iOSLibArray.MakeFromPtr (timingFunctions (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setTimingFunctions lib UIKit selector "setTimingFunctions:" (id as ptr, value as Ptr)
			  setTimingFunctions (id, value.id)
			  
			End Set
		#tag EndSetter
		TimingFunctions As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function values lib UIKit selector "values" (id as ptr) as Ptr
			  return iOSLibArray.MakeFromPtr (values (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setValues lib UIKit selector "setValues:" (id as ptr, value as Ptr)
			  setValues (id, value.id)
			  
			End Set
		#tag EndSetter
		Values As iOSLibArray
	#tag EndComputedProperty


	#tag Constant, Name = Cubic, Type = Text, Dynamic = False, Default = \"Cubic", Scope = Private
	#tag EndConstant

	#tag Constant, Name = CubicPaced, Type = Text, Dynamic = False, Default = \"CubicPaced", Scope = Private
	#tag EndConstant

	#tag Constant, Name = Discrete, Type = Text, Dynamic = False, Default = \"Discrete", Scope = Private
	#tag EndConstant

	#tag Constant, Name = Linear, Type = Text, Dynamic = False, Default = \"Linear", Scope = Private
	#tag EndConstant

	#tag Constant, Name = Paced, Type = Text, Dynamic = False, Default = \"Paced", Scope = Private
	#tag EndConstant


	#tag Enum, Name = RotationModes, Type = Integer, Flags = &h0
		None
		  RotateAuto
		RotateAutoReverse
	#tag EndEnum

	#tag Enum, Name = ValueCalculationModes, Type = Integer, Flags = &h0
		Linear
		  Discrete
		  Paced
		  Cubic
		CubicPaced
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Additive"
			Group="Behavior"
			Type="Boolean"
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
			Name="CalculationMode"
			Group="Behavior"
			Type="ValueCalculationModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Discrete"
				"2 - Paced"
				"3 - Cubic"
				"4 - CubicPaced"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cumulative"
			Group="Behavior"
			Type="Boolean"
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
			Name="RotationMode"
			Group="Behavior"
			Type="RotationModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - RotateAuto"
				"2 - RotateAutoReverse"
			#tag EndEnumValues
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
