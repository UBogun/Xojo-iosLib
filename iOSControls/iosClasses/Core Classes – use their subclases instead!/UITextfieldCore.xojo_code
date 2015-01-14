#tag Class
Protected Class UITextfieldCore
Inherits iosTextfield
Implements NotificationReceiver
	#tag Method, Flags = &h1000
		Sub constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSTextField
		  // Constructor() -- From iOSControl
		  // Constructor(deserializer As xojo.Core._Deserializer) -- From iOSControl
		  Super.Constructor
		  
		  DidBeginEditNotificationCenter = new NSNotificationCenter (DidBeginNotification, Handle)
		  DidEndEditNotificationCenter = new NSNotificationCenter (DidEndNotification, Handle)
		  TextChangedNotificationCenter = new NSNotificationCenter (DidChangeNotification, Handle)
		  
		  DidBeginEditNotificationCenter.RegisterObserver self
		  DidEndEditNotificationCenter.RegisterObserver self
		  TextChangedNotificationCenter.RegisterObserver self
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  DidBeginEditNotificationCenter.RemoveObserver self
		  DidEndEditNotificationCenter.RemoveObserver self
		  TextChangedNotificationCenter.RemoveObserver self
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReveicedNotification(Notification as NSNotification)
		  // Part of the NotificationReceiver interface.
		  dim myname as text = Notification.name
		  select case myname
		  case DidBeginNotification
		    RaiseEvent TextEditBegin
		  case DidChangeNotification
		    RaiseEvent TextChanged
		  case DidEndNotification
		    RaiseEvent TextEditEnd
		  end select
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event TextChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextEditBegin()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextEditEnd()
	#tag EndHook


	#tag Property, Flags = &h21
		Private DidBeginEditNotificationCenter As NSNotificationCenter
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DidEndEditNotificationCenter As NSNotificationCenter
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TextChangedNotificationCenter As NSNotificationCenter
	#tag EndProperty


	#tag Constant, Name = DidBeginNotification, Type = Text, Dynamic = False, Default = \"UITextFieldTextDidBeginEditingNotification", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DidChangeNotification, Type = Text, Dynamic = False, Default = \"UITextFieldTextDidChangeNotification", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DidEndNotification, Type = Text, Dynamic = False, Default = \"UITextFieldTextDidEndEditingNotification", Scope = Protected
	#tag EndConstant


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
			Name="Enabled"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
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
			Name="KeyboardType"
			Visible=true
			Group="Behavior"
			Type="xojo.iOSKeyboardTypes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - ASCIICapable"
				"2 - NumbersAndPunctuation"
				"3 - URL"
				"4 - NumberPad"
				"5 - PhonePad"
				"6 - NamePhonePad"
				"7 - EmailAddress"
				"8 - DecimalPad"
				"9 - Twitter"
				"10 - WebSearch"
			#tag EndEnumValues
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
			Name="Password"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PlaceHolder"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlignment"
			Visible=true
			Group="Behavior"
			Type="xojo.iOSTextAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"1 - Center"
				"2 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
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
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
