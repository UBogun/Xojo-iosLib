#tag Class
Protected Class AppleValue
Inherits AppleObject
	#tag Method, Flags = &h1
		Protected Function CheckClass(TestPointer as Ptr, aClass as Ptr) As Auto
		  // dim ClassName as CString = ObjectiveCRuntime.class_getName (aclass)
		  // select case ClassName
		  // case "NSString"
		  // Return TestPointer.tocstring
		  //
		  // case "NSMutableArray"
		  // dim myarray as new MacOSMutableArray (TestPointer)
		  // return myarray.toptrarray
		  //
		  // Case "NSArray"
		  // dim myarray as new AppleArray (TestPointer)
		  // return myarray.toptrarray
		  //
		  // Case "NSDictionary"
		  // dim mydict as new MacOSDictionary (testPointer)
		  // return mydict.toPtrDict
		  //
		  // case "__NSCFNumber", "CFNumber", "NSNumber"
		  // dim mynumber as new MacOSNumber (TestPointer)
		  // select case mynumber.NumberType
		  // case CFNumberTypes.Int32
		  // return mynumber.Int32Value
		  // case CFNumberTypes.Int64
		  // return mynumber.Int64Value
		  // case CFNumberTypes.Int, CFNumberTypes.cfindex
		  // return mynumber.IntegerValue
		  // case CFNumberTypes.Char, CFNumberTypes.Int8
		  // return mynumber.Int8Value
		  // case CFNumberTypes.Float, CFNumberTypes.Float32
		  // return mynumber.SingleValue
		  // case CFNumberTypes.Double, CFNumberTypes.Float64
		  // return mynumber.DoubleValue
		  // else
		  // system.debuglog "Checkclass found unhandled Number type: "+str(mynumber.NumberType)
		  // break
		  // end select
		  //
		  // case "NSURL"
		  // return new MacOSURL (TestPointer)
		  //
		  // case "CIVector"
		  // return new MacOSVector (testpointer)
		  //
		  //
		  // else
		  //
		  // // need to check for CFTypes too!
		  //
		  // return NIL // No matching class found
		  // end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anObject as AppleObject, dontRetain as Boolean = false)
		  if dontRetain then
		    declare function valueWithNonretainedObject lib FoundationLibName  selector "valueWithNonretainedObject:" (id as ptr, value as ptr) as ptr
		    super.Constructor (valueWithNonretainedObject (ClassPtr, anObject.id))
		  else
		    constructor ( anObject.id, true )
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(T as CATransform3D)
		  #if target32bit
		    declare function valueWithCATransform3D lib FoundationLibName  selector "valueWithCATransform3D:" (id as ptr, value as CATransform3D32Bit) as ptr
		    super.Constructor (valueWithCATransform3D (ClassPtr, T.toCATransform3D32Bit))
		  #elseif target64bit
		    declare function valueWithCATransform3D lib FoundationLibName  selector "valueWithCATransform3D:" (id as ptr, value as CATransform3D) as ptr
		    super.Constructor (valueWithCATransform3D (ClassPtr, T))
		  #endif
		  me.RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(value as double)
		  dim mb as new xojo.Core.MutableMemoryBlock (8)
		  mb.DoubleValue(0) = value
		  dim mytype as auto =  ObjectiveCRuntime.objcTypeDictInversed.Value("Double")
		  dim myint as int32 = mytype
		  dim mytypetext as text = "{"+text.FromUnicodeCodepoint (myint)+"}"
		  super.Constructor (ValueWithBytes (mb.Data, mytypetext.toCString))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(APoint As FoundationFramework.NSPoint)
		  #if TargetIOS
		    #if target32bit
		      declare function valueWithCGPoint lib UIKitLibname  selector "valueWithCGPoint:" (id as ptr, value as FoundationFramework.NSPoint32Bit) as ptr
		      super.Constructor (valueWithCGPoint (ClassPtr, apoint.toNSPoint32))
		    #elseif target64bit
		      declare function valueWithCGPoint lib UIKitLibname  selector "valueWithCGPoint:" (id as ptr, value as FoundationFramework.NSPoint) as ptr
		      super.Constructor (valueWithCGPoint (ClassPtr, apoint))
		    #endif
		  #elseif TargetMacOS
		    #if target32bit
		      declare function valueWithPoint lib FoundationLibName  selector "valueWithPoint:" (id as ptr, value as FoundationFramework.NSPoint32Bit) as ptr
		      super.Constructor (valueWithPoint (ClassPtr, apoint.toNSPoint32))
		    #elseif target64bit
		      declare function valueWithPoint lib FoundationLibName  selector "valueWithPoint:" (id as ptr, value as FoundationFramework.NSPoint) as ptr
		      super.Constructor (valueWithPoint (ClassPtr, apoint))
		    #endif
		  #endif
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ARect as FoundationFramework.NSRect)
		  #if TargetIOS
		    #if target32bit
		      declare function valueWithCGRect lib UIKitLibname  selector "valueWithCGRect:" (id as ptr, value as FoundationFramework.NSRect32Bit) as ptr
		      super.Constructor (valueWithCGRect (ClassPtr, aRect.toNSRect32))
		    #elseif target64bit
		      declare function valueWithCGRect lib UIKitLibname  selector "valueWithCGRect:" (id as ptr, value  as FoundationFramework.NSRect) as ptr
		      super.Constructor (valueWithCGRect (ClassPtr, aRect))
		    #endif
		  #elseif TargetMacOS
		    #if target32bit
		      declare function valueWithRect lib FoundationLibName  selector "valueWithRect:" (id as ptr, value as FoundationFramework.NSRect32Bit) as ptr
		      super.Constructor (valueWithRect (ClassPtr, aRect.toNSRect32))
		    #elseif target64bit
		      declare function valueWithRect lib FoundationLibName  selector "valueWithRect:" (id as ptr, value  as FoundationFramework.NSRect) as ptr
		      super.Constructor (valueWithRect (ClassPtr, aRect))
		    #endif
		  #endif
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ASize as FoundationFramework.NSSize)
		  #if targetios
		    #if target32bit
		      declare function valueWithCGSize lib UIKitLibname  selector "valueWithCGSize:" (id as ptr, value as FoundationFramework.NSSize32Bit) as ptr
		      super.Constructor (valueWithCGSize (ClassPtr, aSize.toNSSize32))
		    #elseif target64bit
		      declare function valueWithCGSize lib UIKitLibname  selector "valueWithCGSize:" (id as ptr, value as FoundationFramework.NSSize) as ptr
		      super.Constructor (valueWithCGSize (ClassPtr, aSize))
		    #endif
		  #elseif targetmacos
		    #if target32bit
		      declare function valueWithSize lib FoundationLibName  selector "valueWithSize:" (id as ptr, value as FoundationFramework.NSSize32Bit) as ptr
		      super.Constructor (valueWithSize (ClassPtr, aSize.toNSSize32))
		    #elseif target64bit
		      declare function valueWithSize lib FoundationLibName  selector "valueWithSize:" (id as ptr, value as FoundationFramework.NSSize) as ptr
		      super.Constructor (valueWithSize (ClassPtr, aSize))
		    #endif
		  #endif
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(anid as ptr, CreateValue As Boolean = False)
		  if CreateValue then
		    declare function valueWithPointer lib FoundationLibName  selector "valueWithPointer:" (id as ptr, value as ptr) as ptr
		    super.Constructor (valueWithPointer (ClassPtr, anid))
		    retainclassobject
		  else
		    super.constructor ( anid )
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherValue as AppleValue) As Boolean
		  declare function isEqualToValue lib FoundationLibName  selector "isEqualToValue:" (id as ptr, value as Ptr) as Boolean
		  return isEqualToValue (id, anotherValue.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleValue
		  return if (aptr = nil, nil, new AppleValue(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Function ValueWithBytes(value as ptr, type as CString) As Ptr
		  declare function valueWithBytes lib FoundationLibName  selector "valueWithBytes:objCType:" (id as ptr, value as ptr, type as CString) as ptr
		  return  valueWithBytes (ClassPtr, value, type)
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // dim myclass as ptr = ObjectiveCRuntime.object_getClass (id)
			  // if myclass <> NIL then // we have a known Class here
			  // dim myclassname as CString = ObjectiveCRuntime.class_getName (myclass)
			  // do
			  // dim result as auto = CheckClass (id, myclass)
			  // if result <>NIL then return result
			  // dim mysuperclass as ptr= ObjectiveCRuntime.class_getSuperclass (myclass)
			  // if mysuperclass = NIL then
			  // System.debuglog "Ptr-Auto-Conversion found unknown Class "+myclassname
			  // return id
			  // end if
			  // myclass = mysuperclass
			  // loop until myclass = NIL // should never get here
			  // Break
			  //
			  // else // no Class, give back the ptr
			  // return id
			  // end if
			End Get
		#tag EndGetter
		AutoValue As Auto
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    declare function CATransform3DValue lib FoundationLibName  selector "CATransform3DValue" (id as ptr) as CATransform3D32Bit
			    return CATransform3DValue(id).toCATransform3D
			  #elseif target64bit
			    declare function CATransform3DValue lib FoundationLibName  selector "CATransform3DValue" (id as ptr) as CATransform3D
			    return CATransform3DValue (id)
			  #endif
			  
			End Get
		#tag EndGetter
		CATransform3DValue As CATransform3D
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSValue")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function nonretainedObjectValue lib FoundationLibName  selector "nonretainedObjectValue" (id as ptr) as ptr
			  return  AppleObject.MakeFromPtr (nonretainedObjectValue (id))
			  
			End Get
		#tag EndGetter
		NonRetainedObjectValue As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetIOS
			    #if target32bit
			      declare function CGPointValue lib UIKitLibname  selector "CGPointValue" (id as ptr) as FoundationFramework.NSPoint32Bit
			      return CGPointValue (id).toNSPoint
			    #elseif target64bit
			      declare function CGPointValue lib UIKitLibname  selector "CGPointValue" (id as ptr) as FoundationFramework.NSPoint
			      return CGPointValue (id)
			    #endif
			  #elseif Targetmacos
			    #if target32bit
			      declare function pointValue lib FoundationLibName  selector "pointValue" (id as ptr) as FoundationFramework.NSPoint32Bit
			      return pointValue (id).toNSPoint
			    #elseif target64bit
			      declare function pointValue lib FoundationLibName  selector "pointValue" (id as ptr) as FoundationFramework.NSPoint
			      return pointValue (id)
			    #endif
			  #endif
			  
			End Get
		#tag EndGetter
		NSPointValue As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetIOS
			    #if target32bit
			      declare function CGRectValue lib UIKitLibname  selector "CGRectValue" (id as ptr) as FoundationFramework.NSRect32Bit
			      return CGRectValue (id).tonsrect
			    #elseif target64bit
			      declare function CGRectValue lib UIKitLibname  selector "CGRectValue" (id as ptr)  as FoundationFramework.NSRect
			      return CGRectValue (id)
			    #endif
			  #elseif TargetMacOS
			    #if target32bit
			      declare function rectValue lib FoundationLibName  selector "rectValue" (id as ptr) as FoundationFramework.NSRect32Bit
			      return rectValue (id).tonsrect
			    #elseif target64bit
			      declare function rectValue lib FoundationLibName  selector "rectValue" (id as ptr)  as FoundationFramework.NSRect
			      return rectValue (id)
			    #endif
			  #endif
			  
			End Get
		#tag EndGetter
		NSRectValue As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetIOS
			    #if target32bit
			      declare function CGSizeValue lib FoundationLibName  selector "CGSizeValue" (id as ptr) as FoundationFramework.NSSize32Bit
			      return CGSizeValue (id).tonssize
			    #elseif target64bit
			      declare function CGSizeValue lib FoundationLibName  selector "CGSizeValue" (id as ptr) as FoundationFramework.NSSize
			      return CGSizeValue (id)
			    #endif
			  #Elseif TargetMacOS
			    #if target32bit
			      declare function sizeValue lib FoundationLibName  selector "sizeValue" (id as ptr) as FoundationFramework.NSSize32Bit
			      return sizeValue (id).tonssize
			    #elseif target64bit
			      declare function sizeValue lib FoundationLibName  selector "sizeValue" (id as ptr) as FoundationFramework.NSSize
			      return sizeValue (id)
			    #endif
			  #endif
			  
			End Get
		#tag EndGetter
		NSSizeValue As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function pointerValue lib FoundationLibName  selector "pointerValue" (id as ptr) as ptr
			  return pointerValue (id)
			  
			End Get
		#tag EndGetter
		PointerValue As Ptr
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
