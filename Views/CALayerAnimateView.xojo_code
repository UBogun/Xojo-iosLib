#tag IOSView
Begin iosView CALayerAnimateView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   "TabTitle"
   Title           =   "CALayer Animations"
   Top             =   0
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 4, iOSLibPicker1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      ContentMode     =   "1"
      Height          =   117.0
      Image           =   "124063155"
      InitialParent   =   ""
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   "0"
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 7, Slider3, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label3, 3, Slider3, 3, False, +1.00, 1, 1, -18, 
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, 17, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   17
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ShadowOffset X"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   393
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSSlider Slider3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider3, 7, ImageView1, 7, False, +0.50, 1, 1, 0, 
      AutoLayout      =   Slider3, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Slider3, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider3, 4, Button1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   411
      Value           =   0.0
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSSlider Slider4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider4, 7, ImageView1, 7, False, +0.50, 1, 1, 0, 
      AutoLayout      =   Slider4, 3, Slider3, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider4, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Slider4, 8, , 0, True, +1.00, 1, 1, 23, 
      Enabled         =   True
      Height          =   23.0
      Left            =   160
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   411
      Value           =   0.0
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 7, Slider4, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 3, Label3, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 1, Slider4, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   160
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ShadowOffset Y"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   393
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 68, 
      AutoLayout      =   Button1, 1, Slider3, 1, False, +1.00, 1, 1, 0, 
      Caption         =   "Animate"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   68.0
   End
   Begin iOSSegmentedControl SegmentedControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedControl1, 8, , 0, True, +1.00, 1, 1, 29, 
      AutoLayout      =   SegmentedControl1, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   SegmentedControl1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   SegmentedControl1, 7, , 0, False, +1.00, 1, 1, 143, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   157
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Property\n\nTrue\rAnimation\n\nFalse"
      Top             =   443
      Value           =   0
      Visible         =   True
      Width           =   143.0
   End
   Begin iOSLibPicker iOSLibPicker1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   iOSLibPicker1, 7, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   iOSLibPicker1, 4, Label1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   iOSLibPicker1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibPicker1, 8, , 0, False, +1.00, 1, 1, 146, 
      Height          =   146.0
      Left            =   0
      LockedInPosition=   False
      NumberOfComponents=   0
      Scope           =   0
      SelectedColumn  =   0
      SelectionText   =   ""
      Top             =   198
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 7, Slider1, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 3, Slider1, 3, False, +1.00, 1, 1, -18, 
      AutoLayout      =   Label1, 1, Slider1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ShadowOffset X"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   352
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSSlider Slider1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider1, 7, ImageView1, 7, False, +0.50, 1, 1, 0, 
      AutoLayout      =   Slider1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Slider1, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider1, 4, Label3, 3, False, +1.00, 2, 1, 0, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   370
      Value           =   0.0
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSSlider Slider2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider2, 7, ImageView1, 7, False, +0.50, 1, 1, 0, 
      AutoLayout      =   Slider2, 3, Slider1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider2, 1, Slider1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider2, 8, , 0, True, +1.00, 1, 1, 23, 
      Enabled         =   True
      Height          =   23.0
      Left            =   160
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   370
      Value           =   0.0
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 7, Slider2, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 3, Label1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, 160, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   160
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ShadowOffset Y"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   352
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSTextField XField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   XField, 7, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   XField, 3, Label3, 3, False, +1.00, 1, 1, 10, 
      AutoLayout      =   XField, 1, Slider1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   XField, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "X"
      Scope           =   0
      Text            =   "1"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   403
      Visible         =   False
      Width           =   82.0
   End
   Begin iOSTextField YField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   YField, 7, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   YField, 3, XField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   YField, 1, <Parent>, 1, False, +1.00, 1, 1, 119, 
      AutoLayout      =   YField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   YField, 9, ImageView1, 9, False, +1.00, 2, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   119
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Y"
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   403
      Visible         =   False
      Width           =   82.0
   End
   Begin iOSTextField ZField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ZField, 7, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   ZField, 3, XField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ZField, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ZField, 1, <Parent>, 1, False, +1.00, 1, 1, 218, 
      AutoLayout      =   ZField, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   218
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Z"
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   403
      Visible         =   False
      Width           =   82.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 1, Button1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 3, Button1, 3, False, +1.00, 1, 1, 0, 
      Caption         =   "Help"
      Enabled         =   True
      Height          =   30.0
      Left            =   96
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   56.0
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch1, 4, Label4, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   Switch1, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   134
      LockedInPosition=   False
      Scope           =   0
      Top             =   354
      Value           =   False
      Visible         =   False
      Width           =   51.0
   End
   Begin iOSLabel SwitchLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SwitchLabel, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   SwitchLabel, 1, <Parent>, 1, False, +1.00, 2, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   SwitchLabel, 11, Label1, 11, False, +1.00, 1, 1, , 
      AutoLayout      =   SwitchLabel, 2, Switch1, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   352
      Visible         =   False
      Width           =   106.5
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub AnimateValues()
		  Dim Selection as text =  iOSLibPicker1.SelectionText
		  dim myanimation as iOSLIbCABasicAnimation
		  Select case selection
		  case "Backgroundcolor"
		    dim acolor as new iOSLibCGColor (Slider1.Value, slider2.value, slider3.value, Slider4.Value)
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.BackgroundColor,  ImageView1.CoreAnimationLayer.BackgroundColor, acolor)
		  case "BorderColor"
		    dim acolor as new iOSLibCGColor (Slider1.Value, slider2.value, slider3.value, Slider4.Value)
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.BorderColor,  ImageView1.CoreAnimationLayer.BorderColor, acolor)
		  case "ShadowColor"
		    dim acolor as new iOSLibCGColor (Slider1.Value, slider2.value, slider3.value, Slider4.Value)
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.ShadowColor,  ImageView1.CoreAnimationLayer.ShadowColor, acolor)
		  case "BorderWidth"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.BorderWidth,  ImageView1.CoreAnimationLayer.BorderWidth, slider1.value)
		  case "CornerRadius"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.CornerRadius,  ImageView1.CoreAnimationLayer.CornerRadius, slider1.value)
		  case "Opacity"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Opacity, ImageView1.CoreAnimationLayer.Opacity, Slider1.value)
		  case "ShadowOpacity"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.ShadowOpacity, ImageView1.CoreAnimationLayer.ShadowRadius, Slider1.value)
		  case "ShadowRadius"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.ShadowRadius,  ImageView1.CoreAnimationLayer.ShadowRadius, slider1.value)
		  case "ShadowOffset"
		    dim newsize as new size (Slider1.value, slider2.value)
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.ShadowOffset,  ImageView1.CoreAnimationLayer.ShadowOffset, newsize.tonssize)
		  case "Position"
		    dim newsize as new point (Slider1.value, slider2.value)
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Position,  ImageView1.CoreAnimationLayer.Position, newsize.tonspoint)
		  case "Bounds"
		    dim newframe as new rect (slider1.value, slider2.value, slider3.value, slider4.value)
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Bounds,  ImageView1.CoreAnimationLayer.Bounds, newframe.tonsrect)
		  case "Anchorpoint"
		    dim newsize as new point (Slider1.value, slider2.value)
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Anchorpoint,  ImageView1.CoreAnimationLayer.AnchorPoint, newsize.tonspoint)
		  case "MakeRotation"
		    dim newtransform as CATransform3D = CATransform3DMakeRotation (Slider1.Value.DegreeToRadian, double.Parse (XField.text), double.Parse (YField.text), Double.Parse (ZField.text))
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Transform,  ImageView1.CoreAnimationLayer.Transform, newtransform)
		  case "Rotate"
		    dim newtransform as CATransform3D = CATransform3DRotate (ImageView1.iOSLibView.layer.Transform, Slider1.Value.DegreeToRadian, double.Parse (XField.text), double.Parse (YField.text), Double.Parse (ZField.text))
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Transform,  ImageView1.CoreAnimationLayer.Transform, newtransform)
		  case "MakeScale"
		    dim newtransform as CATransform3D = CATransform3DMakeScale (Slider1.Value * double.Parse (XField.text), Slider1.Value * double.Parse (YField.text), Slider1.Value * Double.Parse (ZField.text))
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Transform,  ImageView1.CoreAnimationLayer.Transform, newtransform)
		  case "Scale"
		    dim newtransform as CATransform3D = CATransform3DScale (ImageView1.iOSLibView.layer.Transform, Slider1.Value * double.Parse (XField.text), Slider1.Value * double.Parse (YField.text), Slider1.Value * Double.Parse (ZField.text))
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Transform,  ImageView1.CoreAnimationLayer.Transform, newtransform)
		  case "MakeTranslation"
		    dim newtransform as CATransform3D = CATransform3DMakeTranslation(Slider1.Value * double.Parse (XField.text), Slider1.Value * double.Parse (YField.text), Slider1.Value * Double.Parse (ZField.text))
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Transform,  ImageView1.CoreAnimationLayer.Transform, newtransform)
		  case "Translate"
		    dim newtransform as CATransform3D = CATransform3DTranslate (ImageView1.iOSLibView.layer.Transform, Slider1.Value * double.Parse (XField.text), Slider1.Value * double.Parse (YField.text), Slider1.Value * Double.Parse (ZField.text))
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Transform,  ImageView1.CoreAnimationLayer.Transform, newtransform)
		  case "Identity"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Transform,  ImageView1.CoreAnimationLayer.Transform, CATransform3DIdentity)
		  case "Invert"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.Transform,  ImageView1.CoreAnimationLayer.Transform, CATransform3DInvert (ImageView1.CoreAnimationLayer.Transform) )
		    
		  case "MasksToBounds"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.MasksToBounds,  ImageView1.CoreAnimationLayer.MasksToBounds, not ( ImageView1.CoreAnimationLayer.MasksToBounds))
		    
		  End Select
		  if myanimation <> NIL then
		    myanimation.Duration = AnimationDuration
		    myanimation.RepeatCount = AnimationRepeats
		    ImageView1.ioslibview.layer.addanimation (myanimation)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HideSliders()
		  slider1.iOSLibView.Hidden = true
		  slider2.iOSLibView.Hidden = true
		  slider3.iOSLibView.Hidden = true
		  slider4.iOSLibView.Hidden = true
		  slider1.iOSLibView.Frame.Size_.width = ImageView1.Width/2
		  
		  label1.iOSLibView.Hidden = true
		  label2.iOSLibView.Hidden = true
		  label3.iOSLibView.Hidden = true
		  label4.iOSLibView.Hidden = true
		  
		  XField.iOSLibView.Hidden = True
		  YField.iOSLibView.Hidden = True
		  ZField.iOSLibView.Hidden = True
		  
		  SwitchLabel.iOSLibView.Hidden = true
		  Switch1.iOSLibView.hidden = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMultipleSliderSize()
		  dim mybounds as  nsrect = slider1.iOSLibView.Frame
		  mybounds.Size_.width = ImageView1.Width/2
		  dim options as iOSLibViewAnimationOption = iOSLibViewAnimationOption.OptionNone
		  slider1.iOSLibView.AnimateFrame mybounds, options
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSingleSliderSize()
		  dim mybounds as  nsrect = slider1.iOSLibView.Frame
		  mybounds.Size_.width = ImageView1.Width
		  dim options as iOSLibViewAnimationOption = iOSLibViewAnimationOption.OptionNone
		  slider1.iOSLibView.AnimateFrame mybounds, options, 0.2, iOSLibview.UIVIewAnimationCurve.EaseInEaseOut, 0
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Setvalues()
		  Select case iOSLibPicker1.SelectionText
		  case "Backgroundcolor"
		    dim acolor as new iOSLibCGColor (Slider1.Value, slider2.value, slider3.value, Slider4.Value)
		    if SegmentedControl1.Value = 0 then ImageView1.CoreAnimationLayer.BackgroundColor = acolor
		  case "BorderColor"
		    dim acolor as new iOSLibCGColor (Slider1.Value, slider2.value, slider3.value, Slider4.Value)
		    if SegmentedControl1.Value = 0 then ImageView1.CoreAnimationLayer.BorderColor = acolor
		  case "ShadowColor"
		    dim acolor as new iOSLibCGColor (Slider1.Value, slider2.value, slider3.value, Slider4.Value)
		    if SegmentedControl1.Value = 0 then ImageView1.CoreAnimationLayer.ShadowColor = acolor
		  Case "BorderWidth"
		    if SegmentedControl1.Value = 0 then ImageView1.CoreAnimationLayer.BorderWidth = Slider1.value
		  case "CornerRadius"
		    if SegmentedControl1.Value = 0 then ImageView1.CoreAnimationLayer.CornerRadius = slider1.value
		  case "Opacity"
		    if SegmentedControl1.Value = 0 then ImageView1.CoreAnimationLayer.Opacity = slider1.value
		  case "ShadowOpacity"
		    if SegmentedControl1.Value = 0 then ImageView1.CoreAnimationLayer.ShadowOpacity = slider1.value
		  case "ShadowRadius"
		    if SegmentedControl1.Value = 0 then ImageView1.CoreAnimationLayer.ShadowRadius = slider1.value
		  case "AnimationDuration"
		    AnimationDuration = slider1.value
		  case "AnimationRepeats"
		    AnimationRepeats = slider1.value
		  case "ShadowOffset"
		    dim newsize as new size( slider1.Value, slider2.Value)
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.ShadowOffset = newsize.tonssize
		  case "Position"
		    dim newsize as new point( slider1.Value, slider2.Value)
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Position = newsize.tonspoint
		  case "Anchorpoint"
		    dim newsize as new point( slider1.Value, slider2.Value)
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.AnchorPoint = newsize.tonspoint
		  case "Bounds"
		    dim newframe as new rect( slider1.Value, slider2.Value, slider3.value, slider4.value)
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.bounds = newframe.tonsrect
		    
		    
		  case "MakeRotation"
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Transform = _
		    CATransform3DMakeRotation (Slider1.Value.DegreeToRadian, double.Parse (XField.text), double.Parse (YField.text), Double.Parse (ZField.text))
		  case "Rotate"
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Transform = _
		    CATransform3DRotate (ImageView1.iOSLibView.layer.Transform, Slider1.Value.DegreeToRadian, double.Parse (XField.text), double.Parse (YField.text), Double.Parse (ZField.text))
		  case "MakeScale"
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Transform = _
		    CATransform3DMakeScale ( Slider1.Value *double.Parse (XField.text), Slider1.Value *double.Parse (YField.text),Slider1.Value * Double.Parse (ZField.text))
		  case "Scale"
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Transform = _
		    CATransform3DScale (ImageView1.iOSLibView.layer.Transform, Slider1.Value * double.Parse (XField.text), Slider1.Value *double.Parse (YField.text), Slider1.Value *Double.Parse (ZField.text))
		  case "MakeTranslation"
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Transform = _
		    CATransform3DMakeTranslation ( Slider1.Value *double.Parse (XField.text), Slider1.Value *double.Parse (YField.text),Slider1.Value * Double.Parse (ZField.text))
		  case "Translate"
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Transform = _
		    CATransform3DTranslate (ImageView1.iOSLibView.layer.Transform, Slider1.Value * double.Parse (XField.text), Slider1.Value *double.Parse (YField.text), Slider1.Value *Double.Parse (ZField.text))
		    
		  case "contentsScale"
		    ImageView1.CoreAnimationLayer.ContentsScale = slider1.value
		  case "ZPosition"
		    ImageView1.CoreAnimationLayer.ZPosition = slider1.value
		  case "MasksToBounds"
		    ImageView1.CoreAnimationLayer.MasksToBounds = Switch1.value
		    
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowBoolean(Value as Boolean, Caption as text)
		  SwitchLabel.iOSLibView.Hidden = false
		  Switch1.iOSLibView.hidden = false
		  switch1.value = value
		  
		  SwitchLabel.Text = Caption
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowColor(Acolor as iOSLibCGColor)
		  SetMultipleSliderSize
		  
		  ShowSliders (4)
		  Slider1.MinValue = 0
		  slider1.MaxValue = 1
		  Slider2.MinValue = 0
		  slider2.MaxValue = 1
		  Slider3.MinValue = 0
		  slider3.MaxValue = 1
		  Slider4.MinValue = 0
		  slider4.MaxValue = 1
		  
		  slider1.Value = acolor.Red
		  slider2.Value = Acolor.Green
		  slider3.Value = Acolor.blue
		  slider4.Value = Acolor.Alpha
		  
		  label1.Text = "Red"
		  label2.text= "Green"
		  label3.text= "Blue"
		  label4.text = "Alpha"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowFrame(aFrame as NSRect, minx as double, maxx as double, miny as double, maxy as double)
		  SetMultipleSliderSize
		  
		  ShowSliders (4)
		  Slider1.MinValue = minx
		  slider1.MaxValue = maxx
		  Slider2.MinValue = minx
		  slider2.MaxValue = maxy
		  Slider3.MinValue = minx
		  slider3.MaxValue = maxx
		  Slider4.MinValue = miny
		  slider4.MaxValue = maxy
		  
		  slider1.Value = aFrame.Origin.x
		  slider2.Value = aFrame.Origin.y
		  slider3.Value = aFrame.Size_.width
		  slider4.Value = aFrame.size_.height
		  
		  label1.Text = "X"
		  label2.text= "Y"
		  label3.text= "W"
		  label4.text = "H"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowPoint(Value as nspoint, min as double, max as double, Caption as text)
		  ShowSliders (2)
		  SetMultipleSliderSize
		  Slider1.MinValue = min
		  slider1.MaxValue = max
		  Slider2.MinValue = min
		  slider2.MaxValue = max
		  slider1.Value = value.x
		  slider2.Value = value.y
		  
		  label1.Text = Caption+" X"
		  label2.text = Caption+" Y"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowSingle(Value as double, min as double, max as double, Caption as text)
		  ShowSliders (1)
		  Slider1.MinValue = min
		  slider1.MaxValue = max
		  
		  slider1.Value = value
		  
		  label1.Text = Caption
		  timer.CallLater 1, addressof SetSingleSliderSize
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowSize(Value as nssize, min as double, max as double, Caption as text)
		  ShowSliders (2)
		  SetMultipleSliderSize
		  Slider1.MinValue = min
		  slider1.MaxValue = max
		  Slider2.MinValue = min
		  slider2.MaxValue = max
		  slider1.Value = value.width
		  slider2.Value = value.height
		  
		  label1.Text = Caption+" X"
		  label2.text = Caption+" Y"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowSliders(Number as integer)
		  if number > 0 then
		    slider1.iOSLibView.Hidden = false
		    label1.iOSLibView.Hidden = false
		  end if
		  if number > 1 then
		    slider2.iOSLibView.Hidden = false
		    label2.iOSLibView.Hidden = false
		  end if
		  if number > 2 then
		    slider3.iOSLibView.Hidden = false
		    label3.iOSLibView.Hidden = false
		  end if
		  if number > 3 then
		    slider4.iOSLibView.Hidden = false
		    label4.iOSLibView.Hidden = false
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowTransform(Value as double, min as double, max as double, Caption as text)
		  ShowSliders (1)
		  Slider1.MinValue = min
		  slider1.MaxValue = max
		  
		  slider1.Value = value
		  
		  XField.iOSLibView.Hidden = false
		  YField.iOSLibView.Hidden = false
		  ZField.iOSLibView.Hidden = false
		  
		  
		  label1.Text = Caption
		  timer.CallLater 1, addressof SetSingleSliderSize
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowValues()
		  Dim Selection as text =  iOSLibPicker1.SelectionText
		  Select case selection
		  case "Backgroundcolor"
		    ShowColor (ImageView1.CoreAnimationLayer.BackgroundColor)
		  case "BorderColor"
		    ShowColor (ImageView1.CoreAnimationLayer.BorderColor)
		  case "ShadowColor"
		    ShowColor (ImageView1.CoreAnimationLayer.ShadowColor)
		  case "BorderWidth"
		    showSingle (ImageView1.CoreAnimationLayer.BorderWidth, 0, 100, selection)
		  case "CornerRadius"
		    showSingle (ImageView1.CoreAnimationLayer.CornerRadius, 0, 100, selection)
		  case "AnimationDuration"
		    showSingle (AnimationDuration, 0, 10, selection)
		  case "AnimationRepeats"
		    showSingle (AnimationRepeats, 0, 50, selection)
		  case "Opacity"
		    showSingle (ImageView1.CoreAnimationLayer.Opacity, 0,1, selection)
		  case "ShadowOpacity"
		    showSingle (ImageView1.CoreAnimationLayer.ShadowOpacity, 0,1, selection)
		  case "ShadowRadius"
		    showSingle (ImageView1.CoreAnimationLayer.ShadowRadius, 0, 100, selection)
		  case "ShadowOffset"
		    showSize (ImageView1.CoreAnimationLayer.ShadowOffset, -100, 100, Selection)
		  case "Position"
		    ShowPoint (ImageView1.CoreAnimationLayer.Position, -100, 600, Selection)
		  case "Anchorpoint"
		    ShowPoint (ImageView1.CoreAnimationLayer.AnchorPoint, -0, 1, Selection)
		  case "Bounds"
		    ShowFrame (ImageView1.CoreAnimationLayer.Bounds, -0, 600, 0, 600)
		  case "ContentsScale"
		    showSingle (ImageView1.CoreAnimationLayer.ContentsScale, 0, 10, selection)
		  case "ZPosition"
		    showSingle (ImageView1.CoreAnimationLayer.ZPosition, -50, 50, selection)
		  case "MakeRotation"
		    ShowTransform (0, -360, 360, selection)
		  case "Rotate"
		    ShowTransform (0, -2, 2, selection)
		  case "MasksToBounds"
		    ShowBoolean (ImageView1.CoreAnimationLayer.MasksToBounds, selection)
		  case "MakeScale"
		    ShowTransform (1, 0, 10, selection)
		  case "Scale"
		    ShowTransform (1, 0, 2, selection)
		  case "MakeTranslation"
		    ShowTransform (0, -600, 600, selection)
		  case  "Translate"
		    ShowTransform (0, -2, 2, selection)
		  case "Identity"
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Transform = CATransform3DIdentity
		  case "Invert"
		    if SegmentedControl1.value = 0 then ImageView1.CoreAnimationLayer.Transform = CATransform3DInvert (ImageView1.iOSLibView.layer.Transform)
		    
		  End Select
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private AnimationDuration As Double = 0.2
	#tag EndProperty

	#tag Property, Flags = &h21
		Private AnimationRepeats As Double = 0
	#tag EndProperty


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  me.Alpha = 0
		  me.FadeIn (3, iOSLibView.UIVIewAnimationCurve.EaseOut)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider3
	#tag Event
		Sub ValueChanged()
		  setValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider4
	#tag Event
		Sub ValueChanged()
		  setValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  AnimateValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSLibPicker1
	#tag Event
		Sub Open()
		  me.AddColumn array("AnimationDuration", "AnimationRepeats", "_ Animatable Properties _", "Anchorpoint", "BackgroundColor", "BorderColor", "BorderWidth", "Bounds", _
		  "CornerRadius", "MasksToBounds", "Opacity", "Position", "ShadowColor", _
		  "ShadowOffset", "ShadowOpacity", "ShadowRadius", _
		  "_Transform3D_", "Identity", "MakeRotation", "Rotate","MakeScale", "Scale", "MakeTranslation", "Translate", "Invert", _
		  "_Unanimatabale Properties_", "ContentsScale", "ZPosition")
		  HideSliders
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(row as integer, column as integer)
		  HideSliders
		  showvalues
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  setValues
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  dim myslider as iOSLibSlider = me.iOSLibSlider
		  dim mybounds as NSRect = myslider.ThumbRect
		  dim newcolor as color = &cB3FFD500
		  myslider.MinimumTrackTintColor = iOSLibColor.FromColor (newcolor)
		  newcolor = &cFF211C00
		  myslider.MaximumTrackTintColor = iOSLibColor.FromColor (newcolor)
		  newcolor = &cFF6D1C00
		  myslider.ThumbTintColor = iOSLibColor.FromColor (newcolor)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider2
	#tag Event
		Sub ValueChanged()
		  setValues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  dim help as new InfoView ("Here you have access to many of the properties CALayer offers, including Core Animations."+endofline + _
		  "To use, select one of the properties and change it via the slider(s). As long as <Property> is selected, the CALayer property is changed immediately." + endofline + _
		  "When you select <Animation> and change the values, there is no visible change until you click on <Animate>, in which case a Core Animation for the selected property is triggered."+endofline + _
		  "You can change some of the animation values like duration and number of repeats too."+EndOfline+endofline+ _
		  "The Transform3D properties take values for X, Y and Z axis which are displayed and can be changed if necessary."+ endofline+ _
		  "Don't be surprised changing the property makes the image jump. Contentmode and constraints of the view may change its appearance on screen updates.")
		  self.PushToCurl help
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
