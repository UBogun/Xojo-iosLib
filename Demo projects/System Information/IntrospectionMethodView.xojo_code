#tag IOSView
Begin iosView IntrospectionMethodView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTextArea TextArea1
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 1, 1, 374, 
      AutoLayout      =   TextArea1, 3, , 0, False, +1.00, 1, 1, 86, 
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      Editable        =   True
      Height          =   374.0
      KeyboardType    =   "0"
      Left            =   20.0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   86.0
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h1000
		Sub Constructor(method as auto, type as IntrospectionMethodsView.DetailType)
		  // Calling the overridden superclass constructor.
		  me.Type = type
		  select case type
		  case IntrospectionMethodsView.DetailType.Methods
		    IntrospectionMethod = method
		    self.Title = IntrospectionMethod.Name
		  case IntrospectionMethodsView.DetailType.Ivars
		    IntrospectionIvar = method
		    self.Title = IntrospectionIvar.Name
		  case IntrospectionMethodsView.DetailType.Properties
		    IntrospectionProperty = method
		    self.Title = IntrospectionProperty.Name
		  end select
		  
		  Super.Constructor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub showClasses(filter as text = "")
		  select case me.Type
		  case IntrospectionMethodsView.DetailType.Methods
		    TextArea1.text = (IntrospectionMethod.NumberofArguments.ToText+" Arguments:")+ eol + _
		    (IntrospectionMethod.Argumenttypes.toCommaList) + eol + _
		    (IntrospectionMethod.ArgumenttypesTranslated.toCommaList)+eol + _
		    ("Return type: "+IntrospectionMethod.ReturnType+eol+eol+" = "+eol+eol+IntrospectionMethod.ReturnTypeTranslated)
		  case IntrospectionMethodsView.DetailType.Properties
		    TextArea1.text= integer(IntrospectionProperty.AttributeValues.Ubound+1).totext+" Attribute Values" + eol+eol+eol +IntrospectionProperty.Attributetranslated
		  case IntrospectionMethodsView.DetailType.Ivars
		    TextArea1.text= IntrospectionIvar.Offset.ToText+" Offset" + eol + IntrospectionIvar.TypeEncodingTranslated
		  end select 
		  #Pragma Unused filter
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		IntrospectionIvar As AppleIvar
	#tag EndProperty

	#tag Property, Flags = &h0
		IntrospectionMethod As AppleMethod
	#tag EndProperty

	#tag Property, Flags = &h0
		IntrospectionProperty As AppleProperty
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mClasses() As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		Type As introspectionmethodsview.DetailType
	#tag EndProperty


#tag EndWindowCode

#tag Events TextArea1
	#tag Event
		Sub Open()
		  showClasses
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
	#tag ViewProperty
		Name="Type"
		Group="Behavior"
		Type="introspectionmethodsview.DetailType"
		EditorType="Enum"
		#tag EnumValues
			"0 - Methods"
			"1 - Ivars"
			"2 - Properties"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
