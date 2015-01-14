#tag Module
Protected Module ObjectiveCRuntime
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_addIvar Lib obj_C (aClass as Ptr, name as CString, size as UInteger, Alignment as UInt8, Types as CString) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_addMethod Lib obj_C (aClass as Ptr, Selector as Ptr, Implementation as Ptr, types as cstring) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_copyIvarList Lib obj_C (aClass as Ptr, byref OutCount as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getClassVariable Lib obj_C (aClass as Ptr, aVariable as CString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getInstanceSize Lib obj_C (aClass as Ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getInstanceVariable Lib obj_C (aClass as Ptr, aVariable as CString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getName Lib obj_C (aClass as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_getSuperclass Lib obj_C (aClass as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_isMetaClass Lib obj_C (aClass as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function class_replaceMethod Lib obj_C (aClass as Ptr, Selector as Ptr, Implementation as Ptr, types as cstring) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function objc_allocateClassPair Lib obj_C (aClass as Ptr, ClassName as CString, extrabytes as UInteger = 0) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub objc_disposeClassPair Lib obj_C (aClass as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub objc_registerClassPair Lib obj_C (aClass as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function object_copy Lib obj_C (anObject as Ptr, Size as UInteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function object_getClass Lib obj_C (anObject as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function object_getClassName Lib obj_C (anObject as Ptr) As CString
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub object_setClass Lib obj_C (anObject as Ptr, NewClass as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sel_registerName Lib obj_C (Methodname as CString) As Ptr
	#tag EndExternalMethod


	#tag Constant, Name = Obj_C, Type = Text, Dynamic = False, Default = \"/usr/lib/libobjc.A.dylib", Scope = Private
	#tag EndConstant


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
End Module
#tag EndModule
