#tag Module
Protected Module MemoryBlockExtension
	#tag Method, Flags = &h0
		Function CStringArrayMBToTextArray(extends CStringArrayMB as xojo.Core.MemoryBlock) As text()
		  dim count as uinteger = CStringArrayMB.Size/IntegerSize
		  dim result() as text
		  for q as uinteger = 0 to count -1
		    dim stringPtr as Ptr = CStringArrayMB.PtrValue(q * IntegerSize)
		    dim stringMB as new xojo.Core.MemoryBlock (stringptr)
		    result.Append text.FromCString (stringMB.CStringValue(0), StandardTextEncoding)
		  next
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromCStringsToText(extends mb as xojo.core.MemoryBlock) As text()
		  if mb <> NIL then
		    dim result() as text
		    for q as uinteger = 0 to mb.Size/ IntegerSize
		      result.Append text.FromCString (mb.CStringValue(q), StandardTextEncoding)
		    next
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromNSPoint(aPoint as FoundationFramework.NSPoint) As xojo.Core.MutableMemoryblock
		  dim result as new xojo.Core.MutableMemoryBlock (16)
		  result.DoubleValue(0) = aPoint.x
		  result.DoubleValue(8) =aPoint.y
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromNSPoint32(aPoint as FoundationFramework.NSPoint) As xojo.Core.MutableMemoryblock
		  dim result as new xojo.Core.MutableMemoryBlock (8)
		  result.SingleValue(0) = aPoint.x
		  result.SingleValue(4) =aPoint.y
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromPtrArray(CArray as Ptr) As xojo.Core.MemoryBlock
		  if CArray <> NIL then Return new xojo.Core.MemoryBlock (CArray)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromPtrArray(CArray as Ptr, count as uinteger) As xojo.Core.MemoryBlock
		  if CArray <> NIL then Return new xojo.Core.MemoryBlock (CArray, count*IntegerSize)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NumberOfPointers(extends m as xojo.core.memoryblock) As uinteger
		  return m.size/IntegerSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Pointer(extends m as xojo.core.memoryblock, index as uinteger) As Ptr
		  return m.PtrValue (index * IntegerSize)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint(extends mb as xojo.Core.MemoryBlock) As FoundationFramework.NSPoint
		  return FoundationFrameWork.NSMakePoint (mb.DoubleValue(0), mb.DoubleValue(8))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint32(extends mb as xojo.Core.MemoryBlock) As FoundationFramework.NSPoint
		  return FoundationFrameWork.NSMakePoint (mb.SingleValue(0), mb.SingleValue(4))
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
