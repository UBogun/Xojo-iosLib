#tag Class
Protected Class iOSLibSet
Inherits iOSLibObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(AnArray as iOSLibArray)
		  Declare Function initWithArray lib UIKit selector "initWithArray:" (id as ptr, anArray as Ptr) as Ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (initWithArray(Alloc(ClassPtr), AnArray.id))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Paramarray Objects() as ioslibobject)
		  Declare Function initWithObjects lib UIKit selector "initWithObjects:" (id as ptr, anArray as Ptr) as Ptr
		  dim objCount as UInteger= objects.Ubound
		  dim mb as new MutableMemoryBlock ((objCount + 2) * IntegerSize)
		  for q as uinteger = 0 to objCount
		    mb.PtrValue(q * IntegerSize) = Objects(q).Id
		  next
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (initWithObjects(Alloc(ClassPtr), mb.Data))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsObject(anObject as iOSLibObject) As Boolean
		  Declare Function containsObject lib UIKit selector "containsObject:" (id as ptr, anobject as ptr) as Boolean
		  Return containsObject (id, anObject.id)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function allObjects lib UIKit selector "allObjects" (id as ptr) as Ptr
			  Return iOSLibArray.MakeFromPtr (allObjects(id))
			End Get
		#tag EndGetter
		AllObjects As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function anyObject lib UIKit selector "anyObject" (id as ptr) as Ptr
			  Return iOSLibObject.MakeFromPtr (anyObject(id))
			End Get
		#tag EndGetter
		AnyObject As iOSLibObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSSet")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getCount
			End Get
		#tag EndGetter
		Count As UInteger
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
