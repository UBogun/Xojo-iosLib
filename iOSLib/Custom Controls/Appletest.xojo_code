#tag Class
Protected Class Appletest
Inherits iosusercontrol
	#tag Event
		Function CreateView() As UInteger
		  dim ab as new AppleButton (AppleButton.UIButtonType.ContactAdd)
		  // ab.ImageView.Layer.BorderWidth = 2
		  // ab.setTitleForState ("§Test", AppleControl.UIControlState.Normal)
		  // break
		  dim mb as new iOSMessageBox
		  mb.Message = (ab.SizeThatFits.width.totext +", "+ab.SizeThatFits.height.totext)
		  call mb.Show
		  return UInteger (ab.id)
		End Function
	#tag EndEvent


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
			InitialValue="22"
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
			InitialValue="22"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
