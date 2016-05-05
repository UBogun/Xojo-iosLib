#tag Class
Protected Class AppleSCNDebugOptions
	#tag Method, Flags = &h0
		 Shared Function AllOptions() As AppleSCNDebugOptions
		  return new AppleSCNDebugOptions(63)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Value as UInteger)
		  mid = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NoOptions() As AppleSCNDebugOptions
		  return new AppleSCNDebugOptions(0)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As UInteger
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As UInteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 446973706C61792074686520626F756E64696E6720626F78657320666F7220616E79206E6F646573207769746820636F6E74656E742E
		#tag Getter
			Get
			  return hasbit (mid, 1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 1)
			  else
			    mid = clearbit(mid, 1)
			  end if
			End Set
		#tag EndSetter
		ShowBoundingBoxes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 446973706C61792074686520726567696F6E7320616666656374656420627920656163682053434E4C69676874206F626A65637420696E20746865207363656E652E0A0A4F6E6C79206C69676874732077686F736520747970652069732053434E4C69676874547970654F6D6E69206F722053434E4C696768745479706553706F74206861766520616E2061726561206F66206566666563743B20646972656374696F6E616C20616E6420616D6269656E74206C6967687473206166666563742074686520656E74697265207363656E652E
		#tag Getter
			Get
			  return hasbit (mid, 3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 3)
			  else
			    mid = clearbit(mid, 3)
			  end if
			End Set
		#tag EndSetter
		ShowLightExtents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 446973706C617920746865206C6F636174696F6E73206F6620656163682053434E4C69676874206F626A65637420696E20746865207363656E652E
		#tag Getter
			Get
			  return hasbit (mid, 2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 2)
			  else
			    mid = clearbit(mid, 2)
			  end if
			End Set
		#tag EndSetter
		ShowLightInfluences As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 446973706C61792074686520726567696F6E7320616666656374656420627920656163682053434E506879736963734669656C64206F626A65637420696E20746865207363656E652E
		#tag Getter
			Get
			  return hasbit (mid, 4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 4)
			  else
			    mid = clearbit(mid, 4)
			  end if
			End Set
		#tag EndSetter
		ShowPhysicsFields As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 446973706C61792074686520706879736963732073686170657320666F7220616E79206E6F64657320776974682061747461636865642053434E50687973696373426F6479206F626A656374732E
		#tag Getter
			Get
			  return hasbit (mid, 0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 0)
			  else
			    mid = clearbit(mid, 0)
			  end if
			End Set
		#tag EndSetter
		ShowsPhysicsShapes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 446973706C61792067656F6D65747269657320696E20746865207363656E65207769746820776972656672616D652072656E646572696E672E
		#tag Getter
			Get
			  return hasbit (mid, 5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = setbit (mid, 5)
			  else
			    mid = clearbit(mid, 5)
			  end if
			End Set
		#tag EndSetter
		ShowWireframe As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Id"
			Group="Behavior"
			Type="Integer"
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
			Name="ShowBoundingBoxes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowLightExtents"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsPhysicsShapes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowWireframe"
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
	#tag EndViewBehavior
End Class
#tag EndClass
