#tag Class
Protected Class AppleUserNotificationSettings
Inherits AppleObject
	#tag Method, Flags = &h21, Description = 4372656174657320616E642072657475726E7320612073657474696E6773206F626A656374207468617420796F752063616E2075736520746F20726567697374657220796F757220726571756573746564206E6F74696669636174696F6E20616E6420616374696F6E2074797065732E
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320612073657474696E6773206F626A656374207468617420796F752063616E2075736520746F20726567697374657220796F757220726571756573746564206E6F74696669636174696F6E20616E6420616374696F6E2074797065732E
		Sub Constructor(Type as AppleUserNotificationType, categories as appleset)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (settingsforTypes(classptr, type.id, categories.id))
		  retainclassobject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcategories Lib UIKItLibName Selector "categories" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function gettypes Lib UIKItLibName Selector "types" (id as ptr) As uinteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleUserNotificationSettings
		  return if (aptr = nil, nil, new AppleUserNotificationSettings(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function settingsForTypes Lib UIKItLibName Selector "settingsForTypes:categories:" (id as ptr, type as uinteger, categories as Ptr) As ptr
	#tag EndExternalMethod


	#tag Note, Name = Status completed
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520617070E280997320726567697374657265642067726F757073206F6620616374696F6E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleset.MakefromPtr(getcategories(id))
			End Get
		#tag EndGetter
		Categories As AppleSet
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIUserNotificatonSettings")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206269746D61736B206F6620746865206E6F74696669636174696F6E207479706573207468617420796F75722061707020697320616C6C6F77656420746F207573652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleUserNotificationType (gettypes(id))
			End Get
		#tag EndGetter
		Types As AppleUserNotificationType
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
