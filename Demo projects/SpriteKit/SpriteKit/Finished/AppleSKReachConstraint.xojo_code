#tag Class
Protected Class AppleSKReachConstraint
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor(LowerAngleLimit As Double, UpperAngleLimit As Double)
		  if ClassAvailable then
		    #if Target64Bit
		      Declare Function initWithAngleLimit lib SpriteKit selector "initWithLowerAngleLimit:upperAngleLimit:" _
		      (id as ptr, LoWerAngleLimit as double, UpperAngleLimit as double) as ptr
		    #elseif Target32Bit
		      Declare Function initWithAngleLimit lib SpriteKit selector "initWithLowerAngleLimit:upperAngleLimit:" _
		      (id as ptr, LoWerAngleLimit as single, UpperAngleLimit as single) as ptr
		    #endif
		    
		    // Calling the overridden superclass constructor.
		    // Note that this may need modifications if there are multiple constructor choices.
		    // Possible constructor calls:
		    // Constructor() -- From AppleObject
		    // Constructor(AnId as Ptr) -- From AppleObject
		    Super.Constructor (initwithAngleLimit (Classptr, LowerAngleLimit, UpperAngleLimit))
		    RetainClassObject
		  end if
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKReachConstraint")
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
			    Declare function LowerAngleLimit lib SpriteKit selector "lowerAngleLimit" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function LowerAngleLimit lib SpriteKit selector "lowerAngleLimit" (id as ptr) as single
			  #endif
			  return LowerAngleLimit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setLowerAngleLimit lib SpriteKit selector "setLowerAngleLimit:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setLowerAngleLimit lib SpriteKit selector "setLowerAngleLimit:" (id as ptr, value as single)
			  #endif
			  setLowerAngleLimit id, value
			End Set
		#tag EndSetter
		LowerAngleLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function upperAngleLimit lib SpriteKit selector "upperAngleLimit" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function upperAngleLimit lib SpriteKit selector "upperAngleLimit" (id as ptr) as single
			  #endif
			  return upperAngleLimit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setUpperAngleLimit lib SpriteKit selector "setUpperAngleLimit:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setUpperAngleLimit lib SpriteKit selector "setUpperAngleLimit:" (id as ptr, value as single)
			  #endif
			  setUpperAngleLimit id, value
			End Set
		#tag EndSetter
		UpperAngleLimit As Double
	#tag EndComputedProperty


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
			Name="LowerAngleLimit"
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
			Name="UpperAngleLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
