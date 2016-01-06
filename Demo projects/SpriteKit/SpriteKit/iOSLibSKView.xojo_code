#tag Class
Protected Class iOSLibSKView
Inherits iOSLibCanvas
	#tag Event
		Function CreateView() As uinteger
		  dim subID as uinteger = raiseEvent CreateView
		  if  subid = 0 then
		    dim myview as new AppleSKView (FoundationFrameWork.nsmakerect (0,0,100,100))
		    mid = myview
		    myview.RegisterControl (self)
		    return uinteger(myview.id)
		  else
		    return subid
		  end if
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207573657220746F75636865732074686520636F6E74726F6C2077697468206F6E65206F72206D6F72652066696E676572732E
		Sub TouchesBegan(Touches() as appletouch, anEvent as AppleNSEvent)
		  #pragma unused touches
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20612073797374656D2D6576656E7420286C696B65206C6F77206D656D6F7279292063616E63656C73206120746F756368206576656E742E
		Sub TouchesCancelled(Touches() as AppleTouch, anEvent as AppleNSEvent)
		  #pragma unused touches
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206C696674732066696E676572287329686520746F75636865642074686520636F6E74726F6C20776974682E
		Sub TouchesEnded(Touches() as AppleTouch, anEvent as AppleNSEvent)
		  #pragma unused touches
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206C696674732066696E676572287329686520746F75636865642074686520636F6E74726F6C20776974682E
		Sub TouchesMoved(Touches() as AppleTouch, anEvent as AppleNSEvent)
		  #pragma unused touches
		  #pragma unused anevent
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function ConvertPointFromScene(aPoint as Point, ascene as AppleSKScene) As xojo.Core.Point
		  return id.ConvertPointFromScene(apoint.toNSPoint, ascene).toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToScene(aPoint as Point, aScene as AppleSKScene) As Point
		  return id.ConvertPointtoScene(apoint.toNSPoint, ascene).toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidApplyConstraints(scene as ptr)
		  RaiseEvent DidApplyConstraints(appleskscene.makefromptr (scene))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidBeginContact(scene as ptr, Contact as Ptr)
		  RaiseEvent DidBeginContact (appleskscene.makefromptr(scene), new AppleSKPhysicsContact (contact))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidChangeSize(scene as ptr, OldSize as FoundationFramework.NSSize)
		  RaiseEvent DidChangeSize (appleskscene.makefromptr (scene),oldsize.tocoresize)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEndContact(scene as ptr, Contact as Ptr)
		  RaiseEvent DidEndContact (appleskscene.makefromptr(scene), new AppleSKPhysicsContact (contact))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEvaluteActions(scene as ptr)
		  RaiseEvent DidEvaluateActions(appleskscene.makefromptr (scene))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidFinishUpdate(scene as ptr)
		  RaiseEvent DidFinishUpdate (appleskscene.makefromptr (scene))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informondidMoveToView(scene as Ptr)
		  RaiseEvent didMoveToView (appleskscene.makefromptr( scene))
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidSimulatePhysics(scene as ptr)
		  RaiseEvent DidSimulatePhysics (appleskscene.makefromptr(scene))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub InformOnSceneUpdate(scene as ptr, CurrentTime as double)
		  RaiseEvent UpdateForScene (appleskscene.makefromptr(scene), currenttime)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesBeganwithEvent(Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesBegan Touches.toSKTouchCoreArray, anevent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesCancelledWithEvent(Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesCancelled Touches.toSKTouchCoreArray, anevent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesEndedwithEvent(Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesEnded Touches.toSKTouchCoreArray, anevent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesMovedwithEvent(Touches as appleset, anevent as AppleNSEvent)
		  RaiseEvent TouchesMoved Touches.toSKTouchCoreArray, anevent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveFromView(scene as ptr)
		  RaiseEvent SceneWillMoveFromView (appleskscene.makefromptr(scene))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentScene(newScene as AppleSKScene)
		  
		  id.PresentScene (newscene)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentScene(newScene as AppleSKScene, transition as AppleSKTransition)
		  id.PresentScene (newscene, transition)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CreateView() As uinteger
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidApplyConstraints(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidBeginContact(Scene as appleSKScene, Contact as appleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidChangeSize(Scene as AppleSKScene, OldSize As xojo.core.size)
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
		Event TouchesBegan(Touches() as AppleSKTouch, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesCancelled(Touches() as AppleSKTouch, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesEnded(Touches() as AppleSKTouch, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesMoved(Touches() as AppleSKTouch, anEvent as AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UpdateForScene(Scene as AppleSKScene, CurrentTime as Double)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.allowsTransparency
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.allowsTransparency = value
			End Set
		#tag EndSetter
		AllowsTransparency As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.asynchronous
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.Asynchronous = value
			End Set
		#tag EndSetter
		Asynchronous As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.frameInterval
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.FrameInterval = value
			End Set
		#tag EndSetter
		FrameInterval As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleskview(mID)
			End Get
		#tag EndGetter
		ID As AppleSKView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.ignoresSiblingOrder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ignoresSiblingOrder = value
			End Set
		#tag EndSetter
		IgnoresSiblingOrder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.Paused
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.Paused = value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.Scene
			End Get
		#tag EndGetter
		Scene As AppleSKScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.shouldCullNonVisibleNodes
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.shouldCullNonVisibleNodes = value
			End Set
		#tag EndSetter
		ShouldCullNonVisibleNodes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsDrawCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsDrawCount = value
			End Set
		#tag EndSetter
		ShowsDrawCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsFields
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsFields = value
			End Set
		#tag EndSetter
		ShowsFields As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsFPS
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsFPS = value
			End Set
		#tag EndSetter
		ShowsFPS As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.showsNodeCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.showsNodeCount = value
			End Set
		#tag EndSetter
		ShowsNodeCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.showsPhysics
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsPhysics = value
			End Set
		#tag EndSetter
		ShowsPhysics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return id.showsQuadCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.showsQuadCount = value
			End Set
		#tag EndSetter
		ShowsQuadCount As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsTransparency"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Asynchronous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFFFFFF00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIKitFramework.UIViewContentMode"
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
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameInterval"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Visible=true
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
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
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
			Name="Tag"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="AppleView.UIViewTintAdjustmentMode"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
