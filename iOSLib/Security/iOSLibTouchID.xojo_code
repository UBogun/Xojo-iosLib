#tag Class
Protected Class iOSLibTouchID
	#tag Method, Flags = &h0, Description = 5374617274732074686520546F75636849442061757468656E7469636174696F6E2070726F63657373206966207468652064657669636520697320546F75636849442D63617061626C652E205F526561736F6E5F2077696C6C20626520646973706C61796564206173206164646974696F6E616C20696E666F726D6174696F6E2E
		Sub Authenticate(AuthenticationReason As Text)
		  lac.EvaluatePolicy (AuthenticationReason)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 2052657475726E732074686520617661696C6162696C697479206F6620546F7563684944206F6E20746865206465766963652E
		Function Available() As Boolean
		  dim error as new AppleError
		  return lac.CanEvaluatePolicy(error)
		  #Pragma unused Error
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mlac = new AppleLAContext
		  AddHandler mLAC.EvaluationResult, addressof EvaluationForwarder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub destructor()
		  RemoveHandler mLAC.EvaluationResult, addressof EvaluationForwarder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub EvaluationForwarder(Context as AppleLAContext, Success As Boolean, ErrorNr as iOSLibTouchID.TouchIDError, errorDescription as Text)
		  #pragma unused Context
		  if Success then
		    RaiseEvent Success
		  else
		    RaiseEvent Failed (ErrorNr, ErrorDescription)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476976657320796F752074686520726561736F6E20666F7220756E617661696C6162696C697479206F6620546F7563684964206F6E20746865206465766963652E
		Function UnavailabilityError() As TouchIDError
		  dim error as new AppleError
		  call lac.CanEvaluatePolicy(error)
		  if error = nil then
		    return TouchIDError.NoError
		  else
		    return TouchIDError(error.Code)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476976657320796F752074686520726561736F6E20666F7220756E617661696C6162696C697479206F6620546F7563684964206173206C6F63616C697A656420746578742E
		Function UnavailabilityReason() As Text
		  dim error as new AppleError
		  call lac.CanEvaluatePolicy(error)
		  if error = nil then
		    return "No Error"
		  else
		    return error.LocalizedDescription
		  end if
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120546F7563684944206576616C756174696F6E206661696C65642C207769746820696E666F726D6174696F6E2061626F7574206572726F7220726561736F6E732E2020
		Event Failed(ErrorNr as iOSLibTouchID.TouchIDError, Description as Text)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865206465766963652077617320756E6C6F636B65642076696120546F75636849442E
		Event Success()
	#tag EndHook


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return mLAC
			End Get
		#tag EndGetter
		Private LAC As AppleLAContext
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mLAC As AppleLAContext
	#tag EndProperty


	#tag Enum, Name = TouchIDError, Type = Integer, Flags = &h0
		AuthenticationFailed = -1
		  UserCancel = -2
		  UserFallback = -3
		  SystemCancel = -4
		  PasscodeNotSet = -5
		  TouchIDNotAvailable = -6
		  TouchIDNotEnrolled = -7
		  NoError = 0
		SimulatorNotSupported = -1000
	#tag EndEnum


	#tag ViewBehavior
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
