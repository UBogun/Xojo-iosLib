#tag Class
Protected Class AppleSCNView
Inherits AppleView
	#tag Method, Flags = &h21
		Private Sub CompletionHandlerTemplate(success As Boolean)
		  dim myarray as new AppleMutableArray(2)
		  myarray.AddText SceneKitFrameWork.kBlockPreparationEnded
		  myarray.Addobject new applenumber(success)
		  NotifyObservers (myarray)
		  RaiseEvent BlocksPreparationEnded (success)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare function initWithFrameOptions lib SceneKitLib selector "initWithFrame:options:" (id as ptr, frame  as FoundationFramework.NSRect, options as ptr) as ptr
		    super.Constructor ( initWithFrameOptions (alloc(ClassPtr), aframe, NIL))
		  #elseif Target32Bit
		    Declare function initWithFrameOptions lib SceneKitLib selector "initWithFrame:options:" (id as ptr, frame as FoundationFramework.NSRect32Bit, options as ptr) as ptr
		    super.Constructor ( initWithFrameOptions (alloc(ClassPtr), aframe.toNSRect32, NIL))
		  #endif
		  // dim emptyDict as new AppleDictionary
		  // optional parameters should follow to build a dict on Metal options for full iOS 9 compatibility
		  
		  mHasOwnership = true
		  
		  setDelegate id, id
		  
		  if NotificationDict = nil then NotificationDict = new Dictionary
		  dim d as new dictionary // This is the subdictionary for notification parameters
		  NotificationDict.value(id) = d // Attach it so we can use it without check in the impl_ methods
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver)
		  Constructor (aFrame)
		  RegisterObserver (observer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership then NotificationDict.Remove id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardAnimationsAtTime(instanceID as ptr)
		  // This distribute the events
		  // system.DebugLog Integer(instanceID).ToText
		  dim ego as new AppleSCNView (instanceID)
		  ego.processAnimationsAtTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardDidRenderSceneAtTime(instanceID as ptr)
		  // This distribute the events
		  // system.DebugLog Integer(instanceID).ToText
		  dim ego as new AppleSCNView (instanceID)
		  ego.processDidRenderSceneAtTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardPhysicsAtTime(instanceID as ptr)
		  // This distribute the events
		  // system.DebugLog Integer(instanceID).ToText
		  dim ego as new AppleSCNView (instanceID)
		  ego.processPhysicsAtTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardUpdateAtTime(instanceID as ptr)
		  // This distribute the events
		  // system.DebugLog Integer(instanceID).ToText
		  dim ego as new AppleSCNView (instanceID)
		  ego.processUpdateAtTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ForwardWillRenderSceneAtTime(instanceID as ptr)
		  // This distribute the events
		  // system.DebugLog Integer(instanceID).ToText
		  dim ego as new AppleSCNView (instanceID)
		  ego.processWillRenderSceneAtTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HitTest(aPoint as FoundationFramework.NSPoint, optional options as AppleDictionary) As AppleArray
		  #if Target64Bit
		    Declare function hitTest lib SceneKitLib selector "hitTest:options:" (id as Ptr, aPoint as FoundationFramework.NSPoint, options as ptr) as ptr
		    return AppleArray.MakeFromPtr (hitTest(id, aPoint, if (options = nil, nil, options.id)))
		  #elseif Target32Bit
		    Declare function hitTest lib SceneKitLib selector "hitTest:options:" (id as Ptr, aPoint as FoundationFramework.NSPoint32Bit, options as ptr) as ptr
		    return AppleArray.MakeFromPtr (hitTest(id, aPoint.toNSPoint32, if (options = nil, nil, options.id)))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererdidApplyAnimationsAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  
		  
		  if NotificationDict.HasKey(pid) then
		    dim d as dictionary = NotificationDict.value (pid)
		    d.Value (kdidApplyAnimationsAtTime) = attime // left side is the constant, right side the value
		    Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		    (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		    performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkAnimationsAtTime:"), pid, false // and have the change checked
		  end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererDidRenderSceneAtTime(pid as ptr, sel as ptr, renderer as ptr, scene as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  
		  if NotificationDict.HasKey(pid) then
		    dim d as dictionary = NotificationDict.value (pid)
		    d.Value (kDidRenderScene) = attime // left side is the constant, right side the value
		    d.Value (kRenderScene) = scene
		    Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		    (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		    performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkDidRenderSceneAtTime:"), pid, false // and have the change checked
		  end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererdidSimulatePhysicsAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  
		  if NotificationDict.HasKey(pid) then
		    dim d as dictionary = NotificationDict.value (pid)
		    d.Value (kDidSimulatePhysics) = attime // left side is the constant, right side the value
		    Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		    (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		    performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkPhysicsAtTime:"), pid, false // and have the change checked
		  end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererUpdateAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  
		  
		  if NotificationDict.HasKey(pid) then
		    dim d as dictionary = NotificationDict.value (pid)
		    d.Value (kUpdateAtTime) = attime // left side is the constant, right side the value
		    Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		    (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		    performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkupdateAtTime:"), pid, false // and have the change checked
		  end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererwillRenderSceneAtTime(pid as ptr, sel as ptr, renderer as ptr, scene as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  
		  if NotificationDict.HasKey(pid) then
		    dim d as dictionary = NotificationDict.value (pid)
		    d.Value (kWillRenderScene) = attime // left side is the constant, right side the value
		    d.Value (kRenderScene) = scene
		    Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		    (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		    performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkWillRenderSceneAtTime:"), pid, false // and have the change checked
		  end if
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNodeInsideFrustrum(aNode As AppleSCNNode, pointofView as AppleSCNNode) As Boolean
		  Declare function isNodeInsideFrustum lib SceneKitLib selector "isNodeInsideFrustum:withPointOfView:" (id as Ptr, aNode as ptr, pointofView as ptr) as boolean
		  return isNodeInsideFrustum (id, aNode.id, pointofView.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NodesInsideFrustrum(PointofView as AppleSCNNode) As AppleArray
		  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString ("nodesInsideFrustumWithPointOfView:")) then
		    
		    Declare function nodesInsideFrustumWithPointOfView lib SceneKitLib selector "nodesInsideFrustumWithPointOfView:" (id as Ptr,  pointofView as ptr) as Ptr
		    return AppleArray.MakeFromPtr (nodesInsideFrustumWithPointOfView (id,  pointofView.id))
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(EventProperties As AppleArray)
		  // Part of the AppleNSEventForwarder interface.
		  if Observers.HasKey (id)  then
		    dim wr as weakref = Observers.Value (id)
		    if wr <> NIL then
		      dim myControl as  AppleSceneViewer = AppleSceneViewer(wr.Value)
		      myControl.ReceivedEvent EventProperties
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pause()
		  Declare sub pause lib SceneKitLib selector "pause:" (id as Ptr, sender as ptr)
		  pause id, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Play()
		  Declare sub play lib SceneKitLib selector "play:" (id as Ptr, sender as ptr)
		  play id, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepareObject(anObject As AppleSCNObject, optional block as iOSBlock)
		  Declare sub prepareObject lib SceneKitLib selector "prepareObject:shouldAbortBlock:" (id as Ptr, anObject as ptr, block as ptr)
		  prepareObject id, anObject.id, if (block = nil, Nil, block.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepareObjects(Objects As AppleArray, optional block as iOSBlock)
		  Declare sub prepareObjects lib SceneKitLib selector "prepareObjects:withCompletionHandler:" (id as Ptr, Objects as ptr, block as ptr)
		  prepareObjects id, Objects.id, if (block = nil, Nil, block.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepareObjects(paramarray Objects() As AppleSCNObject)
		  dim myArray as AppleMutableArray = AppleMutableArray.fromAppleObjects (objects)
		  dim myblock as new iOSBlock (AddressOf CompletionHandlerTemplate)
		  PrepareObjects myArray, myblock
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub processAnimationsAtTime()
		  dim result as Dictionary = NotificationDict.Value (id)
		  dim time as double
		  dim myArray as new AppleMutableArray(2)
		  time = result.Value (kdidApplyAnimationsAtTime)
		  RaiseEvent DidAnimate (time)
		  myArray.addtext kdidApplyAnimationsAtTime
		  myArray.Addobject new AppleNumber (time)
		  NotifyObservers (myArray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub processDidRenderSceneAtTime()
		  dim result as Dictionary = NotificationDict.Value (id)
		  
		  dim myArray as new AppleMutableArray(3)
		  dim time as double = result.Value (kDidRenderScene)
		  dim scene as AppleSCNScene = AppleSCNScene.MakefromPtr (result.value(kRenderScene))
		  RaiseEvent DidRenderScene (scene, time)
		  myArray.addtext kDidRenderScene
		  myArray.Addobject scene
		  myArray.Addobject new AppleNumber (time)
		  NotifyObservers (myArray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub processPhysicsAtTime()
		  dim result as Dictionary = NotificationDict.Value (id)
		  dim time as double
		  dim myArray as new AppleMutableArray(2)
		  time = result.Value (kDidSimulatePhysics)
		  RaiseEvent DidSimulatePhysics (time)
		  myArray.addtext kDidSimulatePhysics
		  myArray.Addobject new AppleNumber (time)
		  NotifyObservers (myArray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessUpdateAtTime()
		  dim result as Dictionary = NotificationDict.Value (id)
		  dim time as double
		  dim myArray as new AppleMutableArray(2)
		  time = result.Value (kUpdateAtTime)
		  RaiseEvent WillUpdate (time)
		  myArray.addtext kUpdateAtTime
		  myArray.Addobject new AppleNumber (time)
		  NotifyObservers (myArray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub processWillRenderSceneAtTime()
		  dim result as Dictionary = NotificationDict.Value (id)
		  
		  dim myArray as new AppleMutableArray(3)
		  dim time as double = result.Value (kWillRenderScene)
		  dim scene as AppleSCNScene = AppleSCNScene.MakefromPtr (result.value(kRenderScene))
		  RaiseEvent WillRenderScene (scene, time)
		  myArray.addtext kWillRenderScene
		  myArray.Addobject scene
		  myArray.Addobject new AppleNumber (time)
		  NotifyObservers (myArray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProjectPoint(aPoint as SCNVector3) As SCNVector3
		  #if Target64Bit
		    Declare function projectPoint lib SceneKitLib selector "projectPoint:" (id as Ptr, aPoint as SCNVector3) as SCNVector3
		    return projectPoint (id, aPoint)
		  #elseif Target32Bit
		    Declare function projectPoint lib SceneKitLib selector "projectPoint:" (id as Ptr, aPoint as SCNVector3_32Bit) as SCNVector3_32Bit
		    return projectPoint(id, aPoint.toVector3_32).tovector3
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Snapshot() As AppleImage
		  Declare function snapshot lib SceneKitLib selector "snapshot" (id as Ptr) as ptr
		  return AppleImage.MakeFromPtr (snapshot(id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  Declare sub stop lib SceneKitLib selector "stop:" (id as Ptr, sender as ptr)
		  stop id, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnprojectPoint(aPoint as SCNVector3) As SCNVector3
		  #if Target64Bit
		    Declare function unprojectPoint lib SceneKitLib selector "unprojectPoint:" (id as Ptr, aPoint as SCNVector3) as SCNVector3
		    return unprojectPoint (id, aPoint)
		  #elseif Target32Bit
		    Declare function unprojectPoint lib SceneKitLib selector "unprojectPoint:" (id as Ptr, aPoint as SCNVector3_32Bit) as SCNVector3_32Bit
		    return unprojectPoint(id, aPoint.toVector3_32).tovector3
		  #endif
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BlocksPreparationEnded(success As Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidAnimate(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidRenderScene(Scene As AppleSCNScene, Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidSimulatePhysics(Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillRenderScene(Scene As AppleSCNScene, Time As Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillUpdate(Time As Double)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
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

	#tag ComputedProperty, Flags = &h0
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function autoenablesDefaultLighting lib SceneKitLib selector "autoenablesDefaultLighting" (id as ptr) as Boolean
			  return autoenablesDefaultLighting (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAutoenablesDefaultLighting lib SceneKitLib selector "setAutoenablesDefaultLighting:" (id as ptr, value as Boolean)
			  setAutoenablesDefaultLighting id, value
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
			    // These are the delegate methods
			    methods.Append new TargetClassMethodHelper("renderer:updateAtTime:", AddressOf impl_rendererUpdateAtTime, "v@:@d")
			    // methods.Append new TargetClassMethodHelper("renderer:didApplyAnimationsAtTime:", AddressOf impl_rendererdidApplyAnimationsAtTime, "v@:@d")
			    // methods.Append new TargetClassMethodHelper("renderer:didSimulatePhysicsAtTime:", AddressOf impl_rendererdidSimulatePhysicsAtTime, "v@:@d")
			    // methods.Append new TargetClassMethodHelper("renderer:willRenderScene:atTime:", AddressOf impl_rendererwillRenderSceneAtTime, "v@:@@d")
			    // methods.Append new TargetClassMethodHelper("renderer:didRenderScene:atTime:", AddressOf impl_rendererDidRenderSceneAtTime, "v@:@@d")
			    
			    // and these are the forwarders, both in the same order
			    methods.Append new TargetClassMethodHelper("checkupdateAtTime:", AddressOf ForwardUpdateAtTime, "v@:@")
			    // methods.Append new TargetClassMethodHelper("checkAnimationsAtTime:", AddressOf ForwardAnimationsAtTime, "v@:@")
			    // methods.Append new TargetClassMethodHelper("checkPhysicsAtTime:", AddressOf ForwardPhysicsAtTime, "v@:@")
			    // methods.Append new TargetClassMethodHelper("checkWillRenderSceneAtTime:", AddressOf ForwardWillRenderSceneAtTime, "v@:@")
			    // methods.Append new TargetClassMethodHelper("checkDidRenderSceneAtTime:", AddressOf ForwardDidRenderSceneAtTime, "v@:@")
			    
			    mClassPtr = BuildTargetClass("SCNView","iOSLibSCNView",methods)
			  end if
			  return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function context lib SceneKitLib selector "context" (id as ptr) as ptr
			  return AppleEAGLContext.MakefromPtr (context (id))
			End Get
		#tag EndGetter
		Context As AppleEAGLContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isJitteringEnabled lib SceneKitLib selector "isJitteringEnabled" (id as ptr) as Boolean
			  return isJitteringEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setJitteringEnabled lib SceneKitLib selector "setJitteringEnabled:" (id as ptr, value as Boolean)
			  setJitteringEnabled id, value
			End Set
		#tag EndSetter
		JitteringEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function loops lib SceneKitLib selector "loops" (id as ptr) as Boolean
			  return loops (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLoops lib SceneKitLib selector "setLoops:" (id as ptr, value as Boolean)
			  setLoops id, value
			End Set
		#tag EndSetter
		Loops As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared NotificationDict As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isPlaying lib SceneKitLib selector "isPlaying" (id as ptr) as Boolean
			  return isPlaying (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPlaying lib SceneKitLib selector "setPlaying:" (id as ptr, value as Boolean)
			  setPlaying id, value
			End Set
		#tag EndSetter
		Playing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function pointOfView lib SceneKitLib selector "pointOfView" (id as ptr) as Ptr
			  return AppleSCNNode.MakeFromPtr (pointOfView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setPointOfView lib SceneKitLib selector "setPointOfView:" (id as ptr, value as Ptr)
			  setPointOfView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		PointOfView As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function scene lib SceneKitLib selector "scene" (id as ptr) as Ptr
			  return AppleSCNScene.MakeFromPtr (scene(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setScene lib SceneKitLib selector "setScene:" (id as ptr, value as Ptr)
			  setScene id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Scene As AppleSCNScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function sceneTime lib SceneKitLib selector "sceneTime" (id as ptr) as Double
			  return sceneTime (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSceneTime lib SceneKitLib selector "setSceneTime:" (id as ptr, value as Double)
			  setSceneTime id, value
			End Set
		#tag EndSetter
		SceneTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function showsStatistics lib SceneKitLib selector "showsStatistics" (id as ptr) as Boolean
			  return showsStatistics (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsStatistics lib SceneKitLib selector "setShowsStatistics:" (id as ptr, value as Boolean)
			  setShowsStatistics id, value
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
			Name="AntialiasingMode"
			Group="Behavior"
			Type="SCNAntialiasingMode"
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
			Type="UIKitFramework.UIDynamicItemCollisionBoundsType"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
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
			Name="HasAmbiguousLayout"
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
			Name="isProxy"
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
