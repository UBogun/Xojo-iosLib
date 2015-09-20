#tag Class
Protected Class iOSTextFieldEnhanced
Inherits iostextfield
Implements AppleNSEventReceiver
	#tag Method, Flags = &h0
		Sub constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSTextField
		  // Constructor() -- From iOSControl
		  // Constructor(deserializer As xojo.Core._Deserializer) -- From iOSControl
		  Super.Constructor
		  if RetainViewDict = nil then RetainViewDict = new Dictionary
		  RetainViewDict.Value(Handle) = me.AppleTextField
		  me.AppleTextField.RegisterObserver (self)
		  me.AppleTextField.UserInteractionEnabled = true
		  // me.AppleView.AddSubview me.AppleTextField
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub destructor()
		  me.AppleTextField.RemoveObserver
		  RetainViewDict.Remove (me.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub panreceived()
		  break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReceivedEvent(Details as AppleArray)
		  // Part of the AppleNSEventReceiver interface.
		  
		  break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReceivedReturnEvent(Details as AppleArray) As Boolean
		  #pragma unused details
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared RetainViewDict As Dictionary
	#tag EndProperty


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
