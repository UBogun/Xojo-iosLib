#tag Module
Protected Module FoundationFrameWork
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFCopyDescription Lib FoundationLibName (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFCopyTypeIDDescription Lib FoundationLibName (CFTypeId as uinteger) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetValue Lib FoundationLibName (Number as Ptr, Numbertype as CFNumberTypes, byref ValuePtr as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFRelease Lib FoundationLibName (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringCreateCopy Lib FoundationLibName (aString as cfstringref) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringCreateWithCString Lib FoundationLibName (aString as cstring, encoding as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetCharactersPtr Lib FoundationLibName (aString as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetCStringPtr Lib FoundationLibName (aString as cfstringref, anencoding as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetFastestEncoding Lib FoundationLibName (aString as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function NSClassFromString Lib FoundationLibName (aClassName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function NSMakePoint(x as double, y as double) As FoundationFRamework.NSPoint
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #Pragma NilObjectChecking false
		  
		  dim NP as foundationframework.NSPoint
		  NP.x = x
		  NP.y = y
		  return np
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NSMakeRect(x as double, y as double, w as double, h as double) As FoundationFramework.NSRect
		  dim NP  as FoundationFramework.NSRect
		  NP.Origin.x = x
		  np.Origin.y = y
		  NP.Size_.width = w
		  np.Size_.height = h
		  return np
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NSMakeSize(height as Double, width as double) As FoundationFramework.NSSize
		  dim NS as FoundationFramework.NSSize
		  ns.height = height
		  ns.width = width
		  return ns
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function NSProtocolFromString Lib FoundationLibName (aProtocol as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function NSSelectorFromString Lib FoundationLibName (aSelector as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function NSStringFromSelector Lib FoundationLibName (aSelector as Ptr) As cfstringref
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function StandardTextEncoding() As xojo.Core.TextEncoding
		  static enc as xojo.Core.TextEncoding = xojo.core.TextEncoding.utf8
		  return enc
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return 8
			  #elseif Target32Bit
			    return 4
			  #endif
			End Get
		#tag EndGetter
		IntegerSize As UInteger
	#tag EndComputedProperty


	#tag Constant, Name = CoreFoundation, Type = Text, Dynamic = False, Default = \"CoreFoundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = FoundationLibName, Type = Text, Dynamic = False, Default = \"Foundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = FoundationPath, Type = Text, Dynamic = False, Default = \"com.apple.Foundation", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CGVector, Flags = &h0
		dx as double
		dy as double
	#tag EndStructure

	#tag Structure, Name = CGVector32Bit, Flags = &h0
		dx as single
		dy as single
	#tag EndStructure

	#tag Structure, Name = NSPoint, Flags = &h1
		x as Double
		y as Double
	#tag EndStructure

	#tag Structure, Name = NSPoint32Bit, Flags = &h1
		x as single
		y as single
	#tag EndStructure

	#tag Structure, Name = NSRange, Flags = &h1
		location as UInteger
		length as uinteger
	#tag EndStructure

	#tag Structure, Name = NSRect, Flags = &h1
		Origin as FoundationFramework.NSPoint
		Size_ as FoundationFramework.NSSize
	#tag EndStructure

	#tag Structure, Name = NSRect32Bit, Flags = &h1
		Origin as FoundationFramework.NSPoint32Bit
		Size_ as FoundationFramework.NSSize32Bit
	#tag EndStructure

	#tag Structure, Name = NSSize, Flags = &h1
		width as Double
		height as Double
	#tag EndStructure

	#tag Structure, Name = NSSize32Bit, Flags = &h1
		width as single
		height as single
	#tag EndStructure

	#tag Structure, Name = UIEdgeInsets, Flags = &h0
		Top as Double
		  Left As Double
		  Bottom As Double
		Right As Double
	#tag EndStructure

	#tag Structure, Name = UIEdgeInsets32Bit, Flags = &h0
		Top as Single
		  Left As Single
		  Bottom As Single
		Right As Single
	#tag EndStructure


	#tag Enum, Name = CFNumberTypes, Flags = &h0
		Int8 = 1
		  Int16 = 2
		  Int32 = 3
		  Int64= 4
		  Float32 = 5
		  Float64 = 6
		  Char = 7
		  Short = 8
		  Int = 9
		  Long = 10
		  LongLong = 11
		  Float = 12
		  Double = 13
		  CFIndex = 14
		  NSInteger = 15
		  CGFloat = 16
		Max = 16
	#tag EndEnum


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
