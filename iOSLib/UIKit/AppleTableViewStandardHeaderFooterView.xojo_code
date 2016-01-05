#tag Class
Protected Class AppleTableViewStandardHeaderFooterView
Inherits AppleTableViewHeaderFooterView
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithReuseIdentifier(alloc(classptr), StandardHeaderName))
		  MHasOwnership = true
		  me.Frame = FoundationFrameWork.NSMakeRect (0,0,50,80)
		  dim bg as Color = &c5D81D300
		  me.TextLabel.TextColor = bg.toapplecolor
		  
		  me.tintcolor = bg.toapplecolor
		  // PrepareForReuse
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  static bgv as appleview = new AppleImageView (iosLibLogo)
			  return  bgv
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setbackgroundview id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    // if Observers = nil then Observers = new Dictionary
			    dim methods() as TargetClassMethodHelper
			    // //Delegate methods
			    
			    targetID = BuildTargetClass ("UITableViewHeaderFooterView", "iOSLibTableViewStandardHeaderFooter",methods)
			  end if
			  Return targetID
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return StandardHeaderName
			End Get
		#tag EndGetter
		ReuseIdentifier As Text
	#tag EndComputedProperty


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
