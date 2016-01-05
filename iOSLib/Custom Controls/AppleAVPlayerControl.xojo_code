#tag Class
Protected Class AppleAVPlayerControl
Inherits Appleviewcontrol
	#tag Event
		Function CreateView() As UInteger
		  ViewObject = new AppleView (FoundationFrameWork.NSMakeRect (0,0,100,100))
		  dim Player as new AppleAVPlayerLayer (new AppleAVPlayer("song18_0.mp3"))
		  ViewObject.Layer.AddSubLayer player
		  me.Player.Play
		  return UInteger(ViewObject.id)
		  
		End Function
	#tag EndEvent


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject
			End Get
		#tag EndGetter
		AppleView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return PlayerLayer.Player
			End Get
		#tag EndGetter
		Player As AppleAVPlayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAVPlayerLayer.MakefromPtr (ViewObject.Layer.SubLayers.PtrAtIndex(0))
			End Get
		#tag EndGetter
		PlayerLayer As AppleAVPlayerLayer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ViewObject As AppleView
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
