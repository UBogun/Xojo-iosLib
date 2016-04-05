#tag Class
Protected Class AppleCABasicAnimation
Inherits AppleCAPropertyAnimation
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromColor as AppleCGColor, toColor as AppleCGColor)
		  MakeAnimation (key)
		  fromvalue = fromColor
		  ToValue = toColor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromPath as AppleCGPath, toPath as AppleCGPath)
		  MakeAnimation (key)
		  fromvalue = fromPath
		  ToValue = toPath
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromObject as AppleObject, toObject as AppleObject)
		  MakeAnimation (key)
		  fromvalue = fromObject
		  ToValue = toObject
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromBool as boolean, tobool as Boolean)
		  MakeAnimation (key)
		  fromvalue = new AppleNumber (fromBool)
		  ToValue = new AppleNumber (tobool)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromTransform as CATransform3D, toTransform as CATransform3D)
		  MakeAnimation (key)
		  
		  fromvalue = new AppleValue (fromTransform)
		  ToValue = new AppleValue (toTransform)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromdouble as double, todouble as double)
		  MakeAnimation (key)
		  
		  fromvalue = new AppleNumber (fromdouble)
		  ToValue = new AppleNumber (todouble)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromPoint as FoundationFramework.NSPoint, toPoint as FoundationFramework.NSPoint)
		  MakeAnimation (key)
		  
		  fromvalue = new AppleValue (fromPoint)
		  ToValue = new AppleValue (topoint)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromrect as FoundationFramework.NSRect, torect as FoundationFramework.NSRect)
		  MakeAnimation (key)
		  
		  fromvalue = new AppleValue (fromrect)
		  ToValue = new AppleValue (torect)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromsize as FoundationFramework.NSSize, tosize as FoundationFramework.NSSize)
		  MakeAnimation (key)
		  fromvalue = new AppleValue (fromsize)
		  ToValue = new AppleValue (tosize)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MakeAnimation(Key as Properties)
		  dim myprop as text = NameForProperty (key)
		  Super.Constructor (AnimationWithKeyPath (ClassPtr, myprop))
		  RetainClassObject
		  dim mydelegate as new AppleCAAnimationDelegate
		  setDelegate mydelegate.id
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function byValue lib QuartzCoreLib selector "byValue" (id as ptr) as ptr
			  dim myptr as ptr = ByValue (id)
			  return if(myptr <> NIL, new AppleObject (myptr), NIL)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setByValue lib QuartzCoreLib selector "setByValue:" (id as ptr, value as ptr)
			  setByValue id, value.GeneralID
			  
			End Set
		#tag EndSetter
		ByValue As AppleGeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CABasicAnimation")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function fromValue lib QuartzCoreLib selector "fromValue" (id as ptr) as ptr
			  dim myptr as ptr = fromValue (id)
			  return if(myptr <> NIL, new AppleObject (myptr), NIL)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Targetmacos
			    DEclare Sub setFromValue lib Appkit selector "setFromValue:" (id as ptr, value as ptr)
			    setFromValue id, value.GeneralID
			  #endif
			End Set
		#tag EndSetter
		FromValue As AppleGeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function toValue lib QuartzCoreLib selector "toValue" (id as ptr) as ptr
			  dim myptr as ptr = tovalue (id)
			  return if(myptr <> NIL, new AppleObject (myptr), NIL)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setToValue lib QuartzCoreLib selector "setToValue:" (id as ptr, value as ptr)
			  setToValue id, value.GeneralID
			  
			End Set
		#tag EndSetter
		ToValue As AppleGeneralObject
	#tag EndComputedProperty


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
			Name="Description"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
