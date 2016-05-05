#tag IOSView
Begin iosView TextFieldView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TextField1, 3, <Parent>, 3, False, +1.00, 1, 1, 47, 
      AutoLayout      =   TextField1, 8, , 0, False, +1.00, 1, 1, 32, 
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   32.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "This is a standard Xojo iOSTextField"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c19096A00
      TextFont        =   "Custom	Noteworthy	Noteworthy-Bold"
      TextSize        =   22
      Top             =   47
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSSwitch AdFontSize
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AdFontSize, 3, <Parent>, 3, False, +1.00, 1, 1, 140, 
      AutoLayout      =   AdFontSize, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   AdFontSize, 1, TextField1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   AdFontSize, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   140
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 3, AdFontSize, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 1, AdFontSize, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Label1, 2, TextField1, 2, False, +1.00, 1, 1, -107, 
      Enabled         =   True
      Height          =   30.0
      Left            =   79
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Adjust Font Size"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   140
      Visible         =   True
      Width           =   114.0
   End
   Begin iOSTextField TextField2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField2, 10, Label1, 10, False, +1.00, 1, 1, , 
      AutoLayout      =   TextField2, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField2, 1, Label1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   TextField2, 7, , 0, False, +1.00, 1, 1, 100, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   201
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "min."
      Scope           =   0
      Text            =   "4"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   139
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSSwitch LeftView
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   LeftView, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   LeftView, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   LeftView, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   LeftView, 3, <Parent>, 3, False, +1.00, 1, 1, 179, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   179
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 114, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, 79, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 3, <Parent>, 3, False, +1.00, 1, 1, 179, 
      Enabled         =   True
      Height          =   30.0
      Left            =   79
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Left Image"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   179
      Visible         =   True
      Width           =   114.0
   End
   Begin iOSSwitch LeftView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   LeftView1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   LeftView1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   LeftView1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   LeftView1, 3, <Parent>, 3, False, +1.00, 1, 1, 218, 
      Enabled         =   True
      Height          =   31.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   218
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 114, 
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, 79, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label3, 3, <Parent>, 3, False, +1.00, 1, 1, 218, 
      Enabled         =   True
      Height          =   30.0
      Left            =   79
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Right Image"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   218
      Visible         =   True
      Width           =   114.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 3, <Parent>, 3, False, +1.00, 1, 1, 274, 
      AutoLayout      =   Label4, 2, TextField1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 187, 
      AutoLayout      =   Label4, 1, LeftView1, 1, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   187.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Here you see a few properties available through iOSTextFieldExtension. There's more in the module and even more in the AppleTextField class which is accessible via the extension too."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   274
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events TextField1
	#tag Event
		Sub Open()
		  me.BackgroundColor = &cD5FFF200
		  me.AdjustTextSize = true
		  me.BorderStyle = AppleTextfield.UITextFieldBorderStyle.None
		  me.appleview.Layer.CornerRadius = 8.
		  me.appleview.Layer.BorderWidth = 1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AdFontSize
	#tag Event
		Sub ValueChanged()
		  TextField1.AdjustTextSize = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = TextField1.AdjustTextSize
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField2
	#tag Event
		Sub TextChange()
		  TextField1.MinimumFontSize = double.Parse (me.Text)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Text = TextField1.MinimumFontSize.ToText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LeftView
	#tag Event
		Sub ValueChanged()
		  if me.value then
		    TextField1.LeftImage = iosLibLogo
		    TextField1.LeftViewMode = AppleTextfield.UITextFieldViewMode.Always
		  else
		    TextField1.ClearLeftImage
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LeftView1
	#tag Event
		Sub ValueChanged()
		  if me.value then
		    TextField1.RightImage = Birnebuntklein
		    TextField1.RightViewMode = appletextfield.UITextFieldViewMode.Always
		  else
		    TextField1.ClearRightImage
		  end if
		End Sub
	#tag EndEvent
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
