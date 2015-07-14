#tag Class
Protected Class AppleResponder
Inherits AppleObject
	#tag Method, Flags = &h0
		Function BecomeFirstResponder() As Boolean
		  Declare function becomeFirstResponder lib UIKit selector "becomeFirstResponder" (id as ptr) as Boolean
		  return becomeFirstResponder (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanPerformAction(SEL as ptr, Sender as AppleGeneralObject) As Boolean
		  Declare function canPerformAction lib UIKit selector "canPerformAction:withSender:" (id as ptr, SEL as ptr, sender as ptr) as Boolean
		  return canPerformAction (id, SEL, Sender.GeneralID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanResignFirstResponder() As Boolean
		  Declare function canResignFirstResponder lib UIKit selector "canResignFirstResponder" (id as ptr) as Boolean
		  return canResignFirstResponder (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub ClearTextInputContextIdentifier(Identifier as CFStringRef)
		  Declare sub clearTextInputContextIdentifier lib UIKit selector "clearTextInputContextIdentifier:" (id as ptr, identifier as CFStringRef)
		  clearTextInputContextIdentifier classptr, Identifier
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  // No direct constructor, UIResponder is an interfaace base class
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DoInitWithFrame(aClass as Ptr, aFRame as NSRect) As Ptr
		  #if target32bit
		    declare function initWithFrame lib UIKit selector "initWithFrame:" (id as ptr, aFrame as NSRect32Bit) as ptr
		    return initWithFrame (aClass, Aframe.toNSRect32 )
		  #elseif Target64Bit
		    declare function initWithFrame lib UIKit selector "initWithFrame:" (id as ptr, aFrame as NSRect) as ptr
		    return initWithFrame (aClass, Aframe)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getbounds() As NSRect
		  #if Target64bit
		    declare function bounds lib UIKit selector "bounds" (id as ptr) as NSRect
		    return bounds (id)
		  #elseif target32bit
		    declare function bounds lib UIKit selector "bounds" (id as ptr) as NSRect32Bit
		    return bounds(id).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getContents() As Ptr
		  declare function contents lib uikit selector "contents" (id as Ptr) as ptr
		  return contents(id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function getDelegate(id as ptr) As Ptr
		  Declare Function getDelegate lib uikit selector "delegate" (id as ptr) as Ptr
		  return getDelegate (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getFrame() As NSRect
		  #if target32bit
		    declare function getframe lib UIKit selector "frame" (id as Ptr) as NSRect32Bit
		    return getframe(id).toNSRect
		  #elseif Target64Bit
		    declare function getframe lib UIKit selector "frame" (id as Ptr) as NSRect
		    return getframe (id)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOpaque() As Boolean
		  declare function opaque lib UIKit selector "isOpaque" (id as ptr) as Boolean
		  return opaque (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getUserInteractionEnabled() As Boolean
		  Declare Function userInteractionEnabled lib UIKit selector "isUserInteractionEnabled" (id as ptr) as Boolean
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
		  Declare sub layoutIfNeeded lib UIKit selector "layoutIfNeeded" (id as ptr)
		  layoutIfNeeded (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReloadInputViews() As Boolean
		  Declare sub reloadInputViews lib UIKit selector "reloadInputViews" (id as ptr)
		  reloadInputViews id
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResignFirstResponder() As Boolean
		  Declare function resignFirstResponder lib UIKit selector "resignFirstResponder" (id as ptr) as Boolean
		  return resignFirstResponder (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBounds(value as NSRect)
		  #if Target64bit
		    declare sub setbounds lib UIKit selector "setBounds:" (id as ptr, value as NSRect)
		    setBounds id, value
		  #elseif target32bit
		    declare sub setBounds lib UIKit selector "setBounds:" (id as ptr, value as NSRect32Bit)
		    setBounds id, value.toNSRect32
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setContents(value as ptr)
		  declare Sub setcontents lib uikit selector "setContents:" (id as Ptr, value as ptr)
		  setcontents (id, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub setDelegate(anid as ptr, value as Ptr)
		  Declare Sub setDelegate lib uikit selector "setDelegate:" (id as ptr, value as Ptr)
		  setDelegate (anid, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setFrame(value as NSRect)
		  #if target32bit
		    declare sub setFrame lib UIKit selector "setFrame:" (id as Ptr, value as NSRect32Bit)
		    setFrame id, value.toNSRect32
		  #elseif target64bit
		    declare sub setFrame lib UIKit selector "setFrame:" (id as Ptr, value as NSRect)
		    setFrame id, value
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setOpaque(value as boolean)
		  declare sub setOpaque lib UIKit selector "setOpaque:" (id as ptr, value as Boolean)
		  setOpaque id, value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setUserInteractionEnabled(value as boolean)
		  Declare sub setUserInteractionEnabled lib UIKit selector "setUserInteractionEnabled:" (id as ptr, value as Boolean)
		  setUserInteractionEnabled id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TargetForAction(SEL as ptr, Sender as AppleObject) As AppleGeneralObject
		  Declare function targetForAction lib UIKit selector "targetForAction:withSender:" (id as ptr, SEL as ptr, sender as ptr) as Ptr
		  return  AppleObject.MakeFromPtr (targetForAction(id, Sel, sender.GeneralID))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIResponder")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function inputAccessoryView lib UIKit selector "inputAccessoryView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (inputAccessoryView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputAccessoryView lib UIKit selector "setInputAccessoryView:" (id as ptr, value as ptr)
			  setInputAccessoryView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		InputAccessoryView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function inputView lib UIKit selector "inputView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (inputView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputView lib UIKit selector "setInputView:" (id as ptr, value as ptr)
			  setInputView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		InputView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isFirstResponder lib UIKit selector "isFirstResponder" (id as ptr) as Boolean
			  return isFirstResponder(id)
			End Get
		#tag EndGetter
		IsFirstResponder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function keyCommands lib UIKit selector "keyCommands" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (keyCommands(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputAccessoryView lib UIKit selector "setInputAccessoryView:" (id as ptr, value as ptr)
			  setInputAccessoryView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		KeyCommands As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function nextResponder lib UIKit selector "nextResponder" (id as ptr) as ptr
			  return AppleResponder.MakeFromPtr (nextResponder(id))
			End Get
		#tag EndGetter
		NextResponder As AppleResponder
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function textInputContextIdentifier lib UIKit selector "textInputContextIdentifier" (id as ptr) as CFStringRef
			  return textInputContextIdentifier (id)
			End Get
		#tag EndGetter
		TextInputContextIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function textInputMode lib UIKit selector "textInputMode" (id as ptr) as ptr
			  return AppleTextInputMode.MakeFromPtr (textInputMode(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setInputAccessoryView lib UIKit selector "setInputAccessoryView:" (id as ptr, value as ptr)
			  setInputAccessoryView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		TextInputMode As AppleTextInputMode
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
