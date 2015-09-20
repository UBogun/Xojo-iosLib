#tag Module
Protected Module iOSControlExtension
	#tag Method, Flags = &h0
		Function Alpha(extends c as iOSControl) As Double
		  Return c.AppleView.Alpha
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Alpha(extends c as iOSControl, assigns value as double)
		  c.AppleView.Alpha = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateBackgroundColor(extends c as ioscontrol, newcolor as color, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleView.AnimateColor newcolor.toAppleColor, AppleViewAnimationOption.OptionNone, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSize(extends c as ioscontrol, width as Double, height as Double, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  dim newFrame as new rect (0,0,Width, Height)
		  c.AppleView.AnimateBounds (newFrame.toNSRect, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateTransform(extends c as ioscontrol, aTransform as CGAffineTransform, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleView.AnimateTransform (aTransform, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppleView(extends c as iOSControl) As AppleView
		  return new AppleView (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundColor(extends c as iOSControl) As Color
		  Return c.AppleView.BackgroundColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundColor(extends c as iOSControl, assigns value as color)
		  c.AppleView.BackgroundColor = AppleColor.FromColor (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClipsToBounds(extends c as iOSControl) As Boolean
		  Return c.AppleView.ClipsToBounds
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipsToBounds(extends c as iOSControl, assigns value as boolean)
		  c.AppleView.ClipsToBounds = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CoreAnimationLayer(extends c as ioscontrol) As AppleCALayer
		  return c.AppleView.Layer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FadeIn(extends c as ioscontrol, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleView.AnimateAlpha (1, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FadeOut(extends c as ioscontrol, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleView.AnimateAlpha (0, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FittingSize(extends c as iOSControl) As Size
		  return c.AppleView.SizeThatFits.toCoreSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvertTransformation(extends c as ioscontrol)
		  c.AppleView.InvertTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveTo(extends c as ioscontrol, x as Double, y as Double, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  dim newFrame as new rect (x, y ,c.Width, c.Height)
		  c.AppleView.AnimateFrame (newFrame.toNSRect, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Redraw(extends c as iOSControl)
		  c.AppleView.LayoutIfNeeded
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetTransformation(extends c as ioscontrol)
		  c.AppleView.ResetTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Rotate(extends c as ioscontrol, Angle as double)
		  c.AppleView.Rotate Angle.DegreeToRadian
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scale(extends c as ioscontrol, xfactor as double, yfactor as double = 0)
		  c.AppleView.Scale xfactor, yfactor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRotation(extends c as ioscontrol, Angle as double)
		  c.AppleView.SetRotation Angle.DegreeToRadian
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScale(extends c as ioscontrol, xfactor as double, yfactor as double = 0)
		  c.AppleView.SetScale xfactor, yfactor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTranslation(extends c as ioscontrol, DeltaX as double, DeltaY as double)
		  c.AppleView.SetTranslation deltaX, deltaY
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SizeToFit(extends c as ioscontrol)
		  c.AppleView.SizeToFit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateBackgroundColor(extends c as ioscontrol, newcolor as color, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  c.AppleView.springAnimateColor newcolor.toAppleColor, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateSize(extends c as ioscontrol, width as Double, height as Double, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  dim newFrame as new rect (0,0,Width, Height)
		  c.AppleView.SpringAnimateBounds (newFrame.toNSRect, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateTransform(extends c as ioscontrol, aTransform as CGAffineTransform, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  c.AppleView.SpringAnimateTransform (aTransform, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringMoveTo(extends c as ioscontrol, x as Double, y as Double, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  dim newFrame as new rect (x, y ,c.Width, c.Height)
		  c.AppleView.SpringAnimateFrame (newFrame.toNSRect, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TintColor(extends c as iOSControl) As Color
		  Return c.AppleView.TintColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TintColor(extends c as iOSControl, assigns value as color)
		  c.AppleView.TintColor = AppleColor.FromColor (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Translate(extends c as ioscontrol, DeltaX as double, DeltaY as double)
		  c.AppleView.Translate deltaX, deltaY
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
