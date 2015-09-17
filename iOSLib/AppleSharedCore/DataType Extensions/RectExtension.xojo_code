#tag Module
Protected Module RectExtension
	#tag Method, Flags = &h0
		Function toCIVector(extends r as FoundationFramework.NSRect) As AppleCIVector
		  return new AppleCIVector (r.Origin.x, r.Origin.y, r.Size_.width, r.size_.height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCoreRect(extends aRect64 as FoundationFramework.NSRect) As Xojo.Core.Rect
		  return new xojo.core.rect (aRect64.Origin.x, aRect64.Origin.y, aRect64.Size_.width,aRect64.Size_.height)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCoreRect(extends aRect32 as FoundationFramework.NSRect32Bit) As Xojo.Core.Rect
		  return aRect32.toNSRect.toCoreRect
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toMemoryBlock(extends Rects() as FoundationFramework.NSRect) As xojo.Core.MutableMemoryBlock
		  dim count as uinteger = Rects.Ubound
		  dim mb as new xojo.Core.MutableMemoryBlock (IntegerSize*(count+1)*4)
		  dim q as uinteger
		  for p as uinteger = 0 to count
		    q=p*4
		    #if Target64Bit
		      mb.DoubleValue(q*IntegerSize) = rects(p).Origin.x
		      mb.DoubleValue(q*IntegerSize+IntegerSize) = rects(p).Origin.y
		      mb.DoubleValue(q*IntegerSize+2*IntegerSize) = rects(p).Size_.width
		      mb.DoubleValue(q*IntegerSize+3*IntegerSize) = rects(p).Size_.height
		    #elseif Target32Bit
		      mb.SingleValue(q*IntegerSize) = rects(p).Origin.x
		      mb.SingleValue(q*IntegerSize+IntegerSize) = rects(p).Origin.y
		      mb.SingleValue(q*IntegerSize+2*IntegerSize) = rects(p).Size_.width
		      mb.SingleValue(q*IntegerSize+3*IntegerSize) = rects(p).Size_.height
		    #endif
		  next
		  return mb
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect(extends aRect32 as FoundationFramework.NSRect32Bit) As FoundationFramework.NSRect
		  dim result  as FoundationFramework.NSRect
		  result.Size_ = aRect32.Size_.tonssize
		  result.Origin = aRect32.Origin.toNSPoint
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect(extends rects() as xojo.core.rect) As FoundationFramework.NSRect()
		  dim resultarray()  as FoundationFramework.NSRect
		  for q as uinteger = 0 to rects.Ubound
		    resultarray.Append rects(q).ToNSRect
		  next
		  return resultarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect(extends r as xojo.core.rect) As FoundationFramework.NSRect
		  dim result  as FoundationFramework.NSRect
		  result.Origin = r.Origin.toNSPoint
		  result.Size_ = r.Size.toNSSize
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect32(extends aRect64 as FoundationFramework.NSRect) As FoundationFramework.NSRect32Bit
		  dim result as FoundationFramework.NSRect32Bit
		  result.Size_ = aRect64.Size_.tonssize32
		  result.Origin = aRect64.Origin.toNSPoint32
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect32(extends aRect as Xojo.core.Rect) As FoundationFramework.NSRect32Bit
		  Return aRect.toNSRect.toNSRect32
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toText(extends n as FoundationFramework.NSRect, format as text = "###") As text
		  dim mylocale as xojo.core.locale = locale.current
		  return n.Origin.x.totext (mylocale, format)+", "+n.Origin.y.totext  (mylocale, format)+", "+n.size_.width.totext (mylocale, format)+", "+n.size_.height.totext  (mylocale, format)
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
