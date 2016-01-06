#tag Class
Protected Class AppleTableViewHeaderFooterView
Inherits AppleView
	#tag Method, Flags = &h0
		Sub Constructor(Identifier as text = "")
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if Identifier.Empty then Identifier = StandardHeaderName
		  Super.Constructor (initWithReuseIdentifier(alloc(classptr), Identifier))
		  MHasOwnership = true
		  PrepareForReuse
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getreuseIdentifier Lib UIKitLibName Selector "reuseIdentifier" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function initWithReuseIdentifier Lib UIKitLibName Selector "initWithReuseIdentifier:" (id as ptr, identifier as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleTableViewheaderFooterView
		  return if (aptr = nil, nil, new AppleTableViewHeaderFooterView(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepareForReuse()
		  UIKitFramework.PrepareForReuse(id)
		End Sub
	#tag EndMethod


	#tag Note, Name = Status Complete
		
		complet, untested
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (UIKitFramework.getbackgroundView (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setbackgroundView (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		BackgroundView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UITableViewHeaderFooterView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakefromPtr (UIKitFramework.getcontentView (id))
			End Get
		#tag EndGetter
		ContentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleLabel.MakefromPtr (UIKitFramework.getdetailtextlabel (id))
			End Get
		#tag EndGetter
		DetailTextLabel As AppleLabel
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getreuseidentifier(id)
			End Get
		#tag EndGetter
		ReuseIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleLabel.MakefromPtr (UIKitFramework.gettextlabel (id))
			End Get
		#tag EndGetter
		TextLabel As AppleLabel
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applecolor.MakefromPtr (UIKitFramework.gettintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.settintColor (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		TintColor As AppleColor
	#tag EndComputedProperty


	#tag Constant, Name = StandardHeaderName, Type = Text, Dynamic = False, Default = \"iOSLibStandardTableHeaderFooter", Scope = Public
	#tag EndConstant


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
			Name="ReuseIdentifier"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
