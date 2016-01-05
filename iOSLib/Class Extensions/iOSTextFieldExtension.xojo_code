#tag Module
Protected Module iOSTextFieldExtension
	#tag Method, Flags = &h0
		Function AdjustTextSize(extends f as iOSTextField) As Boolean
		  return f.view.AdjustsFontSizeToFitWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AdjustTextSize(extends f as iOSTextField, assigns value as Boolean)
		  f.view.AdjustsFontSizeToFitWidth = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AllowsStyledText(extends f as iOSTextField) As Boolean
		  return f.view.AllowsEditingTextAttributes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AllowsStyledText(extends f as iOSTextField, assigns value as Boolean)
		  f.view.AllowsEditingTextAttributes = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundImage(extends f as iOSTextField) As iOSImage
		  return f.view.BackgroundImage.toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundImage(extends f as iOSTextField, assigns value as iOSImage)
		  f.view.BackgroundImage = value.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BorderStyle(extends f as iOSTextField) As AppleTextfield.UITextFieldBorderStyle
		  return f.view.BorderStyle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BorderStyle(extends f as iOSTextField, assigns value as AppleTextfield.UITextFieldBorderStyle)
		  f.view.BorderStyle = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearBackgroundimage(extends f as iOSTextField)
		  f.view.BackgroundImage = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearButtonMode(extends f as iOSTextField) As appletextfield.UITextFieldViewMode
		  return f.view.ClearButtonMode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearButtonMode(extends f as iOSTextField, assigns value as appletextfield.UITextFieldViewMode)
		  f.view.ClearButtonMode = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearDisabledBackgroundimage(extends f as iOSTextField)
		  f.view.DisabledBackgroundImage = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearInputAccessoryView(extends f as iOSTextField)
		  f.view.InputAccessoryView = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearLeftImage(extends f as iOSTextField)
		  f.view.LeftView = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearRightImage(extends f as iOSTextField)
		  f.view.RightView = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearsOnEditBegin(extends f as iOSTextField) As Boolean
		  return f.view.ClearsOnEditBegin
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearsOnEditBegin(extends f as iOSTextField, assigns value as Boolean)
		  f.view.ClearsOnEditBegin = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearsOnInsertion(extends f as iOSTextField) As Boolean
		  return f.view.ClearsOnInsertion
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearsOnInsertion(extends f as iOSTextField, assigns value as Boolean)
		  f.view.ClearsOnInsertion = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledBackgroundImage(extends f as iOSTextField) As iOSImage
		  return f.view.DisabledBackgroundImage.toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledBackgroundImage(extends f as iOSTextField, assigns value as iOSImage)
		  f.view.DisabledBackgroundImage = value.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Editing(extends f as iOSTextField) As Boolean
		  return f.view.Editing
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InputAccessoryView(extends f as iOSTextField, assigns value as iOSControl)
		  f.view.InputAccessoryView = new AppleView (value.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftImage(extends f as iOSTextField, assigns value as iOSImage)
		  dim newImage as new AppleImage(value)
		  dim Scaledimage as AppleImage = newImage.Resize ( f.Height / newImage.Height)
		  f.view.LeftView = new AppleimageView(scaledimage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftImageNoScale(extends f as iOSTextField, assigns value as iOSImage)
		  dim newImage as new AppleImage(value)
		  f.view.LeftView = new AppleimageView(newImage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftViewMode(extends f as iOSTextField) As appletextfield.UITextFieldViewMode
		  return f.view.LeftViewMode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftViewMode(extends f as iOSTextField, assigns value as appletextfield.UITextFieldViewMode)
		  f.view.LeftViewMode = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MinimumFontSize(extends f as iOSTextField) As Double
		  return f.view.MinimumFontSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MinimumFontSize(extends f as iOSTextField, assigns value as Double)
		  f.view.MinimumFontSize = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RightImage(extends f as iOSTextField, assigns value as iOSImage)
		  dim newImage as new AppleImage(value)
		  dim Scaledimage as AppleImage = newImage.Resize( f.Height / newImage.Height)
		  f.view.RightView = new AppleimageView(scaledimage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RightImageNoScale(extends f as iOSTextField, assigns value as iOSImage)
		  dim newImage as new AppleImage(value)
		  f.view.RightView = new AppleimageView(newImage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightViewMode(extends f as iOSTextField) As appletextfield.UITextFieldViewMode
		  return f.view.RightViewMode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RightViewMode(extends f as iOSTextField, assigns value as appletextfield.UITextFieldViewMode)
		  f.view.RightViewMode = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function view(extends f as iOSTextField) As AppleTextfield
		  return new AppleTextfield (f.Handle)
		End Function
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
