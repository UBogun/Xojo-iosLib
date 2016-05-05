#tag Class
Protected Class AppleSCNNode
Inherits AppleSCNObject
	#tag Method, Flags = &h0, Description = 52657475726E7320616E20616374696F6E206173736F63696174656420776974682061207370656369666963206B65792E
		Function Action(Key as Text) As AppleSCNAction
		  return AppleSCNAction.MakefromPtr( SceneKitFrameWork.getactionForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E20616E696D6174696F6E206F626A65637420666F722074686520737065636966696564206B65792E
		Sub AddAnimation(Animation as AppleCAAnimation, Key as Text)
		  SceneKitFrameWork.addAnimation id, Animation.id, Key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416464732074686520737065636966696564206175746F20706C6179657220746F20746865206E6F646520616E6420626567696E7320706C61796261636B2E20417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		Sub AddAudioPlayer(player as AppleSCNAudioPlayer)
		  if RespondsToSelector (classptr, "addAudioPlayer:") then
		    Declare sub addAudioPlayer lib SceneKitLib selector "addAudioPlayer:" (id as ptr, child as ptr)
		    addAudioPlayer id, player.id
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416464732061206E6F646520746F20746865206E6F6465E2809973206172726179206F66206368696C6472656E2E
		Sub AddChildNode(Child as AppleSCNNode)
		  Declare sub addChildNode lib SceneKitLib selector "addChildNode:" (id as ptr, child as ptr)
		  addChildNode id, Child.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41747461636865732061207061727469636C652073797374656D20746F20746865206E6F64652E
		Sub AddParticleSystem(ParticleSystem As AppleSCNParticleSystem)
		  Declare sub addParticleSystem lib SceneKitLib selector "addParticleSystem:" (id as ptr, child as ptr)
		  addParticleSystem id, ParticleSystem.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520616E696D6174696F6E20776974682074686520737065636966696564206B65792E
		Function Animation(Key as Text) As AppleCAAnimation
		  return AppleCAAnimation.MakeFromPtr(SceneKitFrameWork.getanimationForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B6579206973207061757365642E
		Function AnimationPaused(Key As Text) As Boolean
		  return SceneKitFrameWork.getisAnimationForKeyPaused(id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865206D696E696D756D20616E64206D6178696D756D20636F726E657220706F696E7473206F6620746865206F626A656374E280997320626F756E64696E6720626F782E2052657475726E73205472756520696620746865206E6F64652068617320612076616C696420766F6C756D652E
		Function BoundingBox(byref min as SCNVector3, byref max as SCNVector3) As Boolean
		  #if Target64Bit
		    return SceneKitFrameWork.getBoundingBoxMin(id, min, max)
		  #elseif Target32Bit
		    dim myMin as SCNVector3_32Bit = min.toVector3_32
		    dim MyMax as SCNVector3_32Bit = max.toVector3_32
		    dim result as Boolean =  SceneKitFrameWork.getBoundingBoxMin32(id, myMin, mymax)
		    min = myMin.toVector3
		    max = MyMax.toVector3
		    return result
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652063656E74657220706F696E7420616E6420726164697573206F6620746865206F626A656374E280997320626F756E64696E67207370686572652E2052657475726E73205472756520696620746865206E6F64652068617320612076616C696420766F6C756D652E
		Function BoundingSphereCenter(byref center as SCNVector3, byref radius as double) As Boolean
		  #if Target64Bit
		    return SceneKitFrameWork.getBoundingSphereCenter(id, center, radius)
		  #elseif Target32Bit
		    dim mycenter as SCNVector3_32Bit = center.toVector3_32
		    dim result as Boolean =  SceneKitFrameWork.getBoundingSphereCenter32(id, myCenter, radius)
		    center = myCenter.toVector3
		    return result
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206669727374206E6F646520696E20746865206E6F6465E2809973206368696C64206E6F6465207375627472656520776974682074686520737065636966696564206E616D652E2057696C6C20736561726368207468652077686F6C65206368696C64206E6F64652073756274726565206966207265637572736976656C792069732074727565
		Function ChildNode(name as cfstringRef, optional Recursively as Boolean = true) As AppleSCNNode
		  declare function childNodeWithName lib SceneKitLib selector "childNodeWithName:recursively:" (id as ptr, name as CFStringRef, recursively As Boolean) as ptr
		  return AppleSCNNode.MakefromPtr (childNodeWithName(id, name, Recursively))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ChildNodeEnumerationTemplate(child as ptr, byref stop as boolean)
		  // Template for EnumerateChildNode method
		  
		  // Create the childNode from the ptr:
		  // Dim ChildNode as AppleSCNNode = AppleSCNNode.MakefromPtr(child)
		  // Examineand modifiy it.
		  // Set Stop to True to cancel further processing.
		  
		  // Don’t forget to delete the following lines:
		  #pragma unused child
		  #pragma unused stop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616C6C206E6F64657320696E20746865206E6F6465E2809973206368696C64206E6F6465207375627472656520746861742073617469736679207468652074657374206170706C696564206279206120626C6F636B2E2053656520746865204368696C644E6F64655465737454656D706C617465206D6574686F6420666F722074686520626C6F636B207374727563747572652E
		Function ChildNodesPassingTest(block as appleblock) As AppleArray
		  declare function ChildNodesPassingTest lib SceneKitLib selector "childNodesPassingTest:" (id as ptr, block as Ptr) as ptr
		  return AppleArray.MakefromPtr (ChildNodesPassingTest(id, block.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ChildNodeTestTemplate(child as ptr, byref stop as boolean) As Boolean
		  // Template for ChildNodesPassingTest method
		  
		  // Create the childNode from the ptr:
		  // Dim ChildNode as AppleSCNNode = AppleSCNNode.MakefromPtr(child)
		  // Examine it and then return a Boolean whether to include the child in the search results array
		  // Set Stop to True to cancel further processing.
		  
		  // Don’t forget to delete the following lines:
		  #pragma unused child
		  #pragma unused stop
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F7079206F6620746865206E6F646520616E6420697473206368696C6472656E2E0A54686973206D6574686F64207265637572736976656C7920636F7069657320746865206E6F646520616E6420697473206368696C64206E6F6465732E20466F722061206E6F6E72656375727369766520636F70792C207573652074686520696E6865726974656420636F7079206D6574686F642C2077686963682063726561746573206120636F7079206F6620746865206E6F646520776974686F757420616E79206368696C64206E6F6465732E0A0A436C6F6E696E67206F7220636F7079696E672061206E6F646520637265617465732061206475706C6963617465206F6620746865206E6F6465206F626A6563742C20627574206E6F74207468652067656F6D6574726965732C206C69676874732C2063616D657261732C20616E64206F74686572205363656E654B6974206F626A6563747320617474616368656420746F206974E28094696E73746561642C206561636820636F70696564206E6F646520736861726573207265666572656E63657320746F207468657365206F626A656374732E
		Function Clone() As AppleSCNNode
		  Declare function clone lib SceneKitLib selector "clone" (id as ptr) as ptr
		  return AppleSCNNode.MakefromPtr(clone( id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6F6465206F626A6563742E
		Sub Constructor()
		  Declare function node lib SceneKitLib selector "node" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (node(classptr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6F6465206F626A656374207769746820746865207370656369666965642067656F6D657472792061747461636865642E
		Sub Constructor(Geometry as AppleSCNGeometry)
		  Declare function nodeWithGeometry lib SceneKitLib selector "nodeWithGeometry:" (id as ptr, Geometry as Ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (nodeWithGeometry(classptr, Geometry.id))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function convertPositionfromNode Lib SceneKitLib Selector "convertPosition:fromNode:" (id as ptr, position as SCNVector3, node as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F736974696F6E20746F20746865206E6F6465E280997320636F6F7264696E6174652073706163652066726F6D207468617420646566696E656420627920616E6F74686572206E6F64652E
		Function ConvertPositionFromNode(position as SCNVector3, node as AppleSCNNode) As SCNVector3
		  #if Target64Bit
		    return convertPositionfromNode (id, position, node.Id)
		  #elseif Target32Bit
		    return convertPositionfromNode32 (id, position.toVector3_32, node.Id).tovector3
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function convertPositionfromNode32 Lib SceneKitLib Selector "convertPosition:fromNode:" (id as ptr, position as SCNVector3_32Bit, node as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function convertPositiontoNode Lib SceneKitLib Selector "convertPosition:toNode:" (id as ptr, position as SCNVector3, node as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F736974696F6E2066726F6D20746865206E6F6465E280997320636F6F7264696E61746520737061636520746F207468617420646566696E656420627920616E6F74686572206E6F64652E
		Function ConvertPositionToNode(position as SCNVector3, node as AppleSCNNode) As SCNVector3
		  #if Target64Bit
		    return convertPositiontoNode (id, position, node.Id)
		  #elseif Target32Bit
		    return convertPositiontoNode32 (id, position.toVector3_32, node.Id).tovector3
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function convertPositiontoNode32 Lib SceneKitLib Selector "convertPosition:toNode:" (id as ptr, position as SCNVector3_32Bit, node as ptr) As SCNVector3_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function convertTransformfromNode Lib SceneKitLib Selector "convertTransform:fromNode:" (id as ptr, transform as SCNVector4, node as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274732061207472616E73666F726D6174696F6E20746F20746865206E6F6465E280997320636F6F7264696E6174652073706163652066726F6D207468617420646566696E656420627920616E6F74686572206E6F64652E
		Function ConvertTransformFromNode(transform as SCNVector4, node as AppleSCNNode) As SCNVector4
		  #if Target64Bit
		    return convertTransformfromNode (id, transform, node.Id)
		  #elseif Target32Bit
		    return convertTransformfromNode32 (id, transform.toVector4_32, node.Id).tovector4
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function convertTransformfromNode32 Lib SceneKitLib Selector "convertTransform:fromNode:" (id as ptr, transform as SCNVector4_32Bit, node as ptr) As SCNVector4_32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function convertTransformtoNode Lib SceneKitLib Selector "convertTransform:toNode:" (id as ptr, transform as SCNVector4, node as ptr) As SCNVector4
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274732061207472616E73666F726D6174696F6E2066726F6D20746865206E6F6465E280997320636F6F7264696E61746520737061636520746F207468617420646566696E656420627920616E6F74686572206E6F64652E
		Function ConvertTransformToNode(transform as SCNVector4, node as AppleSCNNode) As SCNVector4
		  #if Target64Bit
		    return convertTransformToNode (id, transform, node.Id)
		  #elseif Target32Bit
		    return convertTransformToNode32 (id, transform.toVector4_32, node.Id).tovector4
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function convertTransformtoNode32 Lib SceneKitLib Selector "convertTransform:toNode:" (id as ptr, transform as SCNVector4_32Bit, node as ptr) As SCNVector4_32Bit
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F7079206F6620746865206E6F646520776974686F7574206368696C6472656E2E
		Function Copy() As AppleSCNNode
		  return AppleSCNNode.MakefromPtr(getcopy( id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4120636F6E76656E69656E6365206D6574686F647320746F2063726561746520616E642061747461636820612050687973696373426F647920746F20746865206E6F6465
		Sub CreatePhysicsBody(type as AppleSCNPhysicsBody.SCNPhysicsBodyType)
		  dim b as AppleSCNPhysicsBody
		  select case type
		  case AppleSCNPhysicsBody.SCNPhysicsBodyType.DynamicType
		    b =AppleSCNPhysicsBody.DynamicBody
		  case AppleSCNPhysicsBody.SCNPhysicsBodyType.KinematicType
		    b =AppleSCNPhysicsBody.KinematicBody
		  case AppleSCNPhysicsBody.SCNPhysicsBodyType.StaticType
		    b =AppleSCNPhysicsBody.StaticBody
		  end select
		  me.PhysicsBody= b
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4578656375746573207468652073706563696669656420626C6F636B20666F722065616368206F6620746865206E6F6465E2809973206368696C6420616E642064657363656E64616E74206E6F6465732E2E2053656520746865204368696C644E6F6465456E756D65726174696F6E54656D706C617465206D6574686F6420666F722074686520626C6F636B207374727563747572652E
		Sub EnumerateChildNodes(block as appleblock)
		  declare sub enumerateChildNodesUsingBlock lib SceneKitLib selector "enumerateChildNodesUsingBlock:" (id as ptr, block as Ptr)
		  enumerateChildNodesUsingBlock(id, block.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E206F7074696D697A656420636F7079206F6620746865206E6F646520616E6420697473206368696C6472656E2E
		Function FlattenedClone() As AppleSCNNode
		  Declare function flattenedClone lib SceneKitLib selector "flattenedClone" (id as ptr) as ptr
		  return AppleSCNNode.MakefromPtr(flattenedClone( id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536561726368657320746865206E6F6465E2809973206368696C64206E6F6465207375627472656520666F72206F626A6563747320696E74657273656374696E672061206C696E65207365676D656E74206265747765656E2074776F2073706563696669656420706F696E74732E20496620796F7520646566696E65206E6F206869742074657374696E672064696374696F6E6172792C2061207374616E646172642064696374696F6E61727920666F7220746865206E6F64652077696C6C20626520637265617465642E
		Function HitTest(PointA As SCNVector3, PointB As SCNVector3, Options As AppleSCNHitTestingDictionary = nil) As applearray
		  if options = nil then options = new AppleSCNHitTestingDictionary(self)
		  #if Target64Bit
		    return AppleArray.MakeFromPtr(hitTestWithSegmentFromPoint(id, pointa, pointb, options.id))
		  #elseif Target32Bit
		    return AppleArray.MakeFromPtr(hitTestWithSegmentFromPoint32(id, pointa.toVector3_32, pointb.toVector3_32, options.id))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function hitTestWithSegmentFromPoint Lib SceneKitLib Selector "hitTestWithSegmentFromPoint:toPoint:options:" (id as ptr, pointA as SCNVector3, PointB As SCNVector3, Options As Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function hitTestWithSegmentFromPoint32 Lib SceneKitLib Selector "hitTestWithSegmentFromPoint:toPoint:options:" (id as ptr, pointA as SCNVector3_32Bit, PointB As SCNVector3_32Bit, Options As Ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 416464732061206E6F646520746F20746865206E6F6465E2809973206172726179206F66206368696C6472656E20617420612073706563696669656420696E6465782E
		Sub InsertChildNode(Child as AppleSCNNode, Index as UInteger)
		  Declare sub insertChildNode lib SceneKitLib selector "insertChildNodeatIndex::" (id as ptr, child as ptr, index as uinteger)
		  insertChildNode id, Child.id, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNNode
		  return if (aptr = nil, nil, new AppleSCNNode (aPtr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5061757365732074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub PauseAnimation(Key As Text)
		  SceneKitFrameWork.pauseAnimationForKey(id, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E6F6465206F626A65637420726570726573656E74696E6720746865207374617465206F6620746865206E6F64652061732069742063757272656E746C792061707065617273206F6E73637265656E2E
		Function PresentationNode() As AppleSCNNode
		  declare function presentationNode lib SceneKitLib selector "presentationNode:" (id as ptr) as ptr
		  return AppleSCNNode.MakefromPtr (presentationNode(id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616E20616374696F6E206173736F63696174656420776974682061207370656369666963206B65792E
		Sub RemoveAction(actionkey as text)
		  SceneKitFrameWork.removeActionForKey(id, actionkey)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E647320616E642072656D6F76657320616C6C20616374696F6E732066726F6D20746865206E6F6465
		Sub RemoveAllActions(actionkey as text)
		  SceneKitFrameWork.removeAllActions(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C2074686520616E696D6174696F6E732063757272656E746C7920617474616368656420746F20746865206F626A6563742E
		Sub RemoveAllAnimations()
		  SceneKitFrameWork.removeAllAnimations(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C20617564696F20706C617965727320617474616368656420746F20746865206E6F64652C2073746F7070696E6720706C61796261636B2E20417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		Sub RemoveAllAudioPlayers()
		  if RespondsToSelector (classptr, "removeAllAudioPlayers") then
		    Declare sub removeAllAudioPlayers lib SceneKitLib selector "removeAllAudioPlayers" (id as ptr)
		    removeAllAudioPlayers id
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616E79207061727469636C652073797374656D73206469726563746C7920617474616368656420746F20746865206E6F64652E
		Sub RemoveAllParticleSystems()
		  Declare sub removeAllParticleSystems lib SceneKitLib selector "removeAllParticleSystems" (id as ptr)
		  removeAllParticleSystems id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub RemoveAnimation(Key As Text)
		  SceneKitFrameWork.removeAnimationForKey(id, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792C20736D6F6F74686C79207472616E736974696F6E696E67206F7574206F662074686520616E696D6174696F6EE2809973206566666563742E
		Sub RemoveAnimation(Key As Text, FadeOutDuration As Double)
		  SceneKitFrameWork.removeAnimationForKeyFadeOut(id, key, FadeOutDuration)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652073706563696669656420617564696F20706C617965722066726F6D20746865206E6F64652C2073746F7070696E6720706C61796261636B2E20417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		Sub RemoveAudioPlayer(player as AppleSCNAudioPlayer)
		  if RespondsToSelector (classptr, "removeAudioPlayer:") then
		    Declare sub removeAudioPlayer lib SceneKitLib selector "removeAudioPlayer:" (id as ptr, child as ptr)
		    removeAudioPlayer id, player.id
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320746865206E6F64652066726F6D2069747320706172656E74E2809973206172726179206F66206368696C64206E6F6465732E
		Sub RemoveFromParentNode()
		  declare Sub removeFromParentNode lib SceneKitLib selector "removeFromParentNode" (id as ptr)
		  removeFromParentNode id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061207061727469636C652073797374656D20617474616368656420746F20746865206E6F64652E
		Sub RemoveParticleSystem(ParticleSystem As AppleSCNParticleSystem)
		  Declare sub removeParticleSystem lib SceneKitLib selector "removeParticleSystem:" (id as ptr, child as ptr)
		  removeParticleSystem id, ParticleSystem.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061206368696C642066726F6D20746865206E6F6465E2809973206172726179206F66206368696C6472656E20616E6420696E736572747320616E6F74686572206E6F646520696E2069747320706C6163652E
		Sub ReplaceChildNode(OldChild as AppleSCNNode, NewChild as AppleSCNNode)
		  Declare sub ReplaceChildNode lib SceneKitLib selector "replaceChildNode:with:" (id as ptr, oldchild as ptr, newchild as ptr)
		  ReplaceChildNode id, oldChild.id, newchild.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573756D657320612070726576696F75736C792070617573656420616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub ResumeAnimation(Key As Text)
		  SceneKitFrameWork.resumeAnimationForKey(id, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E20616374696F6E20746F20746865206C697374206F6620616374696F6E7320657865637574656420627920746865206E6F64652E
		Sub RunAction(Action as AppleSCNAction)
		  SceneKitFrameWork.runAction id, action.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E20616374696F6E20746F20746865206C697374206F6620616374696F6E7320657865637574656420627920746865206E6F64652E205363656E654B69742063616C6C73207468652073706563696669656420626C6F636B207768656E2074686520616374696F6E20636F6D706C657465732E205468697320626C6F636B2074616B657320616E642072657475726E73206E6F2076616C7565732E
		Sub RunAction(Action as AppleSCNAction, Block as AppleBlock)
		  SceneKitFrameWork.runActionCompletion id, action.id, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E206964656E7469666961626C6520616374696F6E20746F20746865206C697374206F6620616374696F6E7320657865637574656420627920746865206E6F64652E
		Sub RunAction(Action as AppleSCNAction, Key As Text)
		  SceneKitFrameWork.runActionforKey id, action.id, key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E206964656E7469666961626C6520616374696F6E20746F20746865206C697374206F6620616374696F6E7320657865637574656420627920746865206E6F64652E205363656E654B69742063616C6C73207468652073706563696669656420626C6F636B207768656E2074686520616374696F6E20636F6D706C657465732E
		Sub RunAction(Action as AppleSCNAction, Key As Text, Block AS AppleBlock)
		  SceneKitFrameWork.runActionforKeyCompletion id, action.id, key, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473206120637573746F6D20626F756E64696E6720626F7820666F7220746865206F626A6563742E
		Sub SetBoundingBox(min as SCNVector3,  max as SCNVector3)
		  #if Target64Bit
		    SceneKitFrameWork.setBoundingBoxMin(id, min, max)
		  #elseif Target32Bit
		    SceneKitFrameWork.setBoundingBoxMin32(id, min.toVector3_32, max.toVector3_32)
		  #endif
		End Sub
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		Constructor for MDLObject not yet implemented
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206C697374206F66206B65797320666F7220776869636820746865206E6F64652068617320617474616368656420616374696F6E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr( SceneKitFrameWork.getactionKeys(id))
			End Get
		#tag EndGetter
		ActionKeys As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20617272617920636F6E7461696E696E6720746865206B657973206F6620616C6C20616E696D6174696F6E732063757272656E746C7920617474616368656420746F20746865206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(SceneKitFrameWork.getanimationKeys(id))
			End Get
		#tag EndGetter
		AnimationKeys As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F20706C61796572732063757272656E746C7920617474616368656420746F20746865206E6F64652E2028726561642D6F6E6C792920417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		#tag Getter
			Get
			  if RespondsToSelector (classptr, "audioPlayers") then
			    Declare function audioPlayers lib SceneKitLib selector "audioPlayers" (id as ptr) as ptr
			    return AppleArray.MakeFromPtr (audioPlayers(id))
			  end if
			End Get
		#tag EndGetter
		AudioPlayers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616D65726120617474616368656420746F20746865206E6F64652E0A546F2075736520612063616D65726120666F7220646973706C6179696E672061207363656E652C20736574207468652074686520706F696E744F66566965772070726F7065727479206F6620746865207669657720286F72206C61796572206F722072656E64657265722920646973706C6179696E6720746865207363656E6520746F20746865206E6F646520636F6E7461696E696E67207468652063616D6572612E20412063616D657261206C6F6F6B7320696E2074686520646972656374696F6E206F6620746865206E6F6465E2809973206E65676174697665207A2D617869732C20736F20796F752061696D207468652063616D657261206279206368616E67696E672074686520706F736974696F6E20616E64206F7269656E746174696F6E206F6620746865206E6F646520636F6E7461696E696E672069742E20596F7520636F6E74726F6C2067656F6D657472696320616E64206F70746963616C20706172616D6574657273206F66207468652063616D657261E2809470726F6A656374696F6E2C206669656C64206F6620766965772C20616E64206465707468206F66206669656C64E280947573696E67207468652061747461636865642053434E43616D657261206F626A6563742E
		#tag Getter
			Get
			  Declare function camera lib SceneKitLib selector "camera" (id as ptr) as ptr
			  return AppleSCNCamera.MakeFromPtr (camera(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setCamera lib SceneKitLib selector "setCamera:" (id as ptr, value as Ptr)
			  setCamera id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Camera As AppleSCNCamera
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B69742072656E6465727320746865206E6F6465E280997320636F6E74656E747320696E746F20736861646F77206D6170732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getcastsShadow(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setcastsShadow id, value
			End Set
		#tag EndSetter
		CastsShadow As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F7269657320746865206E6F64652062656C6F6E677320746F2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getcategoryBitMask(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setcategoryBitMask id, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620746865206E6F6465E2809973206368696C6472656E20696E20746865207363656E65206772617068206869657261726368792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function childNodes lib SceneKitLib selector "childNodes" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (childNodes(id))
			End Get
		#tag EndGetter
		ChildNodes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNNode")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F6620636F6E73747261696E747320616666656374696E6720746865206E6F6465E2809973207472616E73666F726D6174696F6E2E
		#tag Getter
			Get
			  Declare function constraints lib SceneKitLib selector "constraints" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (constraints(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setConstraints lib SceneKitLib selector "setConstraints:" (id as ptr, value as ptr)
			  setConstraints id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Constraints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F6465E2809973206F7269656E746174696F6E2C206578707265737365642061732070697463682C207961772C20616E6420726F6C6C20616E676C65732C206561636820696E2072616469616E732E20416E696D617461626C652E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function eulerAngles lib SceneKitLib selector "eulerAngles" (id as ptr) as SCNVector3
			    return eulerAngles (id)
			  #elseif Target32Bit
			    Declare function eulerAngles lib SceneKitLib selector "eulerAngles" (id as ptr) as SCNVector3_32Bit
			    return eulerAngles (id).tovector3
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setEulerAngles lib SceneKitLib selector "setEulerAngles:" (id as ptr, value as SCNVector3)
			    setEulerAngles (id, value)
			  #elseif Target32Bit
			    Declare sub setEulerAngles lib SceneKitLib selector "setEulerAngles:" (id as ptr, value as SCNVector3_32Bit)
			    setEulerAngles (id, value.toVector3_32)
			  #endif
			  
			End Set
		#tag EndSetter
		EulerAngles As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620436F726520496D6167652066696C7465727320746F206265206170706C69656420746F207468652072656E646572656420636F6E74656E7473206F6620746865206E6F64652E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (SceneKitFrameWork.getfilters(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setfilters id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Filters As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652067656F6D6574727920617474616368656420746F20746865206E6F64652E0A41206E6F64652063616E2068617665206F6E6C79206F6E652067656F6D6574727920617474616368656420746F2069742E20546F20636F6D62696E652067656F6D65747269657320736F20746865792063616E20626520636F6E74726F6C6C6564206F7220616E696D6174656420746F6765746865722C206372656174652061206E6F64652077697468206E6F2067656F6D6574727920616E6420616464206F74686572206E6F64657320746F2069742E
		#tag Getter
			Get
			  Declare function geometry lib SceneKitLib selector "geometry" (id as ptr) as ptr
			  return AppleSCNGeometry.MakeFromPtr (geometry(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setGeometry lib SceneKitLib selector "setGeometry:" (id as ptr, value as Ptr)
			  setGeometry id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Geometry As AppleSCNGeometry
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206E6F64652069732063757272656E746C7920657865637574696E6720616E7920616374696F6E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return SceneKitFrameWork.gethasActions(id)
			End Get
		#tag EndGetter
		HasActions As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320746865207669736962696C697479206F6620746865206E6F6465E280997320636F6E74656E74732E20416E696D617461626C652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getHidden(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setHidden id, value
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6967687420617474616368656420746F20746865206E6F64652E
		#tag Getter
			Get
			  Declare function light lib SceneKitLib selector "light" (id as ptr) as ptr
			  return AppleSCNLight.MakeFromPtr (light(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLight lib SceneKitLib selector "setLight:" (id as ptr, value as Ptr)
			  setLight id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Light As AppleSCNLight
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F7270686572206F626A65637420726573706F6E7369626C6520666F7220626C656E64696E6720746865206E6F6465E28099732067656F6D657472792E
		#tag Getter
			Get
			  Declare function morpher lib SceneKitLib selector "morpher" (id as ptr) as ptr
			  return AppleSCNMorpher.MakeFromPtr (morpher(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMorpher lib SceneKitLib selector "setMorpher:" (id as ptr, value as Ptr)
			  setMorpher id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Morpher As AppleSCNMorpher
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E616D65206173736F636961746564207769746820746865206E6F64652E
		#tag Getter
			Get
			  return getName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setName value
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7061636974792076616C7565206F6620746865206E6F64652E20416E696D617461626C652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getopacity(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setopacity id, value
			End Set
		#tag EndSetter
		Opacity As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F6465E2809973206F7269656E746174696F6E2C206578707265737365642061732061207175617465726E696F6E2E20416E696D617461626C652E
		#tag Getter
			Get
			  #if Target64Bit
			    return SceneKitFrameWork.getorientation(id)
			  #elseif Target32Bit
			    return SceneKitFrameWork.getorientation32(id).toVector4
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    SceneKitFrameWork.setorientation(id, value)
			  #elseif Target32Bit
			    SceneKitFrameWork.setorientation32(id, value.toVector4_32)
			  #endif
			  
			End Set
		#tag EndSetter
		Orientation As SCNVector4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F6465E280997320706172656E7420696E20746865207363656E65206772617068206869657261726368792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function parentNode lib SceneKitLib selector "parentNode" (id as ptr) as ptr
			  return AppleSCNNode.MakeFromPtr (parentNode(id))
			End Get
		#tag EndGetter
		ParentNode As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207061727469636C652073797374656D7320617474616368656420746F20746865206E6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function particleSystems lib SceneKitLib selector "particleSystems" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (particleSystems(id))
			End Get
		#tag EndGetter
		ParticleSystems As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746F2072756E20616374696F6E7320616E6420616E696D6174696F6E7320617474616368656420746F20746865206E6F646520616E6420697473206368696C64206E6F6465732E
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

	#tag ComputedProperty, Flags = &h0, Description = 546865207068797369637320626F6479206173736F636961746564207769746820746865206E6F64652E
		#tag Getter
			Get
			  return AppleSCNPhysicsBody.MakeFromPtr (SceneKitFrameWork.getphysicsBody(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setphysicsBody id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		PhysicsBody As AppleSCNPhysicsBody
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070687973696373206669656C64206173736F636961746564207769746820746865206E6F64652E
		#tag Getter
			Get
			  return AppleSCNPhysicsField.MakeFromPtr (SceneKitFrameWork.getphysicsField(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setphysicsField id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		PhysicsField As AppleSCNPhysicsField
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207069766F7420706F696E7420666F7220746865206E6F6465E280997320706F736974696F6E2C20726F746174696F6E2C20616E64207363616C652E20416E696D617461626C652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getpivot(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setpivot(id, value)
			  
			End Set
		#tag EndSetter
		Pivot As SCNMatrix4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207472616E736C6174696F6E206170706C69656420746F20746865206E6F64652E20416E696D617461626C652E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function position lib SceneKitLib selector "position" (id as ptr) as SCNVector3
			    return position (id)
			  #elseif Target32Bit
			    Declare function position lib SceneKitLib selector "position" (id as ptr) as SCNVector3_32Bit
			    return position (id).tovector3
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setPosition lib SceneKitLib selector "setPosition:" (id as ptr, value as SCNVector3)
			    setposition (id, value)
			  #elseif Target32Bit
			    Declare sub setPosition lib SceneKitLib selector "setPosition:" (id as ptr, value as SCNVector3_32Bit)
			    setposition (id, value.toVector3_32)
			  #endif
			  
			End Set
		#tag EndSetter
		Position As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420726573706F6E7369626C6520666F722072656E646572696E6720637573746F6D20636F6E74656E747320666F7220746865206E6F6465207573696E67204D6574616C206F72204F70656E474C2E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr (SceneKitFrameWork.getrendererDelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setrendererDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		RendererDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7264657220746865206E6F6465E280997320636F6E74656E7420697320647261776E20696E2072656C617469766520746F2074686174206F66206F74686572206E6F6465732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getrenderingOrder(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setrenderingOrder id, value
			End Set
		#tag EndSetter
		RenderingOrder As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F6465E2809973206F7269656E746174696F6E2C20657870726573736564206173206120726F746174696F6E20616E676C652061626F757420616E20617869732E20416E696D617461626C652E
		#tag Getter
			Get
			  #if Target64Bit
			    return SceneKitFrameWork.getRotation(id)
			  #elseif Target32Bit
			    return SceneKitFrameWork.getRotation32(id).toVector4
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    SceneKitFrameWork.setRotation(id, value)
			  #elseif Target32Bit
			    SceneKitFrameWork.setRotation32(id, value.toVector4_32)
			  #endif
			  
			End Set
		#tag EndSetter
		Rotation As SCNVector4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C6520666163746F72206170706C69656420746F20746865206E6F64652E20416E696D617461626C652E
		#tag Getter
			Get
			  #if Target64Bit
			    return SceneKitFrameWork.getscale(id)
			  #elseif Target32Bit
			    return SceneKitFrameWork.getscale32(id).toVector3
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    SceneKitFrameWork.setScale(id, value)
			  #elseif Target32Bit
			    SceneKitFrameWork.setScale32(id, value.toVector3_32)
			  #endif
			  
			End Set
		#tag EndSetter
		Scale As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736B696E6E6572206F626A65637420726573706F6E7369626C6520666F7220736B656C6574616C20616E696D6174696F6E73206F66206E6F6465E280997320636F6E74656E74732E
		#tag Getter
			Get
			  Declare function skinner lib SceneKitLib selector "skinner" (id as ptr) as ptr
			  return AppleSCNskinner.MakeFromPtr (skinner(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSkinner lib SceneKitLib selector "setSkinner:" (id as ptr, value as Ptr)
			  setSkinner id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Skinner As AppleSCNSkinner
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207472616E73666F726D6174696F6E206170706C69656420746F20746865206E6F64652072656C617469766520746F2069747320706172656E742E20416E696D617461626C652E
		#tag Getter
			Get
			  return SceneKitFrameWork.gettransform(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.settransform(id, value)
			End Set
		#tag EndSetter
		Transform As SCNMatrix4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520776F726C64207472616E73666F726D206170706C69656420746F20746865206E6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return SceneKitFrameWork.getworldTransform(id)
			  
			End Get
		#tag EndGetter
		WorldTransform As SCNMatrix4
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CastsShadow"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
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
			Name="HasActions"
			Group="Behavior"
			Type="Boolean"
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
			Name="Hidden"
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
			Name="Opacity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingOrder"
			Group="Behavior"
			Type="Integer"
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
