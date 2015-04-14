#tag Class
Protected Class iOSLibCATransition
Inherits iOSLibCAAnimation
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kCATransitionFade", QuartzCorePath)
			  return mtext
			End Get
		#tag EndGetter
		Private Shared CFade As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kCATransitionFromBottom", QuartzCorePath)
			  return mtext
			End Get
		#tag EndGetter
		Private Shared CFromBottom As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kCATransitionFromLeft", QuartzCorePath)
			  return mtext
			End Get
		#tag EndGetter
		Private Shared CFromLeft As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kCATransitionFromRight", QuartzCorePath)
			  return mtext
			End Get
		#tag EndGetter
		Private Shared CFromRight As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kCATransitionFromTop", QuartzCorePath)
			  return mtext
			End Get
		#tag EndGetter
		Private Shared CFromTop As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CATransition")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kCATransitionMoveIn", QuartzCorePath)
			  return mtext
			End Get
		#tag EndGetter
		Private Shared CMoveIn As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kCATransitionPush", QuartzCorePath)
			  return mtext
			End Get
		#tag EndGetter
		Private Shared CPush As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mtext as text = SystemConstantName ("kCATransitionReveal", QuartzCorePath)
			  return mtext
			End Get
		#tag EndGetter
		Private Shared CReveal As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function endProgress lib UIKit selector "endProgress" (id as ptr) as Single
			  Return endProgress (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setEndProgress lib UIKit selector "setEndProgress:" (id as ptr, value as Single)
			  setEndProgress id, value
			End Set
		#tag EndSetter
		EndProgress As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function startProgress lib UIKit selector "startProgress" (id as ptr) as Single
			  Return startProgress (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setStartProgress lib UIKit selector "setStartProgress:" (id as ptr, value as Single)
			  setStartProgress id, value
			End Set
		#tag EndSetter
		StartProgress As Single
	#tag EndComputedProperty


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
			Name="EndProgress"
			Group="Behavior"
			Type="Single"
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
			Name="StartProgress"
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
