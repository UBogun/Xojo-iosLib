#tag Module
Protected Module iOSTextFieldExtension
	#tag Method, Flags = &h0
		Function AdjustTextSize(extends f as iOSTextField) As Boolean
		  return f.AppleTextField.AdjustsFontSizeToFitWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AdjustTextSize(extends f as iOSTextField, assigns value as Boolean)
		  f.AppleTextField.AdjustsFontSizeToFitWidth = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AllowsStyledText(extends f as iOSTextField) As Boolean
		  return f.AppleTextField.AllowsEditingTextAttributes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AllowsStyledText(extends f as iOSTextField, assigns value as Boolean)
		  f.AppleTextField.AllowsEditingTextAttributes = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppleTextField(extends f as iOSTextField) As AppleTextfield
		  return new AppleTextfield (f.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundImage(extends f as iOSTextField) As iOSImage
		  return f.AppleTextField.BackgroundImage.toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundImage(extends f as iOSTextField, assigns value as iOSImage)
		  f.AppleTextField.BackgroundImage = value.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BorderStyle(extends f as iOSTextField) As AppleTextfield.UITextFieldBorderStyle
		  return f.AppleTextField.BorderStyle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BorderStyle(extends f as iOSTextField, assigns value as AppleTextfield.UITextFieldBorderStyle)
		  f.AppleTextField.BorderStyle = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearBackgroundimage(extends f as iOSTextField)
		  f.AppleTextField.BackgroundImage = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearButtonMode(extends f as iOSTextField) As AppleTextfield.UITextFieldViewMode
		  return f.AppleTextField.ClearButtonMode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearButtonMode(extends f as iOSTextField, assigns value as AppleTextfield.UITextFieldViewMode)
		  f.AppleTextField.ClearButtonMode = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearDisabledBackgroundimage(extends f as iOSTextField)
		  f.AppleTextField.DisabledBackgroundImage = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearInputAccessoryView(extends f as iOSTextField)
		  f.AppleTextField.InputAccessoryView = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearLeftImage(extends f as iOSTextField)
		  f.AppleTextField.LeftView = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearRightImage(extends f as iOSTextField)
		  f.AppleTextField.RightView = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearsOnEditBegin(extends f as iOSTextField) As Boolean
		  return f.AppleTextField.ClearsOnEditBegin
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearsOnEditBegin(extends f as iOSTextField, assigns value as Boolean)
		  f.AppleTextField.ClearsOnEditBegin = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearsOnInsertion(extends f as iOSTextField) As Boolean
		  return f.AppleTextField.ClearsOnInsertion
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearsOnInsertion(extends f as iOSTextField, assigns value as Boolean)
		  f.AppleTextField.ClearsOnInsertion = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledBackgroundImage(extends f as iOSTextField) As iOSImage
		  return f.AppleTextField.DisabledBackgroundImage.toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledBackgroundImage(extends f as iOSTextField, assigns value as iOSImage)
		  f.AppleTextField.DisabledBackgroundImage = value.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InputAccessoryView(extends f as iOSTextField, assigns value as iOSControl)
		  f.AppleTextField.InputAccessoryView = new AppleView (value.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEditing(extends f as iOSTextField) As Boolean
		  return f.AppleTextField.isEditing
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftImage(extends f as iOSTextField, assigns value as iOSImage)
		  dim newImage as new AppleImage(value)
		  dim Scaledimage as AppleImage = newImage.Resize (newImage.Height / f.Height)
		  f.AppleTextField.LeftView = new AppleimageView(scaledimage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftImageNoScale(extends f as iOSTextField, assigns value as iOSImage)
		  dim newImage as new AppleImage(value)
		  f.AppleTextField.LeftView = new AppleimageView(newImage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftViewMode(extends f as iOSTextField) As AppleTextfield.UITextFieldViewMode
		  return f.AppleTextField.LeftViewMode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftViewMode(extends f as iOSTextField, assigns value as AppleTextfield.UITextFieldViewMode)
		  f.AppleTextField.LeftViewMode = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MinimumFontSize(extends f as iOSTextField) As Double
		  return f.AppleTextField.MinimumFontSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MinimumFontSize(extends f as iOSTextField, assigns value as Double)
		  f.AppleTextField.MinimumFontSize = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RightImage(extends f as iOSTextField, assigns value as iOSImage)
		  dim newImage as new AppleImage(value)
		  dim Scaledimage as AppleImage = newImage.Resize (newImage.Height / f.Height)
		  f.AppleTextField.RightView = new AppleimageView(scaledimage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RightImageNoScale(extends f as iOSTextField, assigns value as iOSImage)
		  dim newImage as new AppleImage(value)
		  f.AppleTextField.RightView = new AppleimageView(newImage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightViewMode(extends f as iOSTextField) As AppleTextfield.UITextFieldViewMode
		  return f.AppleTextField.RightViewMode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RightViewMode(extends f as iOSTextField, assigns value as AppleTextfield.UITextFieldViewMode)
		  f.AppleTextField.RightViewMode = value
		End Sub
	#tag EndMethod


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
End Module
#tag EndModule
