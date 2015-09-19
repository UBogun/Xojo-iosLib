#tag Class
Protected Class AppleResponder1
Inherits AppleCAMediaTimingObject
	#tag Method, Flags = &h0
		Function BecomeFirstResponder() As Boolean
		  Declare function becomeFirstResponder lib UIKitLibname selector "becomeFirstResponder" (id as ptr) as Boolean
		  return becomeFirstResponder (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanPerformAction(SEL as ptr, Sender as AppleGeneralObject) As Boolean
		  Declare function canPerformAction lib UIKitLibname selector "canPerformAction:withSender:" (id as ptr, SEL as ptr, sender as ptr) as Boolean
		  return canPerformAction (id, SEL, Sender.GeneralID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanResignFirstResponder() As Boolean
		  Declare function canResignFirstResponder lib UIKitLibname selector "canResignFirstResponder" (id as ptr) as Boolean
		  return canResignFirstResponder (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub ClearTextInputContextIdentifier(Identifier as CFStringRef)
		  Declare sub clearTextInputContextIdentifier lib UIKitLibname selector "clearTextInputContextIdentifier:" (id as ptr, identifier as CFStringRef)
		  clearTextInputContextIdentifier classptr, Identifier
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  // No direct constructor, UIResponder is an interfaace base class
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DoInitWithFrame(aClass as Ptr, aFRame as FoundationFramework.NSRect) As Ptr
		  #if target32bit
		    declare function initWithFrame lib UIKitLibname selector "initWithFrame:" (id as ptr, aFrame as FoundationFramework.NSRect32Bit) as ptr
		    return initWithFrame (aClass, Aframe.toNSRect32 )
		  #elseif Target64Bit
		    declare function initWithFrame lib UIKitLibname selector "initWithFrame:" (id as ptr, aFrame  as FoundationFramework.NSRect) as ptr
		    return initWithFrame (aClass, Aframe)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function getDelegate(id as ptr) As Ptr
		  Declare Function getDelegate lib UIKitLibname selector "delegate" (id as ptr) as Ptr
		  return getDelegate (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getUserInteractionEnabled() As Boolean
		  Declare Function userInteractionEnabled lib UIKitLibname selector "isUserInteractionEnabled" (id as ptr) as Boolean
		  return userInteractionEnabled (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleResponder
		  return if (aptr = nil, nil, new AppleResponder(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PerformLayoutIfNeeded()
		  Declare sub layoutIfNeeded lib UIKitLibname selector "layoutIfNeeded" (id as ptr)
		  layoutIfNeeded (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReloadInputViews() As Boolean
		  Declare sub reloadInputViews lib UIKitLibname selector "reloadInputViews" (id as ptr)
		  reloadInputViews id
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResignFirstResponder() As Boolean
		  Declare function resignFirstResponder lib UIKitLibname selector "resignFirstResponder" (id as ptr) as Boolean
		  return resignFirstResponder (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub setDelegate(anid as ptr, value as Ptr)
		  Declare Sub setDelegate lib UIKitLibname selector "setDelegate:" (id as ptr, value as Ptr)
		  setDelegate (anid, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setUserInteractionEnabled(value as boolean)
		  Declare sub setUserInteractionEnabled lib UIKitLibname selector "setUserInteractionEnabled:" (id as ptr, value as Boolean)
		  setUserInteractionEnabled id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TargetForAction(SEL as ptr, Sender as AppleObject) As AppleGeneralObject
		  Declare function targetForAction lib UIKitLibname selector "targetForAction:withSender:" (id as ptr, SEL as ptr, sender as ptr) as Ptr
		  return  AppleObject.MakeFromPtr (targetForAction(id, Sel, sender.GeneralID))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIResponder")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function inputAccessoryView lib UIKitLibname selector "inputAccessoryView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (inputAccessoryView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputAccessoryView lib UIKitLibname selector "setInputAccessoryView:" (id as ptr, value as ptr)
			  setInputAccessoryView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		InputAccessoryView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function inputView lib UIKitLibname selector "inputView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (inputView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputView lib UIKitLibname selector "setInputView:" (id as ptr, value as ptr)
			  setInputView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		InputView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isFirstResponder lib UIKitLibname selector "isFirstResponder" (id as ptr) as Boolean
			  return isFirstResponder(id)
			End Get
		#tag EndGetter
		IsFirstResponder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function keyCommands lib UIKitLibname selector "keyCommands" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (keyCommands(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputAccessoryView lib UIKitLibname selector "setInputAccessoryView:" (id as ptr, value as ptr)
			  setInputAccessoryView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		KeyCommands As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function nextResponder lib UIKitLibname selector "nextResponder" (id as ptr) as ptr
			  return AppleResponder.MakeFromPtr (nextResponder(id))
			End Get
		#tag EndGetter
		NextResponder As AppleResponder
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function textInputContextIdentifier lib UIKitLibname selector "textInputContextIdentifier" (id as ptr) as CFStringRef
			  return textInputContextIdentifier (id)
			End Get
		#tag EndGetter
		TextInputContextIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function textInputMode lib UIKitLibname selector "textInputMode" (id as ptr) as ptr
			  return AppleTextInputMode.MakeFromPtr (textInputMode(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputAccessoryView lib UIKitLibname selector "setInputAccessoryView:" (id as ptr, value as ptr)
			  setInputAccessoryView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		TextInputMode As AppleTextInputMode
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Autoreverses"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
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
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillMode"
			Group="Behavior"
			Type="FillModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Remove"
				"1 - Remain"
				"2 - Reset"
				"3 - Both"
			#tag EndEnumValues
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isProxy"
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
			Name="MagnificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilterBias"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatCount"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOffset"
			Group="Behavior"
			Type="Double"
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
