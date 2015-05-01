#tag Class
Protected Class iOSLibObject
Implements iOSLibGeneralObject
	#tag Method, Flags = &h0
		 Shared Function Alloc(aClass as Ptr) As ptr
		  declare function alloc lib uikit selector "alloc" (id as ptr) as ptr
		  return alloc (aclass)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AutoRelease()
		  mid = AutoRelease(mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function AutoRelease(id as ptr) As Ptr
		  declare function autorelease lib UIKit selector "autorelease" (id as ptr) as ptr
		  return autorelease (id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mid = CreateInstance (ClassPtr)
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(AnId as Ptr)
		  mid = anid
		  if not IsNIL then
		    // system.DebugLog "Created "+me.DebugDescription
		  else
		    system.DebugLog "Error creating Object – method returned NIL"
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

	#tag Method, Flags = &h0
		 Shared Sub DeAlloc(id as ptr)
		  declare sub dealloc lib UIKit selector "dealloc" (id as ptr)
		  dealloc (id)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  
		  if mHasOwnership then
		    system.DebugLog "Releasing "+DebugDescription+" AR: "+RetainCount.totext
		    autoRelease
		  else
		    // system.DebugLog "Losing Handle on "+DebugDescription+" AR: "+RetainCount.totext
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GeneralID() As Ptr
		  // Part of the iOSLibGeneralObject interface.
		  
		  return mid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getCount() As UInteger
		  Declare Function count lib UIKit selector "count" (id as ptr) as UInteger
		  Return count (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getDelegate() As Ptr
		  Declare Function getDelegate lib uikit selector "delegate" (id as ptr) as Ptr
		  dim result as new iOSLibObject (  getDelegate (id))
		  if not result.IsNIL then
		    result.Retain
		    call AutoRelease result.id
		  end if
		  return result.id
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getName() As Text
		  Declare function name lib UIKit selector "name" (id as ptr) as CFStringRef
		  return name (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getSize() As NSSize
		  #if Target64Bit
		    Declare function size lib UIKit selector "size" (id as ptr) as NSSize
		    return size (id)
		  #elseif Target32Bit
		    Declare function size lib UIKit selector "size" (id as ptr) as NSSize32Bit
		    return size(id).toNSSize
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTitle() As Text
		  Declare Function title lib UIKit selector "title" (id as ptr) as CFStringRef
		  Return title (id)
		  
		End Function
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

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As iosLibObject
		  return if (aptr <> NIL, new iOSLibObject (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  declare Sub release lib UIKit selector "release" (id as ptr)
		  release (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Retain()
		  declare function retain lib UIKit selector "retain" (id as ptr) as ptr
		  call retain (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RetainClassObject()
		  Retain
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setDelegate(value as Ptr)
		  Declare Sub setDelegate lib uikit selector "setDelegate:" (id as ptr, value as Ptr)
		  setDelegate (id, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setName(Name as cfstringref)
		  Declare Sub setName lib UIKit selector "setName:" (id as ptr, value as CFStringRef)
		  setName (id, Name)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setSize(value as nssize)
		  #if Target64Bit
		    Declare sub setSize lib UIKit selector "setSize:" (id as ptr, value as NSSize)
		    setSize id, value
		  #elseif Target32Bit
		    Declare sub setSize lib UIKit selector "setSize:" (id as ptr, value as NSSize32Bit)
		    setSize id, value.toNSSize32
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setTitle(Title as cfstringref)
		  Declare Sub setTitle lib UIKit selector "setTitle:" (id as ptr, value as CFStringRef)
		  settitle (id, title)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setValueForKey(Key as CFStringRef, value as iOSLibGeneralObject)
		  Declare sub setValueForKey lib Foundation selector "setValue:forKey:" (id as ptr, value as ptr, Key as CFStringRef)
		  setValueForKey (id, value.GeneralID, Key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setValueForKeyPath(KeyPath as CFStringRef, value as iOSLibGeneralObject)
		  Declare sub setValueForKeyPath lib UIKit selector "setValue:forKeyPath:" (id as ptr, value as ptr, KeyPath as CFStringRef)
		  setValueForKeyPath (id, value.GeneralID, KeyPath)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValueForKey(Key as CFStringRef) As ptr
		  Declare Function ValueForKey lib UIKit selector "valueForKey:" (id as ptr, KeyPath as CFStringRef) as ptr
		  return ValueForKey (id, Key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValueForKeyPath(KeyPath as CFStringRef) As Ptr
		  Declare Function ValueForKeyPath lib UIKit selector "valueForKeyPath:" (id as ptr, KeyPath as CFStringRef) as ptr
		  return ValueForKeyPath (id, KeyPath)
		End Function
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

	#tag Property, Flags = &h0
		Attributes( hidden ) mHasOwnership As Boolean
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getSuperclass (class_)
			  
			End Get
		#tag EndGetter
		SuperClass As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getName (SuperClass)
			  
			End Get
		#tag EndGetter
		SuperClassName As CString
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
