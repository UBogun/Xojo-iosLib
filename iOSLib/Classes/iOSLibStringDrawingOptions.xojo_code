#tag Class
Protected Class iOSLibStringDrawingOptions
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid.hasbit (5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then 
			    mid.setbit (5)
			  else
			    mid.clearbit(5)
			  end if
			End Set
		#tag EndSetter
		TruncatesLastVisibleLine As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid.hasbit (3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then 
			    mid.setbit (3)
			  else
			    mid.clearbit(3)
			  end if
			End Set
		#tag EndSetter
		UsesDeviceMetrics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid.hasbit (1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then 
			    mid.setbit (1)
			  else
			    mid.clearbit(1)
			  end if
			End Set
		#tag EndSetter
		UsesFontLeading As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid.hasbit (0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then 
			    mid.setbit (0)
			  else
			    mid.clearbit(0)
			  end if
			End Set
		#tag EndSetter
		UsesLineFragmentOrigin As Boolean
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
			Name="mId"
			Group="Behavior"
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
