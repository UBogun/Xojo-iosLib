#tag Class
Protected Class AppleSKViewForViewer
Inherits AppleSKView
Implements AppleNSEventForwarder
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame as FoundationFramework.NSRect)
		  Super.Constructor (DoInitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  
		  if Receivers = nil then Receivers = new Dictionary
		  if RetainDict = nil then RetainDict = new Dictionary
		  
		  RetainDict.Value(id) = WeakRef.Create (self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership then
		    RemoveObserver Receivers.Value(id)
		    
		    if RetainDict.HasKey (id) then RetainDict.Remove (id)
		    system.debuglog "AppleSKViewForViewer Destructor run"
		  end if
		  dim scene as new AppleSKScene (me.Frame.size_)
		  me.PresentScene scene
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidAddSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonDidAddSubview  (view)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToSuperview(pid as ptr, sel as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonDidMoveToSuperview
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToWindow(pid as ptr, sel as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonDidMoveToWindow
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DrawRect32(pid as ptr, sel as ptr, rect as FoundationFramework.NSRect32Bit)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer (wr.Value)
		  ego.informonDrawRect (rect.toNSRect)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DrawRect64(pid as ptr, sel as ptr, rect as FoundationFramework.NSRect)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonDrawRect (rect)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_LayoutSubviews(pid as ptr, sel as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonLayoutSubviews
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionBeganWithEvent(pid as ptr, sel as ptr, type as integer, anEvent as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonMotionBeganWithEvent (type, anEvent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionCancelledWithEvent(pid as ptr, sel as ptr, type as integer, anEvent as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonMotionCancelledWithEvent (type, anEvent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionEndedWithEvent(pid as ptr, sel as ptr, type as integer, anEvent as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonMotionEndedWithEvent (type, anEvent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesBeganWithEvent(pid as ptr, sel as ptr, Touchset as Ptr, anEvent as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonTouchesBeganWithEvent (touchset, anEvent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesCancelledWithEvent(pid as ptr, sel as ptr, Touchset as Ptr, anEvent as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonTouchesCancelledWithEvent (touchset, anEvent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesEndedWithEvent(pid as ptr, sel as ptr, Touchset as Ptr, anEvent as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonTouchesEndedWithEvent (touchset, anEvent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesMovedWithEvent(pid as ptr, sel as ptr, Touchset as Ptr, anEvent as ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonTouchesMovedWithEvent (touchset, anEvent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToSuperview(pid as ptr, sel as ptr, view as Ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonwillMoveToSuperview  (view)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToWindow(pid as ptr, sel as ptr, window as Ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonwillMoveToWindow (window)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willRemoveSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim wr as WeakRef = RetainDict.value (pid)
		  dim ego as AppleSKViewForViewer = AppleSKViewForViewer(wr.Value)
		  ego.informonwillRemoveSubview  (view)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidAddSubview(view as ptr)
		  dim myarray as new AppleMutableArray(2)
		  myarray.AddText DidAddSubview
		  myarray.AddPtr view
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidMoveToSuperView()
		  dim myarray as new AppleMutableArray(1)
		  myarray.AddText  DidMoveToSuperview
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidMoveToWindow()
		  dim myarray as new AppleMutableArray(1)
		  myarray.AddText  DidMoveToWindow
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDrawRect(Rect as FoundationFramework.NSRect)
		  dim myarray as new AppleMutableArray(2)
		  myarray.AddText  DrawRect
		  myarray.Addobject new AppleValue( rect)
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonLayoutSubviews()
		  dim myarray as new AppleMutableArray(1)
		  myarray.AddText  LayoutSubviews
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionBeganWithEvent(type as integer, anEvent as ptr)
		  dim myarray as new AppleMutableArray(3)
		  myarray.AddText  motionBegan
		  myarray.Addobject new AppleNumber (type)
		  myarray.Addobject AppleNSEvent.MakefromPtr (anevent)
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionCancelledWithEvent(type as integer, anEvent as ptr)
		  dim myarray as new AppleMutableArray(3)
		  myarray.AddText  MotionCancelled
		  myarray.Addobject new AppleNumber (type)
		  myarray.Addobject AppleNSEvent.MakefromPtr (anevent)
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonMotionEndedWithEvent(type as integer, anEvent as ptr)
		  dim myarray as new AppleMutableArray(3)
		  myarray.AddText  MotionEnded
		  myarray.Addobject new AppleNumber (type)
		  myarray.Addobject AppleNSEvent.MakefromPtr (anevent)
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesBeganWithEvent(Touchset as ptr, anEvent as ptr)
		  dim myarray as new AppleMutableArray(3)
		  myarray.AddText  TouchesBegan
		  myarray.Addobject AppleSet.MakefromPtr (touchset)
		  myarray.Addobject AppleNSEvent.MakefromPtr (anevent)
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesCancelledWithEvent(Touchset as ptr, anEvent as ptr)
		  dim myarray as new AppleMutableArray(3)
		  myarray.AddText  TouchesCancelled
		  myarray.Addobject AppleSet.MakefromPtr (touchset)
		  myarray.Addobject AppleNSEvent.MakefromPtr (anevent)
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesEndedWithEvent(Touchset as ptr, anEvent as ptr)
		  dim myarray as new AppleMutableArray(3)
		  myarray.AddText TouchesEnded
		  myarray.Addobject AppleSet.MakefromPtr (touchset)
		  myarray.Addobject AppleNSEvent.MakefromPtr (anevent)
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTouchesMovedWithEvent(Touchset as ptr, anEvent as ptr)
		  dim myarray as new AppleMutableArray(3)
		  myarray.AddText  TouchesMoved
		  myarray.Addobject AppleSet.MakefromPtr (touchset)
		  myarray.Addobject AppleNSEvent.MakefromPtr (anevent)
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveToSuperView(view as ptr)
		  dim myarray as new AppleMutableArray(2)
		  myarray.AddText  WillMoveToSuperview
		  if view <> Nil then myarray.AddPtr view
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveToWindow(window as Ptr)
		  dim myarray as new AppleMutableArray(2)
		  myarray.AddText  kWillMoveToWindow
		  if window <> nil then myarray.AddPtr window
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWillRemoveSubview(view as ptr)
		  dim myarray as new AppleMutableArray(2)
		  myarray.AddText  WillRemoveSubview
		  myarray.AddPtr view
		  NotifyObservers (myarray)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(EventProperties As AppleArray)
		  // Part of the AppleNSEventForwarder interface.
		  
		  if Receivers.HasKey(id) then
		    dim wR as WeakRef = Receivers.value(id)
		    dim observer as AppleNSEventReceiver = AppleNSEventReceiver( wr.Value)
		    if observer <> nil then
		      observer.ReceivedEvent (EventProperties)
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As AppleNSEventReceiver)
		  // Part of the AppleNSEventForwarder interface.
		  
		  Receivers.Value(id) = weakref.Create (observer)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver(observer As AppleNSEventReceiver)
		  // Part of the AppleNSEventForwarder interface.
		  
		  if Receivers.HasKey (id) then Receivers.Remove (id)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  // static mClassPtr as Ptr
			  // if SpriteKitEnabled then
			  // if mClassPtr = nil then
			  //  mClassPtr  =  FoundationFramework.NSClassFromString ("SKView")
			  // end if
			  // end if
			  // return mClassPtr
			  
			  
			  static targetID as ptr
			  if AppleSKView.SpriteKitEnabled then
			    if targetID = Nil then
			      dim methods() as TargetClassMethodHelper
			      //override UIView methods
			      methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			      methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			      methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			      methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			      methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			      methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			      methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			      
			      methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			      
			      methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			      methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			      methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			      
			      // #if Target64Bit
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			      // #elseif Target32Bit
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			      // #endif
			      
			      targetID = BuildTargetClass ("SKView", "AppleSKViewerView",methods)
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
