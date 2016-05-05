#tag Class
Protected Class AppleSCNPlane
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 43726561746573206120706C616E652067656F6D657472792077697468207468652073706563696669656420776964746820616E64206865696768742E
		Sub Constructor(width as Double, height as Double)
		  #if Target64Bit
		    Declare function planeWithWidthHeight lib SceneKitLib selector "planeWithWidth:height:" (id as ptr, width as double, height as double) as ptr
		  #elseif Target32Bit
		    Declare function planeWithWidthHeight lib SceneKitLib selector "planeWithWidth:height:" (id as ptr, width as single, height as single) as ptr
		  #endif
		  super.Constructor (planeWithWidthHeight(classptr, width, height))
		  RetainClassObject
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNPlane")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520706C616E6520616C6F6E672069747320766572746963616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getcornerRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setCornerRadius id, value
			End Set
		#tag EndSetter
		CornerRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206C696E65207365676D656E7473207573656420746F20637265617465206561636820726F756E64656420636F726E6572206F662074686520706C616E652E20416E696D617461626C652E
		#tag Getter
			Get
			  return getcornerSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcornerSegmentCount id, value
			End Set
		#tag EndSetter
		CornerSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520706C616E6520616C6F6E672069747320766572746963616C20617869732E20416E696D617461626C652E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E2074686520706C616E65E2809973207375726661636520616C6F6E672069747320766572746963616C20617869732E20416E696D617461626C652E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520706C616E6520616C6F6E672069747320686F72697A6F6E74616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getwidth(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setWidth id, value
			End Set
		#tag EndSetter
		Width As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E2074686520706C616E65E2809973207375726661636520616C6F6E672069747320686F72697A6F6E74616C20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getwidthSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setwidthSegmentCount id, value
			End Set
		#tag EndSetter
		WidthSegmentCount As Integer
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
			Name="RetainCount"
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
