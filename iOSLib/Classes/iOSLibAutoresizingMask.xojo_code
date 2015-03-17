#tag Class
Protected Class iOSLibAutoresizingMask
	#tag Method, Flags = &h0
		Sub Constructor(value as uint32 = 0)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.hasbit (3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid.setbit(3)
			  else
			    mid.clearbit(3)
			  end if
			End Set
		#tag EndSetter
		BottomMargin As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.hasbit (4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid.setbit(4)
			  else
			    mid.clearbit(4)
			  end if
			End Set
		#tag EndSetter
		Height As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mID
			End Get
		#tag EndGetter
		ID As uinteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.hasbit (0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid.setbit(0)
			  else
			    mid.clearbit(0)
			  end if
			End Set
		#tag EndSetter
		LeftMargin As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mID As UInteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.hasbit (2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid.setbit(2)
			  else
			    mid.clearbit(2)
			  end if
			End Set
		#tag EndSetter
		RightMargin As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.hasbit (5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid.setbit(5)
			  else
			    mid.clearbit(5)
			  end if
			End Set
		#tag EndSetter
		TopMargin As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.hasbit (1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid.setbit(1)
			  else
			    mid.clearbit(1)
			  end if
			End Set
		#tag EndSetter
		Width As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BottomMargin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LeftMargin"
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
			Name="RightMargin"
			Group="Behavior"
			Type="Boolean"
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
			Name="TopMargin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
