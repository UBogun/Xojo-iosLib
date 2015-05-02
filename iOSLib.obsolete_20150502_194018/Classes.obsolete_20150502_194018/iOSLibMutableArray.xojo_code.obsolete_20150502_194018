#tag Class
Protected Class iOSLibMutableArray
Inherits iOSLibArray
	#tag Method, Flags = &h0
		Sub Addobject(anObject as iOSLibGeneralObject)
		  Addobject anObject.GeneralID
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Addobject(anObject as Ptr)
		  Declare Sub addObject lib UIKit selector "addObject:" (id as ptr, value as ptr)
		  addObject (id, anObject)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddText(aText as CFStringREf)
		  Declare Sub addObject lib UIKit selector "addObject:" (id as ptr, value as cfstringref)
		  addObject (id, atext)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function CGColorArray(colorarray() as Color) As ioslibmutablearray
		  dim count as uinteger = colorArray.Ubound
		  dim myarray as new ioslibmutablearray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.Addobject iOSLibCGColor.fromColor(ColorArray(q)).CFTypeRef
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Capacity as uinteger)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (doinitwithcapacity(Alloc(ClassPtr), Capacity))
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function fromosLibObjects(paramarray objects() as ioslibobject) As ioslibmutablearray
		  dim count as uinteger = objects.Ubound
		  dim myarray as new ioslibmutablearray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.Addobject objects(q).id
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSPointArray(Pointarray() as NSPOint) As iOSLibMutableArray
		  dim count as uinteger = pointarray.Ubound + 1
		  dim myarray as new iOSLibMutableArray (count)
		  for q as uinteger = 1 to count
		    myarray.Addobject new iOSLibValue (pointarray(q -1))
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NumberArray(NumberArray() as Double) As ioslibmutablearray
		  dim count as uinteger = NumberArray.Ubound
		  dim myarray as new ioslibmutablearray (count + 1)
		  for q as uinteger = 0 to count
		    dim mynumber as new iOSLibNumber (NumberArray(q))
		    myarray.Addobject mynumber
		  next
		  return myarray
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSMutableArray")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
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
