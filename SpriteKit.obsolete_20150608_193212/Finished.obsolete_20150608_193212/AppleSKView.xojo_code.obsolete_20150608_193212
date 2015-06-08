#tag Class
Protected Class AppleSKView
Inherits AppleView
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame as NSRect)
		  Super.Constructor (DoInitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointFromScene(aPoint as NSPoint, asCene as AppleSKScene) As NSPoint
		  #if Target64Bit
		    declare Function convertPointfromScene lib spritekit selector "convertPoint:fromScene:" (id as ptr, aPoint as NSPoint, aview as ptr) as NSPoint
		    return convertPointfromScene (id, apoint, ascene.id)
		  #elseif Target32Bit
		    declare Function convertPointfromScene lib spritekit selector "convertPoint:fromScene:" (id as ptr, aPoint as NSPoint32Bit, aview as ptr) as NSPoint32Bit
		    return convertPointfromScene (id, apoint.toNSPoint32, ascene.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToScene(aPoint as NSPoint, aScene as AppleSKScene) As NSPoint
		  #if Target64Bit
		    declare Function convertPointtoScene lib spritekit selector "convertPoint:toScene:" (id as ptr, aPoint as NSPoint, aview as ptr) as NSPoint
		    return convertPointtoScene (id, apoint, ascene.id)
		  #elseif Target32Bit
		    declare Function convertPointtoScene lib spritekit selector "convertPoint:toScene:" (id as ptr, aPoint as NSPoint32Bit, aview as ptr) as NSPoint32Bit
		    return convertPointtoScene (id, apoint.toNSPoint32, ascene.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidAddSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informonDidAddSubview  (view)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToSuperview(pid as ptr, sel as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informonDidMoveToSuperview
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToWindow(pid as ptr, sel as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informonDidMoveToWindow
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_layoutSubviews(pid as ptr, sel as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informonLayoutSubviews
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionBeganwithEvent(pid as ptr, sel as ptr, type as appleEvent.UIEventSubtype, anevent as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informOnMotionBeganwithEvent  (type, anevent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionCancelledwithEvent(pid as ptr, sel as ptr, type as appleEvent.UIEventSubtype, anevent as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informOnMotionCancelledwithEvent  (type, anevent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionEndedwithEvent(pid as ptr, sel as ptr, type as appleEvent.UIEventSubtype, anevent as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informOnMotionEndedwithEvent  (type, anevent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesBeganwithEvent(pid as ptr, sel as ptr, touchset as Ptr, anevent as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informOnTouchesBeganwithEvent  (touchset, anevent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesCancelledwithEvent(pid as ptr, sel as ptr, touchset as Ptr, anevent as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informOnTouchesCancelledwithEvent  (touchset, anevent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesEndedwithEvent(pid as ptr, sel as ptr, touchset as Ptr, anevent as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informOnTouchesEndedwithEvent  (touchset, anevent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesMovedwithEvent(pid as ptr, sel as ptr, touchset as Ptr, anevent as ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informOnTouchesMovedwithEvent  (touchset, anevent)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToSuperview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informonwillMoveToSuperview  (view)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToWindow(pid as ptr, sel as ptr, window as Ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informonwillMoveToWindow (window)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willRemoveSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleSKView (pid)
		  ego.informonwillRemoveSubview  (view)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKView
		  Return if (aptr = NIL, NIL, new AppleSKView (aptr))
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
		 Shared Function SpriteKitEnabled() As Boolean
		  static isenabled as Boolean
		  if not isenabled then
		    dim result as ptr =  NSClassFromString ("SKView")
		    if result = nil then
		      call AppleLibSystem.LoadFramework ("SpriteKit") // If something goes wrong, we have an expection here.
		    end if
		    isenabled = true
		  end if
		  return isenabled
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextureFromNode(aNode as AppleSKNode) As AppleSKTexture
		  declare Function textureFromNode lib spritekit selector "textureFromNode:" (id as ptr, aNode as Ptr) as Ptr
		  return AppleSKTexture.MakefromPtr (textureFromNode (id, anode.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextureFromNode(aNode as AppleSKNode, crop as nsrect) As AppleSKTexture
		  #if Target64Bit
		    declare Function textureFromNodeCrop lib spritekit selector "textureFromNode:crop:" (id as ptr, aNode as Ptr, crop as NSRect) as Ptr
		    return AppleSKTexture.MakefromPtr (textureFromNodeCrop (id, anode.id, crop))
		  #elseif Target32Bit
		    declare Function textureFromNodeCrop lib spritekit selector "textureFromNode:crop:" (id as ptr, aNode as Ptr, crop as NSRect32Bit) as Ptr
		    return AppleSKTexture.MakefromPtr( textureFromNodeCrop (id, anode.id, crop.toNSRect32))
		  #endif
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DidMoveToView(view as AppleSKView)
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
			  // static mClassPtr as Ptr
			  // if SpriteKitEnabled then
			  // if mClassPtr = nil then
			  //  mClassPtr  =  NSClassFromString ("SKView")
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
			      
			      targetID = BuildTargetClass ("SKView", "AppleSKView",methods)
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
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Asynchronous"
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
			Name="FrameInterval"
			Group="Behavior"
			Type="Integer"
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
			Name="Hidden"
			Group="Behavior"
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
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
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
