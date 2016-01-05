#tag Class
Protected Class AppleCGPathRect
Inherits AppleCGPath
	#tag Method, Flags = &h1
		Protected Function CGPathCreateWithRect(ARect as FoundationFramework.NSRect) As Ptr
		  #if Target64Bit
		    Declare Function CGPathCreateWithRect lib CoreGraphicsLibName (arect  as FoundationFramework.NSRect, aTransform as Ptr) as ptr
		    return CGPathCreateWithRect (ARect, NIL)
		  #elseif Target32Bit
		    Declare Function CGPathCreateWithRect lib CoreGraphicsLibName (arect as FoundationFramework.NSRect32Bit, aTransform as Ptr) as ptr
		    return CGPathCreateWithRect (ARect.toNSRect32, NIL)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ARect as FoundationFramework.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCGPath
		  // Constructor(aTypeRef as Ptr) -- From AppleCFObject
		  Super.Constructor (CGPathCreateWithRect(ARect), true)
		  MHasOwnership = true
		  
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
			Name="isEmpty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isRect"
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
		#tag ViewProperty
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
