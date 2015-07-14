#tag Class
Protected Class AppleError
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleError
		  return if (aptr = nil, nil, new AppleError(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSError")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function code lib Foundation selector "code" (id as ptr) as Integer
			  return code (id)
			End Get
		#tag EndGetter
		Code As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function domain lib Foundation selector "domain" (id as ptr) as CFStringRef
			  return domain (id)
			End Get
		#tag EndGetter
		Domain As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function helpAnchor lib Foundation selector "helpAnchor" (id as ptr) as CFStringRef
			  return helpAnchor (id)
			End Get
		#tag EndGetter
		HelpAnchor As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function localizedDescription lib Foundation selector "localizedDescription" (id as ptr) as CFStringRef
			  return localizedDescription (id)
			End Get
		#tag EndGetter
		LocalizedDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function localizedFailureReason lib Foundation selector "localizedFailureReason" (id as ptr) as CFStringRef
			  return localizedFailureReason (id)
			End Get
		#tag EndGetter
		LocalizedFailureReason As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function localizedRecoveryOptions lib Foundation selector "localizedRecoveryOptions" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (localizedRecoveryOptions (id))
			End Get
		#tag EndGetter
		LocalizedRecoveryOptions As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function localizedRecoverySuggestion lib Foundation selector "localizedRecoverySuggestion" (id as ptr) as CFStringRef
			  return localizedRecoverySuggestion (id)
			End Get
		#tag EndGetter
		LocalizedRecoverySuggestion As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function recoveryAttempter lib Foundation selector "recoveryAttempter" (id as ptr) as ptr
			  return AppleObject.MakeFromPtr (recoveryAttempter (id))
			End Get
		#tag EndGetter
		RecoveryAttempter As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function userinfo lib Foundation selector "unserInfo" (id as ptr) as ptr
			  return AppleDictionary.MakeFromPtr (userinfo (id))
			End Get
		#tag EndGetter
		UserInfo As AppleDictionary
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Code"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Domain"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpAnchor"
			Group="Behavior"
			Type="Text"
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
			Name="LocalizedDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedFailureReason"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedRecoverySuggestion"
			Group="Behavior"
			Type="Text"
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
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass