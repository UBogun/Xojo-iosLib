#tag Class
Protected Class iOSLibTextView
Inherits iOSUserControl
	#tag Event
		Function CreateView() As UInteger
		  dim frame as new Rect (0,0,100,100)
		  
		  mid = iOSLibResponder.DoInitWithFrame (ioslibobject.alloc(ClassPtr), frame.tonsrect)
		  
		  Return UInteger(mid)
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Shared Function impl_layerClass(id as ptr, sel as ptr) As Ptr
		  return NSClassFromString ("CATextLayer")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_layoutSubviews(id as ptr, sel as ptr)
		  dim Ego as new iOSLibView (id)
		  if not ego.IsNIL then
		    dim sublayers as iOSLibArray = ego.Layer.SubLayers
		    if not sublayers.IsNIL then
		      if sublayers.count > 0 then
		        for q as uinteger = 0 to sublayers.Count -1
		          dim sublayer as  new  iOSLibCALayer (sublayers.PtrAtIndex(q))
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
			  static customClassPtr as Ptr
			  if customClassPtr = nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerClass, "#@:", true, true)
			    
			    customClassPtr = BuildTargetClass("UIView","iOSLibTextView",methods)
			  end if
			  return customClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function string_ lib uikit selector "string" (id as ptr) as CFStringRef
			  return string_ (layer.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setString lib UIKit selector "setString:" (id as ptr, value as CFStringRef)
			  setString (layer.id, value)
			End Set
		#tag EndSetter
		Content As CFStringRef
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid
			End Get
		#tag EndGetter
		id As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function layer lib UIKit selector "layer" (id as ptr) as Ptr
			  Return new ioslibCAGradientLayer (layer (id))
			End Get
		#tag EndGetter
		Layer As iOSLibCALayer
	#tag EndComputedProperty

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
