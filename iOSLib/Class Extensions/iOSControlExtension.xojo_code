#tag Module
Protected Module iOSControlExtension
	#tag Method, Flags = &h0
		Function Alpha(extends c as iOSControl) As Double
		  Return c.iOSLibView.Alpha
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Alpha(extends c as iOSControl, assigns value as double)
		  c.iOSLibView.Alpha = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateBackgroundColor(extends c as ioscontrol, newcolor as color, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut)
		  c.iOSLibView.AnimateColor newcolor.toiOSLibColor, iOSLibViewAnimationOption.OptionNone, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateSize(extends c as ioscontrol, width as Double, height as Double, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut)
		  dim newFrame as new rect (0,0,Width, Height)
		  c.iOSLibView.AnimateBounds (newFrame.toNSRect, iOSLibViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AnimateTransform(extends c as ioscontrol, aTransform as CGAffineTransform, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut)
		  c.iOSLibView.AnimateTransform (aTransform, iOSLibViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundColor(extends c as iOSControl) As Color
		  Return c.iOSLibView.BackgroundColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundColor(extends c as iOSControl, assigns value as color)
		  c.iOSLibView.BackgroundColor = iOSLibColor.FromColor (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClipsToBounds(extends c as iOSControl) As Boolean
		  Return c.iOSLibView.ClipsToBounds
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipsToBounds(extends c as iOSControl, assigns value as boolean)
		  c.iOSLibView.ClipsToBounds = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FadeIn(extends c as ioscontrol, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut)
		  c.iOSLibView.AnimateAlpha (1, iOSLibViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FadeOut(extends c as ioscontrol, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut)
		  c.iOSLibView.AnimateAlpha (0, iOSLibViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FittingSize(extends c as iOSControl) As Size
		  return c.iOSLibView.SizeThatFits.toCoreSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvertTransformation(extends c as ioscontrol)
		  c.iOSLibView.InvertTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function iOSLibView(extends c as iOSControl) As iOSLibView
		  return new iOSLibView (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveTo(extends c as ioscontrol, x as Double, y as Double, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut)
		  dim newFrame as new rect (x, y ,c.Width, c.Height)
		  c.iOSLibView.AnimateFrame (newFrame.toNSRect, iOSLibViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Redraw(extends c as iOSControl)
		  c.iOSLibView.LayoutIfNeeded
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetTransformation(extends c as ioscontrol)
		  c.iOSLibView.ResetTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Rotate(extends c as ioscontrol, Angle as double)
		  c.iOSLibView.Rotate Angle.DegreeToRadian
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scale(extends c as ioscontrol, xfactor as double, yfactor as double = 0)
		  c.iOSLibView.Scale xfactor, yfactor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRotation(extends c as ioscontrol, Angle as double)
		  c.iOSLibView.SetRotation Angle.DegreeToRadian
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScale(extends c as ioscontrol, xfactor as double, yfactor as double = 0)
		  c.iOSLibView.SetScale xfactor, yfactor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTranslation(extends c as ioscontrol, DeltaX as double, DeltaY as double)
		  c.iOSLibView.SetTranslation deltaX, deltaY
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SizeToFit(extends c as ioscontrol)
		  c.iOSLibView.SizeToFit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateBackgroundColor(extends c as ioscontrol, newcolor as color, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  c.iOSLibView.springAnimateColor newcolor.toiOSLibColor, iOSLibViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateSize(extends c as ioscontrol, width as Double, height as Double, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  dim newFrame as new rect (0,0,Width, Height)
		  c.iOSLibView.SpringAnimateBounds (newFrame.toNSRect, iOSLibViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringAnimateTransform(extends c as ioscontrol, aTransform as CGAffineTransform, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  c.iOSLibView.SpringAnimateTransform (aTransform, iOSLibViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpringMoveTo(extends c as ioscontrol, x as Double, y as Double, Seconds as double = 0.2, curve as ioslibview.UIVIewAnimationCurve = ioslibview.uiviewanimationcurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  dim newFrame as new rect (x, y ,c.Width, c.Height)
		  c.iOSLibView.SpringAnimateFrame (newFrame.toNSRect, iOSLibViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TintColor(extends c as iOSControl) As Color
		  Return c.iOSLibView.TintColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TintColor(extends c as iOSControl, assigns value as color)
		  c.iOSLibView.TintColor = iOSLibColor.FromColor (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Translate(extends c as ioscontrol, DeltaX as double, DeltaY as double)
		  c.iOSLibView.Translate deltaX, deltaY
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
