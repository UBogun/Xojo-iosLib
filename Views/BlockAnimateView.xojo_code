#tag IOSView
Begin iosView BlockAnimateView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "UIView Block animations"
   Top             =   0
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 3, <Parent>, 3, False, +1.00, 1, 1, 39, 
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 160, 
      AutoLayout      =   ImageView1, 7, , 0, False, +1.00, 1, 1, 160, 
      ContentMode     =   "1"
      Height          =   160.0
      Image           =   "547002367"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   39
      Visible         =   True
      Width           =   160.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 3, ImageView1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Button1, 2, ImageView1, 2, False, +1.00, 1, 1, -9, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, -9, 
      Caption         =   "Klick to animate"
      Enabled         =   True
      Height          =   30.0
      Left            =   -9
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   207
      Visible         =   True
      Width           =   180.0
   End
   Begin iostable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 8, , 0, False, +1.00, 1, 1, 258, 
      AutoLayout      =   Table1, 3, <Parent>, 3, False, +1.00, 1, 1, 253, 
      AutoLayout      =   Table1, 7, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      Format          =   "0"
      Height          =   258.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      TabPanelIndex   =   "0"
      Top             =   253
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSImageView ImageView2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView2, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ImageView2, 3, <Parent>, 3, False, +1.00, 1, 1, 199, 
      AutoLayout      =   ImageView2, 8, , 0, False, +1.00, 1, 1, 160, 
      AutoLayout      =   ImageView2, 7, , 0, False, +1.00, 1, 1, 160, 
      ContentMode     =   "1"
      Height          =   160.0
      Image           =   "588568575"
      Left            =   160
      LockedInPosition=   False
      Scope           =   0
      Top             =   199
      Visible         =   True
      Width           =   160.0
   End
   Begin iOSImageView ImageView3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView3, 1, <Parent>, 1, False, +1.00, 1, 1, 222, 
      AutoLayout      =   ImageView3, 3, <Parent>, 3, False, +1.00, 1, 1, -16, 
      AutoLayout      =   ImageView3, 8, , 0, False, +1.00, 1, 1, 107, 
      AutoLayout      =   ImageView3, 7, , 0, False, +1.00, 1, 1, 117, 
      ContentMode     =   "1"
      Height          =   107.0
      Image           =   "588568575"
      Left            =   222
      LockedInPosition=   False
      Scope           =   0
      Top             =   -16
      Visible         =   True
      Width           =   117.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Animate()
		  dim angle as double = 180
		  dim myTransform as CGAffineTransform = CGAffineTransformMakeRotation (angle.DegreeToRadian)
		  dim myoption as  iOSLibViewAnimationOption = iOSLibViewAnimationOption.OptionRepeat
		  myoption.AllowUserInteraction = true
		  table1.iOSLibView.AnimateTransform myTransform, myoption, 5, iOSLibView.UIVIewAnimationCurve.Linear, 1
		  
		  dim newframe1 as new Rect (200,850,30,30)
		  imageview2.iOSLibView.AnimateFrame (newframe1.ToNSRect, iOSLibViewAnimationOption.OptionRepeatAndReverse, 2)
		  
		  
		  imageview3.iOSLibView.SpringAnimateAlpha (0.5, iOSLibViewAnimationOption.OptionRepeatAndReverse, 0.2, 8, 1)
		  dim newframe as new Rect (50,50,5,5)
		  imageview3.iOSLibView.SpringAnimateBounds (newframe.ToNSRect, iOSLibViewAnimationOption.OptionRepeatAndReverse, 0.5, 8, 1)
		  dim newpos as new rect (600,50, 107,107)
		  imageview3.iOSLibView.SpringAnimateFrame (newpos.toNSRect, iOSLibViewAnimationOption.OptionRepeatAndReverse, 0.3, 2, 10)
		  
		  dim newcolor as color = &cB3FFCA00
		  
		  self.view.BackgroundColor = newcolor.toioslibcolor
		  dim newcolor1 as color  = &cD9D0EF00
		  dim option as  iOSLibViewAnimationOption = iOSLibViewAnimationOption.OptionRepeatAndReverse
		  option.AllowUserInteraction = true
		  self.View.springAnimateColor (newcolor1.toiOSLibColor, option, 0.1, 20, 10)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		NC As iOSLibNotificationCenter
	#tag EndProperty


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  ImageView1.iOSLibView.TransitionWithAlpha (0.2, iOSLibView.UIVIewAnimationTransition.FlipFromRight, iOSLibViewAnimationOption.OptionRepeatAndReverse, 2.5, iOSLibView.UIVIewAnimationCurve.EaseInEaseOut)
		  dim newframe as new Rect (200,250,160,160)
		  ImageView1.iOSLibView.AnimateFrame (newframe.ToNSRect, iOSLibViewAnimationOption.OptionRepeatAndReverse, 2)
		  dim newcolor as color = &c145B7000
		  ImageView1.iOSLibView.AnimateColor (newcolor.toiOSLibColor, iOSLibViewAnimationOption.OptionRepeatAndReverse, 0.8)
		  dim angle as double = 180
		  dim myTransform as CGAffineTransform = CGAffineTransformMakeRotation (angle.DegreeToRadian)
		  dim myoption as new iOSLibViewAnimationOption
		  myoption.BeginFromCurrentState = true
		  myoption.Repeat = true
		  myoption.OverrideInheritedOptions = true
		  ImageView1.iOSLibView.AnimateTransform myTransform, myoption, 3, iOSLibView.UIVIewAnimationCurve.Linear
		  ImageView1.iOSLibView.TranslatesAutoresizingMaskIntoConstraints = true
		  
		  Animate
		End Sub
	#tag EndEvent
	#tag Event
		Sub Close()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Table1
	#tag Event
		Sub Open()
		  me.AddSection "Yes, that's a rotating table!"
		  me.AddRow 0, "You can acces UIView features"
		  me.AddRow 0, " from every Xojo control!"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImageView2
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImageView3
	#tag Event
		Sub Open()
		  
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
