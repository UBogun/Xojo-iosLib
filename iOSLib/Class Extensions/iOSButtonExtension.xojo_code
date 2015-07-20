#tag Module
Protected Module iOSButtonExtension
	#tag Method, Flags = &h0
		Function AdjustTextSize(extends c as iOSButton) As Boolean
		  return c.AppleButton.TitleLabel.AdjustsFontSizeToFitWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AdjustTextSize(extends c as iOSButton, assigns value as Boolean)
		  c.AppleButton.TitleLabel.AdjustsFontSizeToFitWidth = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppleButton(extends c as iOSButton) As AppleButton
		  return new AppleButton  (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundColor(extends c as iOSButton) As Color
		  return c.AppleButton.BackgroundColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundColor(extends c as iOSButton, assigns value as color)
		  c.AppleButton.BackgroundColor = value.toapplecolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundRadius(extends c as iOSButton) As Double
		  return c.AppleButton.Layer.CornerRadius
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundRadius(extends c as iOSButton, assigns value as Double)
		  c.AppleButton.Layer.CornerRadius = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BorderWidth(extends b as iOSButton) As double
		  return b.AppleButton.Layer.BorderWidth
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BorderWidth(extends b as iOSButton, assigns value as double)
		  b.AppleButton.Layer.BorderWidth = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledBackgroundImage(extends c as iOSButton) As iOSImage
		  return c.AppleButton.BackgroundImageForState(UIKitFramework.UIControlState.Disabled).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledBackgroundImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleButton.SetBackgroundImageForState (Image.toAppleImage, UIKitFramework.UIControlState.Disabled)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledCaption(extends c as iOSButton) As Text
		  return c.AppleButton.TitleForState ( UIKitFramework.UIControlState.Disabled)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledCaption(extends c as iOSButton, assigns Caption as CFStringRef)
		  c.AppleButton.SetTitleForState (Caption, UIKitFramework.UIControlState.Disabled)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledImage(extends c as iOSButton) As iOSImage
		  return c.AppleButton.ImageForState(UIKitFramework.UIControlState.Disabled).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleButton.SetImageForState (Image.toAppleImage, UIKitFramework.UIControlState.Disabled)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledTextColor(extends c as iOSButton) As Color
		  return c.AppleButton.TitleColorForState(UIKitFramework.UIControlState.Disabled).toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledTextColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleButton.SetTitleColorForState (newcolor.toapplecolor, UIKitFramework.UIControlState.Disabled)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledTextShadowColor(extends c as iOSButton) As Color
		  return c.AppleButton.TitleShadowColorForState (UIKitFramework.UIControlState.Disabled).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledTextShadowColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleButton.SetTitleShadowColorForState (newcolor.toapplecolor, UIKitFramework.UIControlState.Disabled)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Font(extends b as iOSButton) As iosfont
		  dim myfont as AppleFont = b.TitleLabel.Font
		  return myfont.toiOSFont
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Font(extends b as iOSButton, assigns value as iosfont)
		  b.TitleLabel.Font = value.toAppleFont
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedBackgroundImage(extends c as iOSButton) As iOSImage
		  return c.AppleButton.BackgroundImageForState(UIKitFramework.UIControlState.Highlighted).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedBackgroundImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleButton.SetBackgroundImageForState (Image.toAppleImage, UIKitFramework.UIControlState.Highlighted)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedCaption(extends c as iOSButton) As Text
		  return c.AppleButton.TitleForState ( UIKitFramework.UIControlState.Highlighted)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedCaption(extends c as iOSButton, assigns Caption as CFStringRef)
		  c.AppleButton.SetTitleForState (Caption, UIKitFramework.UIControlState.Highlighted)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedImage(extends c as iOSButton) As iOSImage
		  return c.AppleButton.ImageForState(UIKitFramework.UIControlState.Highlighted).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleButton.SetImageForState (Image.toAppleImage, UIKitFramework.UIControlState.Highlighted)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedTextColor(extends c as iOSButton) As Color
		  return c.AppleButton.TitleColorForState(UIKitFramework.UIControlState.Highlighted).toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedTextColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleButton.SetTitleColorForState (newcolor.toapplecolor, UIKitFramework.UIControlState.Highlighted)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightedTextShadowColor(extends c as iOSButton) As Color
		  return c.AppleButton.TitleShadowColorForState (UIKitFramework.UIControlState.Highlighted).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightedTextShadowColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleButton.SetTitleShadowColorForState (newcolor.toapplecolor, UIKitFramework.UIControlState.Highlighted)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ImageView(extends c as iOSButton) As AppleView
		  return c.AppleButton.ImageView
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalBackgroundImage(extends c as iOSButton) As iOSImage
		  return c.AppleButton.BackgroundImageForState(UIKitFramework.UIControlState.Normal).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalBackgroundImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleButton.SetBackgroundImageForState (Image.toAppleImage, UIKitFramework.UIControlState.Normal)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalCaption(extends c as iOSButton) As Text
		  return c.AppleButton.TitleForState ( UIKitFramework.UIControlState.Normal)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalCaption(extends c as iOSButton, assigns Caption as CFStringRef)
		  c.AppleButton.SetTitleForState (Caption, UIKitFramework.UIControlState.Normal)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalImage(extends c as iOSButton) As iOSImage
		  return c.AppleButton.ImageForState(UIKitFramework.UIControlState.Normal).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleButton.SetImageForState (Image.toAppleImage, UIKitFramework.UIControlState.Normal)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalTextColor(extends c as iOSButton) As Color
		  return c.AppleButton.TitleColorForState(UIKitFramework.UIControlState.Normal).toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalTextColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleButton.SetTitleColorForState (newcolor.toapplecolor, UIKitFramework.UIControlState.Normal)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalTextShadowColor(extends c as iOSButton) As Color
		  return c.AppleButton.TitleShadowColorForState (UIKitFramework.UIControlState.Normal).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NormalTextShadowColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleButton.SetTitleShadowColorForState (newcolor.toapplecolor, UIKitFramework.UIControlState.Normal)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReverseTextShadowOnTap(extends c as iOSButton) As Boolean
		  return c.AppleButton.ReversesTitleShadowWhenHighlighted
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReverseTextShadowOnTap(extends c as iOSButton, assigns value as Boolean)
		  c.AppleButton.ReversesTitleShadowWhenHighlighted = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedBackgroundImage(extends c as iOSButton) As iOSImage
		  return c.AppleButton.BackgroundImageForState(UIKitFramework.UIControlState.Selected).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedBackgroundImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleButton.SetBackgroundImageForState (Image.toAppleImage, UIKitFramework.UIControlState.Selected)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedCaption(extends c as iOSButton) As Text
		  return c.AppleButton.TitleForState ( UIKitFramework.UIControlState.Selected)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedCaption(extends c as iOSButton, assigns Caption as CFStringRef)
		  c.AppleButton.SetTitleForState (Caption, UIKitFramework.UIControlState.Selected)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedImage(extends c as iOSButton) As iOSImage
		  return c.AppleButton.ImageForState(UIKitFramework.UIControlState.Selected).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedImage(extends c as iOSButton, assigns Image as iOSImage)
		  c.AppleButton.SetImageForState (Image.toAppleImage, UIKitFramework.UIControlState.Selected)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedTextColor(extends c as iOSButton) As Color
		  return c.AppleButton.TitleColorForState(UIKitFramework.UIControlState.Selected).toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedTextColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleButton.SetTitleColorForState (newcolor.toapplecolor, UIKitFramework.UIControlState.Selected)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedTextShadowColor(extends c as iOSButton) As Color
		  return c.AppleButton.TitleShadowColorForState (UIKitFramework.UIControlState.Selected).tocolor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedTextShadowColor(extends c as iOSButton, assigns NewColor as color)
		  c.AppleButton.SetTitleShadowColorForState (newcolor.toapplecolor, UIKitFramework.UIControlState.Selected)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowTap(extends c as iOSButton) As Boolean
		  return c.AppleButton.ShowsTouchWhenHighlighted
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowTap(extends c as iOSButton, value as Boolean)
		  c.AppleButton.ShowsTouchWhenHighlighted = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Textlines(extends c as iOSButton) As Integer
		  return c.AppleButton.TitleLabel.NumberOfLines
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Textlines(extends c as iOSButton, assigns value as Integer)
		  c.AppleButton.TitleLabel.NumberOfLines = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleLabel(extends c as iOSButton) As AppleLabel
		  return c.AppleButton.TitleLabel
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
