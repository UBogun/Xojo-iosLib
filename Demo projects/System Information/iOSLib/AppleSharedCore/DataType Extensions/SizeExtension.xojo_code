#tag Module
Protected Module SizeExtension
	#tag Method, Flags = &h0
		Function toCoreSize(extends aSize64 as FoundationFramework.NSSize) As Xojo.Core.Size
		  return new xojo.core.size ( aSize64.width, aSize64.height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCoreSize(extends aSize32 as FoundationFramework.NSSize32Bit) As Xojo.Core.Size
		  return aSize32.toNSSize.toCoreSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSSize(extends aSize32 as FoundationFramework.NSSize32Bit) As FoundationFramework.NSSize
		  dim result as FoundationFramework.NSSize
		  result.height = aSize32.height
		  result.width= aSize32.width
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSSize(extends s as xojo.core.size) As FoundationFramework.NSSize
		  dim result as FoundationFramework.NSSize
		  result.height =  s.Height
		  result.width = s.Width
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSSize32(extends aSize64 as FoundationFramework.NSSize) As FoundationFramework.NSSize32Bit
		  dim result as FoundationFramework.NSSize32Bit
		  result.height = aSize64.height
		  result.width= aSize64.width
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSSize32(extends aSize as Xojo.Core.Size) As FoundationFramework.NSSize32Bit
		  return asize.tonssize.tonssize32
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
