#tag IOSView
Begin iosView ColorPickerView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSCanvas ColorPreview
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ColorPreview, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ColorPreview, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 52, 
      AutoLayout      =   ColorPreview, 7, <Parent>, 7, False, +1.00, 1, 1, -40, 
      AutoLayout      =   ColorPreview, 4, RedLabel, 3, False, +1.00, 2, 1, -60, 
      Height          =   17.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   72
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSSlider RedSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   RedSlider, 2, ColorPreview, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   RedSlider, 1, ColorPreview, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   RedSlider, 3, GreenLabel, 3, False, +1.00, 1, 1, -40, 
      AutoLayout      =   RedSlider, 8, , 0, True, +1.00, 1, 1, 23, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   255.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   179
      Value           =   50.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel RedLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   RedLabel, 4, RedSlider, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   RedLabel, 7, RedSlider, 7, False, +1.00, 2, 1, 0, 
      AutoLayout      =   RedLabel, 1, RedSlider, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   RedLabel, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   RedLabel, 2, RedSlider, 2, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Red"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   149
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel RedValue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   RedValue, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   RedValue, 3, RedSlider, 4, False, +1.00, 1, 1, -5, 
      AutoLayout      =   RedValue, 8, , 0, False, +1.00, 1, 1, 17, 
      AutoLayout      =   RedValue, 7, RedSlider, 7, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   17.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Red"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   197
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSSlider BlueSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BlueSlider, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   BlueSlider, 2, <Parent>, 2, False, +1.00, 2, 1, -20, 
      AutoLayout      =   BlueSlider, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   BlueSlider, 3, AlphaLabel, 3, False, +1.00, 1, 1, -40, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   255.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   319
      Value           =   50.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel RedLabel1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   RedLabel1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   RedLabel1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   RedLabel1, 4, BlueSlider, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   RedLabel1, 7, BlueSlider, 7, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Blue"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   289
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel BlueValue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   BlueValue, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   BlueValue, 3, BlueSlider, 4, False, +1.00, 1, 1, -5, 
      AutoLayout      =   BlueValue, 8, , 0, False, +1.00, 1, 1, 17, 
      AutoLayout      =   BlueValue, 7, BlueSlider, 7, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   17.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Red"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   337
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 2, <Parent>, 2, False, +1.00, 1, 1, -20, 
      AutoLayout      =   Button1, 4, BottomLayoutGuide, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 43, 
      Caption         =   "OK"
      Enabled         =   True
      Height          =   30.0
      Left            =   257
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   43.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Button2, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 67, 
      Caption         =   "Cancel"
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
      Width           =   67.0
   End
   Begin iOSSlider AlphaSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AlphaSlider, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   AlphaSlider, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   AlphaSlider, 4, Button1, 3, False, +1.00, 2, 1, -30, 
      AutoLayout      =   AlphaSlider, 2, <Parent>, 2, False, +1.00, 2, 1, -20, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   255.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   389
      Value           =   50.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel AlphaLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AlphaLabel, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   AlphaLabel, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   AlphaLabel, 4, AlphaSlider, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   AlphaLabel, 7, AlphaSlider, 7, False, +1.00, 2, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Alpha"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   359
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel AlphaValue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AlphaValue, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   AlphaValue, 3, AlphaSlider, 4, False, +1.00, 1, 1, -5, 
      AutoLayout      =   AlphaValue, 8, , 0, False, +1.00, 1, 1, 17, 
      AutoLayout      =   AlphaValue, 7, AlphaLabel, 7, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   17.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Red"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   407
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSSlider Greenslider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Greenslider, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Greenslider, 2, <Parent>, 2, False, +1.00, 2, 1, -20, 
      AutoLayout      =   Greenslider, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   Greenslider, 3, RedLabel1, 3, False, +1.00, 1, 1, -40, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   255.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   249
      Value           =   50.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel GreenLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   GreenLabel, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   GreenLabel, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   GreenLabel, 4, Greenslider, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   GreenLabel, 7, Greenslider, 7, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Green"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   219
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Greenvalue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Greenvalue, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Greenvalue, 3, Greenslider, 4, False, +1.00, 1, 1, -5, 
      AutoLayout      =   Greenvalue, 8, , 0, False, +1.00, 1, 1, 17, 
      AutoLayout      =   Greenvalue, 7, Greenslider, 7, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   17.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Red"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   12
      Top             =   267
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel hexvalue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   hexvalue, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   hexvalue, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   hexvalue, 10, Button1, 10, False, +1.00, 1, 1, , 
      AutoLayout      =   hexvalue, 7, , 0, False, +1.00, 1, 1, 100, 
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel Caption
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Caption, 2, Greenvalue, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Caption, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Caption, 1, hexvalue, 1, False, +1.00, 1, 1, -314, 
      AutoLayout      =   Caption, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   -204
      LockedInPosition=   False
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   28
      Visible         =   True
      Width           =   504.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h1000
		Sub Constructor(Parent as AppleColorpicker, DefaultColor as Color = &c00000000)
		  // Calling the overridden superclass constructor.
		  myColor = DefaultColor
		  Super.Constructor
		  #pragma unused parent
		  
		  // RegisterObserver (Parent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  // RemoveObserver
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mmyColor As Color
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mmyColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mmyColor = value
			  if ColorPreview <> nil then
			    ColorPreview.BackgroundColor = mmycolor
			    hexvalue.text = myColor.Red.ToHex(2)+myColor.green.ToHex(2)+myColor.blue.ToHex(2)+myColor.Alpha.ToHex(2)
			  end if
			End Set
		#tag EndSetter
		myColor As Color
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events ColorPreview
	#tag Event
		Sub Open()
		  me.BackgroundColor = myColor
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RedSlider
	#tag Event
		Sub ValueChanged()
		  myColor = color.rgba (me.Value, myColor.Green, myColor.Blue, myColor.Alpha)
		  RedValue.text = me.value.ToText (Locale.Current, "###")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = myColor.Red
		  RedValue.text = me.value.ToText (Locale.Current, "###")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BlueSlider
	#tag Event
		Sub ValueChanged()
		  myColor = color.rgba (myColor.red, myColor.Green, me.value, myColor.Alpha)
		  bluevalue.text = me.value.ToText (Locale.Current, "###")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = myColor.Blue
		  BlueValue.text = me.value.ToText (Locale.Current, "###")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  // NotifyObservers
		  self.Dismiss (true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  self.dismiss (true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AlphaSlider
	#tag Event
		Sub ValueChanged()
		  myColor = color.rgba (myColor.red, myColor.Green, myColor.Blue, me.Value)
		  AlphaValue.text = me.value.ToText (Locale.Current, "###")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = myColor.Alpha
		  AlphaValue.text = me.value.ToText (Locale.Current, "###")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Greenslider
	#tag Event
		Sub ValueChanged()
		  myColor = color.rgba (myColor.red,  me.value, mycolor.green, myColor.Alpha)
		  greenvalue.text = me.value.ToText (Locale.Current, "###")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = myColor.Green
		  greenValue.text = me.value.ToText (Locale.Current, "###")
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
		Name="myColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
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
