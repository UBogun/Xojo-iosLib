#tag Class
Protected Class AppleSKTransition
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function CrossFade(duration as double) As AppleSKTransition
		  Declare Function crossFadeWithDuration lib SpriteKit selector "crossFadeWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (crossFadeWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DoorsCloseHorizontal(duration as double) As AppleSKTransition
		  Declare Function doorsCloseHorizontalWithDuration lib SpriteKit selector "doorsCloseHorizontalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorsCloseHorizontalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DoorsCloseVertical(duration as double) As AppleSKTransition
		  Declare Function doorsCloseVerticalWithDuration lib SpriteKit selector "doorsCloseVerticalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorsCloseVerticalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DoorsOpenHorizontal(duration as double) As AppleSKTransition
		  Declare Function doorsOpenHorizontalWithDuration lib SpriteKit selector "doorsOpenHorizontalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorsOpenHorizontalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DoorsOpenVertical(duration as double) As AppleSKTransition
		  Declare Function doorsOpenVerticalWithDuration lib SpriteKit selector "doorsOpenVerticalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorsOpenVerticalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Doorway(duration as double) As AppleSKTransition
		  Declare Function doorwayWithDuration lib SpriteKit selector "doorwayWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (doorwayWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Fade(duration as double) As AppleSKTransition
		  Declare Function fadeWithDuration lib SpriteKit selector "fadeWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (fadeWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FadeWithColor(acolor as AppleColor, duration as double) As AppleSKTransition
		  Declare Function fadeWithColor lib SpriteKit selector "fadeWithColor:duration:" (id as ptr, acolor as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (fadeWithColor (ClassPtr, acolor.id, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FlipHorizontal(duration as double) As AppleSKTransition
		  Declare Function flipHorizontalWithDuration lib SpriteKit selector "flipHorizontalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (flipHorizontalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FlipVertical(duration as double) As AppleSKTransition
		  Declare Function flipVerticalWithDuration lib SpriteKit selector "flipVerticalWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (flipVerticalWithDuration (ClassPtr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MoveIn(direction as sktransitiondirection, duration as double) As AppleSKTransition
		  Declare Function moveInWithDirection lib SpriteKit selector "moveInWithDirection:duration:" (id as ptr, direction as SKTransitionDirection, duration as double) as ptr
		  dim result as new AppleSKTransition (moveInWithDirection (ClassPtr, direction, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Push(direction as sktransitiondirection, duration as double) As AppleSKTransition
		  Declare Function pushWithDirection lib SpriteKit selector "pushWithDirection:duration:" (id as ptr, direction as SKTransitionDirection, duration as double) as ptr
		  dim result as new AppleSKTransition (pushWithDirection (ClassPtr, direction, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Reveal(direction as sktransitiondirection, duration as double) As AppleSKTransition
		  Declare Function revealWithDirection lib SpriteKit selector "revealWithDirection:duration:" (id as ptr, direction as SKTransitionDirection, duration as double) as ptr
		  dim result as new AppleSKTransition (revealWithDirection (ClassPtr, direction, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Transition(Filter as AppleCIFilter, duration as double) As AppleSKTransition
		  Declare Function transitionWithCIFilter lib SpriteKit selector "transitionWithCIFilter:duration:" (id as ptr, Filter as Ptr, duration as double) as ptr
		  dim result as new AppleSKTransition (transitionWithCIFilter (ClassPtr, Filter.id, duration))
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKTransition")
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
			  Declare function pausesIncomingScene lib SpriteKit selector "pausesIncomingScene" (id as ptr) as Boolean
			  return pausesIncomingScene (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPausesIncomingScene lib SpriteKit selector "setPausesIncomingScene:" (id as ptr, value as Boolean)
			  setPausesIncomingScene id, value
			End Set
		#tag EndSetter
		PausesIncomingScene As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function pausesOutgoingScene lib SpriteKit selector "pausesOutgoingScene" (id as ptr) as Boolean
			  return pausesOutgoingScene (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPausesOutgoingScene lib SpriteKit selector "setPausesOutgoingScene:" (id as ptr, value as Boolean)
			  setPausesOutgoingScene id, value
			End Set
		#tag EndSetter
		PausesOutgoingScene As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = SKTransitionDirection, Type = Integer, Flags = &h0
		Up
		  Down
		  Right
		Left
	#tag EndEnum


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
			Name="PausesIncomingScene"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PausesOutgoingScene"
			Group="Behavior"
			Type="Boolean"
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
