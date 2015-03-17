#tag Class
Protected Class iOSLibObject
	#tag Method, Flags = &h1
		Protected Shared Function Alloc(aClass as Ptr) As ptr
		  declare function alloc lib uikit selector "alloc" (id as ptr) as ptr
		  return alloc (aclass)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mid = CreateInstance (ClassPtr)
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(AnId as Ptr)
		  mid = anid
		   if not IsNIL then
		    system.DebugLog "Created "+me.DebugDescription
		  else 
		    system.DebugLog "Error creating Object – method returned NIL"
		    break
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As iOSLibObject
		  return new iOSLibObject (makecopy)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function CreateInstance(aClass as Ptr) As ptr
		  declare function new_ lib uikit selector "new" (id as ptr) as ptr
		  return new_ (aclass)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DeAlloc()
		  declare sub dealloc lib UIKit selector "dealloc" (id as ptr)
		  dealloc (mid)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  if mHasOwnership then Release
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function Init(anId as ptr) As Ptr
		  declare function init lib UIKit selector "init" (id as ptr) as ptr
		  return init (anId)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MakeCopy() As Ptr
		  Declare function Copy lib UIKit selector "copy" (id as ptr) as ptr
		  return copy (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  declare Sub release lib UIKit selector "release" (id as ptr)
		  release (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  declare function retain lib UIKit selector "retain" (id as ptr) as ptr
		  call retain (mid)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getName (class_)
			  
			End Get
		#tag EndGetter
		ClassName As CString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSObject")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.object_getClass (id)
			  
			End Get
		#tag EndGetter
		Class_ As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function getDescription lib UIKit selector "description" (id as Ptr) as cfstringref
			  return getDescription (id)
			  
			End Get
		#tag EndGetter
		DebugDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHasOwnership
			End Get
		#tag EndGetter
		HasOwnership As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid = nil
			End Get
		#tag EndGetter
		IsNIL As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Attributes( hidden ) Protected mHasOwnership As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mId As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function retainCount  lib UIKit selector "retainCount" (id as ptr) as uinteger
			  return retainCount (id)
			  
			End Get
		#tag EndGetter
		RetainCount As UInteger
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
