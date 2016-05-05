#tag Class
Protected Class AppleSCNTube
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 43726561746573206120747562652067656F6D657472792077697468207468652073706563696669656420696E6E6572207261646975732C206F75746572207261646975732C20616E64206865696768742E
		Sub Constructor(innerRadius As Double, outerRadius As Double, Height As Double)
		  #if Target64Bit
		    Declare function tubeWithInnerRadius lib SceneKitLib selector "tubeWithInnerRadius:outerRadius:height:" (id as ptr, innerRadius as double, outerRadius As Double, Height as double) as ptr
		  #elseif Target32Bit
		    Declare function tubeWithInnerRadius lib SceneKitLib selector "tubeWithInnerRadius:outerRadius:height:" (id as ptr, innerRadius as single, outerRadius as single, Height as single) as ptr
		  #endif
		  Super.Constructor (tubeWithInnerRadius (ClassPtr, innerRadius, outerRadius, Height))
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documeneted
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNTube")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F6620746865207475626520616C6F6E672069747320792D617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getheight(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setHeight id, value
			End Set
		#tag EndSetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E2074686520696E6E657220616E64206F75746572207375726661636573206F6620746865207475626520616C6F6E672069747320792D617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getheightSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setheightSegmentCount id, value
			End Set
		#tag EndSetter
		HeightSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726164697573206F66207468652063697263756C617220686F6C65207468726F7567682074686520747562652E20416E696D617461626C652E2044656661756C7420302E3235
		#tag Getter
			Get
			  return getinnerRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setInnerRadius id, value
			End Set
		#tag EndSetter
		InnerRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726164697573206F66207468652074756265E2809973206F757465722063697263756C61722063726F73732073656374696F6E2E20416E696D617461626C652E
		#tag Getter
			Get
			  return getouterRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setOuterRadius id, value
			End Set
		#tag EndSetter
		OuterRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E732061726F756E64207468652063697263756D666572656E6365206F662074686520747562652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getradialSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setradialSegmentCount id, value
			End Set
		#tag EndSetter
		RadialSegmentCount As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GeometryElementCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeightSegmentCount"
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
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
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
			Name="OuterRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RadialSegmentCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SubdivisionLevel"
			Group="Behavior"
			Type="UInteger"
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
