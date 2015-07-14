#tag Class
Protected Class AppleCAMediaTimingFunction
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(c1x as single, c1y as single, c2x as single, c2y as single)
		  declare function initWithControlPoints lib QuartzCore selector "initWithControlPoints::::" (id as ptr, c1x as single, c1y as single, c2x as single, c2y as single) as ptr
		  super.Constructor (initWithControlPoints (alloc(classptr), c1x, c1y, c2x, c2y))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Timing as TimingFunction)
		  declare function functionWithName lib QuartzCore selector "functionWithName:" (id as ptr, name as CFStringRef) as ptr
		  dim name as text
		  select case timing
		  case TimingFunction.Default
		    name = TimingDefault
		  case TimingFunction.EaseIn
		    name = TimingEaseIn
		  case TimingFunction.EaseOut
		    name = TimingEaseOut
		  case TimingFunction.EaseInEaseOut
		    name = TimingEaseInEaseOut
		  case TimingFunction.Linear
		    name = TimingLinear
		  end select
		  super.Constructor (functionWithName (ClassPtr, name))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetControlPoints(Index as UInteger) As xojo.core.point
		  declare sub getControlPointAtIndex lib QuartzCore selector "getControlPointAtIndex:values:" (id as ptr, index as uinteger, value as ptr)
		  dim mb as new xojo.Core.MutableMemoryBlock ( 16)
		  getControlPointAtIndex (id, index, mb.Data)
		  dim resultpoint as new xojo.Core.Point (mb.SingleValue(0), mb.SingleValue(4))
		  return resultpoint
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CAMediaTimingFunction")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetControlPoints (0)
			End Get
		#tag EndGetter
		ControlPoint0 As Xojo.core.point
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetControlPoints (1)
			End Get
		#tag EndGetter
		ControlPoint1 As xojo.core.point
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetControlPoints (2)
			End Get
		#tag EndGetter
		ControlPoint2 As xojo.core.point
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetControlPoints (3)
			End Get
		#tag EndGetter
		ControlPoint3 As xojo.core.point
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mDefault as AppleCAMediaTimingFunction = new AppleCAMediaTimingFunction (AppleCAMediaTimingFunction.TimingFunction.default)
			  return mDefault
			End Get
		#tag EndGetter
		Shared DefaultFunction As AppleCAMediaTimingFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mEaseInout as AppleCAMediaTimingFunction = new AppleCAMediaTimingFunction (AppleCAMediaTimingFunction.TimingFunction.EaseInEaseOut)
			  return mEaseInout
			End Get
		#tag EndGetter
		Shared EaseInEaseOutFunction As AppleCAMediaTimingFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mEaseIn as AppleCAMediaTimingFunction = new AppleCAMediaTimingFunction (AppleCAMediaTimingFunction.TimingFunction.EaseIn)
			  return mEaseIn
			End Get
		#tag EndGetter
		Shared EaseInFunction As AppleCAMediaTimingFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mEaseOut as AppleCAMediaTimingFunction = new AppleCAMediaTimingFunction (AppleCAMediaTimingFunction.TimingFunction.easeout)
			  return mEaseOut
			End Get
		#tag EndGetter
		Shared EaseOutFunction As AppleCAMediaTimingFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mLinear as AppleCAMediaTimingFunction = new AppleCAMediaTimingFunction (AppleCAMediaTimingFunction.TimingFunction.Linear)
			  return mLinear
			End Get
		#tag EndGetter
		Shared LinearFunction As AppleCAMediaTimingFunction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  dim mResult as text = SystemConstantName ("kCAMediaTimingFunctionDefault", QuartzCorePath)
			  return mResult
			End Get
		#tag EndGetter
		Private Shared TimingDefault As CFStringRef
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  dim mResult as text = SystemConstantName ("kCAMediaTimingFunctionEaseIn", QuartzCorePath)
			  return mResult
			End Get
		#tag EndGetter
		Private Shared TimingEaseIn As CFStringRef
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  dim mResult as text = SystemConstantName ("kCAMediaTimingFunctionEaseInEaseOut", QuartzCorePath)
			  return mResult
			End Get
		#tag EndGetter
		Private Shared TimingEaseInEaseOut As CFStringRef
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  dim mResult as text = SystemConstantName ("kCAMediaTimingFunctionEaseOut", QuartzCorePath)
			  return mResult
			End Get
		#tag EndGetter
		Private Shared TimingEaseOut As CFStringRef
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  dim mResult as text = SystemConstantName ("kCAMediaTimingFunctionLinear", QuartzCorePath)
			  return mResult
			End Get
		#tag EndGetter
		Private Shared TimingLinear As CFStringRef
	#tag EndComputedProperty


	#tag Enum, Name = TimingFunction, Type = Integer, Flags = &h0
		Linear
		  EaseIn
		  EaseOut
		  EaseInEaseOut
		Default
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
