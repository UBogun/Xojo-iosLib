#tag Class
Protected Class AppleSCNBox
Inherits AppleSCNGeometry
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 43726561746573206120626F782067656F6D65747279207769746820746865207370656369666965642077696474682C206865696768742C206C656E6774682C20616E64206368616D666572207261646975732E
		Sub Constructor(Width As Double, Height As Double, Length As Double, ChamferRadius As Double)
		  #if Target64Bit
		    Declare function initBox lib SceneKitLib selector "boxWithWidth:height:length:chamferRadius:" (id as ptr, Width as double, Height as double, Length as Double, chamferRadius as Double) as ptr
		  #elseif Target32Bit
		    Declare function initBox lib SceneKitLib selector "boxWithWidth:height:length:chamferRadius:" (id as ptr, Width as single, Height as single, Length as single, chamferRadius as single) as ptr
		  #endif
		  Super.Constructor (initBox (ClassPtr, Width, Height, Length, chamferRadius))
		  RetainClassObject
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520726164697573206F662063757276617475726520666F722074686520656467657320616E6420636F726E657273206F662074686520626F782E20416E696D617461626C652E
		#tag Getter
			Get
			  return getchamferRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setChamferRadius id, value
			End Set
		#tag EndSetter
		ChamferRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206C696E65207365676D656E7473207573656420746F20637265617465206561636820726F756E6465642065646765206F662074686520626F782E20416E696D617461626C652E
		#tag Getter
			Get
			  return getchamferSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setchamferSegmentCount id, value
			End Set
		#tag EndSetter
		ChamferSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNBox")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520626F7820616C6F6E672069747320792D617869732E20416E696D617461626C652E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E20656163682066616365206F662074686520626F7820616C6F6E672069747320792D617869732E20416E696D617461626C652E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520626F7820616C6F6E6720697473207A2D617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getlength(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setLength id, value
			End Set
		#tag EndSetter
		Length As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E20656163682066616365206F662074686520626F7820616C6F6E6720697473207A2D617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getlengthSegmentCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlengthSegmentCount id, value
			End Set
		#tag EndSetter
		LengthSegmentCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520657874656E74206F662074686520626F7820616C6F6E672069747320782D617869732E20416E696D617461626C652E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66207375626469766973696F6E7320696E20656163682066616365206F662074686520626F7820616C6F6E672069747320782D617869732E20416E696D617461626C652E
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
