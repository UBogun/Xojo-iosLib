#tag Module
Protected Module AppleSetExtension
	#tag Method, Flags = &h0
		Function toSKTouchCoreArray(extends a as appleset) As AppleSKTouch()
		  dim result() as AppleSKTouch
		  for q as integer = 1 to a.Count
		    result.Append applesktouch.MakefromPtr(a.AllObjects.ptratindex(q-1))
		  next
		  return result
		  
		End Function
	#tag EndMethod


End Module
#tag EndModule
