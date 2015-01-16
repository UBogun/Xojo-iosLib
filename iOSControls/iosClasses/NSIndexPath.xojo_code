#tag Class
Protected Class NSIndexPath
	#tag Method, Flags = &h0
		Sub Constructor(row as integer, section as integer)
		  declare function indexPathForRow lib UIKit selector "indexPathForRow:inSection:" (id as ptr, row as integer, section as integer) as ptr
		  mHandle = indexPathForRow (ClassPtr, row, section)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Id as Ptr)
		  mHandle = id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexAtPosition(Node as UInteger) As UInteger
		  declare Function IndexAtPosition_ lib UIKit selector "IndexAtPosition:" (id as ptr, Node as uinteger) as UInteger
		  return IndexAtPosition_ (Handle, node)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function indexPathByAddingIndex(Index as UInteger) As NSIndexPath
		  declare Function indexPathByAddingIndex_ lib UIKit selector "indexPathByAddingIndex:" (id as ptr, index as uinteger) as Ptr
		  return new NSIndexPath (indexPathByAddingIndex_ (Handle, index))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function indexPathByRemovingLastIndex() As NSIndexPath
		  declare Function indexPathByRemovingLastIndex_ lib UIKit selector "indexPathByRemovingLastIndex" (id as ptr) as Ptr
		  return new NSIndexPath (indexPathByRemovingLastIndex_ (Handle))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSIndexPath")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHandle
			End Get
		#tag EndGetter
		Handle As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Sub getIndexes lib uikit selector "getIndexes:" (id as ptr, byref indexes as ptr) 
			  dim bytes as integer = 4
			  #if target64bit
			    bytes = 8
			  #endif
			  dim myptr as ptr
			  getIndexes handle, myptr
			  dim mb as new MutableMemoryBlock (myptr,bytes * length)
			  return mb
			  
			  
			End Get
		#tag EndGetter
		Indexes As Memoryblock
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function item lib UIKit selector "item" (id as ptr) as integer
			  return item (Handle)
			End Get
		#tag EndGetter
		Item As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function length lib uikit selector "length" (id as ptr) as UInteger
			  return length (Handle)
			End Get
		#tag EndGetter
		Length As UInteger
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mHandle As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function row_ lib UIKit selector "row" (id as ptr) as integer
			  return row_ (Handle)
			End Get
		#tag EndGetter
		Row As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function section_ lib UIKit selector "section" (id as ptr) as integer
			  return Section_ (Handle)
			End Get
		#tag EndGetter
		Section As Integer
	#tag EndComputedProperty


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
			Name="mHandle"
			Group="Behavior"
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
End Class
#tag EndClass
