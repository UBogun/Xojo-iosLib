#tag Class
Protected Class AppleButton
Inherits AppleControl
	#tag Method, Flags = &h0
		Function AttributedTitleForState(state as UIControlState) As AppleAttributedString
		  Declare Function attributedTitleForState lib UIKitLibname selector "attributedTitleForState:" (id as ptr, state as UIControlState) as Ptr
		  return AppleAttributedString.MakeFromPtr (attributedTitleForState (id, state))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundImageForState(state as UIControlState) As AppleImage
		  Declare Function backgroundImageForState lib UIKitLibname selector "backgroundImageForState:" (id as ptr, state as UIControlState) as Ptr
		  return AppleImage.MakeFromPtr ( backgroundImageForState (id, state))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Type as UIButtonType)
		  declare Function buttonWithType lib UIKitLibname selector "buttonWithType:" (id as ptr, type as UIButtonType) as ptr
		  super.Constructor (buttonWithType(ClassPtr, type))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ImageForState(state as UIControlState) As AppleImage
		  Declare Function imageForState lib UIKitLibname selector "imageForState:" (id as ptr, state as UIControlState) as Ptr
		  return AppleImage.MakeFromPtr ( imageForState (id, state))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAttributedTitleForState(Title as appleattributedstring, state as UIControlState)
		  Declare Sub setAttributedTitle lib UIKitLibname selector "setAttributedTitle:forState:" (id as ptr, title as ptr, state as UIControlState)
		  setAttributedTitle (id, Title.id, state)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundImageForState(Image as Appleimage, state as UIControlState)
		  Declare Sub SetBackgroundImageForState lib UIKitLibname selector "setBackgroundImage:forState:" (id as ptr, image as ptr, state as UIControlState)
		  SetBackgroundImageForState (id, if (image = nil, nil, image.id), state)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageForState(Image as Appleimage, state as UIControlState)
		  Declare Sub setImageForState lib UIKitLibname selector "setImage:forState:" (id as ptr, image as ptr, state as UIControlState)
		  setImageForState (id, if (image = nil, nil,  image.id), state)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitleColorForState(TitleColor as applecolor, state as UIControlState)
		  Declare Sub SetTitleColorForState lib UIKitLibname selector "setTitleColor:forState:" (id as ptr, titlecolor as ptr, state as UIControlState)
		  setTitleColorForState (id, TitleColor.id, state)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitleForState(Title as cfstringref, state as UIControlState)
		  Declare Sub setTitleForState lib UIKitLibname selector "setTitle:forState:" (id as ptr, title as cfstringref, state as UIControlState)
		  setTitleForState (id, Title, state)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitleShadowColorForState(ShadowColor as applecolor, state as UIControlState)
		  Declare Sub SetTitleShadowColorForState lib UIKitLibname selector "setTitleShadowColor:forState:" (id as ptr, ShadowColor as ptr, state as UIControlState)
		  setTitleShadowColorForState (id, ShadowColor.id, state)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleColorForState(state as UIControlState) As AppleColor
		  Declare Function titleColorForState lib UIKitLibname selector "titleColorForState:" (id as ptr, state as UIControlState) as ptr
		  return new applecolor (titleColorForState (id, state))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleForState(state as UIControlState) As text
		  Declare Function titleForState lib UIKitLibname selector "titleForState:" (id as ptr, state as UIControlState) as CFStringRef
		  return titleForState (id, state)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleShadowColorForState(state as UIControlState) As AppleColor
		  Declare Function titleShadowColorForState lib UIKitLibname selector "titleShadowColorForState:" (id as ptr, state as UIControlState) as ptr
		  return new applecolor (titleShadowColorForState (id, state))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function adjustsImageWhenDisabled lib UIKitLibname selector "adjustsImageWhenDisabled" (id as ptr) as Boolean
			  return adjustsImageWhenDisabled (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAdjustsImageWhenDisabled lib UIKitLibname selector "setAdjustsImageWhenDisabled:" (id as ptr, value as Boolean)
			  setAdjustsImageWhenDisabled (id, value)
			End Set
		#tag EndSetter
		AdjustsImageWhenDisabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function adjustsImageWhenHighlighted lib UIKitLibname selector "adjustsImageWhenHighlighted" (id as ptr) as Boolean
			  return adjustsImageWhenHighlighted (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAdjustsImageWhenHighlighted lib UIKitLibname selector "setAdjustsImageWhenHighlighted:" (id as ptr, value as Boolean)
			  setAdjustsImageWhenHighlighted (id, value)
			End Set
		#tag EndSetter
		AdjustsImageWhenHighlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function buttonType lib UIKitLibname selector "buttonType" (id as ptr) as UIButtonType
			  return buttonType (id)
			  
			End Get
		#tag EndGetter
		ButtonType As UIButtonType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIButton")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function contentEdgeInsets lib UIKitLibname selector "contentEdgeInsets" (id as ptr) as UIEdgeInsets
			    return contentEdgeInsets (id)
			  #elseif Target32Bit
			    Declare function contentEdgeInsets lib UIKitLibname selector "contentEdgeInsets" (id as ptr) as UIEdgeInsets32Bit
			    return contentEdgeInsets(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setContentEdgeInsets lib UIKitLibname selector "setContentEdgeInsets:" (id as ptr, value as UIEdgeInsets)
			    setContentEdgeInsets (id, value)
			  #elseif Target32Bit
			    Declare Sub setContentEdgeInsets lib UIKitLibname selector "setContentEdgeInsets:" (id as ptr, value as UIEdgeInsets32Bit)
			    setContentEdgeInsets (id, value.toUIEdgeInset32)
			  #endif
			End Set
		#tag EndSetter
		ContentEdgeInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function currentAttributedTitle lib UIKitLibname selector "currentAttributedTitle" (id as ptr) as Ptr
			  return AppleAttributedString.MakeFromPtr ( currentAttributedTitle (id))
			  
			End Get
		#tag EndGetter
		CurrentAttributedTitle As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function currentBackgroundImage lib UIKitLibname selector "currentBackgroundImage" (id as ptr) as Ptr
			  return new AppleImage (currentBackgroundImage (id))
			End Get
		#tag EndGetter
		CurrentBackgroundImage As Appleimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function currentImage lib UIKitLibname selector "currentImage" (id as ptr) as Ptr
			  return new AppleImage (currentImage (id))
			End Get
		#tag EndGetter
		CurrentImage As Appleimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function currentTitle lib UIKitLibname selector "currentTitle" (id as ptr) as CFStringRef
			  return currentTitle (id)
			  
			End Get
		#tag EndGetter
		CurrentTitle As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function currentTitleColor lib UIKitLibname selector "currentTitleColor" (id as ptr) as Ptr
			  return new AppleColor (currentTitleColor (id))
			End Get
		#tag EndGetter
		CurrentTitleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function currentTitleShadowColor lib UIKitLibname selector "currentTitleShadowColor" (id as ptr) as Ptr
			  return new AppleColor (currentTitleShadowColor (id))
			End Get
		#tag EndGetter
		CurrentTitleShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function imageEdgeInsets lib UIKitLibname selector "imageEdgeInsets" (id as ptr) as UIEdgeInsets
			    return imageEdgeInsets (id)
			  #elseif Target32Bit
			    Declare function imageEdgeInsets lib UIKitLibname selector "imageEdgeInsets" (id as ptr) as UIEdgeInsets32Bit
			    return imageEdgeInsets(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setImageEdgeInsets lib UIKitLibname selector "setImageEdgeInsets:" (id as ptr, value as UIEdgeInsets)
			    setImageEdgeInsets (id, value)
			  #elseif Target32Bit
			    Declare Sub setImageEdgeInsets lib UIKitLibname selector "setImageEdgeInsets:" (id as ptr, value as UIEdgeInsets32Bit)
			    setImageEdgeInsets (id, value.toUIEdgeInset32)
			  #endif
			End Set
		#tag EndSetter
		ImageEdgeInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function imageView lib UIKitLibname selector "imageView" (id as ptr) as ptr
			  return new AppleView (imageView (id))
			End Get
		#tag EndGetter
		ImageView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function reversesTitleShadowWhenHighlighted lib UIKitLibname selector "reversesTitleShadowWhenHighlighted" (id as ptr) as Boolean
			  return reversesTitleShadowWhenHighlighted (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setReversesTitleShadowWhenHighlighted lib UIKitLibname selector "setReversesTitleShadowWhenHighlighted:" (id as ptr, value as Boolean)
			  setReversesTitleShadowWhenHighlighted (id, value)
			End Set
		#tag EndSetter
		ReversesTitleShadowWhenHighlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function showsTouchWhenHighlighted lib UIKitLibname selector "showsTouchWhenHighlighted" (id as ptr) as Boolean
			  return showsTouchWhenHighlighted (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setShowsTouchWhenHighlighted lib UIKitLibname selector "setShowsTouchWhenHighlighted:" (id as ptr, value as Boolean)
			  setShowsTouchWhenHighlighted (id, value)
			End Set
		#tag EndSetter
		ShowsTouchWhenHighlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function tintColor lib UIKitLibname selector "tintColor" (id as ptr) as Ptr
			  return new applecolor (tintColor (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTintColor lib UIKitLibname selector "setTintColor:" (id as ptr, value as Ptr)
			  setTintColor (id, value.id)
			End Set
		#tag EndSetter
		TintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function titleEdgeInsets lib UIKitLibname selector "titleEdgeInsets" (id as ptr) as UIEdgeInsets
			    return titleEdgeInsets (id)
			  #elseif Target32Bit
			    Declare function titleEdgeInsets lib UIKitLibname selector "titleEdgeInsets" (id as ptr) as UIEdgeInsets32Bit
			    return titleEdgeInsets(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setTitleEdgeInsets lib UIKitLibname selector "setTitleEdgeInsets:" (id as ptr, value as UIEdgeInsets)
			    setTitleEdgeInsets (id, value)
			  #elseif Target32Bit
			    Declare Sub setTitleEdgeInsets lib UIKitLibname selector "setTitleEdgeInsets:" (id as ptr, value as UIEdgeInsets32Bit)
			    setTitleEdgeInsets (id, value.toUIEdgeInset32)
			  #endif
			End Set
		#tag EndSetter
		TitleEdgeInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function titleLabel lib UIKitLibname selector "titleLabel" (id as ptr) as ptr
			  return new AppleLabel (titleLabel (id))
			End Get
		#tag EndGetter
		TitleLabel As AppleLabel
	#tag EndComputedProperty


	#tag Enum, Name = UIButtonType, Type = Integer, Flags = &h0
		Custom
		  System
		  Disclosure
		  InfoLight
		  InfoDark
		  ContactAdd
		RoundedRect
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdjustsImageWhenDisabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AdjustsImageWhenHighlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonType"
			Group="Behavior"
			Type="UIButtonType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Custom"
				"1 - System"
				"2 - Disclosure"
				"3 - InfoLight"
				"4 - InfoDark"
				"5 - ContactAdd"
				"6 - RoundedRect"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIKitFramework.UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentHorizontalAlignment"
			Group="Behavior"
			Type="UIControlContentHorizontalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Left"
				"2 - Right"
				"3 - Fill"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentVerticalAlignment"
			Group="Behavior"
			Type="UIControlContentVerticalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Fill"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentTitle"
			Group="Behavior"
			Type="Text"
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
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
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
			Name="MultipleTouchEnabled"
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReversesTitleShadowWhenHighlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsTouchWhenHighlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="UIControlState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Normal"
				"1 - Highlighted"
				"2 - Disabled"
				"3 - Selected"
				"4 - Application"
				"5 - Reserved"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tracking"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
