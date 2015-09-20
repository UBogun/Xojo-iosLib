#tag Class
Protected Class iOSLibGestureRecognizer
Implements AppleNSEventReceiver,AppleNSEventForwarder
	#tag Method, Flags = &h0
		Sub AddRecognizerToControl(acontrol as iOSControl)
		  acontrol.AppleView.AddGestureRecognizer mmyRecognizer
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  myReceiver = new AppleGestureRecognizerReceiver (self)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  myReceiver = nil
		  myRecognizer = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GestureRecognized()
		  RaiseEvent GestureRecognized (myRecognizer)
		  dim myArray as new AppleMutableArray(2)
		  myArray.AddText kPanGesture
		  myArray.Addobject myRecognizer
		  NotifyObservers (myArray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(EventProperties As AppleArray)
		  // Part of the AppleNSEventForwarder interface.
		  
		  if Observers <> nil then
		    if Observers.HasKey (me) then
		      dim wr as WeakRef =  Observers.Value(me)
		      if wr.Value <> nil then
		        dim myObserver as  AppleNSEventreceiver = AppleNSEventReceiver (wr.Value)
		        myObserver.ReceivedEvent (EventProperties)
		      end if
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReceivedEvent(Details as AppleArray)
		  // Part of the AppleNSEventReceiver interface.
		  
		  #pragma unused details
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReceivedReturnEvent(Details as AppleArray) As Boolean
		  // Part of the AppleNSEventReceiver interface.
		  #pragma unused Details
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As AppleNSEventReceiver)
		  // Part of the AppleNSEventForwarder interface.
		  if Observers = nil then Observers = new Dictionary
		  observers.Value(me)= WeakRef.Create (observer)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver()
		  // Part of the AppleNSEventForwarder interface.
		  
		  if Observers.HasKey(me) then Observers.Remove me
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event GestureRecognized(gesture as AppleGestureRecognizer)
	#tag EndHook


	#tag Property, Flags = &h1
		Protected mmyRecognizer As AppleGestureRecognizer
	#tag EndProperty

	#tag Property, Flags = &h0
		myReceiver As AppleGestureRecognizerReceiver
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mmyRecognizer
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mmyRecognizer = value
			End Set
		#tag EndSetter
		myRecognizer As AppleGestureRecognizer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Shared Observers As Dictionary
	#tag EndProperty


	#tag Constant, Name = kPanGesture, Type = Text, Dynamic = False, Default = \"PanGesture", Scope = Public
	#tag EndConstant


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
