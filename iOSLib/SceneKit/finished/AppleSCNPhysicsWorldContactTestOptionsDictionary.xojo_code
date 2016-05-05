#tag Class
Protected Class AppleSCNPhysicsWorldContactTestOptionsDictionary
Inherits AppleMutabledictionary
	#tag Method, Flags = &h0, Description = 4372656174657320612064696374696F6E61727920666F7220436F6E746163742074657374732077697468207468652064656661756C74732066726F6D204170706C6553434E50687973696373576F726C642E
		Sub Constructor()
		  super.Constructor(3)
		  #if Target64Bit
		    me.TestCollisionBitMask = &hffffffffffffffff
		  #elseif Target32Bit
		    me.TestCollisionBitMask = &hffffffff
		  #endif
		  me.SearchMode = AppleSCNPhysicsWorld.SCNPhysicsSearchMode.Any
		  me.IgnoreBackfacingPolygons = true
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746F2069676E6F7265206261636B2D666163696E6720706F6C79676F6E7320696E207068797369637320736861706573207768656E20736561726368696E6720666F7220636F6E74616374732E2044656661756C7420547275652E
		#tag Getter
			Get
			  dim value as applenumber = applenumber.MakefromPtr ( me.ValueForKey(AppleSCNPhysicsWorld.kSCNPhysicsTestBackfaceCullingKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.SetObjectForKeyName (AppleSCNPhysicsWorld.kSCNPhysicsTestBackfaceCullingKey ,  new AppleNumber (value))
			End Set
		#tag EndSetter
		IgnoreBackfacingPolygons As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D62657220616E64206F72646572206F6620636F6E746163747320746F206265207465737465642E2044656661756C7420416E792E
		#tag Getter
			Get
			  dim value as text = me.TextForKey(AppleSCNPhysicsWorld.kSCNPhysicsTestSearchModeKey)
			  if not value.Empty then return AppleSCNPhysicsWorld.SearchModeForConstant(value)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.TextForKey (AppleSCNPhysicsWorld.kSCNPhysicsTestSearchModeKey) = AppleSCNPhysicsWorld.SearchModeConstant(value)
			End Set
		#tag EndSetter
		SearchMode As AppleSCNPhysicsWorld.SCNPhysicsSearchMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B657920666F722073656C656374696E672077686963682063617465676F72696573206F66207068797369637320626F646965732074686174205363656E654B69742073686F756C64207465737420666F7220636F6E74616374732E2044656661756C7420697320416C6C2E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.ValueForKey(AppleSCNPhysicsWorld.kSCNPhysicsTestCollisionBitMaskKey))
			  if value <> nil then return value.UIntegerValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.SetObjectForKeyName (AppleSCNPhysicsWorld.kSCNPhysicsTestCollisionBitMaskKey ,  AppleNumber.UintegerNumber(value))
			End Set
		#tag EndSetter
		TestCollisionBitMask As UInteger
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
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
			Name="IgnoreHiddenNodes"
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
			Name="OnlyFirstObject"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OnlySearchCurrentDepthRange"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OnlyTestFacingPolygons"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SortFromNearestToFarthest"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringsFileFormat"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestBoundingBoxOnly"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCollisionBitMask"
			Group="Behavior"
			Type="Boolean"
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
