#tag Class
Protected Class NSNotificationCenterInterface
Inherits NSNotificationCenterCore
Implements NotificationSender
	#tag Event
		Sub ReceivedNotification(Notification as NSNotification)
		  NotifyObservers (Notification)
		  RaiseEvent ReceivedNotification (notification) // pass it on
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub NotifyObservers(Notification as NSNotification)
		  // Part of the NotificationSender interface.
		  
		  for each observer as NotificationReceiver in NotificatonObservers
		    observer.ReveicedNotification (Notification)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As NotificationReceiver)
		  // Part of the NotificationSender interface.
		  
		  NotificatonObservers.Append (observer)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver(Notificationobserver As NotificationReceiver)
		  // Part of the NotificationSender interface.
		  
		  for q as UInteger = 0 to NotificatonObservers.Ubound
		    if NotificatonObservers(q) = Notificationobserver then
		       NotificatonObservers.Remove (q)
		      exit for
		    end if
		  next
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ReceivedNotification(Notification as NSNotification)
	#tag EndHook


	#tag Property, Flags = &h21
		Private NotificatonObservers() As NotificationReceiver
	#tag EndProperty


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
