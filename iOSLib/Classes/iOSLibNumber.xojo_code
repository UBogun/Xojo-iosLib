#tag Class
Protected Class iOSLibNumber
Inherits iOSLibValue
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetByteSize Lib Foundation (Number as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetType Lib Foundation (Number as Ptr) As CFNumberTypes
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberIsFloatType Lib Foundation (Number as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor(aBool as boolean)
		  declare function initWithBool lib UIKit Selector "initWithBool:" (id as ptr, aBool as boolean) as ptr
		  super.constructor (initWithBool (Alloc(ClassPtr), aBool))
		  mhasOwnership = true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aDouble as Double)
		  declare function initWithDouble lib UIKit Selector "initWithDouble:" (id as ptr, aDouble as double) as ptr
		  super.constructor ( initWithDouble (Alloc(ClassPtr), aDouble))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(anint as int16)
		  declare function initWithShort lib UIKit Selector "initWithShort:" (id as ptr, anint as int16) as ptr
		  super.constructor ( initWithShort (Alloc(ClassPtr), anint))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(achar as int8)
		  declare function initWithChar lib UIKit Selector "initWithChar:" (id as ptr, achar as int8) as ptr
		  super.constructor ( initWithChar (Alloc(ClassPtr), achar))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(anint as Integer)
		  declare function initWithInteger lib UIKit Selector "initWithInteger:" (id as ptr, anint as integer) as ptr
		  super.constructor ( initWithInteger (Alloc(ClassPtr), anint))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aSingle as Single)
		  declare function initWithFloat lib UIKit Selector "initWithFloat:" (id as ptr, asingle as single) as ptr
		  super.constructor ( initWithFloat (Alloc(ClassPtr), asingle))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Description(Locale as xojo.Core.Locale) As cfstringref
		  // declare function descriptionWithLocale lib UIKit Selector "descriptionWithLocale:" (id as ptr, locale as ptr) as cfstringref
		  // return descriptionWithLocale (id, Locale.Raw.)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(aNumber as ioslibnumber) As boolean
		  declare function isEqualToNumber lib UIKit Selector "isEqualToNumber:" (id as ptr, anumber as ptr) as boolean
		  return isEqualToNumber (id, aNumber.id)
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function boolValue_ lib UIKit Selector "boolValue" (id as ptr) as boolean
			  return boolValue_ (id)
			  
			End Get
		#tag EndGetter
		BoolValue As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSNumber")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Description (xojo.core.locale.Current)
			End Get
		#tag EndGetter
		Description As CFstringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function doubleValue_ lib UIKit Selector "doubleValue" (id as ptr) as double
			  return DoubleValue_ (id)
			  
			End Get
		#tag EndGetter
		DoubleValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function shortValue lib UIKit Selector "shortValue" (id as ptr) as int16
			  return shortValue (id)
			  
			End Get
		#tag EndGetter
		Int16Value As Int16
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function intValue lib UIKit Selector "intValue" (id as ptr) as int32
			  return intValue (id)
			  
			End Get
		#tag EndGetter
		Int32Value As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function longLongValue lib UIKit Selector "longLongValue" (id as ptr) as int64
			  return longLongValue (id)
			  
			End Get
		#tag EndGetter
		Int64Value As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function charValue lib UIKit Selector "charValue" (id as ptr) as int8
			  return charValue (id)
			  
			End Get
		#tag EndGetter
		Int8Value As Int8
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function integerValue lib UIKit Selector "integerValue" (id as ptr) as integer
			  return integerValue (id)
			  
			End Get
		#tag EndGetter
		IntegerValue As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFNumberIsFloatType (id)
			End Get
		#tag EndGetter
		IsFloat As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFNumberGetType (id)
			End Get
		#tag EndGetter
		NumberType As CFNumberTypes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function objCType lib UIKit Selector "objCType" (id as ptr) as CString
			  return objCType (id)
			  
			End Get
		#tag EndGetter
		objCType As cstring
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function floatValue lib UIKit Selector "floatValue" (id as ptr) as single
			  return floatValue (id)
			  
			End Get
		#tag EndGetter
		SingleValue As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFNumberGetByteSize (id)
			End Get
		#tag EndGetter
		Size As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function stringValue_ lib UIKit Selector "stringValue" (id as ptr) as cfstringref
			  return stringValue_ (id)
			  
			End Get
		#tag EndGetter
		StringValue As CFStringRef
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function unsignedShortValue lib UIKit Selector "unsignedShortValue" (id as ptr) as uint16
			  return unsignedShortValue (id)
			  
			End Get
		#tag EndGetter
		UInt16Value As UInt16
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function unsignedLongValue lib UIKit Selector "unsignedLongValue" (id as ptr) as uint32
			  return unsignedLongValue (id)
			  
			End Get
		#tag EndGetter
		UInt32Value As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function unsignedLongLongValue lib UIKit Selector "unsignedLongLongValue" (id as ptr) as uint64
			  return unsignedLongLongValue (id)
			  
			End Get
		#tag EndGetter
		UInt64Value As UInt64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function unsignedCharValue lib UIKit Selector "unsignedCharValue" (id as ptr) as uint8
			  return unsignedCharValue (id)
			  
			End Get
		#tag EndGetter
		UInt8Value As UInt8
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function unsignedIntegerValue lib UIKit Selector "unsignedIntegerValue" (id as ptr) as uinteger
			  return unsignedIntegerValue (id)
			  
			End Get
		#tag EndGetter
		UIntegerValue As UInteger
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BoolValue"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleValue"
			Group="Behavior"
			Type="Double"
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
			Name="IntegerValue"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFloat"
			Group="Behavior"
			Type="Boolean"
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
			Name="NumberType"
			Group="Behavior"
			Type="CFNumberTypes"
			EditorType="Enum"
			#tag EnumValues
				"1 - Int8"
				"2 - Int16"
				"3 - Int32"
				"4 - Int64"
				"5 - Float32"
				"6 - Float64"
				"7 - Char"
				"8 - Short"
				"9 - Int"
				"10 - Long"
				"11 - LongLong"
				"12 - Float"
				"13 - Double"
				"14 - CFIndex"
				"15 - NSInteger"
				"16 - CGFloat"
				"16 - Max"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
			Group="Behavior"
			Type="Integer"
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
