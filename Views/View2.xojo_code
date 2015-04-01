#tag IOSView
Begin iosView View2
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "Test Section"
   Top             =   0
   Begin ioslibpicker HTMLViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   HTMLViewer1, 7, , 0, False, +1.00, 1, 1, 320, 
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   HTMLViewer1, 8, , 0, False, +1.00, 1, 1, 162, 
      AutoLayout      =   HTMLViewer1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      Height          =   162.0
      Left            =   0
      LockedInPosition=   False
      NumberOfComponents=   0
      Scope           =   0
      Top             =   318
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 3, <Parent>, 3, False, +1.00, 1, 1, 81, 
      AutoLayout      =   Canvas1, 7, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   Canvas1, 8, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 32, 
      Height          =   200.0
      Left            =   32
      LockedInPosition=   False
      Scope           =   0
      Top             =   81
      Visible         =   True
      Width           =   200.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events HTMLViewer1
	#tag Event
		Sub Open()
		  me.addcolumn (Array("Apple","Banana", "Pear", "Orange", "Pineapple", "Grapefruit", "Cherry", "Strawberry"))
		  me.AddColumn(Array("Punch","Soda"))
		  me.SelectedRow(0) = 1
		  me.SelectedRow(1) = 1
		  dim mysize as nssize = me.iOSLibView.SizeThatFits
		  me.dataSource.setRowHeight (0,26)
		  break
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(row as integer, column as integer)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  dim mytext as new iOSLibAttributedString ("Hello World", "Test")
		  dim mypoint as new rect (20,20, 200,200)
		  mytext.Draw mypoint.tonsrect
		  dim mysize as size = mypoint.Size
		  dim mycontext as ptr = iOSLibCGContext.UIGraphicsGetCurrentContext
		  
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
