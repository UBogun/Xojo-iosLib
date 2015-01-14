#tag IOSView
Begin iosView TextFieldView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "TextFieldView"
   Top             =   0
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 36, 
      AutoLayout      =   Label3, 3, <Parent>, 3, False, +1.00, 1, 1, 91, 
      AutoLayout      =   Label3, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   36.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "This is just to give you some ideas of what the textfield extension brings to each iOSTextfield:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   91
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 3, <Parent>, 3, False, +1.00, 1, 1, 152, 
      AutoLayout      =   TextField1, 7, , 0, False, +1.00, 1, 1, 164, 
      AutoLayout      =   TextField1, 1, Label3, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Line Border Style"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   152
      Visible         =   True
      Width           =   164.0
   End
   Begin iOSTextField TextField2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField2, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField2, 3, <Parent>, 3, False, +1.00, 1, 1, 152, 
      AutoLayout      =   TextField2, 7, , 0, False, +1.00, 1, 1, 164, 
      AutoLayout      =   TextField2, 1, <Parent>, 1, False, +1.00, 1, 1, 206, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   206
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Bezel Border Style"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   152
      Visible         =   True
      Width           =   164.0
   End
   Begin iOSTextField TextField3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField3, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField3, 3, <Parent>, 3, False, +1.00, 1, 1, 152, 
      AutoLayout      =   TextField3, 7, , 0, False, +1.00, 1, 1, 222, 
      AutoLayout      =   TextField3, 1, <Parent>, 1, False, +1.00, 1, 1, 392, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   392
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Rounded Rect Border Style"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   152
      Visible         =   True
      Width           =   222.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 1, disabletfield, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 141, 
      Caption         =   "Return to menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   141.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 36, 
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 728, 
      AutoLayout      =   Label4, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label4, 3, <Parent>, 3, False, +1.00, 1, 1, 202, 
      Enabled         =   True
      Height          =   36.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "… with backgroundcolors from iosControlExtension and different settings for the clear icon:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   202
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSTextField TextField4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField4, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   TextField4, 7, , 0, False, +1.00, 1, 1, 164, 
      AutoLayout      =   TextField4, 3, Label4, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextField4, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "always"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   246
      Visible         =   True
      Width           =   164.0
   End
   Begin iOSTextField TextField5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField5, 1, <Parent>, 1, False, +1.00, 1, 1, 206, 
      AutoLayout      =   TextField5, 7, , 0, False, +1.00, 1, 1, 164, 
      AutoLayout      =   TextField5, 3, Label4, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextField5, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   206
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "never"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   246
      Visible         =   True
      Width           =   164.0
   End
   Begin iOSTextField TextField6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField6, 1, <Parent>, 1, False, +1.00, 1, 1, 392, 
      AutoLayout      =   TextField6, 7, , 0, False, +1.00, 1, 1, 125, 
      AutoLayout      =   TextField6, 3, Label4, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextField6, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   392
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "unless …"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   246
      Visible         =   True
      Width           =   125.0
   End
   Begin iOSTextField TextField7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField7, 1, <Parent>, 1, False, +1.00, 1, 1, 525, 
      AutoLayout      =   TextField7, 7, , 0, False, +1.00, 1, 1, 207, 
      AutoLayout      =   TextField7, 3, Label4, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextField7, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   525
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "… while editing"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   246
      Visible         =   True
      Width           =   207.0
   End
   Begin iOSTextField TextField8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField8, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   TextField8, 7, , 0, False, +1.00, 1, 1, 164, 
      AutoLayout      =   TextField8, 3, Label5, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextField8, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "left always"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   346
      Visible         =   True
      Width           =   164.0
   End
   Begin iOSTextField TextField9
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField9, 1, <Parent>, 1, False, +1.00, 1, 1, 206, 
      AutoLayout      =   TextField9, 7, , 0, False, +1.00, 1, 1, 164, 
      AutoLayout      =   TextField9, 3, Label5, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextField9, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   206
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "left on edit"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   346
      Visible         =   True
      Width           =   164.0
   End
   Begin iOSTextField TextField10
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField10, 1, <Parent>, 1, False, +1.00, 1, 1, 392, 
      AutoLayout      =   TextField10, 2, TextField7, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextField10, 3, Label5, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextField10, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   392
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "both unless editing"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   346
      Visible         =   True
      Width           =   340.0
   End
   Begin iOSLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label5, 3, <Parent>, 3, False, +1.00, 1, 1, 302, 
      AutoLayout      =   Label5, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label5, 7, , 0, False, +1.00, 1, 1, 728, 
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 1, 1, 36, 
      Enabled         =   True
      Height          =   36.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "… and custom icons on both sides"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   302
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSLabel Label6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label6, 3, <Parent>, 3, False, +1.00, 1, 1, 397, 
      AutoLayout      =   Label6, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label6, 7, , 0, False, +1.00, 1, 1, 728, 
      AutoLayout      =   Label6, 8, , 0, False, +1.00, 1, 1, 36, 
      Enabled         =   True
      Height          =   36.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "… as well as background and disabled background images"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   397
      Visible         =   True
      Width           =   728.0
   End
   Begin iOSTextField disabletfield
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   disabletfield, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   disabletfield, 1, Label6, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   disabletfield, 3, Switch1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   disabletfield, 7, , 0, False, +1.00, 1, 1, 276, 
      Enabled         =   False
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "disabled"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   441
      Visible         =   True
      Width           =   276.0
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch1, 3, Label6, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Switch1, 2, TextField9, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   319
      LockedInPosition=   False
      Scope           =   0
      Top             =   441
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSTextField ReduceTextfield
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ReduceTextfield, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   ReduceTextfield, 2, TextField10, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ReduceTextfield, 3, <Parent>, 3, False, +1.00, 1, 1, 503, 
      AutoLayout      =   ReduceTextfield, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "you can even chose to autoreduce the textsize (within limits) - add or delete some text here!"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   30
      Top             =   503
      Visible         =   True
      Width           =   712.0
   End
   Begin iOSLabel Label7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label7, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label7, 7, , 0, False, +1.00, 1, 1, 728, 
      AutoLayout      =   Label7, 3, <Parent>, 3, False, +1.00, 1, 1, 554, 
      AutoLayout      =   Label7, 8, , 0, False, +1.00, 1, 1, 91, 
      Enabled         =   True
      Height          =   91.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "… and finally there’s properties for ClearsOnInsertion and ClearsOnEditBegin deleting the contents automatically on both cases – so it's pretty much everything UITextfield has to offer."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   554
      Visible         =   True
      Width           =   728.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events TextField1
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.Line
		  me.BackgroundColor = &cB0BBB100
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField2
	#tag Event
		Sub Open()
		  me.BorderStyle = iOSTextFieldExtension.BorderStyles.Bezel
		  me.BackgroundColor = &c5D81D300
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField3
	#tag Event
		Sub Open()
		  me.BorderStyle = iOSTextFieldExtension.BorderStyles.RoundedRect
		  me.BackgroundColor = &cF5F42D00
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  
		  self.DismissModal (true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField4
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.RoundedRect
		  me.ShowClearButton = iOSTextFieldExtension.ViewMode.Always
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField5
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.RoundedRect
		  me.ShowClearButton = iOSTextFieldExtension.ViewMode.Never
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField6
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.RoundedRect
		  me.ShowClearButton = iOSTextFieldExtension.ViewMode.UnlessEditing
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField7
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.RoundedRect
		  me.ShowClearButton = iOSTextFieldExtension.ViewMode.WhileEditing
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField8
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.RoundedRect
		  dim myimage as iOSImage = Apfel
		  me.LeftIcon = myimage.Scaledimage (15)
		  me.ShowLeftIcon = iOSTextFieldExtension.ViewMode.Always
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField9
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.RoundedRect
		  dim myimage as iOSImage = Apfel
		  me.LeftIcon = myimage.Scaledimage (20)
		  me.ShowLeftIcon = iOSTextFieldExtension.ViewMode.WhileEditing
		  me.ShowClearButton = iOSTextFieldExtension.ViewMode.Never
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField10
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.RoundedRect
		  dim myimage as iOSImage = Apfel
		  me.LeftIcon = myimage.Scaledimage (20)
		  dim myimage1 as iOSImage = Apfelchrom
		  me.RightIcon = myimage1.Scaledimage (20)
		  
		  me.ShowLeftIcon = iOSTextFieldExtension.ViewMode.UnlessEditing
		  me.ShowRightIcon = iOSTextFieldExtension.ViewMode.UnlessEditing
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events disabletfield
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.None
		  dim myimage as iOSImage = Verlaufgelb
		  me.BackgroundImage = myimage
		  dim mydisabledimage as iosimage = Verlaufblau
		  me.DisabledBackgroundImage = mydisabledimage
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  disabletfield.Enabled = me.Value
		  disabletfield.Text = if (me.value, "enabled", "disabled")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ReduceTextfield
	#tag Event
		Sub Open()
		  me.BorderStyle =iOSTextFieldExtension.borderstyles.None
		  me.MinimumFontSize = 3
		  me.AutoReduceFontSize = true
		  
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
