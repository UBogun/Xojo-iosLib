#tag IOSView
Begin iosView CAGradientLayerView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "AppleCAGradientLayer"
   Top             =   0
   Begin iOSLibGradientView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 4, ColorField, 3, False, +1.00, 2, 1, -20, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Height          =   248.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   73
      Visible         =   False
      Width           =   280.0
   End
   Begin iOSTextField ColorField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ColorField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   ColorField, 4, LocationsField, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   ColorField, 2, ImageView1, 2, False, +1.00, 1, 1, -58, 
      AutoLayout      =   ColorField, 1, ImageView1, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Colors"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   10
      Top             =   341
      Visible         =   True
      Width           =   222.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 3, ColorField, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Caption         =   "Set"
      Enabled         =   True
      Height          =   30.0
      Left            =   259
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   341
      Visible         =   True
      Width           =   41.0
   End
   Begin iOSTextField LocationsField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   LocationsField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   LocationsField, 4, Slider1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   LocationsField, 2, Button4, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   LocationsField, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Locations"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   10
      Top             =   380
      Visible         =   True
      Width           =   182.0
   End
   Begin iOSButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 1, 1, 41, 
      AutoLayout      =   Button3, 3, LocationsField, 3, False, +1.00, 1, 1, 0, 
      Caption         =   "Set"
      Enabled         =   True
      Height          =   30.0
      Left            =   259
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   380
      Visible         =   True
      Width           =   41.0
   End
   Begin iOSButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 2, Button3, 1, False, +1.00, 2, 1, -*kStdControlGapH, 
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 1, 1, 41, 
      AutoLayout      =   Button4, 3, LocationsField, 3, False, +1.00, 2, 1, 0, 
      Caption         =   "Distr."
      Enabled         =   True
      Height          =   30.0
      Left            =   210
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   380
      Visible         =   True
      Width           =   41.0
   End
   Begin iOSSlider Slider1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider1, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider1, 4, Label1, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Slider1, 7, ImageView1, 7, False, +0.25, 1, 1, 0, 
      AutoLayout      =   Slider1, 1, LocationsField, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   1.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   419
      Value           =   0.5
      Visible         =   True
      Width           =   70.0
   End
   Begin iOSSlider Slider2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider2, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider2, 4, Label1, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Slider2, 7, Slider1, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider2, 1, Slider1, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   23.0
      Left            =   90
      LockedInPosition=   False
      MaxValue        =   1.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   419
      Value           =   0.0
      Visible         =   True
      Width           =   70.0
   End
   Begin iOSSlider Slider5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider5, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider5, 4, Label2, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Slider5, 7, Slider1, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider5, 1, Slider2, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   23.0
      Left            =   160
      LockedInPosition=   False
      MaxValue        =   1.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   419
      Value           =   0.5
      Visible         =   True
      Width           =   70.0
   End
   Begin iOSSlider Slider6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider6, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Slider6, 4, Label2, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Slider6, 7, Slider5, 7, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider6, 1, Slider5, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   23.0
      Left            =   230
      LockedInPosition=   False
      MaxValue        =   1.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   419
      Value           =   1.0
      Visible         =   True
      Width           =   70.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Label1, 2, Slider2, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 1, Slider1, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Start Point"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   442
      Visible         =   True
      Width           =   140.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Label2, 2, Slider6, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Label2, 1, Slider5, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   160
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "End Point"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   442
      Visible         =   True
      Width           =   140.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  
		  button = iOSToolButton.NewBordered("Animate")
		  Toolbar.Add(button)
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  if button.Caption = "Help" then
		    dim help as new InfoView ("AppleCAGradientLayer is a subclass of AppleCALayer. It displays a linear gradient between as many colors as you like. "+eol + _
		    "You can instantiate one with the Constructor, passing an array of Colors, and attach it the the AppleCALayer of your control as a sublayer with Layer.AddSublayer." + eol + _
		    "Or you can use the custom iOSLibGradientView control does the same which assures correct autoresizing for you." + eol+eol + _
		    "Additional optional properties are an array of Doubles containing the locations of the colors (between 0.0 and 1.0) and start- and endpoints as NSPoints." + eol + _
		    "A DistributeEvenly method resets the locations to equal distances." + eol + _
		    "And of course you can assign each AppleCALayer property to it, like borderwidth and cornerradius." + eol + _
		    "All the properties are animatable. When you click on »Animate«, a 5 seconds AppleCABasicAnimationGroup changing Colors and positions of the colors is started."+eol+ _
		    "Technically the GradientLayer is the first sublayer of a normal CALayer. This is not as nice as intended, but I was not able to change a UIViews' subclass layerClass property without changing this value for ever view."+eol + _
		    "Help on this issue is highly welcomed. Because of this limitation, you will find a Layer and a GradientLayer property in the control. I will add convenience methods to the view so you don't have to worry about that." + eol + _
		    "To illustrate the existence of 2 layers, I have added a border to the CALayer and rounded rects to the GradientLayer.")
		    self.PushToCurl help
		  else // Animate
		    dim myarray() as color = array (&c14982200, &cDA770033, &cBB224433, &c1012FF22)
		    dim mycolarray as AppleMutableArray =  AppleMutableArray.CGColorArray (myarray)
		    dim myColoranimation as new AppleCABasicAnimation (AppleCABasicAnimation.Properties.gradientcolors, ImageView1.GradientLayer.colors, mycolarray)
		    dim myLocationAnimation as new AppleCABasicAnimation (AppleCABasicAnimation.Properties.gradientLocations, ImageView1.GradientLayer.locations, AppleMutableArray.NumberArray (Array(0, 0.1, 0.3, 0.7, 0.95)))
		    dim myANimationGroup as new AppleCAAnimationGroup (myColoranimation, myLocationAnimation)
		    myANimationGroup.Duration = 5
		    myANimationGroup.Autoreverses = true
		    ImageView1.GradientLayer.AddAnimation (myANimationGroup)
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub showvalues()
		  dim mycolors() as color
		  for q as integer = 1 to ImageView1.GradientLayer.Colors.Count
		    dim mycolor as new AppleCGColor (ImageView1.GradientLayer.Colors.PtrAtIndex (q-1))
		    mycolors.Append mycolor.toColor
		  next
		  ColorField.text = mycolors.toCommaList
		  //
		  dim mylocations() as double
		  dim mylocationarray as AppleArray = imageview1.GradientLayer.Locations
		  if mylocationarray <> NIL then
		    for q as integer = 1 to mylocationarray.Count
		      dim mylocation as new AppleNumber (mylocationarray.PtrAtIndex (q-1))
		      mylocations.Append mylocation.DoubleValue
		    next
		    LocationsField.text = mylocations.toCommaList
		  else
		    LocationsField.text = "Even distribution"
		  end if
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  me.Alpha = 0
		  me.FadeIn (3, appleview.UIViewAnimationCurve.EaseOut)
		  me.view.ContentMode = appleview.UIViewContentMode.Center
		  dim mypic as iOSImage = Birnebuntklein
		  dim myimage as new AppleImage (mypic.Handle)
		  me.CoreAnimationLayer.Contents =new AppleObject ( myimage.CGImage.CFTypeRef)
		  dim myarray() as color = array (&c394D7E00, &cDA770033, &c44996522, &c38782244 )
		  me.view.setValueForKeyPath ("layer.borderWidth", new AppleNumber(2))
		  me.GradientLayer.CornerRadius = 20
		  me.GradientLayer.SetColors (myarray)
		  me.GradientLayer.SetLocations (array(0, 0.3, 0.6, 0.9))
		  showvalues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  dim colorarray() as color
		  dim myvalues() as text = ColorField.Text.Split(",")
		  for q as integer= 0 to myvalues.Ubound
		    dim newcolor as  color =  myvalues(q).Trim.tocolor
		    colorarray.Append newcolor
		  next
		  ImageView1.GradientLayer.SetColors colorarray
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Action()
		  dim locationarray() as double
		  dim myvalues() as text = LocationsField.Text.Split(",")
		  for q as integer= 0 to myvalues.Ubound
		    dim newdouble as  double =  double.Parse (myvalues(q).Trim)
		    locationarray.Append newdouble
		  next
		  ImageView1.GradientLayer.SetLocations locationarray
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button4
	#tag Event
		Sub Action()
		  ImageView1.GradientLayer.DistributeLocationsEvenly
		  showvalues
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  dim mypoint as FoundationFrameWork.NSPoint = ImageView1.GradientLayer.StartPoint
		  mypoint.x = me.Value
		  ImageView1.GradientLayer.StartPoint = mypoint
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider2
	#tag Event
		Sub ValueChanged()
		  dim mypoint as FoundationFrameWork.NSPoint = ImageView1.GradientLayer.StartPoint
		  mypoint.y = me.Value
		  ImageView1.GradientLayer.StartPoint = mypoint
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider5
	#tag Event
		Sub ValueChanged()
		  dim mypoint as FoundationFrameWork.NSPoint = ImageView1.GradientLayer.EndPoint
		  mypoint.x = me.Value
		  ImageView1.GradientLayer.EndPoint = mypoint
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider6
	#tag Event
		Sub ValueChanged()
		  dim mypoint as FoundationFrameWork.NSPoint = ImageView1.GradientLayer.EndPoint
		  mypoint.y = me.Value
		  ImageView1.GradientLayer.EndPoint = mypoint
		  
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
