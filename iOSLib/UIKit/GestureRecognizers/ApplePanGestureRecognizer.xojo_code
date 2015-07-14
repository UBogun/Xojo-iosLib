#tag Class
Protected Class ApplePanGestureRecognizer
Inherits AppleGestureRecognizer
	#tag Method, Flags = &h1000
		Sub Constructor(target as AppleObject, SEL as ptr)
		  Super.Constructor (classptr, Target, SEL)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As ApplePanGestureRecognizer
		  return if (aptr = nil, nil, new ApplePanGestureRecognizer (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TranslationInView(aView as AppleView) As NSPoint
		  #if Target64Bit
		    Declare function translationInView lib UIKit selector "translationInView:" (id as ptr, view as ptr) as NSPoint
		    return translationInView (id, aview.id)
		  #elseif Target32Bit
		    Declare function translationInView lib UIKit selector "translationInView:" (id as ptr, view as ptr) as NSPoint32Bit
		    return translationInView (id, aview.id).tonsPoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslationInView(aView as AppleView, assigns value as nspoint)
		  #if Target64Bit
		    Declare sub setTranslationInView lib UIKit selector "setTranslation:inView:" (id as ptr, value as nspoint, view as ptr)
		    setTranslationInView (id, value, aview.id)
		  #elseif Target32Bit
		    Declare sub setTranslationInView lib UIKit selector "setTranslation:inView:" (id as ptr, value as NSPoint32Bit, view as ptr)
		    setTranslationInView (id, value.toNSPoint32, aview.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VelocityInView(View as AppleView) As NSPoint
		  #if Target64Bit
		    Declare function velocityInView lib UIKit selector "velocityInView:" (id as ptr, view as ptr) as NSPoint
		    return velocityInView (id, view.id)
		  #elseif Target32Bit
		    Declare function velocityInView lib UIKit selector "velocityInView:" (id as ptr, view as ptr) as NSPoint32Bit
		    return velocityInView (id, view.id).tonsPoint
		  #endif
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIPanGestureRecognizer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function maximumNumberOfTouches lib UIKit selector "maximumNumberOfTouches" (id as ptr) as UInteger
			  return maximumNumberOfTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMaximumNumberOfTouches lib UIKit selector "setMaximumNumberOfTouches:" (id as ptr, value as UInteger)
			  setMaximumNumberOfTouches id, value
			End Set
		#tag EndSetter
		MaximumNumberOfTouches As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function minimumNumberOfTouches lib UIKit selector "minimumNumberOfTouches" (id as ptr) as UInteger
			  return minimumNumberOfTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumNumberOfTouches lib UIKit selector "setMinimumNumberOfTouches:" (id as ptr, value as UInteger)
			  setMinimumNumberOfTouches id, value
			End Set
		#tag EndSetter
		MinimumNumberOfTouches As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if View <> nil then return TranslationInView (view)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if view <> nil then TranslationInView (view) = value
			End Set
		#tag EndSetter
		Translation As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if View <> nil then return VelocityInView (view)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  
			End Set
		#tag EndSetter
		Velocity As NSPoint
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CancelsTouchesInView"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DelaysTouchesBegan"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DelaysTouchesEnded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
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
			Name="MaximumNumberOfTouches"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumNumberOfTouches"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfTouches"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="UIGestureRecognizerState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Possible"
				"1 - Began"
				"2 - Changed"
				"3 - Ended"
				"4 - Cancelled"
				"5 - Failed"
			#tag EndEnumValues
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
End Class
#tag EndClass
