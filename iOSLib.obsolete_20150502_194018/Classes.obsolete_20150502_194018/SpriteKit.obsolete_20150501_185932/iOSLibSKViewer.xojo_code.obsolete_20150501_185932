#tag Class
Protected Class iOSLibSKViewer
Inherits iOSUserControl
Implements iOSLibEventReceiver
	#tag Event
		Sub Close()
		  if mscene <> nil then
		    mscene.RemoveObserver (self)
		    mScene.RemoveAllActions
		    mScene.RemoveAllChildren
		    if mScene.View <> nil then
		      mscene.RemoveFromParent
		    end if
		    mScene = nil
		  end if
		  // if mscene < nil then mScene.RemoveObserver(self)
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As UInteger
		  dim frame as new Rect (0,0,100,100)
		  mSKView = new iOSLibSKViewForViewer (frame.tonsrect)
		  mSKView.registerobserver (self)
		  mSKView.AutoRelease
		  Return UInteger ( mSKView.Id)
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Function ConvertPointFromScene(aPoint as Point, ascene as iOSLibSKScene) As xojo.Core.Point
		  return view.ConvertPointFromScene(apoint.toNSPoint, ascene).toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToScene(aPoint as Point, aScene as iOSLibSKScene) As Point
		  return view.ConvertPointtoScene(apoint.toNSPoint, ascene).toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidApplyConstraints()
		  RaiseEvent DidApplyConstraints
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidBeginContact(Contact as Ptr)
		  RaiseEvent DidBeginContact (new iOSLibSKPhysicsContact(contact))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidChangeSize(OldSize as NSSize)
		  RaiseEvent DidChangeSize (oldsize)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEndContact(Contact as Ptr)
		  RaiseEvent DidEndContact( new iOSLibSKPhysicsContact (contact))
		  
		  
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
		  RaiseEvent DidMoveToView (ioslibskview.makefromptr( view))
		  
		  
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
		  RaiseEvent WillMoveFromView (ioslibskview.makefromptr( view))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentScene(newScene as iOSLibSKSceneWithInterface)
		  if mscene <> nil then
		    mscene.RemoveObserver (self)
		    if mScene.View <> nil then
		      mscene.RemoveFromParent
		    end if
		  end if
		  mScene = newScene
		  mScene.RegisterObserver (self)
		  mSKView.PresentScene (mScene)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReceivedEvent(Details as iOSLibArray)
		  // Part of the iOSLibEventReceiver interface.
		  if not Details.IsNIL then
		    if Details.Count > 0 then
		      dim compare as text = Details.TextAtIndex(0)
		      Select case  compare
		      case iOSLibSKViewForViewer.WillMoveToSuperview
		        dim newview as ioslibview
		        if Details.Count > 1 then newview  = iOSLibView.MakeFromPtr (Details.PtrAtIndex(1))
		        RaiseEvent WillMoveToSuperview (newview)
		      case iOSLibSKViewForViewer.WillMoveToWindow
		        dim windowptr as ptr
		        if Details.Count > 1 then WindowPtr = Details.PtrAtIndex(1)
		        RaiseEvent WillMoveToWindow (windowptr)
		      case iOSLibSKViewForViewer.DidAddSubview
		        dim newview as ioslibview  = iOSLibView.MakeFromPtr (Details.PtrAtIndex(1))
		        RaiseEvent DidAddSubview (newview)
		      case iOSLibSKViewForViewer.DidMoveToSuperview
		        RaiseEvent DidMoveToSuperview
		        
		      case iOSLibSKViewForViewer.DidMoveToWindow
		        RaiseEvent DidMoveToWindow
		      case iOSLibSKViewForViewer.WillRemoveSubview
		        dim newview as ioslibview  = iOSLibView.MakeFromPtr (Details.PtrAtIndex(1))
		        RaiseEvent WillRemoveSubview (newview)
		      case ioslibskscenewithinterface.DidApplyConstraints
		        RaiseEvent DidApplyConstraints
		      case iOSLibSKViewForViewer.TouchesBegan
		        raiseEvent TouchesBegan (ioslibset.makefromptr (Details.PtrAtIndex(1)), ioslibevent.makefromptr  (Details.PtrAtIndex(2)))
		      case iOSLibSKViewForViewer.TouchesEnded
		        raiseEvent TouchesEnded (ioslibset.makefromptr (Details.PtrAtIndex(1)), ioslibevent.makefromptr  (Details.PtrAtIndex(2)))
		      case iOSLibSKViewForViewer.TouchesMoved
		        raiseEvent TouchesMoved (ioslibset.makefromptr (Details.PtrAtIndex(1)), ioslibevent.makefromptr  (Details.PtrAtIndex(2)))
		      case iOSLibSKViewForViewer.TouchesCancelled
		        raiseEvent TouchesCancelled (ioslibset.makefromptr (Details.PtrAtIndex(1)), ioslibevent.makefromptr  (Details.PtrAtIndex(2)))
		      case ioslibview.MotionBegan
		        dim mynumber as iOSLibNumber = iOSLibNumber.MakefromPtr(Details.PtrAtIndex(1))
		        dim myType as iOSLibEvent.UIEventSubtype = iOSLibEvent.UIEventSubtype (mynumber.IntegerValue)
		        RaiseEvent MotionBegan (mytype, ioslibevent.makefromptr  (Details.PtrAtIndex(2)))
		      case iOSLibView.LayoutSubviews
		        raiseevent LayoutSubviews
		      End Select
		    end if
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DidAddSubview(view as iOSLibView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidApplyConstraints()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidBeginContact(Contact as iOSLibSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidChangeSize(OldSize as NSSize)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEndContact(Contact as iOSLibSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEvaluateActions()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidFinishUpdate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToSuperview()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToView(View as iOSLibSKView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidMoveToWindow()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidSimulatePhysics()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LayoutSubviews()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MotionBegan(Type as ioslibevent.uieventsubtype, anEvent as iOSLibEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesBegan(Touchset as ioslibset, anEvent as iOSLibEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesCancelled(Touchset as ioslibset, anEvent as iOSLibEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesEnded(Touchset as ioslibset, anEvent as iOSLibEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchesMoved(Touchset as ioslibset, anEvent as iOSLibEvent)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UpdateForScene(time as Double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillMoveFromView(fromView as iOSLibSKView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillMoveToSuperview(view as iOSLibView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillMoveToWindow(window as ptr)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillRemoveSubview(view as iOSLibView)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return view.allowsTransparency
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.allowsTransparency = value
			End Set
		#tag EndSetter
		AllowsTransparency As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return view.asynchronous
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.Asynchronous = value
			End Set
		#tag EndSetter
		Asynchronous As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return view.frameInterval
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.FrameInterval = value
			End Set
		#tag EndSetter
		FrameInterval As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mSKView.Id
			End Get
		#tag EndGetter
		id As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return view.ignoresSiblingOrder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.ignoresSiblingOrder = value
			End Set
		#tag EndSetter
		IgnoresSiblingOrder As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mScene As iOSLibSKSceneWithInterface
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSKView As iOSLibSKViewForViewer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return view.Paused
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.Paused = value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return view.Scene
			End Get
		#tag EndGetter
		Scene As iOSLibSKScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return view.shouldCullNonVisibleNodes
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.shouldCullNonVisibleNodes = value
			End Set
		#tag EndSetter
		ShouldCullNonVisibleNodes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return view.ShowsDrawCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.ShowsDrawCount = value
			End Set
		#tag EndSetter
		ShowsDrawCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return view.ShowsFields
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.ShowsFields = value
			End Set
		#tag EndSetter
		ShowsFields As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return view.ShowsFPS
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.ShowsFPS = value
			End Set
		#tag EndSetter
		ShowsFPS As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return view.showsNodeCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.showsNodeCount = value
			End Set
		#tag EndSetter
		ShowsNodeCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return view.showsPhysics
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.ShowsPhysics = value
			End Set
		#tag EndSetter
		ShowsPhysics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return view.showsQuadCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  view.showsQuadCount = value
			End Set
		#tag EndSetter
		ShowsQuadCount As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // dim ego as new iOSLibView (mid)
			  // dim layer as iOSLibCALayer = ego.Layer
			  // return  new iOSLibCAGradientLayer(layer.SubLayers.PtrAtIndex(0))
			  return mSKView
			End Get
		#tag EndGetter
		View As iOSLibSKViewForViewer
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
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
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
