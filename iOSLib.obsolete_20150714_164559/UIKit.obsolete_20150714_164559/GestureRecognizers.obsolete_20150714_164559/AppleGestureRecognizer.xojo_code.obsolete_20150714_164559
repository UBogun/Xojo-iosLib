#tag Class
Protected Class AppleGestureRecognizer
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AddTarget(target as AppleObject, action as PTR)
		  declare Sub addTarget lib UIKit Selector "addTarget:action:" (id as ptr, target as ptr, action as ptr)
		  addTarget id, Target.Id, action
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1001
		Protected Sub Constructor(aClass as ptr, target as AppleObject, SEL as ptr)
		  Declare function initWithTarget lib UIKit selector "initWithTarget:action:" (id as ptr, Target as ptr, action as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithTarget (Alloc(aClass), Target.id, SEL))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetNumberOfTapsRequired() As uinteger
		  Declare function numberOfTapsRequired lib UIKit selector "numberOfTapsRequired" (id as ptr) as UInteger
		  return numberOfTapsRequired (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetNumberOfTouchesRequired() As uinteger
		  Declare function numberOfTouchesRequired lib UIKit selector "numberOfTouchesRequired" (id as ptr) as UInteger
		  return numberOfTouchesRequired (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocationInView(aView as AppleView) As NSPoint
		  #if Target64Bit
		    Declare function locationInView lib UIKit selector "locationInView:" (id as ptr, view as ptr) as NSPoint
		    return locationInView (id, aview.id)
		  #elseif Target32Bit
		    Declare function locationInView lib UIKit selector "locationInView:" (id as ptr, view as ptr) as NSPoint32Bit
		    return locationInView (id, aview.id).tonsPoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocationOfTouchInView(TouchIndex As UInteger, aView as AppleView) As NSPoint
		  #if Target64Bit
		    Declare function locationOfTouch lib UIKit selector "locationOfTouch:inView:" (id as ptr, touchindex as uinteger, view as ptr) as NSPoint
		    return locationOfTouch (id, TouchIndex, aview.id)
		  #elseif Target32Bit
		    Declare function locationOfTouch lib UIKit selector "locationOfTouch:inView:" (id as ptr, touchindex as uinteger, view as ptr) as NSPoint32Bit
		    return locationOfTouch (id, TouchIndex, aview.id).tonsPoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleGestureRecognizer
		  return if (aptr = nil, nil, new AppleGestureRecognizer (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveTarget(target as AppleObject, action as PTR)
		  declare Sub removeTarget lib UIKit Selector "removeTarget:action:" (id as ptr, target as ptr, action as ptr)
		  removeTarget id, Target.Id, action
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequireGestureRecognizerToFail(anotherRecognizer as AppleGestureRecognizer)
		  declare Sub requireGestureRecognizerToFail lib UIKit Selector "requireGestureRecognizerToFail:" (id as ptr, recognizer as ptr)
		  requireGestureRecognizerToFail id, if (anotherRecognizer = NIL, NIL, anotherRecognizer.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetNumberOfTapsRequired(value as uinteger)
		  Declare Sub setNumberOfTapsRequired lib UIKit selector "setNumberOfTapsRequired:" (id as ptr, value as UInteger)
		  setNumberOfTapsRequired id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetNumberOfTouchesRequired(value as uinteger)
		  Declare Sub setNumberOfTouchesRequired lib UIKit selector "setNumberOfTouchesRequired:" (id as ptr, value as UInteger)
		  setNumberOfTouchesRequired id, value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    Declare function action lib UIKit selector "action" (id as ptr) as ptr
			    return action(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if targetmacos
			    Declare Sub setAction lib UIKit selector "setAction:" (id as ptr, value as ptr)
			    setAction id, value
			  #endif
			End Set
		#tag EndSetter
		Action As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function cancelsTouchesInView lib UIKit selector "cancelsTouchesInView" (id as ptr) as Boolean
			  return cancelsTouchesInView (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setCancelsTouchesInView lib UIKit selector "setCancelsTouchesInView:" (id as ptr, value as Boolean)
			  setCancelsTouchesInView id, value
			End Set
		#tag EndSetter
		CancelsTouchesInView As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIGestureRecognizer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function delaysTouchesBegan lib UIKit selector "delaysTouchesBegan" (id as ptr) as Boolean
			  return delaysTouchesBegan (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDelaysTouchesBegan lib UIKit selector "setDelaysTouchesBegan:" (id as ptr, value as Boolean)
			  setDelaysTouchesBegan id, value
			End Set
		#tag EndSetter
		DelaysTouchesBegan As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function delaysTouchesEnded lib UIKit selector "delaysTouchesEnded" (id as ptr) as Boolean
			  return delaysTouchesEnded (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDelaysTouchesEnded lib UIKit selector "setDelaysTouchesEnded:" (id as ptr, value as Boolean)
			  setDelaysTouchesEnded id, value
			End Set
		#tag EndSetter
		DelaysTouchesEnded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function enabled lib UIKit selector "isEnabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setEnabled lib UIKit selector "setEnabled:" (id as ptr, value as Boolean)
			  setEnabled id, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function numberOfTouches lib UIKit selector "numberOfTouches" (id as ptr) as UInteger
			  return numberOfTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setNumberOfTouches lib UIKit selector "setNumberOfTouches:" (id as ptr, value as UInteger)
			  setNumberOfTouches id, value
			End Set
		#tag EndSetter
		NumberOfTouches As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function state lib UIKit selector "state" (id as ptr) as UIGestureRecognizerState
			  return state (id)
			End Get
		#tag EndGetter
		State As UIGestureRecognizerState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    Declare function target lib UIKit selector "target" (id as ptr) as ptr
			    return AppleObject.MakeFromPtr(target(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if targetmacos
			    Declare Sub setTarget lib UIKit selector "setTarget:" (id as ptr, value as ptr)
			    setTarget id, value.id
			  #endif
			End Set
		#tag EndSetter
		Target As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    Declare function view lib UIKit selector "view" (id as ptr) as ptr
			    return AppleView.MakeFromPtr(view(id))
			  #endif
			End Get
		#tag EndGetter
		View As AppleView
	#tag EndComputedProperty


	#tag Enum, Name = UIGestureRecognizerState, Type = Integer, Flags = &h0
		Possible
		  Began
		  Changed
		  Ended
		  Cancelled
		Failed
	#tag EndEnum


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
