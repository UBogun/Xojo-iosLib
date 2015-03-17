#tag Class
Protected Class iOSLibViewAnimationOption
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (7)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			     moption.SetBit (7)
			  else
			    mOption.clearbit(7)
			  end if
			End Set
		#tag EndSetter
		AllowAnimatedContent As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (1)
			  else
			    mOption.clearbit(1)
			  end if
			End Set
		#tag EndSetter
		AllowUserInteraction As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (4)
			  else
			    mOption.clearbit(4)
			  end if
			End Set
		#tag EndSetter
		AutoReverse As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (2)
			  else
			    mOption.clearbit(2)
			  end if
			End Set
		#tag EndSetter
		BeginFromCurrentState As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mOption.hasbit (0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (0)
			  else
			    mOption.clearbit(0)
			  end if
			End Set
		#tag EndSetter
		LayoutSubviews As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mOption As UInteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mOption
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  moption = value
			End Set
		#tag EndSetter
		Option As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as new iOSLibViewAnimationOption
			  result.AutoReverse = True
			  return result
			End Get
		#tag EndGetter
		Shared OptionAutoReverse As iOSLibViewAnimationOption
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as new iOSLibViewAnimationOption
			  return result
			End Get
		#tag EndGetter
		Shared OptionNone As iOSLibViewAnimationOption
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as new iOSLibViewAnimationOption
			  result.Repeat = True
			  return result
			End Get
		#tag EndGetter
		Shared OptionRepeat As iOSLibViewAnimationOption
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as new iOSLibViewAnimationOption
			  result.AutoReverse = True
			  result.Repeat = true
			  return result
			End Get
		#tag EndGetter
		Shared OptionRepeatAndReverse As iOSLibViewAnimationOption
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (6)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (6)
			  else
			    mOption.clearbit(6)
			  end if
			End Set
		#tag EndSetter
		OverrideInheritedCurve As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (5)
			  else
			    mOption.clearbit(5)
			  end if
			End Set
		#tag EndSetter
		OverrideInheritedDuration As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (9)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (9)
			  else
			    mOption.clearbit(9)
			  end if
			End Set
		#tag EndSetter
		OverrideInheritedOptions As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (3)
			  else
			    mOption.clearbit(3)
			  end if
			End Set
		#tag EndSetter
		Repeat As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Option.hasbit (8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    moption.SetBit (8)
			  else
			    mOption.clearbit(8)
			  end if
			End Set
		#tag EndSetter
		ShowHideTransitionViews As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAnimatedContent"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowUserInteraction"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoReverse"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginFromCurrentState"
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
			Name="LayoutSubviews"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OverrideInheritedCurve"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OverrideInheritedDuration"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OverrideInheritedOptions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Repeat"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowHideTransitionViews"
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
