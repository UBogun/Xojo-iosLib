#tag Class
Protected Class AppleData
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function CFDataGetBytePtr Lib Foundation (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CFDataGetLength Lib Foundation (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CFDataGetTypeID Lib Foundation (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(data as AppleData)
		  declare function initWithData lib Foundation selector "initWithData:" (id as ptr, data as ptr) as ptr
		  super.Constructor (initWithData (alloc(ClassPtr), data.id))
		  mHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(atext as CFStringRef, options as Base64DecodingOptions = base64decodingoptions.none)
		  // declare function initWithBase64EncodedString lib Foundation selector "initWithBase64EncodedString:options:" (id as ptr, atext as cfstringref, options as Base64DecodingOptions) as ptr
		  // dim encode as text = atext.
		  // dim result as ptr = initWithBase64EncodedString (alloc(ClassPtr), encode, options)
		  // if result <> Nil then
		  // super.Constructor (result)
		  // mHasownership = true
		  // end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(MB as xojo.Core.MemoryBlock)
		  declare function initWithBytes lib Foundation selector "initWithBytes:length:" (id as ptr, bytes as ptr, length as uinteger) as ptr
		  super.Constructor (initWithBytes (alloc(ClassPtr), mb.Data, mb.Size))
		  mHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherData as AppleData) As Boolean
		  declare function isEqualToData lib Foundation selector "isEqualToData:" (id as ptr, anotherData as ptr) as Boolean
		  return isEqualToData (id, anotherData.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBase64String(options as Base64DecodingOptions = base64Decodingoptions.None) As cfstringref
		  declare function base64EncodedStringWithOptions lib Foundation selector "base64EncodedStringWithOptions:" (id as ptr, options as Base64DecodingOptions) as cfstringref
		  return base64EncodedStringWithOptions (id, options)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBytes(byref buffer as xojo.Core.MutableMemoryBlock, Range as NSRange)
		  declare sub getBytes lib Foundation selector "getBytes:range:" (id as ptr, buffer as ptr, range as NSRange)
		  if buffer.Size >= length then getBytes id, buffer.Data, Range
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBytes(byref buffer as xojo.Core.MutableMemoryBlock, length as uinteger)
		  declare sub getBytes lib Foundation selector "getBytes:length:" (id as ptr, buffer as ptr, length as uinteger)
		  if buffer.Size >= length then getBytes id, buffer.Data, length
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetBase64String
			End Get
		#tag EndGetter
		Base64StringDefault As cfstringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetBase64String (Base64DecodingOptions.IgnoreUnknownCharacters)
			End Get
		#tag EndGetter
		Base64StringIngoreUnknownChars As cfstringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as new xojo.Core.MutableMemoryBlock (Length)
			  GetBytes result, Length
			  return result
			End Get
		#tag EndGetter
		ByteBlock As xojo.Core.MemoryBlock
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFDataGetTypeID (id)
			End Get
		#tag EndGetter
		CFTypeID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSData")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function length lib Foundation selector "length" (id as ptr) as uinteger
			  return length (id)
			  
			End Get
		#tag EndGetter
		Length As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // return DecodeBase64 (Base64StringDefault)
			End Get
		#tag EndGetter
		UTF8stringDefault As cfstringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // return DecodeBase64 (Base64StringIngoreUnknownChars)
			End Get
		#tag EndGetter
		UTF8stringWithOutUnknownChars As cfstringref
	#tag EndComputedProperty


	#tag Enum, Name = Base64DecodingOptions, Type = UInteger, Flags = &h0
		None = 0
		IgnoreUnknownCharacters = 1
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