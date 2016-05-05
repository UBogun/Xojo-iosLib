#tag Class
Protected Class AppleUserDefaults
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AddSuite(SuiteName as CFStringRef)
		  addSuiteNamed id, SuiteName
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addSuiteNamed Lib FoundationLibName Selector "addSuiteNamed:" (id as ptr, suitename as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function ArrayValue(Key as CFStringRef) As AppleArray
		  return AppleArray.MakeFromPtr(getarrayforkey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AttachNotificationCenter()
		  dim ChangeBlock as new AppleBlock (addressof DefaultsChangeBlock)
		  call AppleNotificationCenter.DefaultCenter.addObserverForName (NSUserDefaultsDidChangeNotification, id, AppleOperationQueue.MainQueue, ChangeBlock.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BooleanValue(Key as CFStringRef) As Boolean
		  return getboolForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BooleanValue(Key as CFStringRef, assigns value as boolean)
		  setboolForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  super.Constructor(init(alloc(classptr)))
		  MHasOwnership = true
		  AttachNotificationCenter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SuiteName as cfstringref)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  super.Constructor(initWithSuiteName(alloc(classptr), SuiteName))
		  MHasOwnership = true
		  AttachNotificationCenter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aPtr as Ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (aptr)
		  AttachNotificationCenter
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DataValue(Key as CFStringRef) As AppleData
		  return Appledata.MakeFromPtr(getdataForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub DefaultsChangeBlock(Notificationptr as ptr)
		  if me <> nil then RaiseEvent DefaultsChanged ()
		  #pragma unused Notificationptr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DictionaryValue(Key as CFStringRef) As AppleDictionary
		  return AppleDictionary.MakeFromPtr(getdictionaryForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DoubleValue(Key as CFStringRef) As Double
		  return getdoubleForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoubleValue(Key as CFStringRef,  assigns value as double)
		  setdoubleForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getarrayForKey Lib FoundationLibName Selector "arrayForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getboolForKey Lib FoundationLibName Selector "boolForKey:" (id as ptr, key as CFStringRef) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdataForKey Lib FoundationLibName Selector "dataForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdictionaryForKey Lib FoundationLibName Selector "dictionaryForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdictionaryRepresentation Lib FoundationLibName Selector "dictionaryRepresentation" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdoubleForKey Lib FoundationLibName Selector "doubleForKey:" (id as ptr, key as CFStringRef) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getfloatForKey Lib FoundationLibName Selector "floatForKey:" (id as ptr, key as CFStringRef) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getintegerForKey Lib FoundationLibName Selector "integerForKey:" (id as ptr, key as CFStringRef) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getobjectForKey Lib FoundationLibName Selector "objectForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getobjectIsForcedForKey Lib FoundationLibName Selector "objectIsForcedForKey:" (id as ptr, key as CFStringRef) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getobjectIsForcedForKeyInDomain Lib FoundationLibName Selector "objectIsForcedForKey:inDomain:" (id as ptr, key as CFStringRef, domainname as cfstringref) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpersistentDomainForName Lib FoundationLibName Selector "persistentDomainForName:" (id as ptr, name as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getStandardUserDefaults Lib FoundationLibName Selector "standardUserDefaults" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getstringArrayForKey Lib FoundationLibName Selector "stringArrayForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getstringForKey Lib FoundationLibName Selector "stringForKey:" (id as ptr, key as CFStringRef) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLForKey Lib FoundationLibName Selector "URLForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getvolatileDomainForName Lib FoundationLibName Selector "volatileDomainForName:" (id as ptr, domainname as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getvolatileDomainNames Lib FoundationLibName Selector "volatileDomainNames" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithSuiteName Lib FoundationLibName Selector "initWithSuiteName:" (id as ptr, SUitename as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function IntegerValue(Key as CFStringRef) As Integer
		  return getintegerForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IntegerValue(Key as CFStringRef, assigns value as integer)
		  setintegerForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function KeyIsManagedByAdmin(Key as CFStringRef) As Boolean
		  return getobjectIsForcedForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function KeyIsManagedByAdmin(Key as CFStringRef, DomainName as CFStringRef) As Boolean
		  return getobjectIsForcedForKeyinDomain (id, key, domainName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectValue(Key as CFStringRef) As AppleObject
		  return AppleObject.MakeFromPtr(getobjectForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjectValue(Key as CFStringRef, value as AppleGeneralObject)
		  setobjectForKey(id, if (value = nil, nil, value.GeneralID), key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PersistentDomain(DomainName as CFStringRef) As AppleDictionary
		  return AppleDictionary.MakeFromPtr(getpersistentDomainForName (id, DomainName))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PersistentDomain(DomainName as CFStringRef, assigns value as AppleDictionary)
		  setpersistentDomain (id, if (value = nil, nil, value.id), DomainName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterDefaults(Defaults As AppleDictionary)
		  registerDefaults (id, Defaults.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub registerDefaults Lib FoundationLibName Selector "registerDefaults:" (id as ptr, Dict as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemoveObject(Key as CFStringRef)
		  RemoveObjectForKey (id, key)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeObjectForKey Lib FoundationLibName Selector "removeObjectForKey:" (id as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemovePersistentDomain(DomainName as CFStringRef)
		  removepersistentDomainForName (id, DomainName)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removePersistentDomainForName Lib FoundationLibName Selector "removePersistentDomainForName:" (id as ptr, name as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemoveSuite(SuiteName as CFStringRef)
		  removeSuiteNamed id, SuiteName
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeSuiteNamed Lib FoundationLibName Selector "removeSuiteNamed:" (id as ptr, suitename as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemoveVolatileDomain(DomainName as CFStringRef)
		  removeVolatileDomainForName (id, DomainName)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeVolatileDomainForName Lib FoundationLibName Selector "removeVolatileDomainForName:" (id as ptr, Domainname as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Sub ResetStandardDefaults()
		  resetStandardUserDefaults (classptr)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub resetStandardUserDefaults Lib FoundationLibName Selector "resetStandardUserDefaults" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setboolForKey Lib FoundationLibName Selector "setBool:forKey:" (id as ptr, value as boolean, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setdoubleForKey Lib FoundationLibName Selector "setdouble:forKey:" (id as ptr, value as double, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setfloatForKey Lib FoundationLibName Selector "setFloat:forKey:" (id as ptr, value as single, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setintegerForKey Lib FoundationLibName Selector "setInteger:forKey:" (id as ptr, value as integer, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setobjectForKey Lib FoundationLibName Selector "setObject:forKey:" (id as ptr, value as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setPersistentDomain Lib FoundationLibName Selector "setPersistentDomain:forName:" (id as ptr, value as ptr, name as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setstringForKey Lib FoundationLibName Selector "setObject:forKey:" (id as ptr, value as cfstringref, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setURLForKey Lib FoundationLibName Selector "setURL:forKey:" (id as ptr, value as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub SetVolatileDomain(DomainName as CFStringRef, assigns value as AppleDictionary)
		  setVolatileDomain (id, if (value = nil, nil, value.id),DomainName)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setVolatileDomain Lib FoundationLibName Selector "setVolatileDomain:forName:" (id as ptr, domain as ptr, Domainname as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function SingleValue(Key as CFStringRef) As Single
		  return getfloatForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SingleValue(Key as CFStringRef, assigns value as single)
		  setfloatForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringArrayValue(Key as CFStringRef) As AppleArray
		  return AppleArray.MakeFromPtr(getstringArrayForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Synchronize() As Boolean
		  return synchronize (id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function synchronize Lib FoundationLibName Selector "synchronize" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function TextValue(Key as CFStringRef) As Text
		  return getstringForKey (id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextValue(Key as CFStringRef, assigns value as cfstringref)
		  setstringForKey (id, value, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLValue(Key as CFStringRef) As AppleURL
		  return AppleURL.MakeFromPtr(getURLForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub URLValue(Key as CFStringRef, assigns Value as AppleURL)
		  setURLForKey(id, if (value = nil, nil, value.id), key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VolatileDomain(DomainName as CFStringRef) As AppleDictionary
		  return AppleDictionary.MakeFromPtr (getvolatileDomainForName (id, DomainName))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DefaultsChanged()
	#tag EndHook


	#tag Note, Name = Status Completed
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSUserDefaults")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleDictionary.makefromptr (getdictionaryRepresentation(id))
			End Get
		#tag EndGetter
		DictionaryRepresentation As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as new AppleUserDefaults (getStandardUserDefaults(classptr))
			  result.RetainClassObject
			  return result
			End Get
		#tag EndGetter
		Shared StandardUserDefaults As AppleUserDefaults
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getvolatileDomainNames (id))
			End Get
		#tag EndGetter
		VolatileDomainNames As AppleArray
	#tag EndComputedProperty


	#tag Constant, Name = NSArgumentDomain, Type = Text, Dynamic = False, Default = \"NSArgumentDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSGlobalDomain, Type = Text, Dynamic = False, Default = \"NSGlobalDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSRegistrationDomain, Type = Text, Dynamic = False, Default = \"NSRegistrationDomain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSUserDefaultsDidChangeNotification, Type = Text, Dynamic = False, Default = \"NSUserDefaultsDidChangeNotification", Scope = Private
	#tag EndConstant


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
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
