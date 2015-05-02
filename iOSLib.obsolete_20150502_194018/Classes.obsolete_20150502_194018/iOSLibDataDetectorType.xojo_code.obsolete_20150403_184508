#tag Class
Protected Class iOSLibDataDetectorType
	#tag Method, Flags = &h0
		Sub Constructor(Value as UInteger)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.HasBit (2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then 
			    mid.SetBit (2)
			  else
			    mid.ClearBit(2)
			  end if
			End Set
		#tag EndSetter
		Address As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new iOSLibDataDetectorType (15)
			End Get
		#tag EndGetter
		Shared AllTypes As iOSLibDataDetectorType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.HasBit (3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then 
			    mid.SetBit (3)
			  else
			    mid.ClearBit(3)
			  end if
			End Set
		#tag EndSetter
		CalendarEvent As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.HasBit (1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then 
			    mid.SetBit (1)
			  else
			    mid.ClearBit(1)
			  end if
			End Set
		#tag EndSetter
		Link As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As UInteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.HasBit (0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then 
			    mid.SetBit (0)
			  else
			    mid.ClearBit(0)
			  end if
			End Set
		#tag EndSetter
		PhoneNumber As Boolean
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
