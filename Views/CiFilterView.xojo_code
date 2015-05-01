#tag IOSView
Begin iosView CiFilterView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   "TabTitle"
   Title           =   "CIFIlter"
   Top             =   0
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 4, iOSLibPicker1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      ContentMode     =   "1"
      Height          =   155.0
      Image           =   "588568575"
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
      AutoLayout      =   Label3, 3, Slider3, 3, False, +1.00, 1, 1, -18, 
      AutoLayout      =   Label3, 7, Slider3, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, 17, 
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
      Top             =   431
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSSlider Slider3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider3, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider3, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Slider3, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Slider3, 7, ImageView1, 7, False, +0.50, 1, 1, 0, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   449
      Value           =   0.0
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSSlider Slider4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider4, 3, Slider3, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider4, 7, ImageView1, 7, False, +0.50, 1, 1, 0, 
      AutoLayout      =   Slider4, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider4, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   23.0
      Left            =   160
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   449
      Value           =   0.0
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 3, Label3, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 7, Slider4, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label4, 1, Slider4, 1, False, +1.00, 1, 1, 0, 
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
      Top             =   431
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSLibPicker iOSLibPicker1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   iOSLibPicker1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibPicker1, 2, <Parent>, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   iOSLibPicker1, 4, Label1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   iOSLibPicker1, 8, , 0, False, +1.00, 1, 1, 146, 
      Height          =   146.0
      Left            =   0
      LockedInPosition=   False
      NumberOfComponents=   0
      Scope           =   0
      SelectedColumn  =   0
      SelectionText   =   ""
      Top             =   236
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 3, Slider1, 3, False, +1.00, 1, 1, -18, 
      AutoLayout      =   Label1, 7, Slider1, 7, False, +1.00, 3, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 1, Slider1, 1, False, +1.00, 1, 1, 0, 
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
      Top             =   390
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSSlider Slider1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Slider1, 7, ImageView1, 7, False, +0.50, 1, 1, 0, 
      AutoLayout      =   Slider1, 4, Label3, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Slider1, 8, , 0, True, +1.00, 1, 1, 23, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   408
      Value           =   0.0
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSSlider Slider2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider2, 3, Slider1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider2, 7, ImageView1, 7, False, +0.50, 1, 1, 0, 
      AutoLayout      =   Slider2, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider2, 1, Slider1, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   23.0
      Left            =   160
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   408
      Value           =   0.0
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, Slider2, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 3, Label1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 7, Slider2, 7, False, +1.00, 1, 1, 0, 
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
      Top             =   390
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSTextField XField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   XField, 3, Label3, 3, False, +1.00, 1, 1, 10, 
      AutoLayout      =   XField, 7, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   XField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   XField, 1, Slider1, 1, False, +1.00, 1, 1, 0, 
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
      Top             =   441
      Visible         =   False
      Width           =   82.0
   End
   Begin iOSTextField YField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   YField, 9, ImageView1, 9, False, +1.00, 2, 1, 0, 
      AutoLayout      =   YField, 3, XField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   YField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   YField, 1, <Parent>, 1, False, +1.00, 1, 1, 119, 
      AutoLayout      =   YField, 7, , 0, False, +1.00, 1, 1, 82, 
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
      Top             =   441
      Visible         =   False
      Width           =   82.0
   End
   Begin iOSTextField ZField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ZField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   ZField, 3, XField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ZField, 1, <Parent>, 1, False, +1.00, 1, 1, 218, 
      AutoLayout      =   ZField, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ZField, 7, , 0, False, +1.00, 1, 1, 82, 
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
      Top             =   441
      Visible         =   False
      Width           =   82.0
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 4, Label4, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch1, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      Left            =   134
      LockedInPosition=   False
      Scope           =   0
      Top             =   392
      Value           =   False
      Visible         =   False
      Width           =   51.0
   End
   Begin iOSLabel SwitchLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SwitchLabel, 1, <Parent>, 1, False, +1.00, 2, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   SwitchLabel, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   SwitchLabel, 2, Switch1, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   SwitchLabel, 10, Label1, 10, False, +1.00, 1, 1, , 
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
      Top             =   390
      Visible         =   False
      Width           =   106.5
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  myFilter = new iOSLibCIBlurFilter
		  OriginalInputImage = new iOSLibciImage (new iOSLibImage(iosliblogo))
		  OriginalImage = OriginalInputImage
		  myFilter.InputciImage = OriginalInputImage
		  // ImageView1.Image = myFilter.OutputImage.toiOSImage
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  
		  button = iOSToolButton.NewBordered("Set InputImage")
		  Toolbar.Add(button)
		  
		  button = iOSToolButton.NewBordered("Set BGImage")
		  Toolbar.Add(button)
		  
		  button = iOSToolButton.NewBordered("Reset Image")
		  Toolbar.Add(button)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  select case button.Caption
		  case "Set InputImage"
		    if myFilter <> nil then
		      if myFilter.OutputCIImage <> nil then
		        OriginalInputImage = myFilter.OutputCIImage
		      end if
		    end if
		  case "Reset Image"
		    OriginalInputImage = OriginalImage
		  case "Set BGImage"
		    if myFilter <> nil then
		      if myFilter.OutputCIImage <> nil then
		        BackgroundImage = myFilter.OutputCIImage
		      end if
		    end if
		  Case "Help"
		    dim help as new InfoView ("iOSCIFIlter is an implementation of C(ore)I(mage)Filter, a class used for high-speed image filtering and manipulation. I know there is no high speed in sight on Simulator, but this is due to the latter rendering CIFilter on the CPU."+EndOfline + _
		    "To use, select a filter class, a filter and a property and change the last. To use the result for forther filtering, tap on »Set InputImage«. To revert, use »Reset Image«."+endofline + _
		    "Some filters require a backgroundfilter. That's what the »Set BackgroundFilter« butto is for. To use it, choose the »inputBackgroundImage« property on for example a BlendModeFilter."+endofline + _
		    "On the code side, I have started to build subclasses for easier set-up. But many (and many properties, which can be influenced by key value coding) are missing. You are very welcome to extend them.")
		    self.PushToCurl help
		  end select
		  
		End Sub
	#tag EndEvent


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
		  case "DoubleSided"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.doublesided,  ImageView1.CoreAnimationLayer.DoubleSided, not ( ImageView1.CoreAnimationLayer.DoubleSided))
		  case "Hidden"
		    myanimation = new iOSLIbCABasicAnimation (iOSLIbCABasicAnimation.Properties.hidden,  ImageView1.CoreAnimationLayer.hidden, not ( ImageView1.CoreAnimationLayer.hidden))
		  End Select
		  if myanimation <> NIL then
		    myanimation.Duration = AnimationDuration
		    myanimation.RepeatCount = AnimationRepeats
		    myanimation.Autoreverses = AnimationAutoReverse
		    ImageView1.ioslibview.layer.addanimation (myanimation)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub BuildFilterList(selection as text)
		  if iOSLibPicker1.NumberOfComponents > 2 then
		    iOSLibPicker1.RemoveColumn (2)
		  end if
		  if iOSLibPicker1.NumberOfComponents > 1 then
		    iOSLibPicker1.RemoveColumn (1)
		  end if
		  
		  select case selection
		  case "Blur"
		    showfilters (iOSLibCIFilter.BlurFilterNames)
		  case "ColorAdjustment"
		    Showfilters (iOSLibCIFilter.ColorAdjustmentFilterNames)
		  case "ColorEffect"
		    Showfilters (iOSLibCIFilter.ColorEffectFilterNames)
		  case "Composite Operation"
		    Showfilters (iOSLibCIFilter.CompositeOperationFilterNames)
		  case "Distortion"
		    Showfilters (iOSLibCIFilter.DistortionFilterNames)
		  case "Generator"
		    Showfilters (iOSLibCIFilter.GeneratorFilterNames)
		  case "Geometry Adjustment"
		    Showfilters (iOSLibCIFilter.GeometryAdjustmentFilterNames)
		  case "Gradient"
		    Showfilters (iOSLibCIFilter.GradientFilterNames)
		  case "Halftone"
		    Showfilters (iOSLibCIFilter.HalfToneFilterNames)
		  case "HDR"
		    Showfilters (iOSLibCIFilter.HDRFilterNames)
		  case "Interlaced"
		    Showfilters (iOSLibCIFilter.InterlacedFilterNames)
		  case "Non-Square Pixels"
		    Showfilters (iOSLibCIFilter.NonSquarePixelsFilterNames)
		  case "Reduction"
		    Showfilters (iOSLibCIFilter.ReductionFilterNames)
		  case "Sharpen"
		    Showfilters (iOSLibCIFilter.SharpenFilterNames)
		  case "Still Image"
		    Showfilters (iOSLibCIFilter.StillImageFilterNames)
		  case "Stylize"
		    Showfilters (iOSLibCIFilter.StylizeFilterNames)
		  case "Transition"
		    Showfilters (iOSLibCIFilter.TransitionFilterNames)
		  case "Tile"
		    Showfilters (iOSLibCIFilter.TileEffectFilterNames)
		  case "Video"
		    Showfilters (iOSLibCIFilter.VideoFilterNames)
		  case "Built-In"
		    Showfilters (iOSLibCIFilter.BuiltInFilterNames)
		  end select
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
		  label1.iOSLibView.Frame.Size_.width = mybounds.Size_.width
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setNumberValue(Dict as iOSLibDictionary, currValue as double)
		  dim minvalue as double =  ioslibnumber.MakefromPtr(dict.PtrForKey("CIAttributeSliderMin")).DoubleValue
		  dim MaxValue as double = ioslibnumber.makefromptr(dict.PtrForKey("CIAttributeSliderMax")).DoubleValue
		  dim DefaultValue  as double = ioslibnumber.MakefromPtr(dict.PtrForKey("CIAttributeDefault")).DoubleValue
		  
		  slider1.MinValue = minvalue
		  slider1.MaxValue = MaxValue
		  slider1.Value = currValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSingleSliderSize()
		  dim mybounds as  nsrect = slider1.iOSLibView.Frame
		  mybounds.Size_.width = ImageView1.Width
		  dim options as iOSLibViewAnimationOption = iOSLibViewAnimationOption.OptionNone
		  slider1.iOSLibView.AnimateFrame mybounds, options, 0.2, iOSLibview.UIVIewAnimationCurve.EaseInEaseOut, 0
		  label1.iOSLibView.Frame.Size_.width = mybounds.Size_.width
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Setvalues()
		  dim myprop as text = CurrentProperty
		  if myFilter <> nil then
		    if myFilter.FilterAttributes.ValueForKey (myprop) <> nil then
		      dim mydict as iOSLibDictionary = iOSLibDictionary.MakeFromPtr (myFilter.FilterAttributes.PtrForKey (myprop))
		      
		      select case mydict.TextForKey ("CIAttributeClass")
		      case "NSNumber"
		        myFilter.setValueForKey (myprop, new iOSLibNumber (Slider1.Value))
		      case "CIVector"
		        dim myvector as iOSLibCIVector
		        if not  label4.iOSLibView.Hidden then
		          myvector = new iOSLibCIVector (Slider1.Value, slider2.value, slider3.value, slider4.value)
		        elseif not label3.ioslibview.hidden then
		          myvector = new iOSLibCIVector (Slider1.Value, slider2.value, slider3.value)
		        elseif not label2.ioslibview.hidden then
		          myvector = new iOSLibCIVector (Slider1.Value, slider2.value)
		        else
		          myvector = new iOSLibCIVector (Slider1.Value)
		        end if
		        myFilter.setValueForKey (myprop, myvector)
		      case "CIColor"
		        myFilter.setValueForKey (myprop, new iOSLibCIColor (Slider1.value, slider2.value, slider3.value, slider4.value))
		      else
		        break
		      end select
		      ImageView1.Image = myFilter.OutputImage.toiOSImage
		    end if
		  end if
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
		Sub ShowColor(Acolor as iOSLibCIColor)
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

	#tag Method, Flags = &h21
		Private Sub Showfilters(Names as iOSLibArray)
		  iOSLibPicker1.AddColumn names.toTextArray
		  ShowValues (iOSLibPicker1.Caption (1))
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
		  if number = 1 then
		    SetSingleSliderSize
		  else
		    SetMultipleSliderSize
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
		Private Sub ShowValue(Key as text)
		  label1.text =Key
		  CurrentProperty = key
		  dim mydict as iOSLibDictionary = iOSLibDictionary.MakeFromPtr (myFilter.FilterAttributes.PtrForKey(key))
		  dim compare as text = mydict.TextForKey ("CIAttributeClass")
		  dim atttype as text = mydict.TextForKey ( "CIAttributeType")
		  select case compare
		    
		  case "NSNumber"
		    ShowSliders(1)
		    setNumbervalue(mydict, ioslibnumber.MakefromPtr (myFilter.ValueForKey(key)).doublevalue)
		  case "CIImage"
		    if key ="inputBackgroundImage" then
		      if BackgroundImage <> nil then
		        myFilter.setValueForKey "inputBackgroundImage", BackgroundImage
		        ImageView1.Image = myFilter.OutputImage.toiOSImage
		      end if
		    end if
		    // add a background image method later
		  case "CIVector"
		    ShowVectors (iOSLibCIVector.MakefromPtr(myFilter.ValueForKey(key)), (atttype = "CiAttributeTypePosition") )
		  case "CIColor"
		    ShowColor (iOSLibCIColor.MakefromPtr(myFilter.ValueForKey(key)))
		  case "NSData"
		    dim msg as new iOSMessageBox
		    msg.Title = "complex Structure"
		    msg.Message = "NSData is too complex to be arranged with sliders. Create your own test method!"
		    msg.Show
		  else
		    break
		  end select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowValues(selection as text)
		  if iOSLibPicker1.NumberOfComponents > 2 then
		    iOSLibPicker1.RemoveColumn (2)
		  end if
		  if not selection.Empty then
		    myFilter  =  iOSLibCIFilter.MakeFilter (selection)
		    myFilter.InputciImage = OriginalInputImage
		    if myFilter.OutputCIImage <> nil then ImageView1.Image = myFilter.OutputImage.toiOSImage
		    dim secondcolumn() as text
		    if myFilter.InputKeys.Count > 0 then
		      for q as uinteger = 0 to myFilter.InputKeys.Count -1
		        secondcolumn.Append myFilter.InputKeys.TextAtIndex(q)
		      next
		      iOSLibPicker1.AddColumn secondcolumn
		      ShowValue iOSLibPicker1.Caption(2)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowVectors(Vector as iOSLibCIVector, isPosition as boolean = false)
		  ShowSliders(vector.Count)
		  label2.text = "Y"
		  label3.text = "Z"
		  label4.text = "W"
		  
		  slider1.MinValue = 0
		  slider2.MinValue = 0
		  slider3.MinValue = 0
		  slider4.MinValue = 0
		  
		  if not isPosition then
		    slider1.MaxValue = 1
		    slider2.MaxValue = 1
		    slider3.MaxValue = 1
		    slider4.MaxValue = 1
		    
		  else
		    slider1.MaxValue = ImageView1.Width
		    slider2.MaxValue = ImageView1.Height
		    slider3.MaxValue = ImageView1.Width
		    slider4.MaxValue = imageview1.Height
		  end if
		  
		  slider4.Value = Vector.w
		  slider3.Value = Vector.z
		  slider2.Value = Vector.y
		  slider1.value = Vector.x
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private AnimationAutoReverse As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private AnimationDuration As Double = 0.2
	#tag EndProperty

	#tag Property, Flags = &h21
		Private AnimationRepeats As Double = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BackgroundImage As ioslibciimage
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CurrentProperty As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private myFilter As iOSLibCIFilter
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OriginalImage As ioslibciimage
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OriginalInputImage As ioslibciimage
	#tag EndProperty


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  me.Alpha = 0
		  me.FadeIn (3, iOSLibView.UIVIewAnimationCurve.EaseOut)
		  me.CoreAnimationLayer.ShadowPath = new iOSLibCGPathRoundedRect (NSRect (0,0,200,100), 50,50)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider3
	#tag Event
		Sub ValueChanged()
		  setValues
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  dim myslider as iOSLibSlider = me.iOSLibSlider
		  
		  #if DebugBuild then myslider.Continuous = false
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider4
	#tag Event
		Sub ValueChanged()
		  setValues
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  dim myslider as iOSLibSlider = me.iOSLibSlider
		  
		  #if DebugBuild then myslider.Continuous = false
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSLibPicker1
	#tag Event
		Sub Open()
		  me.AddColumn Array ("Blur", "ColorAdjustment", "ColorEffect", "Composite Operation", "Distortion", "Generator", "Geometry Adjustment", "Gradient", "Halftone", "HDR", "Interlaced", "Non-Square Pixels", "Reduction", "Sharpen", "Still Image", "Stylize", "Transition", "Tile", "Video", "Built-In" )
		  // me.AddColumn myFilter.FilterNames.toTextArray
		  HideSliders
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(row as integer, column as integer)
		  HideSliders
		  
		  select case column
		  case 0
		    buildFilterList (me.SelectionText)
		  case 1
		    showvalues  (me.SelectionText)
		  case 2
		    showvalue (me.SelectionText)
		  end select
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
		  #if DebugBuild then myslider.Continuous = false
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider2
	#tag Event
		Sub ValueChanged()
		  setValues
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  dim myslider as iOSLibSlider = me.iOSLibSlider
		  
		  #if DebugBuild then myslider.Continuous = false
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  Setvalues
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
