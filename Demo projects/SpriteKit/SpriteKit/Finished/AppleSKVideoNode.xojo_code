#tag Class
Protected Class AppleSKVideoNode
Inherits AppleSKNode
	#tag Method, Flags = &h1000
		Sub Constructor(Player as AppleAVPlayer)
		  Declare function initWithAVPlayer lib SpriteKit selector "initWithAVPlayer:" (id as ptr, player as Ptr) as ptr
		  super.Constructor (initWithAVPlayer (alloc(ClassPtr), player.id))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(VIdeoURL as AppleURL)
		  Declare function initWithVideoURL lib SpriteKit selector "initWithVideoURL:" (id as ptr, VideoURL as Ptr) as ptr
		  super.Constructor (initWithVideoURL (alloc(ClassPtr), VIdeoURL.id))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(VideoFileName as CFStringRef)
		  Declare function initWithVideoFileNamed lib SpriteKit selector "initWithVideoFileNamed:" (id as ptr, name as CFStringRef) as ptr
		  super.Constructor (initWithVideoFileNamed (alloc(ClassPtr), VideoFileName))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(VIdeoURL as Folderitem)
		  Constructor (new AppleURL(VIdeoURL))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pause()
		  declare sub pause lib SpriteKit selector "pause" (id as ptr)
		  pause id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Play()
		  declare sub play lib SpriteKit selector "play" (id as ptr)
		  play id
		End Sub
	#tag EndMethod


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

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKVideoNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
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


	#tag ViewBehavior
		#tag ViewProperty
			Name="ExecutesActions"
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
