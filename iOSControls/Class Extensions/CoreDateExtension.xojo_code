#tag Module
Protected Module CoreDateExtension
	#tag Method, Flags = &h1
		Protected Function dateWithTimeIntervalSince1970(interval as double) As Ptr
		  declare function dateWithTimeIntervalSince1970 lib UIKit selector "dateWithTimeIntervalSince1970:"(id as ptr, interval as double) as ptr
		  return dateWithTimeIntervalSince1970 (ClassPtr, interval)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toNSDate(extends aDate as Xojo.Core.Date) As Ptr
		  return dateWithTimeIntervalSince1970 (aDate.SecondsFrom1970)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  dim mclassPtr as Ptr = NSClassFromString ("NSDate")
			  return mclassPtr
			End Get
		#tag EndGetter
		Protected ClassPtr As Ptr
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
