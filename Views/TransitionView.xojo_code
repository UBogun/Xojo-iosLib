#tag IOSView
Begin iosView TransitionView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "View Transitions"
   Top             =   0
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 1, 1, 417, 
      Caption         =   "Return to Menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   417
      Visible         =   True
      Width           =   -110.0
   End
   Begin iOSSegmentedControl SegmentedControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedControl1, 3, Label1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   SegmentedControl1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   SegmentedControl1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   SegmentedControl1, 8, , 0, True, +1.00, 1, 1, 29, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Cover Vertical\n\nTrue\rFlip Horizontal\n\nFalse\rDissolve\n\nFalse\rPartial Curl\n\nFalse"
      Top             =   111
      Value           =   0
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, SegmentedControl1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 2, 1, 154, 
      AutoLayout      =   Label1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Modal Transition Style"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   154.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Button2, 3, Label1, 3, False, +1.00, 1, 1, 0, 
      Caption         =   "Modal Transition"
      Enabled         =   True
      Height          =   30.0
      Left            =   629
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   119.0
   End
   Begin iOSSegmentedControl SegmentedControl2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedControl2, 3, Label2, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   SegmentedControl2, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   SegmentedControl2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   SegmentedControl2, 8, , 0, True, +1.00, 1, 1, 29, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Full Screen\n\nTrue\rPage Sheet\n\nFalse\rForm Sheet\n\nFalse\rCurrent Context\n\nFalse\rCustom\n\nFalse\rOver Full Screen\n\nFalse\rOver Current Context\n\nFalse\rPopOver\n\nFalse\rNone\n\nFalse"
      Top             =   186
      Value           =   0
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 213, 
      AutoLayout      =   Label2, 3, SegmentedControl1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Modal Presentation Style"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   148
      Visible         =   True
      Width           =   213.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 188, 
      AutoLayout      =   Label3, 3, SegmentedControl2, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Preferred Content Size (w/h)"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   223
      Visible         =   True
      Width           =   188.0
   End
   Begin iOSTextField CSW
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   CSW, 1, Label3, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   CSW, 7, , 0, False, +1.00, 1, 1, 73, 
      AutoLayout      =   CSW, 3, Label3, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   CSW, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   216
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Width"
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   223
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSTextField CSH
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   CSH, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   CSH, 1, CSW, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   CSH, 3, CSW, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   CSH, 7, , 0, False, +1.00, 1, 1, 73, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   297
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Height"
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   223
      Visible         =   True
      Width           =   73.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  dim mysize as xojo.core.size = self.PreferredContentSize
		  CSW.text = mysize.Width.ToText
		  csh.text = mysize.Height.ToText
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  DismissModal true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  dim v2 as new TRansitionEndView
		  select case SegmentedControl1.Value
		  case 0
		    v2.ModalTransitionStyle = iOSViewExtension.TransitionStyle.CoverVertical
		  case 1
		    v2.ModalTransitionStyle = iOSViewExtension.TransitionStyle.FlipHorizontal
		  case 2
		    v2.ModalTransitionStyle = iOSViewExtension.TransitionStyle.CrossDissolve
		  case 3
		    v2.ModalTransitionStyle = iOSViewExtension.TransitionStyle.PartialCurl
		  end select
		  
		  select case SegmentedControl2.value
		  case 0
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.FullScreen
		  case 1
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.PageSheet
		  case 2
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.FormSheet
		  case 3
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.CurrentContext
		  case 4
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.Custom // You should have a custom delegate !!!
		  case 5
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.OverFullScreen
		  case 6
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.OverCurrentContext
		  case 7
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.PopOver
		  case 8
		    v2.ModalPresentationStyle = iOSViewExtension.PresentationStyle.None
		  end select
		  
		  
		  dim preferredSize as new xojo.core.size (double.fromtext(csw.text), double.fromtext(csh.Text))
		  v2.PreferredContentSize = preferredSize
		  self.AnimateModalTo v2
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
