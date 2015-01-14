#tag Class
Protected Class NSMutableArray
	#tag Method, Flags = &h1
		Protected Sub addObject(id as ptr, value as ptr)
		  declare sub addObject lib UIKit selector "addObject:" (id as ptr, value as ptr)
		  addObject id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function arrayWithCapacity(capacity as uinteger) As Ptr
		  declare function arrayWithCapacity lib UIKit selector "arrayWithCapacity:" (id as ptr, capacity as uinteger) as ptr
		  return arrayWithCapacity (ClassPtr, capacity)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Images() as iOSImage)
		  dim capacity as uinteger = images.Ubound 
		  mid=arrayWithCapacity (capacity)
		  for q as uinteger = 0 to capacity
		    addObject id, images(q).Handle
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(capacity as UInteger = 0)
		  mid = arrayWithCapacity (capacity)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as ptr = NSClassFromString ("NSMutableArray")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As Ptr
	#tag EndProperty


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
End Class
#tag EndClass
