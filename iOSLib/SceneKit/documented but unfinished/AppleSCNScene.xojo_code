#tag Class
Protected Class AppleSCNScene
Inherits AppleSCNObject
	#tag Method, Flags = &h0, Description = 41747461636865732061207061727469636C652073797374656D20746F20746865207363656E652C207573696E672074686520737065636966696564207472616E73666F726D2E
		Sub AddParticleSystem(ParticleSystem As AppleSCNParticleSystem, Transform as SCNMatrix4)
		  addParticleSystem id, ParticleSystem.id, Transform
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub addParticleSystem Lib SceneKitLib Selector "addParticleSystem:withTransform:" (id as ptr, particlesystem as ptr, transform as SCNMatrix4)
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20656D707479207363656E652E
		Sub Constructor()
		  Declare function Scene lib SceneKitLib selector "scene" (id as ptr) as ptr
		  super.Constructor (Scene(ClassPtr))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4C6F6164732061207363656E652066726F6D20746865207370656369666965642055524C2E2053657473206572726F7220696620796F7520737570706C79206F6E652E
		Sub Constructor(URL As AppleURL, options as AppleDictionary = nil, error as appleerror = nil)
		  if error = nil then error = new AppleError
		  Declare function sceneWithURL lib SceneKitLib selector "sceneWithURL:options:error:" (id as ptr, url as ptr,  options as Ptr, error as ptr) as ptr
		  super.Constructor (sceneWithURL(ClassPtr, url.id, if (options = nil, nil, options.id), error.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4C6F6164732061207363656E652066726F6D20612066696C6520776974682074686520737065636966696564206E616D6520696E2074686520617070E2809973206D61696E2062756E646C652E
		Sub Constructor(SceneName As Text)
		  Declare function sceneNamed lib SceneKitLib selector "sceneNamed:" (id as ptr, scenename as CFStringRef) as ptr
		  super.Constructor (sceneNamed(ClassPtr, SceneName))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4C6F6164732061207363656E652066726F6D20612066696C6520776974682074686520737065636966696564206E616D6520696E2061207370656369666963207375626469726563746F7279206F662074686520617070E2809973206D61696E2062756E646C652E
		Sub Constructor(SceneName As Text, directoryName as Text, options as AppleDictionary = nil)
		  Declare function sceneNamedinDirectory lib SceneKitLib selector "sceneNamed:inDirectory:options:" (id as ptr, scenename as CFStringRef, directoryName as CFStringRef, options as Ptr) as ptr
		  super.Constructor (sceneNamedinDirectory(ClassPtr, SceneName, directoryName, if (options = nil, nil, options.id)))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfogColor Lib SceneKitLib Selector "fogColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfogDensityExponent Lib SceneKitLib Selector "fogDensityExponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfogEndDistance Lib SceneKitLib Selector "fogEndDistance" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfogStartDistance Lib SceneKitLib Selector "fogStartDistance" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleSystems Lib SceneKitLib Selector "particleSystems" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getphysicsWorld Lib SceneKitLib Selector "physicsWorld" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNScene
		  return if (aptr = nil, nil, new AppleSCNScene(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616E79207061727469636C652073797374656D73206469726563746C7920617474616368656420746F20746865207363656E652E
		Sub RemoveAllParticleSystems()
		  removeAllParticleSystems id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub removeAllParticleSystems Lib SceneKitLib Selector "removeAllParticleSystems" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061207061727469636C652073797374656D20617474616368656420746F20746865207363656E652E
		Sub RemoveParticleSystem(ParticleSystem As AppleSCNParticleSystem)
		  removeParticleSystem id, ParticleSystem.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub removeParticleSystem Lib SceneKitLib Selector "removeParticleSystem:" (id as ptr, particlesystem as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub SceneExportHandlerTemplate(totalProgess as Double, Error as ptr, byref stop as Boolean)
		  // This is a template for the block structure of SceneKit Framework’s WriteToURL methdod which is currently only available in OS X:
		  // Ignore it, it’s meat for an OS X spin-off
		  #Pragma unused totalProgess
		  #pragma unused Error
		  #Pragma unused stop
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfogColor Lib SceneKitLib Selector "setFogColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfogDensityExponent Lib SceneKitLib Selector "setFogDensityExponent:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfogEndDistance Lib SceneKitLib Selector "setFogEndDistance:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfogStartDistance Lib SceneKitLib Selector "setFogStartDistance:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		t constructor missing
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 41206261636B67726F756E6420746F2062652072656E6465726564206265666F7265207468652072657374206F6620746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function background lib SceneKitLib selector "background" (id as ptr) as ptr
			  return AppleSCNMaterialProperty.MakeFromPtr (background (id))
			End Get
		#tag EndGetter
		Background As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNScene")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E642074696D65206F6620746865207363656E652E
		#tag Getter
			Get
			  dim value as applenumber = AppleNumber.MakefromPtr(SceneKitFrameWork.getAttributeForKey(id, kSCNSceneEndTimeAttributeKey))
			  if value <> nil then return value.DoubleValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim num as new AppleNumber(value)
			  SceneKitFrameWork.setAttributeForKey id, num.id, kSCNSceneEndTimeAttributeKey
			  
			End Set
		#tag EndSetter
		EndTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520666F672065666665637420746F2062652072656E6465726564207769746820746865207363656E652E20416E696D617461626C652E0A596F752063616E20757365207468652065787465726E616C2067657420616E6420736574466F67436F6C6F72206D6574686F647320666F722061204347436F6C6F7252656620746F6F2E
		#tag Getter
			Get
			  return AppleColor.MakeFromPtr (getfogColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFogColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		FogColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207472616E736974696F6E20637572766520666F722074686520666F67E280997320696E74656E73697479206265747765656E2069747320737461727420616E6420656E642064697374616E6365732E20416E696D617461626C652E0A412076616C7565206F6620302E3020287468652064656661756C742920737065636966696573206E6F20617474656E756174696F6EE2809474686520666F67E280997320696E74656E73697479206973207468652073616D6520617420616C6C2064697374616E636573202E20412076616C7565206F6620312E30207370656369666965732061206C696E656172207472616E736974696F6E2C20616E6420612076616C7565206F6620322E3020737065636966696573206120717561647261746963207472616E736974696F6E2063757276652E204869676865722076616C7565732068617665206C6974746C652076697369626C65206566666563742E
		#tag Getter
			Get
			  return getfogDensityExponent(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfogDensityExponent id, value
			End Set
		#tag EndSetter
		FogDensityExponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D206120706F696E74206F66207669657720617420776869636820746865207363656E65E280997320636F6E74656E74732061726520636F6D706C6574656C79206F6273637572656420627920666F672E20416E696D617461626C652E0A5468652044656661756C74206F6620302E302064697361626C65732074686520666F67206566666563742E0A
		#tag Getter
			Get
			  return getfogEndDistance(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfogEndDistance id, value
			End Set
		#tag EndSetter
		FogEndDistance As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D206120706F696E74206F66207669657720617420776869636820746865207363656E65E280997320636F6E74656E747320626567696E20746F206265206F6273637572656420627920666F672E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getfogStartDistance(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfogStartDistance id, value
			End Set
		#tag EndSetter
		FogStartDistance As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616D652072617465206F6620746865207363656E652E0A546869732076616C7565206D61792062652070726573656E7420696E207363656E6573206C6F616465642066726F6D207363656E652066696C65732070726F6475636564207573696E672065787465726E616C20746F6F6C732C2062757420686173206E6F20656666656374206F6E205363656E654B6974E28099732072656E646572696E67206F6620746865207363656E652E
		#tag Getter
			Get
			  dim value as applenumber = AppleNumber.MakefromPtr(SceneKitFrameWork.getAttributeForKey(id, kSCNSceneFrameRateAttributeKey))
			  if value <> nil then return value.DoubleValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim num as new AppleNumber(value)
			  SceneKitFrameWork.setAttributeForKey id, num.id, kSCNSceneFrameRateAttributeKey
			  
			End Set
		#tag EndSetter
		FrameRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNSceneEndTimeAttributeKey as text = SystemConstantName("SCNSceneEndTimeAttributeKey", SceneKitPath)
			  return mkSCNSceneEndTimeAttributeKey
			End Get
		#tag EndGetter
		Protected Shared kSCNSceneEndTimeAttributeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNSceneFrameRateAttributeKey as text = SystemConstantName("SCNSceneFrameRateAttributeKey", SceneKitPath)
			  return mkSCNSceneFrameRateAttributeKey
			End Get
		#tag EndGetter
		Protected Shared kSCNSceneFrameRateAttributeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNSceneStartTimeAttributeKey as text = SystemConstantName("SCNSceneStartTimeAttributeKey", SceneKitPath)
			  return mkSCNSceneStartTimeAttributeKey
			End Get
		#tag EndGetter
		Protected Shared kSCNSceneStartTimeAttributeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mkSCNSceneUpAxisAttributeKey as text = SystemConstantName("SCNSceneUpAxisAttributeKey", SceneKitPath)
			  return mkSCNSceneUpAxisAttributeKey
			End Get
		#tag EndGetter
		Protected Shared kSCNSceneUpAxisAttributeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207061727469636C652073797374656D7320617474616368656420746F20746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getparticleSystems(id))
			End Get
		#tag EndGetter
		ParticleSystems As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746F2072756E20616374696F6E732C20616E696D6174696F6E732C207061727469636C652073797374656D732C20616E6420706879736963732073696D756C6174696F6E7320696E20746865207363656E652067726170682E
		#tag Getter
			Get
			  return SceneKitFrameWork.getPaused(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setPaused id, value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706879736963732073696D756C6174696F6E206173736F636961746564207769746820746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSCNPhysicsWorld.MakefromPtr(getphysicsWorld(id))
			End Get
		#tag EndGetter
		PhysicsWorld As AppleSCNPhysicsWorld
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F6F74206E6F6465206F6620746865207363656E652067726170682E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function rootNode lib SceneKitLib selector "rootNode" (id as ptr) as ptr
			  return new AppleSCNNode (rootNode (id))
			End Get
		#tag EndGetter
		RootNode As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073746172742074696D65206F6620746865207363656E652E
		#tag Getter
			Get
			  dim value as applenumber = AppleNumber.MakefromPtr(SceneKitFrameWork.getAttributeForKey(id, kSCNSceneStartTimeAttributeKey))
			  if value <> nil then return value.DoubleValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim num as new AppleNumber(value)
			  SceneKitFrameWork.setAttributeForKey id, num.id, kSCNSceneStartTimeAttributeKey
			  
			End Set
		#tag EndSetter
		StartTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7269656E746174696F6E206F6620746865207363656E652E0A546869732076616C7565206D61792062652070726573656E7420696E207363656E6573206C6F616465642066726F6D207363656E652066696C65732070726F6475636564207573696E672065787465726E616C20746F6F6C732C2062757420686173206E6F20656666656374206F6E205363656E654B6974E28099732070726F63657373696E67206F6620746865207363656E652E20557365207468697320766563746F72207768656E20636F6D62696E696E6720656C656D656E74732066726F6D20646966666572656E74207363656E657320736F207468617420746865792061707065617220696E207468656972206578706563746564206F7269656E746174696F6E2E
		#tag Getter
			Get
			  dim value as AppleValue = AppleNumber.MakefromPtr(SceneKitFrameWork.getAttributeForKey(id, kSCNSceneUpAxisAttributeKey))
			  if value <> nil then return value.SCNVector3Value
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim num as  AppleValue = SceneKitFrameWork.makeapplevalue (value)
			  SceneKitFrameWork.setAttributeForKey id, num.id, kSCNSceneUpAxisAttributeKey
			  
			End Set
		#tag EndSetter
		UpAxis As SCNVector3
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
