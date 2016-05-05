#tag Class
Protected Class AppleSKView
Inherits AppleView
	#tag Method, Flags = &h0
		 Shared Function ClassAvailable() As Boolean
		  static isenabled as Boolean
		  if not isenabled then
		    dim result as ptr =  FoundationFramework.NSClassFromString ("SKView")
		    if result = nil then
		      call AppleLibSystem.LoadFramework ("SpriteKit") // If something goes wrong, we have an expection here.
		    end if
		    isenabled = true
		  end if
		  return isenabled
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame as FoundationFramework.NSRect)
		  Super.Constructor (DoInitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointFromScene(aPoint as FoundationFramework.NSPoint, asCene as AppleSKScene) As FoundationFramework.NSPoint
		  #if Target64Bit
		    declare Function convertPointfromScene lib spritekit selector "convertPoint:fromScene:" (id as ptr, aPoint as FoundationFramework.NSPoint, aview as ptr) as FoundationFramework.NSPoint
		    return convertPointfromScene (id, apoint, ascene.id)
		  #elseif Target32Bit
		    declare Function convertPointfromScene lib spritekit selector "convertPoint:fromScene:" (id as ptr, aPoint as FoundationFramework.NSPoint32Bit, aview as ptr) as FoundationFramework.NSPoint32Bit
		    return convertPointfromScene (id, apoint.toNSPoint32, ascene.id).toNSPoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToScene(aPoint as FoundationFramework.NSPoint, aScene as AppleSKScene) As FoundationFramework.NSPoint
		  #if Target64Bit
		    declare Function convertPointtoScene lib spritekit selector "convertPoint:toScene:" (id as ptr, aPoint as FoundationFramework.NSPoint, aview as ptr) as FoundationFramework.NSPoint
		    return convertPointtoScene (id, apoint, ascene.id)
		  #elseif Target32Bit
		    declare Function convertPointtoScene lib spritekit selector "convertPoint:toScene:" (id as ptr, aPoint as FoundationFramework.NSPoint32Bit, aview as ptr) as FoundationFramework.NSPoint32Bit
		    return convertPointtoScene (id, apoint.toNSPoint32, ascene.id).toNSPoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidApplyConstraints(scene as ptr)
		  if ParentControl <> nil then
		    ParentControl.informonDidApplyConstraints (scene)
		  else
		    RaiseEvent DidApplyConstraints(appleskscene.makefromptr (scene))
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidBeginContact(scene as ptr, Contact as Ptr)
		  if ParentControl <> nil then
		    ParentControl.informonDidBeginContact (scene, contact)
		  else
		    RaiseEvent DidBeginContact (appleskscene.makefromptr(scene), new AppleSKPhysicsContact (contact))
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidChangeSize(scene as ptr, OldSize as FoundationFramework.NSSize)
		  if ParentControl <> nil then
		    ParentControl.informonDidChangeSize (scene, oldsize)
		  else
		    RaiseEvent DidChangeSize (appleskscene.makefromptr (scene),oldsize)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEndContact(scene as ptr, Contact as Ptr)
		  if ParentControl <> nil then
		    ParentControl.informonDidEndContact (scene, contact)
		  else
		    RaiseEvent DidEndContact (appleskscene.makefromptr(scene), new AppleSKPhysicsContact (contact))
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEvaluteActions(scene as ptr)
		  if ParentControl <> nil then
		    ParentControl.informonDidEvaluteActions (scene)
		  else
		    RaiseEvent DidEvaluateActions(appleskscene.makefromptr (scene))
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidFinishUpdate(scene as ptr)
		  if ParentControl <> nil then
		    ParentControl.informonDidFinishUpdate (scene)
		  else
		    RaiseEvent DidFinishUpdate (appleskscene.makefromptr (scene))
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidMoveToView(scene as Ptr)
		  if ParentControl <> nil then
		    ParentControl.informondidMoveToView (scene)
		  else
		    RaiseEvent didMoveToView (appleskscene.makefromptr( scene))
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidSimulatePhysics(scene as ptr)
		  if ParentControl <> nil then
		    ParentControl.informonDidSimulatePhysics (scene)
		  else
		    RaiseEvent DidSimulatePhysics (appleskscene.makefromptr(scene))
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnSceneUpdate(scene as ptr, CurrentTime as double)
		  if ParentControl <> nil then
		    ParentControl.InformOnSceneUpdate (scene, currenttime)
		  else
		    RaiseEvent UpdateForScene (appleskscene.makefromptr(scene), currenttime)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveFromView(scene as ptr)
		  if ParentControl <> nil then
		    ParentControl.informonwillMoveFromView (scene)
		  else
		    RaiseEvent SceneWillMoveFromView (appleskscene.makefromptr(scene))
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKView
		  Return if (aptr = NIL, NIL, new AppleSKView (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden )  Function ParentControl() As ioslibskview
		  dim  wr as weakref = XojoControls.Lookup (id, nil)  
		  return if (wr = nil, nil,  ioslibskview(wr.Value))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentScene(aScene as AppleSKScene)
		  Declare Sub presentScene lib SpriteKit selector "presentScene:" (id as ptr, aScene as ptr)
		  presentScene id, aScene.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentScene(aScene as AppleSKScene, Transition as AppleSKTransition)
		  Declare Sub presentScenetransition lib SpriteKit selector "presentScene:transition:" (id as ptr, aScene as ptr, transition as ptr)
		  presentScenetransition id, aScene.id, Transition.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextureFromNode(aNode as AppleSKNode) As AppleSKTexture
		  declare Function textureFromNode lib spritekit selector "textureFromNode:" (id as ptr, aNode as Ptr) as Ptr
		  return AppleSKTexture.MakefromPtr (textureFromNode (id, anode.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextureFromNode(aNode as AppleSKNode, crop as FoundationFramework.NSRect) As AppleSKTexture
		  #if Target64Bit
		    declare Function textureFromNodeCrop lib spritekit selector "textureFromNode:crop:" (id as ptr, aNode as Ptr, crop  as FoundationFramework.NSRect) as Ptr
		    return AppleSKTexture.MakefromPtr (textureFromNodeCrop (id, anode.id, crop))
		  #elseif Target32Bit
		    declare Function textureFromNodeCrop lib spritekit selector "textureFromNode:crop:" (id as ptr, aNode as Ptr, crop as FoundationFramework.NSRect32Bit) as Ptr
		    return AppleSKTexture.MakefromPtr( textureFromNodeCrop (id, anode.id, crop.toNSRect32))
		  #endif
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DidApplyConstraints(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidBeginContact(Scene as appleSKScene, Contact as appleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidChangeSize(Scene as AppleSKScene, OldSize As FoundationFramework.NSSize)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEndContact(Scene as AppleSKScene, Contact as AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEvaluateActions(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidFinishUpdate(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToView(scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidSimulatePhysics(scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SceneWillMoveFromView(scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UpdateForScene(Scene as AppleSKScene, CurrentTime as Double)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function allowsTransparency lib SpriteKit selector "allowsTransparency" (id as ptr) as Boolean
			  Return allowsTransparency (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAllowsTransparency lib SpriteKit selector "setAllowsTransparency:" (id as ptr, value as boolean)
			  setAllowsTransparency id, value
			End Set
		#tag EndSetter
		AllowsTransparency As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function asynchronous lib SpriteKit selector "isAsynchronous" (id as ptr) as Boolean
			  return  asynchronous (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAsynchronous lib SpriteKit selector "setAsynchronous:" (id as ptr, value as Boolean)
			  setAsynchronous id, value
			End Set
		#tag EndSetter
		Asynchronous As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if AppleSKView.ClassAvailable then
			    if targetID = Nil then
			      dim methods() as TargetClassMethodHelper
			      //override UIView methods
			      //override UIView methods
			      methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			      methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			      methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			      methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			      methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			      // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			      methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			      // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerclass, "@@:", true, true)
			      // methods.Append new TargetClassMethodHelper("tintColorDidChange", AddressOf impl_tintColorDidChange, "v@:")
			      
			      // #if Target64Bit
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			      // #elseif Target32Bit
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			      // #endif
			      
			      //TraitEnvironment Protocol
			      methods.Append new TargetClassMethodHelper("traitCollectionDidChange:", AddressOf impl_traitCollectionDidChange, "v@:@")
			      
			      
			      //Add UIResponder methods too
			      methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			      
			      methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			      methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			      methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			      
			      methods.Append new TargetClassMethodHelper("touchesEstimatedPropertiesUpdated:", AddressOf impl_touchesEstimatedPropertiesUpdated, "v@:@")
			      methods.Append new TargetClassMethodHelper("remoteControlReceivedWithEvent:", AddressOf impl_remoteControlReceivedWithEvent, "v@:@")
			      
			      if ApplePress.ClassAvailable then
			        methods.Append new TargetClassMethodHelper("pressesBegan:withEvent:", AddressOf impl_pressesBeganWithEvent, "v@:@@")
			        methods.Append new TargetClassMethodHelper("pressesCancelled:withEvent:", AddressOf impl_pressesCancelledWithEvent, "v@:@@")
			        methods.Append new TargetClassMethodHelper("pressesChanged:withEvent:", AddressOf impl_pressesChangedWithEvent, "v@:@@")
			        methods.Append new TargetClassMethodHelper("pressesEnded:withEvent:", AddressOf impl_pressesEndedWithEvent, "v@:@@")
			      end if
			      
			      
			      
			      targetID = BuildTargetClass ("SKView", "iOSLibSKView",methods)
			    end if
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function frameInterval lib SpriteKit selector "frameInterval" (id as ptr) as Integer
			  Return frameInterval (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setFrameInterval lib SpriteKit selector "setFrameInterval:" (id as ptr, value as Integer)
			  setFrameInterval id, value
			End Set
		#tag EndSetter
		FrameInterval As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function ignoresSiblingOrder lib SpriteKit selector "ignoresSiblingOrder" (id as ptr) as Boolean
			  Return ignoresSiblingOrder (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setIgnoresSiblingOrder lib SpriteKit selector "setIgnoresSiblingOrder:" (id as ptr, value as Boolean)
			  setIgnoresSiblingOrder id, value
			End Set
		#tag EndSetter
		IgnoresSiblingOrder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function isPaused lib SpriteKit selector "isPaused" (id as ptr) as Boolean
			  Return isPaused (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPaused lib SpriteKit selector "setPaused:" (id as ptr, value as Boolean)
			  setPaused id, value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scene lib SpriteKit selector "scene" (id as ptr) as ptr
			  Return AppleSKScene.MakeFromPtr (scene(id))
			End Get
		#tag EndGetter
		Scene As AppleSKScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function shouldCullNonVisibleNodes lib SpriteKit selector "shouldCullNonVisibleNodes" (id as ptr) as Boolean
			  return  shouldCullNonVisibleNodes (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setShouldCullNonVisibleNodes lib SpriteKit selector "setShouldCullNonVisibleNodes:" (id as ptr, value as Boolean)
			  setShouldCullNonVisibleNodes id, value
			End Set
		#tag EndSetter
		ShouldCullNonVisibleNodes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsDrawCount lib SpriteKit selector "showsDrawCount" (id as ptr) as Boolean
			  Return showsDrawCount (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsDrawCount lib SpriteKit selector "setShowsDrawCount:" (id as ptr, value as Boolean)
			  setShowsDrawCount id, value
			End Set
		#tag EndSetter
		ShowsDrawCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsFields lib SpriteKit selector "showsFields" (id as ptr) as Boolean
			  Return showsFields (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsFields lib SpriteKit selector "setShowsFields:" (id as ptr, value as Boolean)
			  setShowsFields id, value
			End Set
		#tag EndSetter
		ShowsFields As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsFPS lib SpriteKit selector "showsFPS" (id as ptr) as Boolean
			  Return showsFPS (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsFPS lib SpriteKit selector "setShowsFPS:" (id as ptr, value as Boolean)
			  setShowsFPS id, value
			End Set
		#tag EndSetter
		ShowsFPS As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsNodeCount lib SpriteKit selector "showsNodeCount" (id as ptr) as Boolean
			  Return showsNodeCount (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsNodeCount lib SpriteKit selector "setShowsNodeCount:" (id as ptr, value as Boolean)
			  setShowsNodeCount id, value
			End Set
		#tag EndSetter
		ShowsNodeCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsPhysics lib SpriteKit selector "showsPhysics" (id as ptr) as Boolean
			  Return showsPhysics (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsPhysics lib SpriteKit selector "setShowsPhysics:" (id as ptr, value as Boolean)
			  setShowsPhysics id, value
			End Set
		#tag EndSetter
		ShowsPhysics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsQuadCount lib SpriteKit selector "showsQuadCount" (id as ptr) as Boolean
			  Return showsQuadCount (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsQuadCount lib SpriteKit selector "setShowsQuadCount:" (id as ptr, value as Boolean)
			  setShowsQuadCount id, value
			End Set
		#tag EndSetter
		ShowsQuadCount As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsTransparency"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Asynchronous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameInterval"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresSiblingOrder"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldCullNonVisibleNodes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsDrawCount"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsFields"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsFPS"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsNodeCount"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsPhysics"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsQuadCount"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
