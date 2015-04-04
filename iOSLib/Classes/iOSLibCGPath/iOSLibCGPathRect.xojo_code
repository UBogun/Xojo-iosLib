#tag Class
Protected Class iOSLibCGPathRect
Inherits iOSLibCGPath
	#tag Method, Flags = &h1
		Protected Function CGPathCreateWithRect(ARect as NSRect) As Ptr
		  #if Target64Bit
		    Declare Function CGPathCreateWithRect lib CoreGraphics (arect as NSRect, aTransform as Ptr) as ptr
		    return CGPathCreateWithRect (ARect, NIL)
		  #elseif Target32Bit
		    Declare Function CGPathCreateWithRect lib CoreGraphics (arect as NSRect32Bit, aTransform as Ptr) as ptr
		    return CGPathCreateWithRect (ARect.toNSRect32, NIL)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ARect as NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibCGPath
		  // Constructor(aTypeRef as Ptr) -- From iOSLibCFObject
		  Super.Constructor (CGPathCreateWithRect(ARect))
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnerShip"
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
			Name="isNIL"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="Integer"
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
