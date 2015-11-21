#tag Class
Protected Class AppleAVAudioChannelLayout
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Layout as AudioChannelLayout)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithLayout(alloc(classptr), Layout))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(LayoutTag as AudioChannelLayoutTag)
		  Super.Constructor (initWithLayoutTag(alloc(classptr), LayoutTag))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getlayoutTag Lib AVFoundationLibname Selector "layout" (id as ptr) As AudioChannelLayoutTag
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithLayout Lib AVFoundationLibname Selector "initWithLayout:" (id as ptr, layout as AudioChannelLayout) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithLayoutTag Lib AVFoundationLibname Selector "initWithLayoutTag:" (id as ptr, layout as AudioChannelLayoutTag) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function isEqual(anObject as AppleGeneralObject) As Boolean
		  return AVFoundationFramework.isEqual (id, anObject.GeneralID)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		#tag Note
			return AVFoundationFramework.getChannelCount (id)
		#tag EndNote
		ChannelCount As UInt32
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			return AVFoundationFramework.getlayout(id)
		#tag EndNote
		ChannelLayout As AudioChannelLayout
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioChannelLayout")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			return getlayouttag(id)
		#tag EndNote
		LayoutTag As AudioChannelLayoutTag
	#tag EndProperty


	#tag ViewBehavior
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
