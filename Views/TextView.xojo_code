#tag IOSView
Begin iosView TextView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin AppleViewControl AppleViewControl2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   AppleViewControl2, 7, , 0, False, +1.00, 1, 1, 192, 
      AutoLayout      =   AppleViewControl2, 8, , 0, False, +1.00, 1, 1, 217, 
      AutoLayout      =   AppleViewControl2, 3, <Parent>, 3, False, +1.00, 1, 1, 145, 
      AutoLayout      =   AppleViewControl2, 1, <Parent>, 1, False, +1.00, 1, 1, 52, 
      Height          =   217.0
      Left            =   52
      LockedInPosition=   False
      Scope           =   0
      Top             =   145
      Visible         =   True
      Width           =   192.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 1, 1, 47, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   47
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 7, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   TextArea1, 3, AppleViewControl2, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextArea1, 1, AppleViewControl2, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 1, 1, 200, 
      Editable        =   True
      Height          =   200.0
      KeyboardType    =   "0"
      Left            =   52
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   370
      Visible         =   True
      Width           =   200.0
   End
   Begin Appletest Appletest1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Appletest1, 7, , 0, False, +1.00, 1, 1, 22, 
      AutoLayout      =   Appletest1, 1, Button1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Appletest1, 8, , 0, False, +1.00, 1, 1, 22, 
      AutoLayout      =   Appletest1, 4, Button1, 4, False, +1.00, 1, 1, 46, 
      Height          =   22.0
      Left            =   128
      LockedInPosition=   False
      Scope           =   0
      Top             =   101
      Visible         =   True
      Width           =   22.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  dim np as NSPoint = NSPoint (3, 4)
		  dim t1 as date = date.Now
		  for q as integer =  0  to 10000
		    dim result as NSPoint = np.Vector_Square
		  next
		  dim td1 as DateInterval = date.Now - t1
		  dim ref as Double = 100/td1.NanoSeconds
		  
		  dim t2 as date = date.now
		  for q as integer =  0  to 10000
		    dim result as NSPoint = Vector_SquareSingle (np)
		  next
		  dim td2 as DateInterval = date.Now - t2
		  dim ref2 as Double = ref * td2.NanoSeconds
		  
		  
		  Dim Output as new xojo.Core.MutableMemoryBlock (8)
		  dim OutPutPtr as Ptr = OutPut.Data
		  dim ap as ptr = np.toMemoryBlock32.Data
		  dim sp as NSPoint32Bit = np.toNSPoint32
		  dim t3 as date = date.now
		  for q as integer =  0  to 10000
		    vDSP_vsq (aP, 1, OutPutPtr, 1, 2)
		  next
		  dim td3 as DateInterval = date.Now - t3
		  dim ref3 as Double = ref * td3.NanoSeconds
		  
		  
		  TextArea1.Text = "Xojo : "+td1.NanoSeconds.ToText+" (100%)"+EndOfline+"Accelerate: "+td2.NanoSeconds.totext + _
		  "("+ref2.ToText+")"+ _
		  EndOfline + "Without conversion: "+td3.NanoSeconds.ToText+ "("+ref3.ToText+")"
		  
		  'dim myimage as new AppleImage (iosLibLogo)
		  'for q as UInteger = 0 to 100000
		  'dim myCGImage as AppleCGImage = myimage.toCGImage
		  'next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.BackgroundColor = &c5F08B000
		  me.BackgroundRadius = 8
		  dim newfont as new iosfont ("Chalkduster", 14)
		  me.Font = newfont
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
