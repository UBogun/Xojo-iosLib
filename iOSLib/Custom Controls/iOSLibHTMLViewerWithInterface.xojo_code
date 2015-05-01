#tag Class
Protected Class iOSLibHTMLViewerWithInterface
Inherits iOSLibHTMLViewer
Implements iOSLibEventForwarder
	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnError(Error as Ptr)
		  dim myarray as new iOSLibMutableArray(2)
		  myarray.AddText  iOSLibWebViewDelegate.DidFailLoad
		  myarray.Addobject new iOSLibObject (error) // needs to be changed when NSError exists
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnFinish()
		  dim myarray as new iOSLibMutableArray(1)
		  myarray.AddText  iOSLibWebViewDelegate.DidFinishLoad
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnLoad()
		  dim myarray as new iOSLibMutableArray(1)
		  myarray.AddText  iOSLibWebViewDelegate.DidStartLoad
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function InformOnShouldStart(Request as Ptr, NavigationType as iOSLibWebView.UIWebViewNavigationType) As boolean
		  dim myarray as new iOSLibMutableArray(2)
		  myarray.AddText  iOSLibWebViewDelegate.ShouldStartLoad
		  myarray.Addobject new ioslibnumber (integer(navigationtype))
		  NotifyObservers (myarray)
		  return true // needs to be changed to forwarding mechanism
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(EventProperties As iOSLibArray)
		  // Part of the iOSLibEventForwarder interface.
		  
		  if Receivers.HasKey(id) then
		    dim wR as WeakRef = Receivers.value(id)
		    dim observer as iOSLibEventReceiver = iOSLibEventReceiver( wr.Value)
		    if observer <> nil then
		      observer.ReceivedEvent (EventProperties)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As iosLibEventReceiver)
		  // Part of the iOSLibEventForwarder interface.
		  
		  if Receivers = nil then Receivers = new dictionary
		  
		  Receivers.Value(id) = weakref.Create (observer)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver(observer As iOSLibEventReceiver)
		  // Part of the iOSLibEventForwarder interface.
		  
		  if Receivers.HasKey (id) then Receivers.Remove (id)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared Receivers As Dictionary
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
