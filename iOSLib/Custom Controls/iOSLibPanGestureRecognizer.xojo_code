#tag Class
Protected Class iOSLibPanGestureRecognizer
Inherits iOSLibGestureRecognizer
	#tag Method, Flags = &h0
		Sub Constructor()
		  myReceiver = new AppleGestureRecognizerReceiver (self)
		  mmyRecognizer = new ApplePanGestureRecognizer (myReceiver, NSSelectorFromString ("gestureRecognized"))
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ApplePanGestureRecognizer (mmyRecognizer)
			End Get
		#tag EndGetter
		myRecognizer As ApplePanGestureRecognizer
	#tag EndComputedProperty


	#tag ViewBehavior
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
