#tag Module
Protected Module AutoExtension
	#tag Method, Flags = &h0
		Function IsType(extends a as auto, aType as cfstringref) As boolean
		  dim mytype as text = a.Type
		  dim compare as text = atype
		  return mytype = compare
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toText(extends a as Auto) As CFStringRef
		  select case a.type
		  Case "Int8"
		    dim i as Int8 = a
		    return i.ToText
		  case "Double"
		    dim d as double= a
		    return d.ToText
		  case "Single"
		    dim s as single = a
		    Return s.ToText
		  case "CString"
		    dim cs as cstring = a
		    return text.FromCString (cs, StandardTextEncoding)
		  case "Text", "String", "CFStringRef"
		    dim t as text = a
		    return t
		    
		  case "Array"
		    return "Array"
		  case "Ptr()"
		    return "Array of Ptr"
		  case "Ptr"
		    dim p as ptr = a
		    dim mem as integer = Integer(p)
		    return "Ptr: "+mem.ToText
		  Case "Dictionary"
		    return "Dictionary"
		    // case "MacOSURL", "NSURL"
		    // dim m as MacOSURL = a
		    // return m.AbsolutePath
		    // case "MacOSVector"
		    // dim m as MacOSVector = a
		    // return m.StringValue
		  else
		    system.debuglog "Auto.ToText found unknown Type: "+a.type
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Type(extends a as auto) As text
		  dim info as xojo.Introspection.typeinfo = xojo.Introspection.GetType (a)
		  return info.name
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
