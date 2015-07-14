#tag Module
Protected Module PointExtension
	#tag Method, Flags = &h0
		Function AngleRadians(extends NP as NSPoint) As Double
		  return atan2 (np.y, np.x)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fromMemoryBlock(MB as xojo.Core.MemoryBlock) As NSPoint
		  return mb.toNSPoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Magnitude(extends NP as NSPoint) As Double
		  return SQrt (NP.x^2 + NP.y^2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Normalized(extends NP as NSPoint) As NSPoint
		  return np.Vector_Divide ( np.Magnitude )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NSPoint(x as double, y as double) As NSPoint
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #Pragma NilObjectChecking false
		  
		  dim NP as NSPoint
		  NP.x = x
		  NP.y = y
		  return np
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Multiply(extends NP as nspoint, value as double) As NSPoint
		  return NSPoint (np.x * value, np.y * value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Multiply(extends NP as nspoint, NP2 as NSPoint) As double
		  return (NP.x * NP2.x) +  (NP.y * NP2.y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCIVector(extends p as NSPoint) As AppleCIVector
		  return new AppleCIVector (p.x, p.y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCorePoint(extends p as NSPoint) As xojo.core.point
		  return new xojo.core.point (p.x, p.y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toCorePoint(extends p as NSPoint32Bit) As xojo.core.point
		  return p.toNSPoint.toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toMemoryBlock(extends Points() as NSPoint) As xojo.Core.MutableMemoryBlock
		  dim count as uinteger = Points.Ubound
		  dim mb as new xojo.Core.MutableMemoryBlock (IntegerSize*(count+1)*2)
		  dim q as uinteger
		  for p as uinteger = 0 to count
		    q=p*2
		    #if Target64Bit
		      mb.DoubleValue(q*IntegerSize) = points(p).x
		      mb.DoubleValue(q*IntegerSize+IntegerSize) = points(p).y
		    #elseif Target32Bit
		      mb.SingleValue(q*IntegerSize) = points(p).x
		      mb.SingleValue(q*IntegerSize+IntegerSize) = points(p).y
		    #endif
		  next
		  return mb
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toMemoryBlock(extends aPoint as NSPoint) As xojo.Core.MutableMemoryBlock
		  #if Target64Bit
		    return MemoryBlockExtension.fromNSPoint (aPoint)
		  #elseif Target32Bit
		    return MemoryBlockExtension.fromNSPoint32 (aPoint)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toMemoryBlock32(extends aPoint as NSPoint) As xojo.Core.MutableMemoryBlock
		  return MemoryBlockExtension.fromNSPoint32 (aPoint)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint(extends p as NSPoint32Bit) As NSPoint
		  dim result as NSPoint
		  result.x = p.x
		  result.y = p.y
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint(extends points() as xojo.core.point) As NSPoint()
		  dim resultarray() as NSPoint
		  for q as uinteger = 0 to points.Ubound
		    resultarray.Append Points(q).toNSPoint
		  next
		  return resultarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint(extends p as xojo.core.point) As NSPoint
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #Pragma NilObjectChecking false
		  dim result as NSPoint
		  result.x = p.X
		  result.y = p.y
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint32(extends p as NSPoint) As NSPoint32Bit
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #Pragma NilObjectChecking false
		  dim result as NSPoint32Bit
		  result.x = p.x
		  result.y = p.y
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSPoint32(extends p as xojo.core.point) As NSPoint32Bit
		  return p.toNSPoint.toNSPoint32
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Vector_Add(extends NP as nspoint, NP2 as NSPoint) As NSPoint
		  return NSPoint (NP.x + NP2.x, NP.y + NP2.y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Vector_Divide(extends NP as nspoint, Value as double) As NSPoint
		  return NSPoint (NP.x /value, NP.y / value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Vector_Square(extends aPoint as NSPoint) As NSPoint
		  return nspoint (aPoint.x^2 , aPoint.y^2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Vector_Subtract(extends NP as nspoint, NP2 as NSPoint) As NSPoint
		  return NSPoint (NP.x - NP2.x, NP.y - NP2.y)
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
