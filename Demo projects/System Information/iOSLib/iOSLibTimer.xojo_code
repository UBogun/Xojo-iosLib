#tag Class
Protected Class iOSLibTimer
	#tag Method, Flags = &h0
		Sub Start()
		  starttime = xojo.core.date.Now
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  EndTime = xojo.core.date.Now
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if StartTime <> nil and endtime <> nil then return EndTime - StartTime
			End Get
		#tag EndGetter
		Difference As xojo.Core.DateInterval
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private EndTime As xojo.Core.Date
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StartTime As xojo.Core.Date
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
