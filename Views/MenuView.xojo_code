#tag IOSView
Begin iosView MenuView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "iOSControls"
   Top             =   0
   Begin iOSButton BlockAnimateButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BlockAnimateButton, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   BlockAnimateButton, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   BlockAnimateButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   BlockAnimateButton, 3, OldAnimateButton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Caption         =   "Block Animations / UIImageView"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   138
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSButton ViewTransitionButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ViewTransitionButton, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   ViewTransitionButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ViewTransitionButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   ViewTransitionButton, 3, BlockAnimateButton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Caption         =   "View Transitions / UIVIew"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   176
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 120, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 69, 
      AutoLayout      =   Label1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -*kStdControlGapV, 
      Enabled         =   False
      Height          =   31.0
      Left            =   69
      LockedInPosition=   False
      Scope           =   0
      Text            =   "StatusBar Hidden"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   985
      Visible         =   False
      Width           =   120.0
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   Switch1, 1, <Parent>, 1, False, +1.00, 1, 1, 10, 
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   False
      Height          =   31.0
      Left            =   10
      LockedInPosition=   False
      Scope           =   0
      Top             =   985
      Value           =   False
      Visible         =   False
      Width           =   51.0
   End
   Begin iOSSwitch animatedswitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   animatedswitch, 1, Label1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   animatedswitch, 3, Switch1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   animatedswitch, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   animatedswitch, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   False
      Height          =   31.0
      Left            =   197
      LockedInPosition=   False
      Scope           =   0
      Top             =   985
      Value           =   False
      Visible         =   False
      Width           =   51.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, animatedswitch, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label2, 3, animatedswitch, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 120, 
      Enabled         =   False
      Height          =   31.0
      Left            =   256
      LockedInPosition=   False
      Scope           =   0
      Text            =   "animated"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   985
      Visible         =   False
      Width           =   120.0
   End
   Begin iOSButton OldAnimateButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   OldAnimateButton, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   OldAnimateButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   OldAnimateButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   OldAnimateButton, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 35, 
      Caption         =   "Old Animations / iOSControlExtension"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   100
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSButton NotificationsButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   NotificationsButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   NotificationsButton, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   NotificationsButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   NotificationsButton, 3, ViewTransitionButton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Caption         =   "Notifications"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   214
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSButton TextFieldButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextFieldButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TextFieldButton, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   TextFieldButton, 3, NotificationsButton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextFieldButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Textfield Extension"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   252
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSButton TextAreaButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextAreaButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TextAreaButton, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   TextAreaButton, 3, TextFieldButton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextAreaButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "TextArea Extension"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   290
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSButton TableButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TableButton, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   TableButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TableButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   TableButton, 3, TextAreaButton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Caption         =   "Table Extension"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   328
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSButton EffectButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   EffectButton, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   EffectButton, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   EffectButton, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   EffectButton, 3, TableButton, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Caption         =   "VisualEffects/iOSCOntrolExtension"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   366
      Visible         =   True
      Width           =   728.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events BlockAnimateButton
	#tag Event
		Sub Action()
		  dim v1 as new BlockanimationView
		  v1.ModalTransitionStyle = iOSViewExtension.TransitionStyle.CrossDissolve
		  self.AnimateModalTo v1
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Scale 100000
		  me.ScaleAnimated 100, 0, 3, 1.2
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ViewTransitionButton
	#tag Event
		Sub Action()
		  dim v1 as new TransitionView
		  v1.ModalTransitionStyle = iOSViewExtension.TransitionStyle.FlipHorizontal
		  self.AnimateModalTo v1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  if animatedswitch.value then
		    if me.Value then
		      app.HideStatusBarAnimated (iOSApplicationExtension.StatusBarAnimation.Fade)
		    else
		      app.ShowStatusBarAnimated  (iOSApplicationExtension.StatusBarAnimation.Slide)
		    end if
		  else
		    app.StatusBarHidden = me.value
		  end if
		  self.PrefersStatusBarHidden = me.value
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events animatedswitch
	#tag Event
		Sub ValueChanged()
		  if me.Value then app.HideStatusBarAnimated (iOSApplicationExtension.StatusBarAnimation.Fade) else app.ShowStatusBarAnimated  (iOSApplicationExtension.StatusBarAnimation.Slide)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OldAnimateButton
	#tag Event
		Sub Action()
		  dim v1 as new OldAnimationView
		  v1.ModalTransitionStyle = iOSViewExtension.TransitionStyle.FlipHorizontal
		  self.AnimateModalTo v1
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.rotate 180
		  me.RotateAnimated 0, 1, 2.4, iOSControlExtension.AnimationCurve.EaseInEaseOut, iOSControlExtension.OldTransitionMode.FlipFromLeft,false, 0, false, true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NotificationsButton
	#tag Event
		Sub Action()
		  dim v1 as new NotificationsView
		  v1.ModalTransitionStyle = iOSViewExtension.TransitionStyle.PartialCurl
		  self.AnimateModalTo v1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldButton
	#tag Event
		Sub Action()
		  dim v1 as new TextFieldView
		  v1.ModalTransitionStyle = iOSViewExtension.TransitionStyle.CrossDissolve
		  self.AnimateModalTo v1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextAreaButton
	#tag Event
		Sub Action()
		  dim v1 as new TextAreaView
		  v1.ModalTransitionStyle = iOSViewExtension.TransitionStyle.CoverVertical
		  self.AnimateModalTo v1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TableButton
	#tag Event
		Sub Action()
		  dim v1 as new TableView
		  v1.ModalTransitionStyle = iOSViewExtension.TransitionStyle.CrossDissolve
		  self.AnimateModalTo v1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EffectButton
	#tag Event
		Sub Action()
		  dim v1 as new EffectView
		  v1.ModalTransitionStyle = iOSViewExtension.TransitionStyle.CoverVertical
		  self.AnimateModalTo v1
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
