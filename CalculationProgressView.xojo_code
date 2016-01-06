#tag IOSView
Begin iosView CalculationProgressView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Extracting Images, please wait"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   28
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSProgressBar ProgressBar1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ProgressBar1, 2, Label1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ProgressBar1, 1, Label1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ProgressBar1, 8, , 0, True, +1.00, 1, 1, 20, 
      AutoLayout      =   ProgressBar1, 3, <Parent>, 3, False, +1.00, 1, 1, 182, 
      Height          =   20.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   100.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   182
      Value           =   50.0
      Visible         =   True
      Width           =   280.0
   End
   Begin xojo.Core.Timer Timer1
      Left            =   0
      LockedInPosition=   False
      Mode            =   "2"
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   100
      Scope           =   0
      Tolerance       =   0
      Top             =   0
   End
   Begin iOSProgressWheel ProgressWheel1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ProgressWheel1, 7, , 0, True, +1.00, 1, 1, 43, 
      AutoLayout      =   ProgressWheel1, 9, <Parent>, 9, False, +1.00, 1, 1, 1, 
      AutoLayout      =   ProgressWheel1, 8, , 0, True, +1.00, 1, 1, 43, 
      AutoLayout      =   ProgressWheel1, 3, <Parent>, 3, False, +1.00, 1, 1, 113, 
      Height          =   43.0
      Left            =   139
      LockedInPosition=   False
      Scope           =   0
      Shade           =   "0"
      Top             =   113
      Visible         =   True
      Width           =   43.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(recorder as iOSLibScreenRecorder)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  myRecorder = recorder
		  ProgressBar1.MaxValue = recorder.Screenshots.Ubound
		  ProgressBar1.Value = 0
		  timer1.mode = timer.modes.Multiple
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		myRecorder As iOSLibScreenRecorder
	#tag EndProperty


#tag EndWindowCode

#tag Events Timer1
	#tag Event
		Sub Action()
		  ProgressBar1.Value = myRecorder.Progressvalue
		  // ProgressBar1.view.SetNeedsDisplay
		  if ProgressBar1.Value >= ProgressBar1.MaxValue then
		    self.Dismiss
		    me.mode = timer.modes.Off
		  end if
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
