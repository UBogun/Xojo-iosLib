#tag IOSContainerControl
Begin iOSContainerControl ContainerControl1
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   492.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   734.0
   Begin iOSSwitch Switch1
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch1, 1, <Parent>, 1, False, +1.00, 1, 1, 33, 
      AutoLayout      =   Switch1, 3, <Parent>, 3, False, +1.00, 1, 1, 27, 
      Enabled         =   True
      Height          =   31.0
      Left            =   33.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   27.0
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch Switch2
      AutoLayout      =   Switch2, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   Switch2, 3, , 0, False, +1.00, 1, 1, 73, 
      AutoLayout      =   Switch2, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   Switch2, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   31.0
      Left            =   663.0
      LockedInPosition=   False
      Scope           =   0
      Top             =   73.0
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSTextArea TextArea1
      AutoLayout      =   TextArea1, 3, Switch2, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 1, 1, 337, 
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      Editable        =   True
      Height          =   337.0
      KeyboardType    =   "0"
      Left            =   20.0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &cDA770000
      TextFont        =   ""
      TextSize        =   0
      Top             =   112.0
      Visible         =   True
      Width           =   694.0
      Begin iOSSwitch Switch4
         AutoLayout      =   Switch4, 8, , 0, True, +1.00, 1, 1, 31, 
         AutoLayout      =   Switch4, 7, , 0, True, +1.00, 1, 1, 51, 
         AutoLayout      =   Switch4, 1, TextArea1, 1, False, +1.00, 1, 1, 184, 
         AutoLayout      =   Switch4, 3, TextArea1, 3, False, +1.00, 1, 1, 256, 
         Enabled         =   True
         Height          =   31.0
         Left            =   204.0
         LockedInPosition=   False
         PanelIndex      =   -1
         Parent          =   "TextArea1"
         Scope           =   0
         Top             =   368.0
         Value           =   False
         Visible         =   True
         Width           =   51.0
      End
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Event
		Sub Open()
		  me.BackgroundColor = &cFFFFFF00
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="AccessibilityHint"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		InitialValue="480"
		Type="Double"
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
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		InitialValue="320"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
