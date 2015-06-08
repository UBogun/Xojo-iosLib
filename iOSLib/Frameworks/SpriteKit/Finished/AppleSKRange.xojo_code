#tag Class
Protected Class AppleSKRange
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor(LowerLimit as Double, UpperLimit as Double)
		  #if Target64Bit
		    Declare function initWithLowerLimit lib SpriteKit selector "initWithLowerLimit:upperLimit:" (id as ptr, lower as double, upper as double) as ptr
		  #elseif Target32Bit
		    Declare function initWithLowerLimit lib SpriteKit selector "initWithLowerLimit:upperLimit:" (id as ptr, lower as single, upper as single) as ptr
		  #endif
		  super.Constructor (initWithLowerLimit(alloc(ClassPtr), LowerLimit, UpperLimit))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSKRange
		  return if (aptr = nil, Nil, new AppleSKRange (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Unlimited() As AppleSKRange
		  Declare function rangeWithNoLimits lib SpriteKit selector "rangeWithNoLimits" (id as ptr) as ptr
		  dim result as new AppleSKRange (rangeWithNoLimits(ClassPtr))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function WithConstantValue(ConstantValue as Double) As AppleSKRange
		  dim result as AppleSKRange
		  #if Target64Bit
		    Declare function rangeWithConstantValue lib SpriteKit selector "rangeWithConstantValue:" (id as ptr, lower as double) as ptr
		  #elseif Target32Bit
		    Declare function rangeWithConstantValue lib SpriteKit selector "rangeWithConstantValue:" (id as ptr, lower as single) as ptr
		  #endif
		  result = new AppleSKRange (rangeWithConstantValue(ClassPtr, ConstantValue))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function WithLowerLimit(LowerLimit as Double) As AppleSKRange
		  dim result as AppleSKRange
		  #if Target64Bit
		    Declare function rangeWithLowerLimit lib SpriteKit selector "rangeWithLowerLimit:" (id as ptr, lower as double) as ptr
		  #elseif Target32Bit
		    Declare function rangeWithLowerLimit lib SpriteKit selector "rangeWithLowerLimit:" (id as ptr, lower as single) as ptr
		  #endif
		  result = new AppleSKRange (rangeWithLowerLimit(ClassPtr, LowerLimit))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function WithUpperLimit(UpperLimit as Double) As AppleSKRange
		  dim result as AppleSKRange
		  #if Target64Bit
		    Declare function rangeWithUpperLimit lib SpriteKit selector "rangeWithUpperLimit:" (id as ptr, lower as double) as ptr
		  #elseif Target32Bit
		    Declare function rangeWithUpperLimit lib SpriteKit selector "rangeWithUpperLimit:" (id as ptr, lower as single) as ptr
		  #endif
		  result = new AppleSKRange (rangeWithUpperLimit(ClassPtr, UpperLimit))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function WithValueAndVariance(Value as Double, Variance as Double) As AppleSKRange
		  dim result as AppleSKRange
		  #if Target64Bit
		    Declare function rangeWithValue lib SpriteKit selector "rangeWithValue:variance:" (id as ptr, lower as double, upper as double) as ptr
		  #elseif Target32Bit
		    Declare function rangeWithValue lib SpriteKit selector "rangeWithValue:variance:" (id as ptr, lower as single, upper as single) as ptr
		  #endif
		  result = new AppleSKRange (rangeWithValue(ClassPtr, value, Variance))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKRange")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function lowerLimit lib SpriteKit selector "lowerLimit" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function lowerLimit lib SpriteKit selector "lowerLimit" (id as ptr) as single
			  #endif
			  return LowerLimit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setLowerLimit lib SpriteKit selector "setLowerLimit:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setLowerLimit lib SpriteKit selector "setLowerLimit:" (id as ptr, value as single)
			  #endif
			  setlowerLimit id, value
			End Set
		#tag EndSetter
		LowerLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function upperLimit lib SpriteKit selector "upperLimit" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function upperLimit lib SpriteKit selector "upperLimit" (id as ptr) as single
			  #endif
			  return upperLimit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare sub setUpperLimit lib SpriteKit selector "setUpperLimit:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare sub setUpperLimit lib SpriteKit selector "setUpperLimit:" (id as ptr, value as single)
			  #endif
			  setUpperLimit id, value
			End Set
		#tag EndSetter
		UpperLimit As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isProxy"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LowerLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
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
		#tag ViewProperty
			Name="UpperLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
