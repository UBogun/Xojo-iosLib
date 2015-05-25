#tag Class
Protected Class iOSLibEmitterView
Inherits iOSUserControl
	#tag Event
		Function CreateView() As UInteger
		  dim frame as new Rect (0,0,100,100)
		  mid = AppleObject.AutoRelease (AppleResponder.DoInitWithFrame (AppleObject.alloc(ClassPtr), frame.tonsrect))
		  dim myemitterlayer as new AppleCAEmitterLayer
		  myemitterlayer.bounds = frame.tonsrect
		  myemitterlayer.MasksToBounds = true
		  myemitterlayer.Name = "AppleCAEmitterLayer"
		  dim ego as new AppleView (mid)
		  dim mylayer as AppleCALayer = ego.Layer
		  mylayer.AddSubLayer myemitterlayer
		  mEmitterLayer = myemitterlayer
		  
		  Return UInteger(mid)
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Shared Function impl_layerClassEmitter(id as ptr, sel as ptr) As Ptr
		  return NSClassFromString ("CAEmitterLayer")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_layoutSubviews(id as ptr, sel as ptr)
		  dim Ego as AppleView = AppleView.MakeFromPtr (id)
		  if  ego <> nil then
		    dim sublayers as AppleArray = ego.Layer.SubLayers
		    if  sublayers <> nil then
		      if sublayers.count > 0 then
		        for q as uinteger = 0 to sublayers.Count -1
		          dim sublayer as  new  AppleCALayer (sublayers.PtrAtIndex(q))
		          sublayer.Frame = ego.Bounds
		        next
		      end if
		    end if
		  end if
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerClassEmitter, "#@:", true, true)
			    
			    mClassPtr = BuildTargetClass("UIImageView","iOSLibEmitterView",methods)
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // dim ego as new AppleView (mid)
			  // dim layer as AppleCALayer = ego.Layer
			  // return  new AppleCAEmitterLayer(layer.SubLayers.PtrAtIndex(0))
			  return mEmitterLayer
			End Get
		#tag EndGetter
		EmitterLayer As AppleCAEmitterLayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid
			End Get
		#tag EndGetter
		id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mEmitterLayer As AppleCAEmitterLayer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mid As Ptr
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
