#tag Class
Protected Class iOSLIbCABasicAnimation
Inherits iOSLibCAPropertyAnimation
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromBool as boolean, tobool as Boolean)
		  dim myProp as Text
		  select case key
		  case Properties.Hidden
		    myProp = "hidden"
		  case Properties.MasksToBounds
		    myProp = "masksToBounds"
		  End Select
		  Super.Constructor (AnimationWithKeyPath (classptr, myProp))
		  fromvalue = new ioslibnumber (fromBool)
		  ToValue = new ioslibnumber (tobool)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromTransform as CATransform3D, toTransform as CATransform3D)
		  dim myProp as Text
		  select case key
		  case Properties.Transform
		    myProp = "transform"
		  end select
		  Super.Constructor (AnimationWithKeyPath (classptr, myProp))
		  fromvalue = new iOSLibValue (fromTransform)
		  ToValue = new iOSLibValue (toTransform)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromdouble as double, todouble as double)
		  dim myProp as Text
		  select case key
		  case Properties.BorderWidth
		    myProp = "borderWidth"
		  case Properties.CornerRadius
		    myProp = "cornerRadius"
		  case Properties.ShadowRadius
		    myProp = "shadowRadius"
		  case Properties.Opacity
		    myProp = "opacity"
		  case Properties.ShadowOpacity
		    myProp = "shadowOpacity"
		  End Select
		  Super.Constructor (AnimationWithKeyPath (classptr, myProp))
		  fromvalue = new ioslibnumber (fromdouble)
		  ToValue = new ioslibnumber (todouble)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, FromFilters as ioslibarray, ToFilters as ioslibarray)
		  dim myprop as text
		  select case key
		  case Properties.Filters
		    myprop = "filters"
		  End Select
		  Super.Constructor (AnimationWithKeyPath (ClassPtr, myprop))
		  
		  fromvalue = FromFilters
		  ToValue = ToFilters
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromColor as ioslibcgcolor, toColor as iOSLibCGColor)
		  dim Prop as Text
		  select case key
		  case Properties.BackgroundColor
		    Prop = "backgroundColor"
		  case Properties.BorderColor
		    Prop = "borderColor"
		  case Properties.ShadowColor
		    Prop = "shadowColor"
		  End Select
		  Super.Constructor (AnimationWithKeyPath (ClassPtr, Prop))
		  fromvalue = fromColor
		  ToValue = toColor
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromPoint as NSPoint, toPoint as NSPoint)
		  dim myprop as text
		  select case key
		  case Properties.Position
		    myprop = "position"
		  case Properties.Anchorpoint
		    myprop = "anchorPoint"
		  End Select
		  Super.Constructor (AnimationWithKeyPath (ClassPtr, myprop))
		  
		  fromvalue = new ioslibvalue (fromPoint)
		  ToValue = new ioslibvalue (topoint)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromrect as nsrect, torect as nsrect)
		  dim myprop as text
		  select case key
		  case Properties.Bounds
		    myprop = "bounds"
		  case Properties.ContentsRect
		    myprop = "contentsRect"
		  End Select
		  Super.Constructor (AnimationWithKeyPath (ClassPtr, myprop))
		  
		  fromvalue = new iOSLibValue (fromrect)
		  ToValue = new iOSLibValue (torect)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Key as Properties, fromsize as nssize, tosize as nssize)
		  dim myprop as text
		  select case key
		  case Properties.ShadowOffset
		    myprop = "shadowOffset"
		  End Select
		  Super.Constructor (AnimationWithKeyPath (ClassPtr, myprop))
		  
		  fromvalue = new iOSLibValue (fromsize)
		  ToValue = new iOSLibValue (tosize)
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function byValue lib UIKit selector "byValue" (id as ptr) as ptr
			  dim myptr as ptr = ByValue (id)
			  return if(myptr <> NIL, new iOSLibObject (myptr), NIL)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setByValue lib UIKit selector "setByValue:" (id as ptr, value as ptr)
			  setByValue id, value.GeneralID
			  
			End Set
		#tag EndSetter
		ByValue As iOSLibGeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CABasicAnimation")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function fromValue lib UIKit selector "fromValue" (id as ptr) as ptr
			  dim myptr as ptr = fromValue (id)
			  return if(myptr <> NIL, new iOSLibObject (myptr), NIL)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Targetmacos
			    DEclare Sub setFromValue lib Appkit selector "setFromValue:" (id as ptr, value as ptr)
			    setFromValue id, value.GeneralID
			  #endif
			End Set
		#tag EndSetter
		FromValue As ioslibgeneralobject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DEclare Function toValue lib UIKit selector "toValue" (id as ptr) as ptr
			  dim myptr as ptr = tovalue (id)
			  return if(myptr <> NIL, new iOSLibObject (myptr), NIL)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  DEclare Sub setToValue lib UIKit selector "setToValue:" (id as ptr, value as ptr)
			  setToValue id, value.GeneralID
			  
			End Set
		#tag EndSetter
		ToValue As iOSLibGeneralObject
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Additive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Autoreverses"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cumulative"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillMode"
			Group="Behavior"
			Type="FillModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Remove"
				"1 - Remain"
				"2 - Reset"
				"3 - Both"
			#tag EndEnumValues
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
			Name="RemoveOnCompletion"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatCount"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOffset"
			Group="Behavior"
			Type="Double"
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
