#tag IOSView
Begin iosView ScreenRecorderView
   BackButtonTitle =   "close"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   "iOSLibScreenRecorder"
   Top             =   0
   Begin iosimageview iOSLIbCanvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   iOSLIbCanvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbCanvas1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -100, 
      AutoLayout      =   iOSLIbCanvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   iOSLIbCanvas1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      ContentMode     =   "4"
      Height          =   352.0
      Image           =   "0"
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   28
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 38, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 1, 1, -*kStdGapCtlToViewV, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Save"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   38.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 4, Button1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 38, 
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Caption         =   "Play"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   392
      Visible         =   True
      Width           =   38.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 38, 
      AutoLayout      =   Label4, 1, <Parent>, 1, False, +1.00, 1, 1, 66, 
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label4, 10, Button2, 10, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   66
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "every"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   392
      Visible         =   True
      Width           =   38.0
   End
   Begin iOSTextField StepField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   StepField, 7, , 0, False, +1.00, 1, 1, 36, 
      AutoLayout      =   StepField, 1, <Parent>, 1, False, +1.00, 1, 1, 112, 
      AutoLayout      =   StepField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   StepField, 10, Button2, 10, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "4"
      Left            =   112
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "1"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   391
      Visible         =   True
      Width           =   36.0
   End
   Begin iOSLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label5, 7, , 0, False, +1.00, 1, 1, 74, 
      AutoLayout      =   Label5, 1, <Parent>, 1, False, +1.00, 1, 1, 156, 
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label5, 10, Button2, 10, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   156
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "frame with"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   392
      Visible         =   True
      Width           =   74.0
   End
   Begin iOSTextField FPSField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   FPSField, 7, , 0, False, +1.00, 1, 1, 41, 
      AutoLayout      =   FPSField, 1, <Parent>, 1, False, +1.00, 1, 1, 229, 
      AutoLayout      =   FPSField, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   FPSField, 10, Button2, 10, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "4"
      Left            =   229
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "60"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   391
      Visible         =   True
      Width           =   41.0
   End
   Begin iOSLabel Label6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label6, 7, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   Label6, 1, <Parent>, 1, False, +1.00, 1, 1, 278, 
      AutoLayout      =   Label6, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label6, 10, Button2, 10, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   278
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "fps"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   392
      Visible         =   True
      Width           =   31.0
   End
   Begin iOSLabel RecordInfoLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   RecordInfoLabel, 10, Button1, 10, False, +1.00, 1, 1, , 
      AutoLayout      =   RecordInfoLabel, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   RecordInfoLabel, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   30.0
      Left            =   112
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "xxx frames recorded at xx fps"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   430
      Visible         =   True
      Width           =   188.0
   End
   Begin iOSButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 1, 1, 52, 
      AutoLayout      =   Button3, 1, Label4, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button3, 10, Button1, 10, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Close"
      Enabled         =   True
      Height          =   30.0
      Left            =   66
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   52.0
   End
   Begin iOSLabel FrameNumberLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   FrameNumberLabel, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   FrameNumberLabel, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   FrameNumberLabel, 2, RecordInfoLabel, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   FrameNumberLabel, 1, Button2, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Frame #xxx"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   450
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(recorder as iOSLibScreenRecorder)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  self.appleview.BackgroundColor = new applecolor(&cB3B3B300)
		  mRecorder = recorder
		  iOSLIbCanvas1.Image = mRecorder.Screenshots(0).toImage.toiOSImage
		  playtimer = new timer
		  addhandler PlayTimer.action, AddressOf ShowNextFrame
		  AppleImages = new AppleMutableArray (recorder.Screenshots.Ubound+1)
		  RecordInfoLabel.Text = integer(mRecorder.Screenshots.Ubound + 1).ToText+" frames recorded with "+mrecorder.Recordfps.ToText+" fps"
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub runAction()
		  FrameCount = 0
		  PlayTimer.Period = 1000/integer.Parse(FPSField.text)
		  PlayTimer.Mode = timer.modes.Multiple
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowNextFrame(ti as timer)
		  dim steps as integer = Integer.Parse(StepField.text)
		  if FrameCount <= mRecorder.Screenshots.Ubound - steps then
		    FrameCount = FrameCount +steps
		    iOSLIbCanvas1.Image = mRecorder.images(FrameCount)
		    FrameNumberLabel.text = "Frame #"+FrameCount.ToText
		  else
		    ti.mode = timer.modes.Off
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AppleImages As ApplemutableArray
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FrameCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRecorder As iOSLibScreenRecorder
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PlayTimer As Timer
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  dim imgarray as new AppleMutableArray (mRecorder.Images.Ubound+1)
		  for q as integer = 0 to mRecorder.Images.Ubound
		    dim appImg as new AppleImage(mRecorder.Images(q))
		    imgarray.Addobject appImg
		  next
		  dim animImage as appleimage = AppleImage.Animatedimage (imgarray, mRecorder.Recordfps*(mRecorder.Images.Ubound+1))
		  animImage.WriteToPhotoAlbum
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  runAction
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Action()
		  self.Dismiss (true)
		  
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
