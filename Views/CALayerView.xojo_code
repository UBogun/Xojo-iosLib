#tag IOSView
Begin iosView CALayerView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 170, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      ContentMode     =   "1"
      Height          =   170.0
      Image           =   "588568575"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   28
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSSlider Slider1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider1, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider1, 3, <Parent>, 3, False, +1.00, 1, 1, 224, 
      AutoLayout      =   Slider1, 9, <Parent>, 9, False, +1.00, 1, 1, 2, 
      AutoLayout      =   Slider1, 7, , 0, False, +1.00, 1, 1, 283, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   500.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   224
      Value           =   0.0
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 1, 1, 207, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "CornerRadius"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   207
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSSlider Slider2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider2, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider2, 3, <Parent>, 3, False, +1.00, 1, 1, 262, 
      AutoLayout      =   Slider2, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Slider2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   100.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   262
      Value           =   0.0
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 3, <Parent>, 3, False, +1.00, 1, 1, 245, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "BorderWidth"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   245
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSSlider Slider3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider3, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider3, 3, <Parent>, 3, False, +1.00, 1, 1, 300, 
      AutoLayout      =   Slider3, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Slider3, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   1.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   300
      Value           =   1.0
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label3, 3, <Parent>, 3, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Opacity"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   283
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSSlider Slider4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider4, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider4, 3, <Parent>, 3, False, +1.00, 1, 1, 338, 
      AutoLayout      =   Slider4, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Slider4, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   500.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   338
      Value           =   0.0
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label4, 3, <Parent>, 3, False, +1.00, 1, 1, 321, 
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Label4, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ShadowRadius"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   321
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label5, 3, <Parent>, 3, False, +1.00, 1, 1, 359, 
      AutoLayout      =   Label5, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Label5, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ShadowOpacity"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   359
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSSlider Slider5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider5, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider5, 3, <Parent>, 3, False, +1.00, 1, 1, 376, 
      AutoLayout      =   Slider5, 7, , 0, False, +1.00, 1, 1, 283, 
      AutoLayout      =   Slider5, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   1.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   376
      Value           =   0.0
      Visible         =   True
      Width           =   283.0
   End
   Begin iOSLabel Label6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label6, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label6, 3, <Parent>, 3, False, +1.00, 1, 1, 397, 
      AutoLayout      =   Label6, 7, , 0, False, +1.00, 1, 1, 148, 
      AutoLayout      =   Label6, 1, <Parent>, 1, False, +1.00, 1, 1, 17, 
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
      Top             =   397
      Visible         =   True
      Width           =   148.0
   End
   Begin iOSSlider OffsetX
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   OffsetX, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   OffsetX, 3, <Parent>, 3, False, +1.00, 1, 1, 414, 
      AutoLayout      =   OffsetX, 7, , 0, False, +1.00, 1, 1, 136, 
      AutoLayout      =   OffsetX, 1, <Parent>, 1, False, +1.00, 1, 1, 17, 
      Enabled         =   True
      Height          =   23.0
      Left            =   17
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   414
      Value           =   0.0
      Visible         =   True
      Width           =   136.0
   End
   Begin iOSSlider OffsetY
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   OffsetY, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   OffsetY, 3, <Parent>, 3, False, +1.00, 1, 1, 414, 
      AutoLayout      =   OffsetY, 7, , 0, False, +1.00, 1, 1, 136, 
      AutoLayout      =   OffsetY, 1, <Parent>, 1, False, +1.00, 1, 1, 163, 
      Enabled         =   True
      Height          =   23.0
      Left            =   163
      LockedInPosition=   False
      MaxValue        =   50.0
      MinValue        =   -50.0
      Scope           =   0
      Top             =   414
      Value           =   0.0
      Visible         =   True
      Width           =   136.0
   End
   Begin iOSLabel Label7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label7, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label7, 3, <Parent>, 3, False, +1.00, 1, 1, 397, 
      AutoLayout      =   Label7, 7, , 0, False, +1.00, 1, 1, 148, 
      AutoLayout      =   Label7, 1, <Parent>, 1, False, +1.00, 1, 1, 163, 
      Enabled         =   True
      Height          =   30.0
      Left            =   163
      LockedInPosition=   False
      Scope           =   0
      Text            =   "ShadowOffset Y"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   397
      Visible         =   True
      Width           =   148.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, OffsetX, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button1, 3, OffsetY, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 110, 
      Caption         =   "Return to menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   17
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   445
      Visible         =   True
      Width           =   110.0
   End
   Begin iOSButton BGColor
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BGColor, 1, <Parent>, 1, False, +1.00, 1, 1, 135, 
      AutoLayout      =   BGColor, 3, <Parent>, 3, False, +1.00, 1, 1, 445, 
      AutoLayout      =   BGColor, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   BGColor, 7, , 0, False, +1.00, 1, 1, 43, 
      Caption         =   "BG"
      Enabled         =   True
      Height          =   30.0
      Left            =   135
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   445
      Visible         =   True
      Width           =   43.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  system.DebugLog ImageView1.CoreAnimationLayer.AnimationKeys.toTextArray.toCommaList
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ShadowOffset()
		  dim newsize as new size (Offsetx.Value, offsety.value)
		  ImageView1.CoreAnimationLayer.ShadowOffset = newsize.toNSSize
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  me.Alpha = 0
		  me.FadeIn (3, iOSLibView.UIVIewAnimationCurve.EaseOut)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  ImageView1.CoreAnimationLayer.CornerRadius = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider2
	#tag Event
		Sub ValueChanged()
		  ImageView1.CoreAnimationLayer.BorderWidth = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider3
	#tag Event
		Sub ValueChanged()
		  ImageView1.CoreAnimationLayer.Opacity = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider4
	#tag Event
		Sub ValueChanged()
		  ImageView1.CoreAnimationLayer.ShadowRadius = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider5
	#tag Event
		Sub ValueChanged()
		  ImageView1.CoreAnimationLayer.shadowOpacity = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OffsetX
	#tag Event
		Sub ValueChanged()
		  ShadowOffset
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OffsetY
	#tag Event
		Sub ValueChanged()
		  ShadowOffset
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  self.Dismiss (true)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BGColor
	#tag Event
		Sub Action()
		  dim myarray() as color = array (&c394D7E08, &cDA770008,&cDED62D00 )
		  dim newlayer as new iOSLibCAGradientLayer (myarray)
		  newlayer.Frame = ImageView1.iOSLibView.Bounds
		  newlayer.ContentsScale = ImageView1.iOSLibView.Layer.ContentsScale
		  newlayer.RedrawOnResize = true
		  newlayer.MasksToBounds = true
		  ImageView1.CoreAnimationLayer.RedrawOnResize = true
		  ImageView1.iOSLibView.AutoresizesSubviews = true
		  // ImageView1.iOSLibView.AutoresizingMask = iOSLibAutoresizingMask.FullResize
		  system.DebugLog BGColor.iOSLibView.DebugDescription
		  // anotherlayer.Frame = ImageView1.iOSLibView.Bounds
		  // anotherlayer.Contents =  iOSLibObject.MakeFromPtr (mypic.Handle)
		  ImageView1.iOSLibView.Layer.AddSubLayer newlayer
		  // ImageView1.iOSLibView.ContentMode = iOSLibView.UIViewContentMode.ScaleToFill
		  // ImageView1.CoreAnimationLayer.AddSubLayer anotherlayer
		  // System.DebugLog BGColor.iOSLibView.Layer.SubLayers.DebugDescription
		  // System.DebugLog ImageView1.iOSLibView.DebugDescription
		  // System.DebugLog ImageView1.CoreAnimationLayer.DebugDescription
		  // System.DebugLog ImageView1.CoreAnimationLayer.SubLayers.DebugDescription
		  
		  // dim cp as new iOSLibColorPicker (me.BackgroundColor, "Pick a backgroundcolor")
		  // dim UserCancelled as Boolean
		  // dim mycolor as color = cp.GetColor (self, UserCancelled)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  // me.BackgroundColor = ImageView1.BackgroundColor
		  // me.CoreAnimationLayer.BorderWidth = 1
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
