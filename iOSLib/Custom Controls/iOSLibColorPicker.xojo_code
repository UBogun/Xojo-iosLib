#tag Class
Protected Class iOSLibColorPicker
	#tag Method, Flags = &h0
		Sub Constructor(DefaultColor as color = &c00000000, Prompt as Text = "")
		  SendColor = DefaultColor
		  myPrompt = Prompt
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetColor(currentView as iosview, byref Cancelled as Boolean) As Color
		  dim cp as new ColorPickerView (self, if (SendColor <> &c00000000, SendColor, LastColor))
		  cp.iosLibViewController.ModalPresentationStyle = iOSLibViewController.UIViewModalPresentationStyle.FormSheet
		  currentview.iosLibViewController.Present cp.iosLibViewController, true
		  while not Returned
		    Thread.CurrentThread.Sleep (500)
		  wend
		  Cancelled = WasCancelled
		  return LastColor
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared LastColor As Color = &c00000000
	#tag EndProperty

	#tag Property, Flags = &h21
		Private myPrompt As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		Returned As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SendColor As Color = &c00000000
	#tag EndProperty

	#tag Property, Flags = &h21
		Private WasCancelled As Boolean
	#tag EndProperty


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Class
#tag EndClass
