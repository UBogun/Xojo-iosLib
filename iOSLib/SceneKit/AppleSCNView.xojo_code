#tag Class
Protected Class AppleSCNView
Inherits AppleView
	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub DidAddSubview(view as AppleView)
		  #pragma unused view
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652074696E74636F6C6F72206368616E6765642E
		Sub TintColorDidChange()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077696C6C206C6F7365206120737562766965772E
		Sub WillRemoveSubview(view as AppleView)
		  #pragma unused view
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 52657475726E732074686520617070656172616E63652070726F787920666F7220746865204170706C6553434E5669657720636C6173732E
		 Shared Function Appearance() As AppleSCNView
		  return AppleSCNView.MakefromPtr(getappearance(classptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520617070656172616E63652070726F787920666F7220746865204170706C6553434E5669657720636C617373207468617420686173207468652070617373656420747261697420636F6C6C656374696F6E2E
		 Shared Function Appearance(Collection as AppleTraitCollection) As AppleSCNView
		  return AppleSCNView.MakefromPtr(getappearance(classptr, collection.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CompletionHandlerTemplate(success As Boolean)
		  if me <> nil then
		    if ParentControl <> nil then
		      ParentControl.InformOnObjectsPreparationEnded (success)
		    else
		      RaiseEvent ObjectsPreparationEnded (success)
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E65772053434E56696577206F626A6563742E
		Sub Constructor(aFrame as FoundationFramework.NSRect, dict as AppleSCNViewInitializationOptionDictionary = nil)
		  #if Target64Bit
		    Declare function initWithFrameOptions lib SceneKitLib selector "initWithFrame:options:" (id as ptr, frame  as FoundationFramework.NSRect, options as ptr) as ptr
		    super.Constructor ( initWithFrameOptions (alloc(ClassPtr), aframe, if (dict = nil, NIL, dict.id)))
		  #elseif Target32Bit
		    Declare function initWithFrameOptions lib SceneKitLib selector "initWithFrame:options:" (id as ptr, frame as FoundationFramework.NSRect32Bit, options as ptr) as ptr
		    super.Constructor ( initWithFrameOptions (alloc(ClassPtr), aframe.toNSRect32, if (dict = nil, NIL, dict.id)))
		  #endif
		  mHasOwnership = true
		  
		  setDelegate id, id
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardAnimationsAtTime(pid as ptr, sel as ptr, attime as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as new AppleSCNView(pid)
		  dim time as new AppleNumber(attime)
		  if view <> nil then view.RaiseAnimationsUpdate (time.DoubleValue)
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidBeginContact(pid as ptr, sel as ptr, Ar as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as new AppleSCNView(pid)
		  dim ApArr as  AppleArray = AppleArray.MakeFromPtr(ar)
		  // System.DebugLog "Animation Time retrieved "+time.DoubleValue.ToText
		  if view <> nil and ApArr <> nil  then
		    view.RaiseDidBeginContact (AppleSCNPhysicsWorld.MakefromPtr(ApArr.PtrAtIndex(0)), AppleSCNPhysicsContact.MakefromPtr(aparr.PtrAtIndex(1)))
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidEndContact(pid as ptr, sel as ptr, Ar as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as new AppleSCNView(pid)
		  dim ApArr as AppleArray = AppleArray.MakefromPtr(ar)
		  if view <> nil and ApArr <> nil  then
		    view.RaiseDidEndContact (AppleSCNPhysicsWorld.MakefromPtr(ApArr.PtrAtIndex(0)), AppleSCNPhysicsContact.MakefromPtr(aparr.PtrAtIndex(1)))
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidRenderSceneAtTime(pid as ptr, sel as ptr, nsarray as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim a as AppleArray = AppleArray.MakeFromPtr(nsarray)
		  dim view as new AppleSCNView(pid)
		  dim time as new AppleNumber(a.PtrAtIndex(1))
		  if view <> nil then
		    view.RaiseDidRenderUpdate (AppleSCNScene.MakefromPtr(a.PtrAtIndex(0)), time.DoubleValue)
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidUpdateContact(pid as ptr, sel as ptr, Ar as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as new AppleSCNView(pid)
		  dim ApArr as new AppleArray(ar)
		  // System.DebugLog "Animation Time retrieved "+time.DoubleValue.ToText
		  if view <> nil and ApArr <> nil  then
		    view.RaisedidUpdateContact (AppleSCNPhysicsWorld.MakefromPtr(ApArr.PtrAtIndex(0)), AppleSCNPhysicsContact.MakefromPtr(aparr.PtrAtIndex(1)))
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardPhysicsAtTime(pid as ptr, sel as ptr, attime as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as new AppleSCNView(pid)
		  dim time as new AppleNumber(attime)
		  if view <> nil then view.RaisephysicsUpdate (time.DoubleValue)
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardUpdateAtTime(pid as ptr, sel as ptr, attime as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim view as new AppleSCNView(pid)
		  dim time as new AppleNumber(attime)
		  if view <> nil then view.RaiseRenderUpdate (time.DoubleValue)
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardWillRenderSceneAtTime(pid as ptr, sel as ptr, nsarray as ptr)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  #pragma BreakOnExceptions false
		  dim a as AppleArray = AppleArray.MakeFromPtr(nsarray)
		  dim view as new AppleSCNView(pid)
		  dim scene as  AppleSCNScene = AppleSCNScene.MakefromPtr(a.PtrAtIndex(0))
		  dim time as new AppleNumber(a.PtrAtIndex(1))
		  // System.DebugLog "Render Scene Time retrieved "+time.DoubleValue.ToText
		  if view <> nil then
		    // view.RenderTime = time.DoubleValue
		    // view.renderscene = scene
		    view.RaiseRenderSceneUpdate (scene, time.DoubleValue)
		  end if
		  
		  
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365617263686573207468652072656E6465726572E2809973207363656E6520666F72206F626A6563747320636F72726573706F6E64696E6720746F206120706F696E7420696E207468652072656E646572656420696D6167652E20496620796F752073706563696679206E6F2048697454657374696E6744696374696F6E6172792C2061207374616E646172642064696374696F6E61727920666F722074686520766965772077696C6C20626520757365642E
		Function HitTest(aPoint as FoundationFramework.NSPoint,  optional options as AppleSCNHitTestingDictionary) As AppleArray
		  if options = nil then options = new AppleSCNHitTestingDictionary(me.Scene.RootNode)
		  #if Target64Bit
		    Declare function hitTest lib SceneKitLib selector "hitTest:options:" (id as Ptr, aPoint as FoundationFramework.NSPoint, options as ptr) as ptr
		    return AppleArray.MakeFromPtr (hitTest(id, aPoint,options.id))
		  #elseif Target32Bit
		    Declare function hitTest lib SceneKitLib selector "hitTest:options:" (id as Ptr, aPoint as FoundationFramework.NSPoint32Bit, options as ptr) as ptr
		    return AppleArray.MakeFromPtr (hitTest(id, aPoint.toNSPoint32, options.id))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didBeginContact(pid as ptr, sel as ptr, physicsworld as ptr, contact as ptr)
		  #Pragma StackOverflowChecking false
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkDidBeginContact:")
		  
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,physicsworld)
		  AppleMutableArray.ThreadSafeAdd(a, contact)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a)
		  System.DebugLog "Did Begin Contact "
		  
		  
		  #Pragma Unused Sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEndContact(pid as ptr, sel as ptr, physicsworld as ptr, contact as ptr)
		  #Pragma StackOverflowChecking false
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkDidEndContact:")
		  
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,physicsworld)
		  AppleMutableArray.ThreadSafeAdd(a, contact)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a)
		  
		  System.DebugLog "Did End Contact "
		  
		  #Pragma Unused Sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didUpdateContact(pid as ptr, sel as ptr, physicsworld as ptr, contact as ptr)
		  #Pragma StackOverflowChecking false
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkDidUpdateContact:")
		  
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,physicsworld)
		  AppleMutableArray.ThreadSafeAdd(a, contact)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a)
		  System.DebugLog "Did Update Contact "
		  
		  
		  #Pragma Unused Sel
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererdidApplyAnimationsAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkAnimationsAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, n)
		  
		  
		  // // #Pragma StackOverflowChecking false
		  // // #Pragma DisableBackgroundTasks
		  // dim view as new AppleSCNView(pid)
		  // if view <> nil then
		  // view.animationstime = attime
		  // view.RaiseAnimationsUpdate
		  // end if
		  // 
		  // 
		  // // if NotificationDict.HasKey(pid) then
		  // // dim d as dictionary = NotificationDict.value (pid)
		  // // d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		  // // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererDidRenderSceneAtTime(pid as ptr, sel as ptr, renderer as ptr, scene as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkDidRenderSceneAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,scene)
		  AppleMutableArray.ThreadSafeAdd(a, n)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a)
		  
		  
		  
		  // #Pragma StackOverflowChecking false
		  // #Pragma DisableBackgroundTasks
		  // dim view as new AppleSCNView(pid)
		  // if view <> nil then
		  // view.RenderSceneTime = attime
		  // view.renderedscene = AppleSCNScene.MakefromPtr(scene)
		  // view.RaiseDidRenderUpdate
		  // end if
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kDidRenderScene) = attime // left side is the constant, right side the value
		  // d.Value (kRenderScene) = scene
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkDidRenderSceneAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererdidSimulatePhysicsAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkPhysicsAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, n)
		  
		  
		  
		  // #Pragma StackOverflowChecking false
		  // #Pragma DisableBackgroundTasks
		  // 
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kDidSimulatePhysics) = attime // left side is the constant, right side the value
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkPhysicsAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererUpdateAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  static Selector as ptr = FoundationFrameWork.NSSelectorFromString("checkUpdateAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, n)
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererwillRenderSceneAtTime(pid as ptr, sel as ptr, renderer as ptr, scene as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  static Selector as ptr
		  if Selector = nil then Selector= FoundationFrameWork.NSSelectorFromString("checkWillRenderSceneAtTime:")
		  
		  dim n as ptr = AppleNumber.MakeNumberPtr(attime)
		  dim a as ptr = AppleMutableArray.MakeArrayPtr(2)
		  AppleMutableArray.ThreadSafeAdd(a,scene)
		  AppleMutableArray.ThreadSafeAdd(a, n)
		  FoundationFrameWork.PerformSelectorOnMainThread (pid, Selector, a)
		  
		  // #Pragma Unused Sel
		  // #Pragma Unused renderer
		  // dim view as new AppleSCNView(pid)
		  // if view <> nil then
		  // view.renderscene = AppleSCNScene.MakefromPtr(scene)
		  // view.rendertime = attime
		  // view.RaiseRenderSceneUpdate
		  // end if
		  
		  
		  // #Pragma StackOverflowChecking false
		  // #Pragma DisableBackgroundTasks
		  // 
		  // if NotificationDict.HasKey(pid) then
		  // dim d as dictionary = NotificationDict.value (pid)
		  // d.Value (kWillRenderScene) = attime // left side is the constant, right side the value
		  // d.Value (kRenderScene) = scene
		  // Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  // (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  // performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkWillRenderSceneAtTime:"), pid, false // and have the change checked
		  // end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722061206E6F6465206D696768742062652076697369626C652066726F6D20612073706563696669656420706F696E74206F6620766965772E
		Function IsNodeInsideFrustrum(aNode As AppleSCNNode, pointofView as AppleSCNNode) As Boolean
		  return SceneKitFrameWork.getisNodeInsideFrustum (id, aNode.id, pointofView.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNView
		  return if (aptr = nil, nil, new AppleSCNView(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616C6C206E6F6465732074686174206D696768742062652076697369626C652066726F6D20612073706563696669656420706F696E74206F6620766965772E20417661696C61626C652073696E636520694F5320392E302E
		Function NodesInsideFrustrum(PointofView as AppleSCNNode) As AppleArray
		  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString ("nodesInsideFrustumWithPointOfView:")) then
		    return AppleArray.MakeFromPtr (SceneKitFrameWork.getnodesInsideFrustumWithPointOfView (id,  pointofView.id))
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden )  Function ParentControl() As OSLIbSCNView
		  dim  wr as weakref = XojoControls.Lookup (id, nil)  
		  return if (wr = nil, nil,  OSLIbSCNView(wr.Value))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617573657320706C61796261636B206F66207468652076696577E2809973207363656E652E
		Sub Pause()
		  Declare sub pause lib SceneKitLib selector "pause:" (id as Ptr, sender as ptr)
		  pause id, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573756D657320706C61796261636B206F66207468652076696577E2809973207363656E652E
		Sub Play()
		  Declare sub play lib SceneKitLib selector "play:" (id as Ptr, sender as ptr)
		  play id, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 5468652064656661756C742020626C6F636B20666F722063616E63656C6C696E67206F626A656374207072657061726174696F6E732E
		Private Function PreparationCancelBlock() As Boolean
		  if me <> nil then return AbortObjectPreparation
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726570617265732061205363656E654B6974206F626A6563742028416E2053434E5363656E652C2053434E4E6F64652C2053434E47656F6D657472792C206F722053434E4D6174657269616C20696E7374616E63652920666F722072656E646572696E672E2052657475726E7320746865207072657061726174696F6E20726573756C742E20496620796F7520646F206E6F7420646566696E65206120637573746F6D20626C6F636B2C207468652064656661756C74205072657061726174696F6E43616E63656C426C6F636B206F662074686520636C6173732077696C6C20626520757365642E205468697320636865636B7320746865205F41626F72744F626A6563745072657061726174696F6E5F2050726F706572747920706572696F646963616C6C7920616E642061626F727473207072657061726174696F6E7320696620697420697320747275652E
		Function PrepareObject(anObject As AppleSCNObject, optional block as iOSBlock) As Boolean
		  if block = nil then block = new AppleBlock(AddressOf PreparationCancelBlock)
		  Return SceneKitFrameWork.prepareObject (id, anObject.id,  block.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepareObjects(Objects As AppleArray, optional block as iOSBlock)
		  if block = nil then  block = new iOSBlock (AddressOf CompletionHandlerTemplate)
		  SceneKitFrameWork.prepareObjects id, Objects.id, if (block = nil, Nil, block.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepareObjects(paramarray Objects() As AppleSCNObject)
		  dim myArray as AppleMutableArray = AppleMutableArray.fromAppleObjects (objects)
		  dim myblock as new iOSBlock (AddressOf CompletionHandlerTemplate)
		  PrepareObjects myArray, myblock
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726F6A65637473206120706F696E742066726F6D2074686520334420776F726C6420636F6F7264696E6174652073797374656D206F6620746865207363656E6520746F2074686520324420706978656C20636F6F7264696E6174652073797374656D206F66207468652072656E64657265722E
		Function ProjectPoint(aPoint as SCNVector3) As SCNVector3
		  #if Target64Bit
		    return SceneKitFrameWork.projectPoint (id, aPoint)
		  #elseif Target32Bit
		    return SceneKitFrameWork.projectPoint32(id, aPoint.toVector3_32).tovector3
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseAnimationsUpdate(AnimationsTime as Double)
		  if ParentControl <> nil then
		    ParentControl.informonDidAnimate (AnimationsTime)
		  else
		    RaiseEvent DidAnimate (AnimationsTime)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaisedidBeginContact(lastPWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  if ParentControl <> nil then
		    ParentControl.informondidbegincontact (lastPWorld, contact)
		  else
		    RaiseEvent didbegincontact (lastPWorld, contact)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaisedidEndContact(lastPWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  if ParentControl <> nil then
		    ParentControl.informondidendcontact (lastPWorld, contact)
		  else
		    RaiseEvent didendcontact (lastPWorld, contact)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseDidRenderUpdate(renderscene as AppleSCNScene, rendertime as double)
		  if ParentControl <> nil then
		    ParentControl.informonDidRenderScene (renderscene, rendertime)
		  else
		    RaiseEvent DidRenderScene (renderscene, rendertime)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaisedidUpdateContact(lastPWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
		  if ParentControl <> nil then
		    ParentControl.informondidupdatecontact (lastPWorld, contact)
		  else
		    RaiseEvent DidUpdateContact lastPWorld, contact
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaisePhysicsUpdate(physicstime as double)
		  if ParentControl <> nil then
		    ParentControl.informonDidSimulatePhysics(physicstime)
		  else
		    RaiseEvent DidSimulatePhysics (physicstime)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseRenderSceneUpdate(renderscene as AppleSCNScene, rendertime as double)
		  if ParentControl <> nil then
		    ParentControl.informonwillrenderscene (renderscene, rendertime)
		  else
		    RaiseEvent willrenderscene (renderscene, rendertime)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseRenderUpdate(updateTime as double)
		  if ParentControl <> nil then
		    ParentControl.informonWillupdate(updatetime)
		  else
		    RaiseEvent WillUpdate (updatetime)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656E64657273207468652076696577E2809973207363656E6520696E746F2061206E657720696D616765206F626A6563742E
		Function Snapshot() As AppleImage
		  Declare function snapshot lib SceneKitLib selector "snapshot" (id as Ptr) as ptr
		  return AppleImage.MakeFromPtr (snapshot(id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F707320706C61796261636B206F66207468652076696577E2809973207363656E6520616E642072657365747320746865207363656E652074696D6520746F206974732073746172742074696D652E
		Sub Stop()
		  Declare sub stop lib SceneKitLib selector "stop:" (id as Ptr, sender as ptr)
		  stop id, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 556E70726F6A65637473206120706F696E742066726F6D2074686520324420706978656C20636F6F7264696E6174652073797374656D206F66207468652072656E646572657220746F2074686520334420776F726C6420636F6F7264696E6174652073797374656D206F6620746865207363656E652E
		Function UnprojectPoint(aPoint as SCNVector3) As SCNVector3
		  #if Target64Bit
		    return SceneKitFrameWork.unprojectPoint (id, aPoint)
		  #elseif Target32Bit
		    return SceneKitFrameWork.unprojectPoint32(id, aPoint.toVector3_32).tovector3
		  #endif
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DidAnimate(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidBeginContact(PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEndContact(PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidRenderScene(Scene As AppleSCNScene, Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidSimulatePhysics(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidUpdateContact(PWorld As AppleSCNPhysicsWorld, contact as AppleSCNPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ObjectsPreparationEnded(success As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillRenderScene(scene as applescnscene,Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillUpdate(Time As Double)
	#tag EndHook


	#tag Note, Name = Status incomplete
		In Renderer Protocol: Metal Functions and AudioEnvironmentNode missing.
		Needs a custom subclass to implement OverlaySKScene as a property and presentScene method.
		
		SCNTechnique support not implemented.
		
		UICoordinateSpace and UIAppearanceContainer Protocols not yet implemented
		
		
		
	#tag EndNote


	#tag Property, Flags = &h0, Description = 412068656C706572207661726961626C6520666F722075736520696E20636F6E6A756E6374696F6E20776974682074686520507265706172654F626A656374206D6574686F642E2053657420746F207472756520696620796F752077616E7420746F2063616E63656C207072657061726174696F6E732E20446F6EE280997420666F7267657420746F2073657420746F2046616C736520616761696E206F7220666F6C6C6F77696E67207072657061726174696F6E732077696C6C2062652063616E63656C6C656420746F6F2E
		AbortObjectPreparation As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620547275652C2074686520757365722063616E206368616E6765207468652063616D65726120776974682067657374757265732E2044656661756C742046616C73652E
		#tag Getter
			Get
			  Declare function allowsCameraControl lib SceneKitLib selector "allowsCameraControl" (id as ptr) as Boolean
			  return allowsCameraControl (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAllowsCameraControl lib SceneKitLib selector "setAllowsCameraControl:" (id as ptr, value as Boolean)
			  setAllowsCameraControl id, value
			End Set
		#tag EndSetter
		AllowsCameraControl As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F6620736D6F6F74696E6720746F206170706C792E2044656661756C74206E6F6E652E
		#tag Getter
			Get
			  Declare function AntialiasingMode lib SceneKitLib selector "antialiasingMode" (id as ptr) as SCNAntialiasingMode
			  return AntialiasingMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAntialiasingMode lib SceneKitLib selector "setAntialiasingMode:" (id as ptr, value as SCNAntialiasingMode)
			  setAntialiasingMode id, value
			End Set
		#tag EndSetter
		AntialiasingMode As SCNAntialiasingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617564696F20656E67696E65205363656E654B6974207573657320666F7220706C6179696E67207363656E6520736F756E64732E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector (classptr, "audioEngine") then return AppleAVAudioEngine.MakefromPtr (SceneKitFrameWork.getaudioEngine (id))
			End Get
		#tag EndGetter
		AudioEngine As AppleAVAudioEngine
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F646520726570726573656E74696E6720746865206C697374656E6572E280997320706F736974696F6E20696E20746865207363656E6520666F7220757365207769746820706F736974696F6E616C20617564696F20656666656374732E
		#tag Getter
			Get
			  if RespondsToSelector (classptr, "audioListener") then return AppleSCNNode.MakefromPtr (SceneKitFrameWork.getaudioListener (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  try
			    if RespondsToSelector (classptr, "setAudioListener:") then SceneKitFrameWork.setaudioListener id, if (value = nil, nil, value.id)
			  Catch
			  end try
			End Set
		#tag EndSetter
		AudioListener As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620747275652C205363656E654B6974206175746F6D61746963616C6C79206164647320616E6420706C6163657320616E206F6D6E69646972656374696F6E616C206C6967687420736F75726365207768656E2072656E646572696E67207363656E6573207468617420636F6E7461696E206E6F206C6967687473206F72206F6E6C7920636F6E7461696E20616D6269656E74206C69676874732E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getautoenablesDefaultLighting (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setAutoenablesDefaultLighting id, value
			End Set
		#tag EndSetter
		AutoenablesDefaultLighting As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  //Here's one problem: Apple forwards the event methods on a background thread. It's not easy to catch it with Xojo without a crash, and it's getting unstable once too many fire simultaneously.
			  // I haven't found a solution yet besides activating only selected events. So please comment and decomment these methods in pairs and run long-time tests to see if the solution is stable enough for you
			  
			  
			  static mClassPtr as ptr
			  if mClassPtr = nil then
			    dim methods() as TargetClassMethodHelper
			    
			    methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    // methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerclass, "@@:", true, true)
			    // methods.Append new TargetClassMethodHelper("tintColorDidChange", AddressOf impl_tintColorDidChange, "v@:")
			    
			    //TraitEnvironment Protocol
			    methods.Append new TargetClassMethodHelper("traitCollectionDidChange:", AddressOf impl_traitCollectionDidChange, "v@:@")
			    
			    
			    // These are the delegate methods
			    methods.Append new TargetClassMethodHelper("renderer:updateAtTime:", AddressOf impl_rendererUpdateAtTime, "v@:@d")
			    methods.Append new TargetClassMethodHelper("renderer:didApplyAnimationsAtTime:", AddressOf impl_rendererdidApplyAnimationsAtTime, "v@:@d")
			    methods.Append new TargetClassMethodHelper("renderer:didSimulatePhysicsAtTime:", AddressOf impl_rendererdidSimulatePhysicsAtTime, "v@:@d")
			    methods.Append new TargetClassMethodHelper("renderer:willRenderScene:atTime:", AddressOf impl_rendererwillRenderSceneAtTime, "v@:@@d")
			    methods.Append new TargetClassMethodHelper("renderer:didRenderScene:atTime:", AddressOf impl_rendererDidRenderSceneAtTime, "v@:@@d")
			    
			    // and these are the forwarders, both in the same order
			    methods.Append new TargetClassMethodHelper("checkUpdateAtTime:", AddressOf ForwardUpdateAtTime, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkAnimationsAtTime:", AddressOf ForwardAnimationsAtTime, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkPhysicsAtTime:", AddressOf ForwardPhysicsAtTime, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkWillRenderSceneAtTime:", AddressOf ForwardWillRenderSceneAtTime, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkDidRenderSceneAtTime:", AddressOf ForwardDidRenderSceneAtTime, "v@:@")
			    
			    // Now the PhysicsWorldContactDelegate methods
			    methods.Append new TargetClassMethodHelper("physicsWorld:didBeginContact:", AddressOf impl_didBeginContact, "v@:@@")
			    methods.Append new TargetClassMethodHelper("physicsWorld:didUpdateContact:", AddressOf impl_didUpdateContact, "v@:@@")
			    methods.Append new TargetClassMethodHelper("physicsWorld:didEndContact:", AddressOf impl_didEndContact, "v@:@@")
			    
			    // and again the forwarders in the same order:
			    methods.Append new TargetClassMethodHelper("checkDidBeginContact:", AddressOf ForwardDidBeginContact, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkDidUpdateContact:", AddressOf ForwardDidUpdateContact, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkDidEndContact:", AddressOf ForwardDidEndContact, "v@:@")
			    
			    mClassPtr = BuildTargetClass("SCNView","iOSLibSCNView",methods)
			  end if
			  return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204F70656E474C2072656E646572696E6720636F6E746578742074686174205363656E654B6974207573657320666F722072656E646572696E6720746865207363656E652E2028726561642D6F6E6C79290A
		#tag Getter
			Get
			  Declare function context lib SceneKitLib selector "context" (id as ptr) as ptr
			  return AppleEAGLContext.MakefromPtr (context (id))
			End Get
		#tag EndGetter
		Context As AppleEAGLContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4F7074696F6E7320666F722064726177696E67206F7665726C617920636F6E74656E7420696E2061207363656E6520746861742063616E2061696420646562756767696E672E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector (classptr, "debugOptions") then
			    return new AppleSCNDebugOptions (SceneKitFrameWork.getdebugOptions(id))
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector (classptr, "setDebugOptions:") then
			    SceneKitFrameWork.setdebugOptions(id, value.Id)
			  end if
			End Set
		#tag EndSetter
		DebugOptions As AppleSCNDebugOptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620796F7520757365204F70656E474C20455320666F7220637573746F6D2072656E646572696E672C20796F752063616E2075736520746869732070726F706572747920746F207368617265204F70656E474C204553207265736F7572636573206265747765656E2074686520636F6E74657874207573656420666F722072656E646572696E6720746865207363656E6520616E64206F74686572204F70656E474C20455320636F6E746578747320796F75722061707020757365732E205363656E654B6974206175746F6D61746963616C6C792073686172657320697473206F776E204F70656E474C204553207265736F7572636573206265747765656E206D756C7469706C652053434E5669657720696E7374616E63657320696E20796F757220617070206173206E65656465642E0A0A
		#tag Getter
			Get
			  Declare function EAGLcontext lib SceneKitLib selector "eaglContext" (id as ptr) as ptr
			  return AppleEAGLContext.MakefromPtr (EAGLcontext (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setcontext lib SceneKitLib selector "setEaglContext:" (id as ptr, value as ptr)
			  setcontext id, value.id
			End Set
		#tag EndSetter
		EAGLContext As AppleEAGLContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4A6974746572696E6720697320612070726F636573732074686174205363656E654B6974207573657320746F20696D70726F7665207468652076697375616C207175616C697479206F6620612072656E6465726564207363656E652E205768696C6520746865207363656E65E280997320636F6E74656E74206973207374696C6C2C205363656E654B6974206D6F7665732074686520706F696E744F6656696577206C6F636174696F6E207665727920736C696768746C7920286279206C657373207468616E206120706978656C20696E2070726F6A65637465642073637265656E207370616365292E204974207468656E20636F6D706F736974657320696D616765732072656E6465726564206166746572207365766572616C2073756368206D6F76657320746F20637265617465207468652066696E616C2072656E6465726564207363656E652C206372656174696E6720616E20616E7469616C696173696E6720656666656374207468617420736D6F6F74687320746865206564676573206F662072656E64657265642067656F6D657472792E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getJitteringEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setJitteringEnabled id, value
			End Set
		#tag EndSetter
		JitteringEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPreferLowPowerDeviceKey as text
			  try
			    mkSCNPreferLowPowerDeviceKey = SystemConstantName("SCNPreferLowPowerDeviceKey", SceneKitPath)
			  catch
			  end try
			  return mkSCNPreferLowPowerDeviceKey
			End Get
		#tag EndGetter
		Shared kSCNPreferLowPowerDeviceKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPreferredDeviceKey as text
			  try
			    mkSCNPreferredDeviceKey = SystemConstantName("SCNPreferredDeviceKey", SceneKitPath)
			  catch
			  end try
			  return mkSCNPreferredDeviceKey
			End Get
		#tag EndGetter
		Shared kSCNPreferredDeviceKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPreferredRenderingAPIKey as text
			  try
			    mkSCNPreferredRenderingAPIKey = SystemConstantName("SCNPreferredRenderingAPIKey", SceneKitPath)
			  catch
			  end try
			  return mkSCNPreferredRenderingAPIKey
			End Get
		#tag EndGetter
		Shared kSCNPreferredRenderingAPIKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B697420726573746172747320746865207363656E652074696D6520616674657220616C6C20616E696D6174696F6E7320696E20746865207363656E65206861766520706C617965642E
		#tag Getter
			Get
			  return SceneKitFrameWork.getloops (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setLoops id, value
			End Set
		#tag EndSetter
		Loops As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363656E6520697320706C6179696E672E2049662046616C736520287468652064656661756C74292C205363656E654B697420646F6573206E6F7420696E6372656D656E7420746865207363656E652074696D652C20736F20616E696D6174696F6E73206173736F636961746564207769746820746865207363656E6520646F206E6F7420706C61792E20
		#tag Getter
			Get
			  return SceneKitFrameWork.getPlaying (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setPlaying id, value
			End Set
		#tag EndSetter
		Playing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F64652066726F6D20776869636820746865207363656E65E280997320636F6E74656E7473206172652076696577656420666F722072656E646572696E672E20557375616C6C7920612053434E43616D657261206F722053434E4C696768742D53706F746C696768742E
		#tag Getter
			Get
			  return AppleSCNNode.MakeFromPtr (SceneKitFrameWork.getpointOfView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setPointOfView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		PointOfView As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E696D6174696F6E206672616D6520726174652074686174207468652076696577207573657320746F2072656E64657220697473207363656E652E205363656E654B69742063686F6F73657320616E2061637475616C206672616D652072617465207468617420697320617320636C6F736520617320706F737369626C6520746F20796F757220707265666572726564206672616D652072617465206261736564206F6E20746865206361706162696C6974696573206F66207468652073637265656E20746865207669657720697320646973706C61796564206F6E2E2044656661756C742036302E
		#tag Getter
			Get
			  Declare function preferredFramesPerSecond lib SceneKitLib selector "preferredFramesPerSecond" (id as ptr) as Integer
			  return preferredFramesPerSecond (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPreferredFramesPerSecond lib SceneKitLib selector "setPreferredFramesPerSecond:" (id as ptr, value as Integer)
			  setPreferredFramesPerSecond id, value
			End Set
		#tag EndSetter
		PreferredFramesPerSecond As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520677261706869637320746563686E6F6C6F6779205363656E654B6974207573657320746F2072656E64657220746865207363656E652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector (classptr, "renderingAPI") then
			    return SceneKitFrameWork.getrenderingAPI(id)
			  end if
			End Get
		#tag EndGetter
		RenderingAPI As SceneKitFrameWork.SCNRenderingAPI
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363656E6520746F20626520646973706C6179656420696E2074686520766965772E
		#tag Getter
			Get
			  return AppleSCNScene.MakeFromPtr (SceneKitFrameWork.getscene(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setScene id, if (value = nil, nil, value.id)
			  if value <> nil then
			    value.PhysicsWorld.ContactDelegate = self
			  end if
			End Set
		#tag EndSetter
		Scene As AppleSCNScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return SceneKitFrameWork.getsceneTime (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setSceneTime id, value
			End Set
		#tag EndSetter
		SceneTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B697420646973706C6179732072656E646572696E6720706572666F726D616E6365207374617469737469637320696E20616E206163636573736F727920766965772E
		#tag Getter
			Get
			  return SceneKitFrameWork.getshowsStatistics (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setShowsStatistics id, value
			End Set
		#tag EndSetter
		ShowsStatistics As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kdidApplyAnimationsAtTime, Type = Text, Dynamic = False, Default = \"didApplyAnimationsAtTime", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDidRenderScene, Type = Text, Dynamic = False, Default = \"DidRenderScene", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDidSimulatePhysics, Type = Text, Dynamic = False, Default = \"DidSimulatePhysics", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRenderScene, Type = Text, Dynamic = False, Default = \"RenderScene", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kUpdateAtTime, Type = Text, Dynamic = False, Default = \"UpdateAtTime", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWillRenderScene, Type = Text, Dynamic = False, Default = \"WillRenderScene", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AbortObjectPreparation"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsCameraControl"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimationsTime"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AntialiasingMode"
			Group="Behavior"
			Type="SCNAntialiasingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Multi2X"
				"2 - Multi4X"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoenablesDefaultLighting"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlsCount"
			Group="Behavior"
			Type="Integer"
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
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="JitteringEnabled"
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
			Name="Loops"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhysicsTime"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Playing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredFramesPerSecond"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingAPI"
			Group="Behavior"
			Type="SceneKitFrameWork.SCNRenderingAPI"
			EditorType="Enum"
			#tag EnumValues
				"0 - Metal"
				"1 - OpenGLES2"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderSceneTime"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderTime"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RestorationIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SceneTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsStatistics"
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
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UpdateTime"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
