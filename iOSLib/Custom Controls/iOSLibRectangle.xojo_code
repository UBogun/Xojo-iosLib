#tag Class
Protected Class iOSLibRectangle
Inherits iosrectangle
	#tag Event
		Sub Open()
		  me.AppleControl = new AppleView (me.Handle)
		  AttachHandlers
		  RaiseEvent open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AttachHandlers()
		  AddHandler me.AppleControl.TouchesMovedWithEvent, AddressOf informOnTouchesMoved
		  AddHandler me.AppleControl.TouchesBeganWithEvent, AddressOf informOnTouchesBegan
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(anobject as iOSControl)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSControl
		  // Constructor(deserializer As xojo.Core._Deserializer) -- From iOSControl
		  Super.Constructor
		  me.AppleControl = new AppleControl (anobject.Handle)
		  System.DebugLog integer(me.Handle).totext
		  AttachHandlers
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(anobject as iosview)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTouchesBegan(control as appleresponder, set as appleset, anevent as applensevent)
		  RaiseEvent TouchesBegan (appletouch.SetToCoreArray(set), anevent)
		  #pragma unused control
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTouchesMoved(control as appleresponder, set as appleset, anevent as applensevent)
		  RaiseEvent TouchesMoved (appletouch.SetToCoreArray(set), anevent)
		  #pragma unused control
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesBegan(Touches() As AppleTouch, eanvent as appleNSevent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesMoved(Touches() As AppleTouch, eanvent as appleNSevent)
	#tag EndHook


	#tag Property, Flags = &h0
		Shared AppleControl As AppleView
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CornerHeight"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CornerWidth"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
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
			Type="Integer"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
