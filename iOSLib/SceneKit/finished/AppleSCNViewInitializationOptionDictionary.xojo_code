#tag Class
Protected Class AppleSCNViewInitializationOptionDictionary
Inherits AppleMutabledictionary
	#tag Method, Flags = &h0, Description = 4372656174657320612064696374696F6E61727920666F7220436F6E746163742074657374732077697468207468652064656661756C74732066726F6D204170706C6553434E50687973696373576F726C642E
		Sub Constructor()
		  super.Constructor(3)
		  me.PreferLowPowerDevice = false
		  me.PreferredMTLDevice = nil
		  me.RenderingAPI = SceneKitFrameWork.SCNRenderingAPI.Metal
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746F2073656C656374206C6F772D706F7765722D7573616765206465766963657320666F72204D6574616C2072656E646572696E672E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.ValueForKey(AppleSCNView.kSCNPreferLowPowerDeviceKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.SetObjectForKeyName (AppleSCNView.kSCNPreferLowPowerDeviceKey ,  new AppleNumber(value))
			End Set
		#tag EndSetter
		PreferLowPowerDevice As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064657669636520746F2075736520666F72204D6574616C2072656E646572696E672E2043757272656E746C79206F6E6C792061207074722062656361757365204D6574616C4B6974206973206E6F742079657420696D706C656D656E7465642E
		#tag Getter
			Get
			  return me.PtrForKey (AppleSCNView.kSCNPreferredDeviceKey)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.setPtrForKey AppleSCNView.kSCNPreferredDeviceKey,  value
			End Set
		#tag EndSetter
		PreferredMTLDevice As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 43686F6F736573207468652072656E646572696E6720746563686E6F6C6F67792075736564206279207468652053434E566965772E
		#tag Getter
			Get
			  dim value as applenumber = applenumber.MakefromPtr ( me.ValueForKey(AppleSCNView.kSCNPreferredRenderingAPIKey))
			  if value <> nil then return SceneKitFrameWork.SCNRenderingAPI(value.UIntegerValue)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.SetObjectForKeyName (AppleSCNView.kSCNPreferredRenderingAPIKey ,   AppleNumber.UintegerNumber (uinteger(value)))
			End Set
		#tag EndSetter
		RenderingAPI As SceneKitFrameWork.SCNRenderingAPI
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
			Name="PreferLowPowerDevice"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredMTLDevice"
			Group="Behavior"
			Type="AppleSCNPhysicsWorld.SCNPhysicsSearchMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Any"
				"1 - Closest"
				"2 - All"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingAPI"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
