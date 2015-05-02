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
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShouldArchiveValueForKey(Key As CFStringRef) As Boolean
		  
		  declare function shouldArchiveValueForKey lib UIKit selector "shouldArchiveValueForKey:" (id as ptr, key as CFStringRef) as Boolean
		  return shouldArchiveValueForKey (id, key)
		  
		End Function
	#tag EndMethod


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
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
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
