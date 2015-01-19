#tag IOSView
Begin iosView EffectView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "UIVisualEffects"
   Top             =   0
   Begin iostable iosimagewell
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   iosimagewell, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iosimagewell, 2, <Parent>, 2, False, +1.00, 2, 1, 0, 
      AutoLayout      =   iosimagewell, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -100, 
      AutoLayout      =   iosimagewell, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      Format          =   ""
      Height          =   315.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
      Begin OSControlsVibrancyforLightBlurEffectView iOSControlsEffectView1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   iOSControlsEffectView1, 8, iosimagewell, 8, False, +0.33, 1, 1, 0, 
         AutoLayout      =   iOSControlsEffectView1, 1, iosimagewell, 1, False, +1.00, 1, 1, 0, 
         AutoLayout      =   iOSControlsEffectView1, 2, iosimagewell, 2, False, +1.00, 2, 1, -*kStdControlGapH, 
         AutoLayout      =   iOSControlsEffectView1, 3, iosimagewell, 3, False, +1.00, 1, 1, 0, 
         Height          =   103.9500000000000170530257
         Left            =   0
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "iosimagewell"
         Scope           =   0
         Style           =   "0"
         Top             =   65
         Type            =   ""
         Visible         =   True
         Width           =   312.0
         Begin iOSLabel Label1
            AccessibilityHint=   ""
            AccessibilityLabel=   ""
            AutoLayout      =   Label1, 1, iOSControlsEffectView1, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
            AutoLayout      =   Label1, 2, iOSControlsEffectView1, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
            AutoLayout      =   Label1, 3, iOSControlsEffectView1, 10, False, +1.00, 1, 1, -40, 
            AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 91, 
            Enabled         =   True
            Height          =   91.0000000000000142108547
            Left            =   20
            LockedInPosition=   False
            PanelIndex      =   0
            Parent          =   "iOSControlsEffectView1"
            Scope           =   0
            Text            =   "In the background is a rotated (!) table with differently colored rows. Scroll it to see changes"
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            TextFont        =   ""
            TextSize        =   0
            Top             =   76
            Visible         =   True
            Width           =   272.0
         End
      End
      Begin OSControlsVibrancyforDarkBlurEffectView iOSControlsEffectView3
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   iOSControlsEffectView3, 2, iosimagewell, 2, False, +1.00, 2, 1, -*kStdControlGapH, 
         AutoLayout      =   iOSControlsEffectView3, 1, iOSControlsEffectView2, 1, False, +1.00, 1, 1, 0, 
         AutoLayout      =   iOSControlsEffectView3, 8, iosimagewell, 8, False, +0.33, 1, 1, 0, 
         AutoLayout      =   iOSControlsEffectView3, 4, iosimagewell, 4, False, +1.00, 1, 1, 0, 
         Height          =   103.9499999999999886313162
         Left            =   0
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "iosimagewell"
         Scope           =   0
         Style           =   "2"
         Top             =   276
         Type            =   "0"
         Visible         =   True
         Width           =   312.0
         Begin iOSLabel Label7
            AccessibilityHint=   ""
            AccessibilityLabel=   ""
            AutoLayout      =   Label7, 1, iOSControlsEffectView3, 1, False, +1.00, 1, 1, 20, 
            AutoLayout      =   Label7, 7, , 0, False, +1.00, 1, 1, 280, 
            AutoLayout      =   Label7, 3, iOSControlsEffectView3, 3, False, +1.00, 1, 1, 11, 
            AutoLayout      =   Label7, 8, , 0, False, +1.00, 1, 1, 84, 
            Enabled         =   True
            Height          =   84.0
            Left            =   20
            LockedInPosition=   False
            PanelIndex      =   0
            Parent          =   "iOSControlsEffectView3"
            Scope           =   0
            Text            =   "If you don't see anything, switch the iOSSimulator to an iPhone view. For iPad, there's no live UIEffectView preview."
            TextAlignment   =   "0"
            TextColor       =   &cF3EFDB00
            TextFont        =   ""
            TextSize        =   0
            Top             =   287
            Visible         =   True
            Width           =   280.0
         End
      End
   End
   Begin OSControlsVibrancyforExtralightBlurEffectView iOSControlsEffectView2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   iOSControlsEffectView2, 4, iOSControlsEffectView3, 3, False, +1.00, 2, 1, -40, 
      AutoLayout      =   iOSControlsEffectView2, 1, iosimagewell, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSControlsEffectView2, 2, iOSControlsEffectView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSControlsEffectView2, 3, iOSControlsEffectView1, 4, False, +1.00, 1, 1, 40, 
      Height          =   27.0999999999999943156581
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   "nil"
      Scope           =   0
      Style           =   "2"
      Top             =   208
      Type            =   "0"
      Visible         =   True
      Width           =   312.0
      Begin iOSLabel Label11
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   Label11, 4, iOSControlsEffectView2, 4, False, +1.00, 2, 1, -*kStdControlGapV, 
         AutoLayout      =   Label11, 1, iOSControlsEffectView2, 1, False, +1.00, 1, 1, 12, 
         AutoLayout      =   Label11, 3, iOSControlsEffectView2, 3, False, +1.00, 1, 1, 0, 
         AutoLayout      =   Label11, 7, , 0, False, +1.00, 1, 1, 272, 
         Enabled         =   True
         Height          =   19.0999999999999943156581
         Left            =   12.0
         LockedInPosition=   False
         PanelIndex      =   -1
         Parent          =   "iOSControlsEffectView2"
         Scope           =   0
         Text            =   "These are vibrancy views for light, extralight and dark blur effectviews."
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         TextFont        =   ""
         TextSize        =   0
         Top             =   208.9500000000000170530257
         Visible         =   True
         Width           =   272.0
      End
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 2, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Button1, 3, BottomLayoutGuide, 3, False, +1.00, 1, 1, -40, 
      Caption         =   "Return to Menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   440
      Visible         =   True
      Width           =   -20.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events iosimagewell
	#tag Event
		Sub Open()
		  me.backgroundcolor = &c99999944
		  me.BackgroundImage = Apfel
		  me.Rotate 165
		  me.AddSection ("First Section")
		  for q as integer = 1 to 5
		    me.AddRow (0, new iOSTableCellData (q.ToText+". Line"))
		  next
		  me.MaximumZoomScale = 500
		  me.MinimumZoomScale = 0.01
		  me.CellBackgroundColor(0,0) = &cFFFF3C00
		  me.CellBackgroundColor(1,0) =&cE3001F00
		  me.CellBackgroundColor(2,0) = &c5D81D300
		  me.CellBackgroundColor(3,0) = &c07DB0000
		  me.CellBackgroundColor(4,0) = &c3B007300
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSControlsEffectView1
	#tag Event
		Sub Open()
		  iOSControlExtension.addSubview me.contentView, Label1.Handle
		  
		  // dim blurcv as ptr = contentView_ (me.blureffect.Handle)
		  // iOSControlExtension.addSubview blurcv, me.VibrancyEffect.Handle
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSControlsEffectView3
	#tag Event
		Sub Open()
		  iOSControlExtension.addSubview me.contentView, Label7.Handle
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSControlsEffectView2
	#tag Event
		Sub Open()
		  iOSControlExtension.addSubview me.contentView, Label11.Handle
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  DismissModal true
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
