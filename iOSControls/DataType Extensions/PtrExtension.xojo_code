#tag Module
Protected Module PtrExtension
	#tag Method, Flags = &h0
		Function AllKeys(extends id as ptr) As Ptr
		  //Returns a NSArray of all Keys in a NSDictionary
		  Declare Function allKeys lib Foundation selector "allKeys:" (id as ptr) as Ptr
		  return allKeys (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count(extends id as ptr) As UInteger
		  Declare Function count_ lib Foundation selector "count" (id as ptr) as UInteger
		  return count_ (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function hasValue(extends P() as Ptr, value as Ptr) As Boolean
		  return p.IndexOf (value) >0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function objectAtIndex(extends id as ptr, index as UInteger) As Ptr
		  Declare Function objectAtIndex_ lib Foundation selector "objectAtIndex:" (id as ptr, index as uinteger) as Ptr
		  return objectAtIndex_ (id, index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function objectForKey(extends id as ptr, key as CFStringRef) As Ptr
		  Declare Function objectForKey lib Foundation selector "objectForKey:" (id as ptr, key as CFStringRef) as Ptr
		  return objectForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextAtIndex(extends id as ptr, index as UInteger) As CFStringRef
		  Declare Function textatindex lib Foundation selector "objectAtIndex:" (id as ptr, index as uinteger) as CFStringRef
		  return textatindex (id, index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextForKey(extends id as ptr, key as CFStringRef) As cfstringref
		  Declare Function textforkey lib Foundation selector "objectForKey:" (id as ptr, key as CFStringRef) as cfstringref
		  return textforkey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toAutoArray(extends NSArray as Ptr) As Auto()
		   // Converts an NSArray to a Xojo Array
		  
		  dim myarray() as Auto
		  for q as uinteger = 0 to NSArray.count -1
		    myarray.Append NSArray.objectatindex( q)
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toColor(extends uicolorptr as ptr) As color
		  declare Sub getColors Lib UIKit selector "getRed:green:blue:alpha:" _
		  (Id as ptr, byref red as Single, byref green as single, byref blue as single, byref alpha as single)
		  
		  dim red, green, blue, alpha as Single
		  getcolors (UIcolorptr, red, green, blue, alpha) // no get the color components of the UIColor
		  
		  dim col as  color
		  col = color.rgba (red * 255, green * 255, blue * 255, 255 - alpha * 255) // The conversion
		  return col
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toiOSImage(extends anImage as Ptr) As iOSImage
		  // Converts a UIImage to an iOSImage
		  return  iOSImage.FromHandle (animage)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toIOSImageArray(extends NSArray as Ptr) As iosimage()
		   // Converts an NSArray to a Xojo Array
		  
		  dim myarray() as iOSImage
		  for q as uinteger = 0 to NSArray.count -1
		    myarray.Append NSArray.objectatindex( q).toiosimage
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toPtrArray(extends NSArray as Ptr) As Ptr()
		   // Converts an NSArray to a Xojo Array
		  
		  dim myarray() as Ptr
		  for q as uinteger = 0 to NSArray.count -1
		    myarray.Append NSArray.objectatindex( q)
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toUIntArray(extends NSArray as Ptr) As UInteger()
		  // Converts an NSArray to a UInteger Array
		  
		  dim myarray() as uinteger
		  for q as uinteger = 0 to NSArray.count -1
		    myarray.Append NSArray.uintatindex( q)
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UIntAtIndex(extends id as ptr, index as UInteger) As UInteger
		  Declare Function UIntAtIndex_ lib Foundation selector "objectAtIndex:" (id as ptr, index as uinteger) as UInteger
		  return UIntAtIndex_ (id, index)
		End Function
	#tag EndMethod


	#tag Note, Name = Read Me
		The PointerExtension is a helper class of iOSControls giving conversion methods for UI- and NSObjects handled as ptrs
		
		The methods are declared by extends but do not check for the true class of the pointer. Be careful to use them only on appropriate pointers.
		
		* Methods *
		
		– Count As UInteger: Delivers the number of items in a NSDictionary or NSArray
		
		– ObjectAtIndex (Index as UInteger) as Ptr: Delivers a ptr to the object at index in a NSArray
		
		– toAutoArray as Auto(): Creates a Xojo.Core.array from a NSArray
		
		– toColor as Color: Creates a Xojo Color from a NSColor
		
		– toIOSImage as iOSImage: Converts a UIImage to a Xojo iOSImage
		
		– toIOSImageArray as iOSImage(): Converts a NSArray holding UIImages to a Xojo array of iOSImage
		
		– toPtrArray as Ptr(): Converts a NSArray holding Ptrs to a Xojo array of Ptr
		
		
		
	#tag EndNote


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
