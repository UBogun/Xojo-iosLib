#tag Class
Protected Class AppleTextfield
Inherits AppleControl
	#tag Method, Flags = &h0
		Function ClearButtonRectForBounds(Bounds as NSRect) As NSRect
		  #if Target64Bit
		    Declare Function clearButtonRectForBounds lib UIKit selector "clearButtonRectForBounds:" (id as ptr, bounds as nsrect) as NSRect
		    return  clearButtonRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function clearButtonRectForBounds lib UIKit selector "clearButtonRectForBounds:" (id as ptr, bounds as NSRect32Bit) as NSRect32Bit
		    return  clearButtonRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aframe as NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame As NSRect) -- From AppleView
		  // Constructor(aFrame As NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (aframe)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EditingRectForBounds(Bounds as NSRect) As NSRect
		  #if Target64Bit
		    Declare Function editingRectForBounds lib UIKit selector "editingRectForBounds:" (id as ptr, bounds as nsrect) as NSRect
		    return  editingRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function editingRectForBounds lib UIKit selector "editingRectForBounds:" (id as ptr, bounds as NSRect32Bit) as NSRect32Bit
		    return  editingRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftViewRectForBounds(Bounds as NSRect) As NSRect
		  #if Target64Bit
		    Declare Function leftViewRectForBounds lib UIKit selector "leftViewRectForBounds:" (id as ptr, bounds as nsrect) as NSRect
		    return  leftViewRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function leftViewRectForBounds lib UIKit selector "leftViewRectForBounds:" (id as ptr, bounds as NSRect32Bit) as NSRect32Bit
		    return  leftViewRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PlaceholderRectForBounds(Bounds as NSRect) As NSRect
		  #if Target64Bit
		    Declare Function placeholderRectForBounds lib UIKit selector "placeholderRectForBounds:" (id as ptr, bounds as nsrect) as NSRect
		    return  placeholderRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function placeholderRectForBounds lib UIKit selector "placeholderRectForBounds:" (id as ptr, bounds as nsrect) as NSRect32Bit
		    return  placeholderRectForBounds (id, bounds).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightViewRectForBounds(Bounds as NSRect) As NSRect
		  #if Target64Bit
		    Declare Function rightViewRectForBounds lib UIKit selector "rightViewRectForBounds:" (id as ptr, bounds as nsrect) as NSRect
		    return  rightViewRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function rightViewRectForBounds lib UIKit selector "rightViewRectForBounds:" (id as ptr, bounds as NSRect32Bit) as NSRect32Bit
		    return  rightViewRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextRectForBounds(Bounds as NSRect) As NSRect
		  #if Target64Bit
		    Declare Function textRectForBounds lib UIKit selector "textRectForBounds:" (id as ptr, bounds as nsrect) as NSRect
		    return  textRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function textRectForBounds lib UIKit selector "textRectForBounds:" (id as ptr, bounds as NSRect32Bit) as NSRect32Bit
		    return  textRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getAdjustsFontSizeToFitWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAdjustsFontSizeToFitWidth value
			End Set
		#tag EndSetter
		AdjustsFontSizeToFitWidth As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function allowsEditingTextAttributes lib UIKit selector "allowsEditingTextAttributes" (id as ptr) as boolean
			  return allowsEditingTextAttributes (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setAllowsEditingTextAttributes lib UIKit selector "setAllowsEditingTextAttributes:" (id as ptr, value as boolean)
			  setAllowsEditingTextAttributes id, value
			End Set
		#tag EndSetter
		AllowsEditingTextAttributes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getAttributedText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAttributedText value
			End Set
		#tag EndSetter
		AttributedCaption As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function attributedPlaceholder lib UIKit selector "attributedPlaceholder" (id as ptr) as Ptr
			  Return AppleAttributedString.MakeFromPtr (attributedPlaceholder (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAttributedPlaceholder lib UIKit selector "setAttributedPlaceholder:" (id as ptr, value as Ptr)
			  setAttributedPlaceholder id, if ( value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AttributedPlaceholder As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function background lib UIKit selector "background" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (background(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setBackground lib UIKit selector "setBackground:" (id as ptr, value as ptr)
			  setBackground id, value.id
			End Set
		#tag EndSetter
		BackgroundImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function borderStyle lib UIKit selector "borderStyle" (id as ptr) as UITextFieldBorderStyle
			  return borderStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setBorderStyle lib UIKit selector "setBorderStyle:" (id as ptr, style as UITextFieldBorderStyle)
			  setBorderStyle id, value
			End Set
		#tag EndSetter
		BorderStyle As UITextFieldBorderStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return GetText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setText value
			End Set
		#tag EndSetter
		Caption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UITextfield")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function clearButtonMode lib UIKit selector "clearButtonMode" (id as ptr) as UITextFieldViewMode
			  return clearButtonMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearButtonMode lib UIKit selector "setClearButtonMode:" (id as ptr, value as UITextFieldViewMode)
			  setClearButtonMode id, value
			End Set
		#tag EndSetter
		ClearButtonMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return ClearButtonRectForBounds (Bounds)
			End Get
		#tag EndGetter
		ClearButtonRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function clearsOnBeginEditing lib UIKit selector "clearsOnBeginEditing" (id as ptr) as boolean
			  return clearsOnBeginEditing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearsOnBeginEditing lib UIKit selector "setClearsOnBeginEditing:" (id as ptr, value as boolean)
			  setClearsOnBeginEditing id, value
			End Set
		#tag EndSetter
		ClearsOnEditBegin As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function clearsOnInsertion lib UIKit selector "clearsOnInsertion" (id as ptr) as boolean
			  return clearsOnInsertion (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearsOnInsertion lib UIKit selector "setClearsOnInsertion:" (id as ptr, value as boolean)
			  setClearsOnInsertion id, value
			End Set
		#tag EndSetter
		ClearsOnInsertion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function defaultTextAttributes lib UIKit selector "defaultTextAttributes" (id as ptr) as Ptr
			  Return AppleDictionary.MakeFromPtr( defaultTextAttributes (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setdefaultTextAttributes lib UIKit selector "setdefaultTextAttributes:" (id as ptr, value as Ptr)
			  setdefaultTextAttributes id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		DefaultTextAttributes As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function disabledBackground lib UIKit selector "disabledBackground" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (disabledBackground(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setDisabledBackground lib UIKit selector "setDisabledBackground:" (id as ptr, value as ptr)
			  setDisabledBackground id, value.id
			End Set
		#tag EndSetter
		DisabledBackgroundImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getFont
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfont value
			End Set
		#tag EndSetter
		Font As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function isEditing lib UIKit selector "isEditing" (id as ptr) as boolean
			  return isEditing (id)
			End Get
		#tag EndGetter
		isEditing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function leftView lib UIKit selector "leftView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (leftView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLeftView lib UIKit selector "setLeftView:" (id as ptr, value as ptr)
			  setLeftView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		LeftView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function leftViewMode lib UIKit selector "leftViewMode" (id as ptr) as UITextFieldViewMode
			  return leftViewMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setLeftViewMode lib UIKit selector "setLeftViewMode:" (id as ptr, value as UITextFieldViewMode)
			  setLeftViewMode id, value
			End Set
		#tag EndSetter
		LeftViewMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return LeftViewRectForBounds (Bounds)
			End Get
		#tag EndGetter
		LeftViewRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function minimumFontSize lib UIKit selector "minimumFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function minimumFontSize lib UIKit selector "minimumFontSize" (id as ptr) as single
			  #endif
			  return  minimumFontSize (classptr)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setMinimumFontSize lib UIKit selector "setMinimumFontSize:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setMinimumFontSize lib UIKit selector "setMinimumFontSize:" (id as ptr, value as single)
			  #endif
			  setMinimumFontSize Classptr, value
			End Set
		#tag EndSetter
		MinimumFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function placeholder lib UIKit selector "placeholder" (id as ptr) as CFStringRef
			  Return placeholder (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPlaceholder lib UIKit selector "setPlaceholder:" (id as ptr, value as CFStringRef)
			  setPlaceholder id, value
			End Set
		#tag EndSetter
		Placeholder As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return PlaceholderRectForBounds (Bounds)
			End Get
		#tag EndGetter
		PlaceholderRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function rightView lib UIKit selector "rightView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (rightView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setRightView lib UIKit selector "setRightView:" (id as ptr, value as ptr)
			  setRightView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		RightView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function rightViewMode lib UIKit selector "rightViewMode" (id as ptr) as UITextFieldViewMode
			  return rightViewMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setRightViewMode lib UIKit selector "setRightViewMode:" (id as ptr, value as UITextFieldViewMode)
			  setRightViewMode id, value
			End Set
		#tag EndSetter
		RightViewMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return RightViewRectForBounds (Bounds)
			End Get
		#tag EndGetter
		RightViewRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTextColor value
			End Set
		#tag EndSetter
		TextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return TextRectForBounds (Bounds)
			End Get
		#tag EndGetter
		TextRect As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function typingAttributes lib UIKit selector "typingAttributes" (id as ptr) as ptr
			  return AppleDictionary.MakeFromPtr (typingAttributes(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTypingAttributes lib UIKit selector "setTypingAttributes:" (id as ptr, value as ptr)
			  setTypingAttributes id, value.id
			End Set
		#tag EndSetter
		TypingAttributes As AppleDictionary
	#tag EndComputedProperty


	#tag Enum, Name = UITextFieldBorderStyle, Type = Integer, Flags = &h0
		None
		  Line
		  Bezel
		RoundedRect
	#tag EndEnum

	#tag Enum, Name = UITextFieldViewMode, Type = Integer, Flags = &h0
		Never
		  WhileEditing
		  UnlessEditing
		Always
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdjustsFontSizeToFitWidth"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEditingTextAttributes"
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
			Name="BorderStyle"
			Group="Behavior"
			Type="UITextFieldBorderStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Line"
				"2 - Bezel"
				"3 - RoundedRect"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearButtonMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - WhileEditing"
				"2 - UnlessEditing"
				"3 - Always"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsOnEditBegin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsOnInsertion"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
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
			Name="isEditing"
			Group="Behavior"
			Type="Boolean"
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
			Name="LeftViewMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - WhileEditing"
				"2 - UnlessEditing"
				"3 - Always"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumFontSize"
			Group="Behavior"
			Type="Double"
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
			Name="Placeholder"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightViewMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - WhileEditing"
				"2 - UnlessEditing"
				"3 - Always"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
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
	#tag EndViewBehavior
End Class
#tag EndClass
