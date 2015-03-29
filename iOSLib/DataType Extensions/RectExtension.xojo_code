#tag Module
Protected Module RectExtension
	#tag Method, Flags = &h0
		Function toCoreRect(extends aRect64 as NSRect) As Xojo.Core.Rect
		  return new xojo.core.rect (aRect64.Origin.x, aRect64.Origin.y, aRect64.Size_.width,aRect64.Size_.height)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCoreRect(extends aRect32 as NSRect32Bit) As Xojo.Core.Rect
		  return aRect32.toNSRect.toCoreRect
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect(extends aRect32 as NSRect32Bit) As NSRect
		  dim result as NSRect
		  result.Size_ = aRect32.Size_.tonssize
		  result.Origin = aRect32.Origin.tonspoint
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect(extends r as xojo.core.rect) As NSRect
		  dim result as NSRect
		  result.Origin = r.Origin.toNSPoint
		  result.Size_ = r.Size.toNSSize
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect32(extends aRect64 as NSrect) As NSRect32bit
		  dim result as NSRect32Bit
		  result.Size_ = aRect64.Size_.tonssize32
		  result.Origin = aRect64.Origin.tonspoint32
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSRect32(extends aRect as Xojo.core.Rect) As NSRect32bit
		  Return aRect.toNSRect.toNSRect32
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toText(extends n as NSRect, format as text ="###") As text
		  dim mylocale as locale = locale.current
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
