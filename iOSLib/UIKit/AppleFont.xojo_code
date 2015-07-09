#tag Class
Protected Class AppleFont
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(FontName as CFStringRef, Size as Double)
		  #if Target64Bit
		    Declare function fontWithName lib UIKit selector "fontWithName:size:" (id as ptr, Fontname as CFStringRef, Size as double) as Ptr
		  #elseif Target32Bit
		    Declare function fontWithName lib UIKit selector "fontWithName:size:" (id as ptr, Fontname as CFStringRef, Size as single) as Ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (fontwithName (classptr, FontName, size))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Font as iOSFont)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Constructor (font.Name, Font.Size)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FontNamesForFamilyName(FamilyName as CFStringRef) As AppleArray
		  Declare function fontNamesForFamilyName lib UIKit selector "fontNamesForFamilyName:" (id as ptr, FamilyName as CFStringRef) as ptr
		  Return AppleArray.MakeFromPtr (fontNamesForFamilyName (ClassPtr, FamilyName))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FontWithSize(Size as Double) As AppleFont
		  #if Target64Bit
		    Declare function fontWithSize lib UIKit selector "fontWithSize:" ( id as ptr, Size as double) as Ptr
		  #elseif Target32Bit
		    Declare function fontWithSize lib UIKit selector "fontWithSize:" ( id as ptr, Size as single) as Ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  return new AppleFont (FontWithSize(id, size))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromiOSFont(Font as iOSFont) As AppleFont
		  return new AppleFont (Font)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleFont
		  return if (aptr = nil, nil, new AppleFont(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toiOSFont() As iOSFont
		  return new iOSFont (FontName, PointSize)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function buttonFontSize lib UIKit selector "buttonFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function buttonFontSize lib UIKit selector "buttonFontSize" (id as ptr) as single
			  #endif
			  return  buttonFontSize (classptr)
			  
			End Get
		#tag EndGetter
		Shared ButtonFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIFont")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function familyName lib UIKit selector "familyName" (id as ptr) as CFStringRef
			  return familyName (id)
			End Get
		#tag EndGetter
		FamilyName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function familyNames lib UIKit selector "familyNames" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (familyNames(ClassPtr))
			End Get
		#tag EndGetter
		Shared FamilyNames As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function fontName lib UIKit selector "fontName" (id as ptr) as CFStringRef
			  return fontName (id)
			End Get
		#tag EndGetter
		FontName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function labelFontSize lib UIKit selector "labelFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function labelFontSize lib UIKit selector "labelFontSize" (id as ptr) as single
			  #endif
			  return  LabelFontSize (classptr)
			  
			End Get
		#tag EndGetter
		Shared LabelFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function pointSize lib UIKit selector "pointSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function pointSize lib UIKit selector "pointSize" (id as ptr) as single
			  #endif
			  
			  return PointSize (id)
			End Get
		#tag EndGetter
		PointSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function smallSystemFontSize lib UIKit selector "smallSystemFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function smallSystemFontSize lib UIKit selector "smallSystemFontSize" (id as ptr) as single
			  #endif
			  return  smallSystemFontSize (classptr)
			  
			End Get
		#tag EndGetter
		Shared SmallSystemFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function systemFontSize lib UIKit selector "systemFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function systemFontSize lib UIKit selector "systemFontSize" (id as ptr) as single
			  #endif
			  return  systemFontSize (classptr)
			  
			End Get
		#tag EndGetter
		Shared SystemFontSize As Double
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
			Name="FamilyName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
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
			Name="PointSize"
			Group="Behavior"
			Type="Double"
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
