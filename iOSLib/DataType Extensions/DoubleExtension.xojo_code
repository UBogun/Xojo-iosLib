#tag Module
Protected Module DoubleExtension
	#tag Method, Flags = &h0
		Function toCommaList(extends t() as double) As Text
		  if t.Ubound > -1 then
		    dim result as text = t(0).ToText
		    if t.Ubound > 0 then
		      for q as UInteger = 1 to t.Ubound
		        result = result +", "+t(q).ToText
		      next
		    end if
		    return result
		  end if
		End Function
	#tag EndMethod


End Module
#tag EndModule
