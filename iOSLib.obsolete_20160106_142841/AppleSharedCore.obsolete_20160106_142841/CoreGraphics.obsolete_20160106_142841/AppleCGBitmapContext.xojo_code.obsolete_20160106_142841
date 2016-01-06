#tag Class
Protected Class AppleCGBitmapContext
Inherits AppleCGContext
	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function CGBitmapContextGetHeight Lib CoreGraphicsLibName (id as ptr) As integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function CGBitmapContextGetWidth Lib CoreGraphicsLibName (id as ptr) As integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function CurrentContext() As AppleCGBitmapContext
		  dim result as ptr = UIGraphicsGetCurrentContext
		  return if (result = nil, nil, new AppleCGBitmapContext(result))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGBitmapContextGetHeight (mcftyperef)
			End Get
		#tag EndGetter
		Height As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGBitmapContextGetWidth (mcftyperef)
			End Get
		#tag EndGetter
		Width As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
			Name="Width"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
