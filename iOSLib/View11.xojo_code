#tag IOSView
Begin iosView View11
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSLibProgressBar ProgressBar1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   ProgressBar1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   ProgressBar1, 3, <Parent>, 3, False, +1.00, 1, 1, 152, 
      AutoLayout      =   ProgressBar1, 1, <Parent>, 1, False, +1.00, 1, 1, 10, 
      AutoLayout      =   ProgressBar1, 8, , 0, True, +1.00, 1, 1, 48, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   48.0
      Hidden          =   False
      Left            =   10
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Progress        =   0.0
      ProgressViewStyle=   ""
      RefreshRate     =   50
      Scope           =   0
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   152
      TranslatesAutoresizingMaskIntoConstraints=   False
      UpdateOK        =   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   290.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, 210, 
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 1, 1, -*kStdGapCtlToViewV, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   30.0
      Left            =   210
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLibTextfield iOSLibTextfield1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustFontSize  =   False
      aFontType       =   "0"
      AllowTextAttributesEdit=   False
      Alpha           =   1.0
      AutocapitalizationType=   ""
      AutocorrectionType=   ""
      AutoLayout      =   iOSLibTextfield1, 7, , 0, False, +1.00, 1, 1, 257, 
      AutoLayout      =   iOSLibTextfield1, 3, <Parent>, 3, False, +1.00, 1, 1, 277, 
      AutoLayout      =   iOSLibTextfield1, 8, , 0, False, +1.00, 1, 1, 64, 
      AutoLayout      =   iOSLibTextfield1, 1, <Parent>, 1, False, +1.00, 1, 1, 36, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      BorderStyle     =   ""
      CanBecomeFocused=   False
      Caption         =   ""
      ClearButtonMode =   ""
      ClearsContextBeforeDrawing=   False
      ClearsOnEditBegin=   False
      ClearsOnInsertion=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      Editing         =   False
      EnablesReturnKeyAutomatically=   False
      ExclusiveTouch  =   False
      Focused         =   False
      FontName        =   ""
      FontSize        =   13.0
      HasAmbiguousLayout=   False
      Height          =   64.0
      Hidden          =   False
      KeyboardAppearance=   ""
      KeyboardType    =   ""
      Left            =   36
      LeftViewMode    =   ""
      LockedInPosition=   False
      MinimumFontSize =   0.0
      MultipleTouchEnabled=   False
      Opaque          =   False
      Password        =   False
      Placeholder     =   ""
      PreservesSuperviewLayoutMargins=   False
      ReturnKeyType   =   ""
      RightViewMode   =   ""
      Scope           =   0
      SpellCheckingType=   ""
      Tag             =   0
      TextAlignment   =   ""
      TextColor       =   &c00000000
      TintAdjustmentMode=   ""
      Top             =   277
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   257.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Property, Flags = &h1
		Protected AppleApp As AppleApplication
	#tag EndProperty

	#tag Property, Flags = &h0
		Prog As AppleProgress
	#tag EndProperty


#tag EndWindowCode

#tag Events ProgressBar1
	#tag Event
		Sub Open()
		  prog = new AppleProgress(100000)
		  prog.AddKVOObserver (ProgressBar1.AppleView, "fractionCompleted")
		  me.Progress = 0.5
		  me.ProgressViewStyle = AppleProgressView.UIProgressViewStyle.Bar
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub KVOChange(keyPath as Text, SourceObject As Appleobject, Change as iOSLibKeyValueChangeDictionary, Context as ptr)
		  me.Progress =(change.SingleValue(iOSLibKeyValueChangeDictionary.KVOValueKind.NewValue))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  
		  // for q as integer = 0 to 100000
		  // prog.CompletedUnitCount =q
		  // next
		  
		  // prog.RemoveKVOObserver (ProgressBar1.AppleView, "fractionCompleted")
		  // dim t as text = "Test"
		  // dim t1 as new iOSLibTimer
		  // t1.Start
		  // dim d as new AppleMutableArray(10000)
		  // for q as integer = 0 to 10000
		  // d.AddText t
		  // next
		  // t1.stop
		  // 
		  // dim t2 as new iOSLibTimer
		  // t2.start
		  // dim dt2(10000) as text
		  // for q as integer = 0 to 10000
		  // dt2.Append t
		  // next
		  // t2.stop
		  // 
		  // dim d1 as double = t1.Difference.NanoSeconds
		  // dim d2 as double = t2.Difference.NanoSeconds
		  // break
		  
		  
		  
		  dim sessionconfig as new AppleURLSessionConfiguration("myBackgroundTask")
		  sessionconfig.SessionSendsLaunchEvents = true
		  sessionconfig.Discretionary = true
		  
		  dim mydel as new AppleURLSessionDelegate
		  dim urlsession as new AppleURLSession(sessionconfig, mydel, AppleOperationQueue.CurrentQueue)
		  Break
		  
		  dim appleapp as new AppleApplication
		  dim intro as new AppleIntrospection(appleapp.id)
		  dim playeritem as new AppleAVPlayerItem("SFX_Powerup_21")
		  dim player as new AppleAVPlayer(playeritem)
		  player.Volume = 0.5
		  player.Play
		  dim mtext as text = intro.PropertyNamesText
		  // while true
		  // // dim intro as new AppleIntrospection(appleapp.id)
		  // wend
		  break
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
