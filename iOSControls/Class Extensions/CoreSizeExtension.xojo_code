#tag Module
Protected Module CoreSizeExtension
	#tag Method, Flags = &h0
		Function fromCGSize(aCGSize as CGSize) As Xojo.Core.Size
		  return new Size (aCGSize.width, aCGSize.height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGSize(extends asize as xojo.Core.Size) As cgsize
		  dim mysize as CGSize
		  mysize.width = asize.Width
		  mysize.height = asize.Height
		  return mysize
		  
		  // dim mywidth as single = asize.width
		  // dim myheigth as single = asize.Height
		  // return CoreGraphicsExtension.CGSizeMake (mywidth,myheigth)
		End Function
	#tag EndMethod


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
End Module
#tag EndModule
