#tag Class
Protected Class iOSLibEvent
Inherits iOSLibObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As iOSLibEvent
		  return if (aptr = nil, nil, new iOSLibEvent (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TouchesForView(View as iOSLibView) As ioslibset
		  Declare function touchesForView lib UIKit selector "touchesForView:" (id as ptr, view as ptr) as ptr
		  return ioslibset.MakeFromPtr (touchesForView(id, view.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TouchesForWindow(Window as iOSLibWindow) As ioslibset
		  Declare function touchesForWindow lib UIKit selector "touchesForWindow:" (id as ptr, view as ptr) as ptr
		  return ioslibset.MakeFromPtr (touchesForWindow(id, window.id))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function allTouches lib UIKit selector "allTouches" (id as ptr) as ptr
			  return ioslibset.MakeFromPtr (allTouches(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAllTouches lib UIKit selector "setAllTouches:" (id as ptr, value as ptr)
			  setAllTouches id, value.id
			End Set
		#tag EndSetter
		AllTouches As iOSLibSet
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIEvent")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function subtype lib UIKit selector "subtype" (id as ptr) as UIEventSubtype
			  return subtype (id)
			End Get
		#tag EndGetter
		Subytpe As UIEventSubtype
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function timeStamp lib UIKit selector "timeStamp" (id as ptr) as double
			  return timeStamp (id)
			End Get
		#tag EndGetter
		TimeStamp As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function type lib UIKit selector "type" (id as ptr) as UIEventType
			  return type (id)
			End Get
		#tag EndGetter
		Type As UIEventType
	#tag EndComputedProperty


	#tag Enum, Name = UIEventSubtype, Type = Integer, Flags = &h0
		None = 0
		  MotionShake = 1
		  RemoteControlPlay = 100
		  RemoteControlPause = 101
		  RemoteControlStop = 102
		  RemoteControlTogglePlayPause = 103
		  RemoteControlNextTrack = 104
		  RemoteControlPreviousTrack = 105
		  RemoteControlBeginSeekingBackward = 106
		  RemoteControlEndSeekingBackward = 107
		  RemoteControlBeginSeekingForward = 108
		RemoteControlEndSeekingForward = 109
	#tag EndEnum

	#tag Enum, Name = UIEventType, Type = Integer, Flags = &h0
		Touches
		  Motion
		RemoteControl
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
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
			Name="Subytpe"
			Group="Behavior"
			Type="UIEventSubtype"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - MotionShake"
				"100 - RemoteControlPlay"
				"101 - RemoteControlPause"
				"102 - RemoteControlStop"
				"103 - RemoteControlTogglePlayPause"
				"104 - RemoteControlNextTrack"
				"105 - RemoteControlPreviousTrack"
				"106 - RemoteControlBeginSeekingBackward"
				"107 - RemoteControlEndSeekingBackward"
				"108 - RemoteControlBeginSeekingForward"
				"109 - RemoteControlEndSeekingForward"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeStamp"
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
			Name="Type"
			Group="Behavior"
			Type="UIEventType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Touches"
				"1 - Motion"
				"2 - RemoteControl"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
