#tag Class
Protected Class AppleSKLabelNode
Inherits AppleSKNode
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aText as CFStringRef, FontName as text = "")
		  declare function labelNodeWithText lib SpriteKit selector "labelNodeWithText:" (id as ptr, aText as CFStringRef) as ptr
		  declare function labelNodeWithFontNamed lib SpriteKit selector "labelNodeWithFontNamed:" (id as ptr, FontName as CFStringRef) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleSKNode
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if FontName <> "" then
		    Super.Constructor (labelNodeWithFontNamed(ClassPtr, FontName))
		    Caption = aText
		  else
		    Super.Constructor (labelNodeWithText(ClassPtr, aText))
		  end if
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FontColor(assigns aColor as Color)
		  me.FontColor = new AppleColor(aColor)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getBlendColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBlendColor value
			End Set
		#tag EndSetter
		BlendColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BlendMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBlendMode value
			End Set
		#tag EndSetter
		BlendMode As SKBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function text_ lib SpriteKit selector "text" (id as ptr) as CFStringRef
			  return text_ (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setText lib SpriteKit selector "setText:" (id as ptr, value as CFStringRef)
			  setText id, value
			End Set
		#tag EndSetter
		Caption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKLabelNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ColorBlendFactor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setColorBlendfactor value
			End Set
		#tag EndSetter
		ColorBlendFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function fontColor lib SpriteKit selector "fontColor" (id as ptr) as Ptr
			  return new AppleColor (fontColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setFontColor lib SpriteKit selector "setFontColor:" (id as ptr, value as Ptr)
			  setFontColor id, value.id
			End Set
		#tag EndSetter
		FontColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function fontName lib SpriteKit selector "fontName" (id as ptr) as CFStringRef
			  return fontName (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setFontName lib SpriteKit selector "setFontName:" (id as ptr, value as CFStringRef)
			  setFontName id, value
			End Set
		#tag EndSetter
		FontName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function fontSize lib SpriteKit selector "fontSize" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function fontSize lib SpriteKit selector "fontSize" (id as ptr) as Single
			  #endif
			  return FontSize (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setFontSize lib SpriteKit selector "setFontSize:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setFontSize lib SpriteKit selector "setFontSize:" (id as ptr, value as single)
			  #endif
			  setfontSize id, value
			End Set
		#tag EndSetter
		FontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function horizontalAlignmentMode lib SpriteKit selector "horizontalAlignmentMode" (id as ptr) as SKLabelHorizontalAlignmentMode
			  return horizontalAlignmentMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHorizontalAlignmentMode lib SpriteKit selector "setHorizontalAlignmentMode:" (id as ptr, value as SKLabelHorizontalAlignmentMode)
			  setHorizontalAlignmentMode id, value
			End Set
		#tag EndSetter
		HorizontalAlignment As SKLabelHorizontalAlignmentMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function verticalAlignmentMode lib SpriteKit selector "verticalAlignmentMode" (id as ptr) as SKLabelVerticalAlignmentMode
			  return verticalAlignmentMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setVerticalAlignmentMode lib SpriteKit selector "setVerticalAlignmentMode:" (id as ptr, value as SKLabelVerticalAlignmentMode)
			  setVerticalAlignmentMode id, value
			End Set
		#tag EndSetter
		VerticalAlignment As SKLabelVerticalAlignmentMode
	#tag EndComputedProperty


	#tag Enum, Name = SKLabelHorizontalAlignmentMode, Type = Integer, Flags = &h0
		Center
		  Left
		Right
	#tag EndEnum

	#tag Enum, Name = SKLabelVerticalAlignmentMode, Type = Integer, Flags = &h0
		Baseline
		  Center
		  Top
		Bottom
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="SKBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - MultiplyX2"
				"5 - Screen"
				"6 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorBlendFactor"
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
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Group="Behavior"
			Type="Double"
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
			Name="HorizontalAlignment"
			Group="Behavior"
			Type="SKLabelHorizontalAlignmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Left"
				"2 - Right"
			#tag EndEnumValues
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalAlignment"
			Group="Behavior"
			Type="SKLabelVerticalAlignmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Baseline"
				"1 - Center"
				"2 - Top"
				"3 - Bottom"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
