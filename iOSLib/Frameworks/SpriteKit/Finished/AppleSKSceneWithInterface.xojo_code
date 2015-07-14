#tag Class
Protected Class AppleSKSceneWithInterface
Inherits AppleSKScene
Implements AppleNSEventForwarder
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(observer As AppleSKViewer)
		  Constructor (observer.View.Frame.Size_, observer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor(asize as NSSize)
		  #pragma unused asize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(asize as NSSize, observer As AppleNSEventReceiver)
		  RegisterObserver observer
		  
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
		Function ConvertPointFromView(aPoint as NSPoint, aView as AppleView) As NSPoint
		  #if Target64Bit
		    declare Function convertPointfromView lib spritekit selector "convertPoint:fromView:" (id as ptr, aPoint as NSPoint, aview as ptr) as NSPoint
		    return convertPointfromView (id, apoint, aview.id)
		  #elseif Target32Bit
		    declare Function convertPointfromView lib spritekit selector "convertPoint:fromView:" (id as ptr, aPoint as NSPoint32Bit, aview as ptr) as NSPoint32Bit
		    return convertPointfromView (id, apoint.toNSPoint32, aview.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToView(aPoint as NSPoint, aView as AppleView) As NSPoint
		  #if Target64Bit
		    declare Function convertPointtoView lib spritekit selector "convertPoint:toView:" (id as ptr, aPoint as NSPoint, aview as ptr) as NSPoint
		    return convertPointtoView (id, apoint, aview.id)
		  #elseif Target32Bit
		    declare Function convertPointtoView lib spritekit selector "convertPoint:toView:" (id as ptr, aPoint as NSPoint32Bit, aview as ptr) as NSPoint32Bit
		    return convertPointtoView (id, apoint.toNSPoint32, aview.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership then
		    // PhysicsWorld.ContactDelegate = nil
		    Delegate_ = nil
		    RemoveObserver
		    if RetainDict.HasKey (id) then RetainDict.Remove (id)
		    system.DebugLog "Cleaned Delegate"
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetView(PId as Ptr) As AppleSKViewer
		  if Receivers <> nil then
		    if Receivers.HasKey (pid) then
		      dim WR as WeakRef = Receivers.Value(pid)
		      if wr.Value <> nil then return AppleSKViewer(wr.Value)
		    end if
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didApplyConstraintsForScene(pid as ptr, sel as ptr, Scene as Ptr)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then getview(pid).informonDidApplyConstraints
		  end if
		  #pragma unused sel
		  #Pragma Unused Scene
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidBeginContact(pid as ptr, sel as ptr, contact as Ptr)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then getview(pid).informonDidBeginContact  (Contact)
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidChangeSize32(pid as ptr, sel as ptr, size as NSSize32Bit)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then  getview(pid).informondidChangesize (size.tonssize)
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidChangeSize64(pid as ptr, sel as ptr, size as nssize)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then getview(pid).informondidChangesize (size)
		  end if
		  
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidEndContact(pid as ptr, sel as ptr, contact as Ptr)
		  if RetainDict.HasKey (pid) then
		    if GetView(pid) <> nil then
		      getview(pid).informonDidEndContact (Contact)
		    end if
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didEvaluateActionsForScene(pid as ptr, sel as ptr, Scene as Ptr)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then  getview(pid).informonDidEvaluteActions
		  end if
		  #pragma unused sel
		  #Pragma Unused Scene
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didFinishUpdateForScene(pid as ptr, sel as ptr, Scene as Ptr)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then getview(pid).informonDidFinishUpdate
		  end if
		  #pragma unused sel
		  #Pragma Unused Scene
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didMoveToView(pid as ptr, sel as ptr, view as Ptr)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then
		      getview(pid).informondidMoveToView (view)
		    end if
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_didsimulatephysics(pid as ptr, sel as ptr, Scene as Ptr)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then getview(pid).informonDidSimulatePhysics
		  end if
		  
		  #pragma unused sel
		  #Pragma Unused Scene
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_updateforscene(pid as ptr, sel as ptr, CurrentTime as double, Scene as Ptr)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then getview(pid).informonSceneUpdate (CurrentTime)
		  end if
		  #pragma unused sel
		  #Pragma Unused Scene
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveFromView(pid as ptr, sel as ptr, view as Ptr)
		  if GetView(pid) <> nil then
		    if RetainDict.HasKey (pid) then getview(pid).informonwillMoveFromView (view)
		  end if
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MakeDelegates()
		  if RetainDict = nil then RetainDict = new Dictionary
		  RetainDict.Value(id) = id
		  
		  
		  if Delegate_ = nil then
		    Delegate_ = self
		  end if
		  
		  if PhysicsWorld.ContactDelegate = NIL then
		    PhysicsWorld.ContactDelegate = self
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSKSceneWithInterface
		  return if (aptr = nil, nil, new AppleSKSceneWithInterface (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(EventProperties As AppleArray)
		  // Part of the AppleNSEventForwarder interface.
		  
		  dim observer as AppleNSEventReceiver = Receivers.Value(id)
		  observer.ReceivedEvent (EventProperties)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As AppleNSEventReceiver)
		  // Part of the AppleNSEventForwarder interface.
		  if Receivers = nil then Receivers = new Dictionary
		  
		  Receivers.Value(id) = weakref.Create (observer)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver()
		  // Part of the AppleNSEventForwarder interface.
		  if Receivers <> nil Then
		    if Receivers.HasKey (id) then Receivers.Remove (id)
		  end if
		  
		  
		End Sub
	#tag EndMethod


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
			      targetID = BuildTargetClass ("SKScene", "AppleSKViewScene",methods)
			    end if
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared Receivers As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared RetainDict As Dictionary
	#tag EndProperty


	#tag Constant, Name = DidApplyConstraints, Type = Text, Dynamic = False, Default = \"DidApplyConstraints", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DidBeginContact, Type = Text, Dynamic = False, Default = \"DidBeginContact", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DidChangeSize, Type = Text, Dynamic = False, Default = \"DidChangeSize", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DidEndContact, Type = Text, Dynamic = False, Default = \"DidEndContact", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DidEvaluteActions, Type = Text, Dynamic = False, Default = \"DidEvaluteActions", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DidFinishUpdate, Type = Text, Dynamic = False, Default = \"DidFinishUpdate", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DidMoveToView, Type = Text, Dynamic = False, Default = \"DidMoveToView", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DidSimulatePhysics, Type = Text, Dynamic = False, Default = \"DidSimulatePhysics", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = UpdateForScene, Type = Text, Dynamic = False, Default = \"UpdateForScene", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = WillMoveFromView, Type = Text, Dynamic = False, Default = \"WillMoveFromView", Scope = Protected
	#tag EndConstant


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
			Name="Height"
			Group="Behavior"
			Type="Double"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
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
