#tag Class
Protected Class AppleSceneViewer
Inherits AppleViewControl
	#tag Event
		Function CreateView() As UInteger
		  dim frame as  FoundationFrameWork.NSRect = FoundationFrameWork.NSMakeRect (0,0,100,100)
		  viewobject = new AppleSCNView (frame)
		  ViewObject.AutoRelease
		  Return UInteger(viewobject.id)
		  
		  
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ReceivedEvent(Details as AppleArray)
		  // Part of the AppleNSEventReceiver interface.
		  if not Details.IsNIL then
		    if Details.Count > 0 then
		      dim compare as text = Details.TextAtIndex(0)
		      Select case  compare
		        // case appleview.WillMoveToSuperview
		        // dim newview as AppleView
		        // if Details.Count > 1 then newview  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        // RaiseEvent WillMoveToSuperview (newview)
		        // case AppleView.kWillMoveToWindow
		        // dim windowptr as ptr
		        // if Details.Count > 1 then WindowPtr = Details.PtrAtIndex(1)
		        // RaiseEvent WillMoveToWindow (windowptr)
		        // case AppleView.DidAddSubview
		        // dim newview as AppleView  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        // RaiseEvent DidAddSubview (newview)
		        // case AppleView.DidMoveToSuperview
		        // RaiseEvent DidMoveToSuperview
		        // case AppleView.DidMoveToWindow
		        // RaiseEvent DidMoveToWindow
		        // case AppleView.WillRemoveSubview
		        // dim newview as AppleView  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        // RaiseEvent WillRemoveSubview (newview)
		        // case AppleView.TouchesBegan
		        // raiseEvent TouchesBegan (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.TouchesEnded
		        // raiseEvent TouchesEnded (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.TouchesMoved
		        // raiseEvent TouchesMoved (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.TouchesCancelled
		        // raiseEvent TouchesCancelled (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.MotionBegan
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        // RaiseEvent MotionBegan (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.MotionEnded
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        // RaiseEvent MotionEnded (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.MotionCancelled
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        // RaiseEvent MotionCancelled (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        //
		        // case AppleView.LayoutSubviews
		        // raiseevent LayoutSubviews
		        // case AppleView.DrawRect
		        // dim myvalue as applevalue = AppleValue.MakefromPtr(Details.PtrAtIndex(1))
		        // RaiseEvent DrawRect( myvalue.nsrectvalue)
		        
		      case SceneKitFrameWork.kBlockPreparationEnded
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        raiseEvent BlocksPreparationEnded (mynumber.BoolValue)
		      case AppleSCNView.kUpdateAtTime
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        raiseEvent RenderUpdate (mynumber.doubleValue)
		      case AppleSCNView.kdidApplyAnimationsAtTime
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        raiseEvent didAnimate (mynumber.doubleValue)
		      case AppleSCNView.kDidSimulatePhysics
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        raiseEvent didSimulatePhysics (mynumber.doubleValue)
		      case AppleSCNView.kWillRenderScene
		        dim myscene as AppleSCNScene = AppleSCNScene.MakefromPtr (Details.PtrAtIndex(1))
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(2))
		        raiseEvent WillRenderScene (myscene, mynumber.doubleValue)
		      case AppleSCNView.kDidRenderScene
		        dim myscene as AppleSCNScene = AppleSCNScene.MakefromPtr (Details.PtrAtIndex(1))
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(2))
		        raiseEvent DidRenderScene (myscene, mynumber.doubleValue)
		        
		      else
		        break
		      End Select
		    end if
		  end if
		  
		End Sub
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
		Event RenderUpdate(Time As Double)
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
			  return ViewObject
			End Get
		#tag EndGetter
		AppleView As AppleSCNView
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ViewObject As AppleSCNView
	#tag EndProperty


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
			Name="Height"
			Visible=true
			Group="Position"
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
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
