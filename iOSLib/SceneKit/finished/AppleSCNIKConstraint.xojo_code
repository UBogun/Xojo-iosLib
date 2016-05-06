#tag Class
Protected Class AppleSCNIKConstraint
Inherits AppleSCNConstraint
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E20696E7665727365206B696E656D617469637320636F6E73747261696E742077686F736520636861696E206F66206E6F64657320626567696E7320776974682074686520737065636966696564206E6F64652E20
		Sub Constructor(chainRoot As AppleSCNNode)
		  Declare function inverseKinematicsConstraintWithChainRootNode lib SceneKitLib selector "inverseKinematicsConstraintWithChainRootNode:" (id as ptr, chainRoot As Ptr) as ptr
		  super.Constructor (inverseKinematicsConstraintWithChainRootNode(classptr, chainRoot.id))
		  retainClassobject
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmaxAllowedRotationAngleForJoint Lib SceneKitLib Selector "maxAllowedRotationAngleForJoint" (id as ptr, node as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettargetPosition Lib SceneKitLib Selector "targetPosition" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettargetPosition32 Lib SceneKitLib Selector "targetPosition" (id as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 54686520726F746174696F6E206C696D69742C20696E20646567726565732C20666F722074686520737065636966696564206E6F64652E
		Function MaxAllowedRotationAngle(joint as AppleSCNNode) As double
		  return getmaxAllowedRotationAngleForJoint (id, joint.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520686520726F746174696F6E206C696D69742C20696E20646567726565732C20666F722074686520737065636966696564206E6F64652E20
		Sub MaxAllowedRotationAngle(joint as AppleSCNNode, assigns value as double)
		  setmaxAllowedRotationAngleForJoint (id, joint.id, value)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmaxAllowedRotationAngleForJoint Lib SceneKitLib Selector "setMaxAllowedRotationAngle:forJoint:" (id as ptr, node as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settargetPosition Lib SceneKitLib Selector "setTargetPosition:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settargetPosition32 Lib SceneKitLib Selector "setTargetPosition:" (id as ptr, value as SCNVector3_32Bit)
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOs 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520706172656E74206E6F6465206F6620746865206869657261726368792061666665637465642062792074686520636F6E73747261696E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function chainRootNode lib SceneKitLib selector "chainRootNode" (id as ptr) as ptr
			  return AppleSCNNode.MakefromPtr(chainRootNode(id))
			End Get
		#tag EndGetter
		ChainRootNode As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return classptr <> nil
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNIKConstraint")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206465736972656420706F736974696F6E20666F722074686520636F6E73747261696E6564206E6F64652C20696E20746865207363656E65E280997320776F726C6420636F6F7264696E6174652073706163652E20416E696D617461626C652E
		#tag Getter
			Get
			  #if Target64Bit
			    return gettargetPosition(id)
			  #elseif Target32Bit
			    return gettargetPosition32(id).toVector3
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    settargetPosition(id, value)
			  #elseif Target32Bit
			    settargetPosition32(id, value.toVector3_32)
			  #endif
			End Set
		#tag EndSetter
		TargetPosition As SCNVector3
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
			Name="InfluenceFactor"
			Group="Behavior"
			Type="Double"
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
