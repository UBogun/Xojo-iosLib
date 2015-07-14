#tag Module
Protected Module DoubleExtension
	#tag Method, Flags = &h0
		Function toAppleArray(extends t() as double) As AppleArray
		  dim count as uinteger = t.Ubound
		  if count > -1 then
		    dim AA as new AppleMutableArray(count + 1)
		    for q as uinteger= 0 to count
		      aa.Addobject (new AppleNumber(t(q)))
		    next
		    return AA
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCGFloatMB(extends t() as double) As xojo.core.memoryblock
		  dim count as uinteger = t.Ubound
		  if count > -1 then
		    dim mb as new xojo.Core.MutableMemoryBlock ((count+1)*IntegerSize)
		    for q as uinteger= 0 to count
		      #if Target64Bit
		        mb.DoubleValue (integersize*q)= t(q)
		      #elseif Target32Bit
		        mb.SingleValue (integersize*q)= t(q)
		      #endif
		    next
		    return mb
		  end if
		  
		  
		End Function
	#tag EndMethod

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
