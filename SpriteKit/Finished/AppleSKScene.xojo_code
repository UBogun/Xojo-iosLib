#tag Class
Protected Class AppleSKScene
Inherits AppleSKEffectNode
	#tag Method, Flags = &h0
		Sub AnchorPoint(assigns apoint as point)
		  AnchorPoint = apoint.toNSPoint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgorundColor(assigns aColor as color)
		  BackgroundColor = new AppleColor(aColor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(asize as NSSize)
		  #if Target64bit
		    declare function initWithSize lib SpriteKit selector "initWithSize:" (id as ptr, size as nssize) as ptr
		    super.Constructor(initWithSize(alloc(ClassPtr), asize))
		  #elseif Target32Bit
		    declare function initWithSize lib SpriteKit selector "initWithSize:" (id as ptr, size as NSSize32Bit) as ptr
		    super.Constructor(initWithSize(alloc(ClassPtr), asize.toNSSize32))
		  #endif
		  mHasOwnership = true
		  makeDelegates
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership then
		    me.RemoveAllActions
		    me.RemoveAllChildren
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didApplyConstraintsForScene(pid as ptr, sel as ptr, Scene as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informonDidApplyConstraints
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidBeginContact(pid as ptr, sel as ptr, contact as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informonDidBeginContact (Contact)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidChangeSize32(pid as ptr, sel as ptr, size as NSSize32Bit)
		  dim ego as new AppleSKScene (pid)
		  ego.informondidChangesize (size.tonssize)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidChangeSize64(pid as ptr, sel as ptr, size as nssize)
		  dim ego as new AppleSKScene (pid)
		  ego.informondidChangesize (size)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidEndContact(pid as ptr, sel as ptr, contact as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informonDidEndContact (Contact)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEvaluateActionsForScene(pid as ptr, sel as ptr, Scene as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informonDidEvaluteActions
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didFinishUpdateForScene(pid as ptr, sel as ptr, Scene as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informonDidFinishUpdate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didMoveToView(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informondidMoveToView (view)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didsimulatephysics(pid as ptr, sel as ptr, Scene as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informonDidSimulatePhysics
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_updateforscene(pid as ptr, sel as ptr, CurrentTime as double, Scene as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informonSceneUpdate (CurrentTime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveFromView(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleSKScene (pid)
		  ego.informonwillMoveFromView (view)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidApplyConstraints()
		  RaiseEvent DidApplyConstraints
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidBeginContact(Contact as Ptr)
		  RaiseEvent DidBeginContact (new AppleSKPhysicsContact (contact))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidChangeSize(OldSize as NSSize)
		  RaiseEvent DidChangeSize (oldsize)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEndContact(Contact as Ptr)
		  RaiseEvent DidEndContact (new AppleSKPhysicsContact (contact))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEvaluteActions()
		  RaiseEvent DidEvaluateActions
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidFinishUpdate()
		  RaiseEvent DidFinishUpdate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidMoveToView(view as Ptr)
		  RaiseEvent didMoveToView (AppleSKview.makefromptr( view))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidSimulatePhysics()
		  RaiseEvent DidSimulatePhysics
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnSceneUpdate(CurrentTime as double)
		  RaiseEvent UpdateForScene (currenttime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveFromView(view as Ptr)
		  RaiseEvent WillMoveFromView (AppleSKview.makefromptr( view))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MakeDelegates()
		  // // if Delegate_ = nil then
		  // // dim mydelegate as new AppleSKSceneDelegate (self)
		  Delegate_ = self
		  // end if
		  
		  // if PhysicsWorld.ContactDelegate = NIL then
		  // dim mydelegate as new AppleSKPhysicsContactDelegate (self)
		  PhysicsWorld.ContactDelegate = self
		  // end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKScene
		  Return if (aptr = NIL, NIL, new AppleSKScene (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Size(assigns Asize as size)
		  Size = asize.tonssize
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DidApplyConstraints()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidBeginContact(Contact as AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidChangeSize(OldSize as NSSize)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEndContact(Contact as AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEvaluateActions()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidFinishUpdate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToView(View as AppleSKView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidSimulatePhysics()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UpdateForScene(time as Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillMoveFromView(fromView as AppleSKView)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getAnchorPoint
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAnchorPoint value
			End Set
		#tag EndSetter
		AnchorPoint As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function backgroundcolor lib SpriteKit selector "backgroundColor" (id as ptr) as ptr
			  return new AppleColor (backgroundcolor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setbackgroundcolor lib SpriteKit selector "setBackgroundColor:" (id as ptr, value as ptr)
			  setbackgroundcolor id, value.id
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if AppleSKView.SpriteKitEnabled then
			    if targetID = Nil then
			      dim methods() as TargetClassMethodHelper
			      //delegate methods
			      methods.Append new TargetClassMethodHelper("didBeginContact:", AddressOf impl_DidBeginContact, "v@:@")
			      methods.Append new TargetClassMethodHelper("didEndContact:", AddressOf impl_DidEndContact, "v@:@")
			      
			      methods.Append new TargetClassMethodHelper("update:forScene:", AddressOf impl_updateforscene, "v@:d@")
			      methods.Append new TargetClassMethodHelper("didEvaluateActionsForScene:", AddressOf impl_didEvaluateActionsForScene, "v@:@")
			      methods.Append new TargetClassMethodHelper("didSimulatePhysicsForScene:", AddressOf impl_didsimulatephysics, "v@:@")
			      methods.Append new TargetClassMethodHelper("didApplyConstraintsForScene:", AddressOf impl_didApplyConstraintsForScene, "v@:@")
			      methods.Append new TargetClassMethodHelper("didFinishUpdateForScene:", AddressOf impl_didFinishUpdateForScene, "v@:@")
			      
			      methods.Append new TargetClassMethodHelper("willMoveFromView:", AddressOf impl_willMoveFromView, "v@:@")
			      methods.Append new TargetClassMethodHelper("didMoveToView:", AddressOf impl_didMoveToView, "v@:@")
			      
			      #if Target64Bit
			        methods.Append new TargetClassMethodHelper ("didChangeSize:", AddressOf impl_DidChangeSize64, "v@:{CGSize}")
			      #elseif Target32Bit
			        methods.Append new TargetClassMethodHelper ("didChangeSize:", AddressOf impl_DidChangeSize32, "v@:{CGSize}")
			      #endif
			      targetID = BuildTargetClass ("SKScene", "AppleSKScene",methods)
			    end if
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr (getDelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Protected Delegate_ As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function physicsWorld lib SpriteKit selector "physicsWorld" (id as ptr) as ptr
			  return new AppleSKPhysicsWorld (physicsWorld(id))
			End Get
		#tag EndGetter
		PhysicsWorld As AppleSKPhysicsWorld
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function ScaleMode lib SpriteKit selector "scaleMode" (id as ptr) as SKSceneScaleMode
			  return ScaleMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setScaleMode lib SpriteKit selector "setScaleMode:" (id as ptr, value as SKSceneScaleMode)
			  setScaleMode id, value
			End Set
		#tag EndSetter
		ScaleMode As SKSceneScaleMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getSize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsize value
			End Set
		#tag EndSetter
		Size As NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function view lib SpriteKit selector "view" (id as ptr) as ptr
			  return AppleSKView.MakeFromPtr (view(id))
			End Get
		#tag EndGetter
		View As AppleSKView
	#tag EndComputedProperty


	#tag Enum, Name = SKSceneScaleMode, Type = Integer, Flags = &h0
		FillUnproportional
		  FillProportional
		  FitProportional
		ResizeScene
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="SKBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - MultiplyX2"
				"5 - Screen"
				"6 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CenterFilter"
			Group="Behavior"
			Type="Boolean"
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
			Name="EnableEffects"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rasterize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScaleMode"
			Group="Behavior"
			Type="SKSceneScaleMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - FillUnproportional"
				"1 - FillProportional"
				"2 - FitProportional"
				"3 - ResizeScene"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
