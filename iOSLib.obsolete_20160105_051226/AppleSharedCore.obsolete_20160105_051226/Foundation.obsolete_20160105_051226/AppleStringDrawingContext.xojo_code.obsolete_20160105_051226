#tag Class
Protected Class AppleStringDrawingContext
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (Init(alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function actualScaleFactor lib FoundationLibName  selector "actualScaleFactor" (id as ptr) as double
			  #elseif Target32Bit
			    declare function actualScaleFactor lib FoundationLibName  selector "actualScaleFactor" (id as ptr) as single
			  #endif
			  return actualScaleFactor (id)
			End Get
		#tag EndGetter
		ActualScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSStringDrawingContext")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function MinimumScaleFactor lib FoundationLibName  selector "minimumScaleFactor" (id as ptr) as double
			  #elseif Target32Bit
			    declare function MinimumScaleFactor lib FoundationLibName  selector "minimumScaleFactor" (id as ptr) as single
			  #endif
			  return MinimumScaleFactor (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setMinimumScaleFactor lib FoundationLibName  selector "setMinimumScaleFactor:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare Sub setMinimumScaleFactor lib FoundationLibName  selector "setMinimumScaleFactor:" (id as ptr, value as single)
			  #endif
			  setMinimumScaleFactor (id, value)
			End Set
		#tag EndSetter
		MinimumScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function totalBounds lib FoundationLibName  selector "totalBounds" (id as ptr)  as FoundationFramework.NSRect
			    return totalBounds (id)
			  #elseif Target32Bit
			    declare function totalBounds lib FoundationLibName  selector "totalBounds" (id as ptr) as FoundationFramework.NSRect32Bit
			    return totalBounds(id).tonsrect
			  #endif
			  
			End Get
		#tag EndGetter
		TotalBounds As FoundationFramework.NSRect
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActualScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
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
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
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
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
End Class
#tag EndClass
