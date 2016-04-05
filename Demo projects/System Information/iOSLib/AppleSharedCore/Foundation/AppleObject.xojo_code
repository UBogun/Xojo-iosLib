#tag Class
Protected Class AppleObject
Implements AppleGeneralObject
	#tag Method, Flags = &h0, Description = 52656769737465727320616E4F6273657276657220746F2072656365697665204B564F206E6F74696669636174696F6E7320666F722074686520737065636966696564206B65792D706174682072656C617469766520746F207468652063757272656E74206F626A6563742E
		Sub AddKVOObserver(Observer as AppleObject, keypath as cfstringref,  optionNew as Boolean = true, optionOld as boolean = false, optionInitial as Boolean = false, OptionPrior As Boolean = false, Context as ptr = nil)
		  dim option as uinteger = if (optionNew, 1, 0)
		  option = option + if (optionold, 2, 0)
		  option = option + if (optioninitial, 4, 0)
		  option = option + if (optionprior, 8, 0)
		  addobserverKVO id, observer.id, keypath, option, context
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Attributes( hidden ) Declare Sub addObserverKVO Lib foundationlibname Selector "addObserver:forKeyPath:options:context:" (id as ptr, observer as ptr, keypath as cfstringref, options as uinteger, Context as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Attributes( hidden ) Declare Function Alloc Lib foundationlibname Selector "alloc" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS)
		Attributes( "deprecated in iOS 9" )  Shared Function AppearanceWhenContainedIn(paramarray classes() as ptr) As AppleObject
		  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString( "appearanceWhenContainedIn:")) then
		    dim mb as MemoryBlock = classes.toNilTerminatedMemoryBlock
		    Declare function appearanceWhenContainedIn lib UIKitLibname selector "appearanceWhenContainedIn:" (id as ptr, classes as ptr) as ptr
		    return new AppleObject(appearanceWhenContainedIn (classptr, mb.Data))
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54656C6C73207468652073797374656D20746F2064656372656173652074686520415243206279206F6E65206F6E20746865206E657874207475726E207468726F756768207468652072656C6561736520706F6F6C2E
		Attributes( hidden )  Sub AutoRelease()
		  call AutoRelease(mid)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0, Description = 54656C6C73207468652073797374656D20746F2064656372656173652074686520415243206279206F6E65206F6E20746865206E657874207475726E207468726F756768207468652072656C6561736520706F6F6C2E
		Attributes( hidden ) Declare Function Autorelease Lib foundationlibname Selector "autorelease" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub CancelPreviousPerformRequests()
		  #if targetmacos
		    Declare Sub cancelPreviousPerformRequestsWithTarget lib FoundationLibName  selector "cancelPreviousPerformRequestsWithTarget:" (id as ptr, target as ptr)
		    
		    cancelPreviousPerformRequestsWithTarget classptr, id
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGAffineTransformValueForKey(Key as CFStringRef) As CGAffineTransform
		  #if Target64Bit
		    Declare Function ValueForKey lib FoundationLibName  selector "valueForKey:" (id as ptr, KeyPath as CFStringRef) as CGAffineTransform
		    return ValueForKey (id, Key)
		  #elseif Target32Bit
		    Declare Function ValueForKey lib FoundationLibName  selector "valueForKey:" (id as ptr, KeyPath as CFStringRef) as CGAffineTransform32Bit
		    return ValueForKey(id, Key).toCGAffineTransform
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClassMethodImplementation(aSelector as cfstringref) As Ptr
		  return ClassMethodImplementation (FoundationFramework.NSSelectorFromString(aSelector))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClassMethodImplementation(aSelector as Ptr) As Ptr
		  declare function methodForSelector lib FoundationLibName  selector "methodForSelector:" (id as Ptr, aselector as Ptr) as Ptr
		  return methodForSelector (classptr, aSelector)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466F7220636865636B696E6720696620612070726F746F636F6C20697320696D706C656D656E7465642E
		Attributes( hidden )  Shared Function ConformsToProtocol(aProtocol as AppleProtocol) As Boolean
		  return conformsToProtocol (aProtocol.Id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466F7220636865636B696E6720696620612070726F746F636F6C20697320696D706C656D656E7465642E
		Attributes( hidden )  Shared Function ConformsToProtocol(aProtocol as Ptr) As Boolean
		  Declare function conformsToProtocol lib FoundationLibName  selector "conformsToProtocol:" (id as ptr, aProtocol as Ptr) as Boolean
		  return conformsToProtocol (classptr, aProtocol)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520636F6E7374727563746F7220666F722061206E6577204170706C654F626A6563742E
		Sub Constructor()
		  mid = createinstance(classptr)
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520636F6E7374727563746F7220666F72206F626A656374732072657475726E65642066726F6D20415049206D6574686F64732E
		Sub Constructor(AnId as Ptr)
		  mid = anid
		  if LibDebug then
		    if not IsNIL then
		      system.DebugLog "Created "+me.DebugDescription
		    else
		      system.DebugLog "Error creating Object – method returned NIL"
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0, Description = 412073686F727463757420666F722028616C6C6F6328696E69742829292E
		Attributes( hidden ) Declare Function CreateInstance Lib foundationlibname Selector "new" (classptr as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub DeAlloc()
		  declare sub dealloc lib FoundationLibName  selector "dealloc" (id as ptr)
		  dealloc (mid)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub DeAlloc(id as ptr)
		  declare sub dealloc lib FoundationLibName  selector "dealloc" (id as ptr)
		  dealloc (id)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0, Description = 467265657320746865206D656D6F7279206F6363757069656420627920746865206F626A6563742E
		Attributes( hidden ) Declare Function DeAlloc Lib foundationlibname Selector "dealloc" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  if mHasOwnership then
		    if LibDebug then system.DebugLog "Releasing "+DebugDescription+" AR: "+RetainCount.totext
		    release
		  else
		    if LibDebug then system.debuglog "Losing Handle on "+DebugDescription+" AR: "+RetainCount.totext
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherObject as AppleObject) As boolean
		  return Equals (anotherObject.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherid as ptr) As boolean
		  declare function isEqual lib FoundationLibName  selector "isEqual:" (id as Ptr, anotherId as ptr) as Boolean
		  return isEqual (ID, anotherid)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function GeneralID() As Ptr
		  // Part of the AppleGeneralObject interface.
		  
		  return mid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (TargetIOS)
		Attributes( hidden ) Protected Shared Function GetAppearance(classptr as ptr) As Ptr
		  declare function appearance lib UIKitLibname selector "appearance" (id as ptr) as ptr
		  return appearance (classptr)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function getAttributes() As Ptr
		  #if targetmacos
		    declare function attributes_ lib FoundationLibName  selector "attributes" (id as ptr) as ptr
		    return attributes_ (id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Attributes( hidden ) Declare Function getCopy Lib foundationlibname Selector "copy" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function getCount() As UInteger
		  Declare Function count lib FoundationLibName  selector "count" (id as ptr) as UInteger
		  Return count (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden, questionable = "is retaining and autorelasing necessary?" ) Protected Function getDelegate() As Ptr
		  Declare Function getDelegate lib FoundationLibName  selector "delegate" (id as ptr) as Ptr
		  dim result as new AppleObject (  getDelegate (id))
		  if not result.IsNIL then
		    result.Retain
		    call AutoRelease result.id
		  end if
		  return result.id
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function getFlipped() As boolean
		  #if targetmacos
		    declare function isFlipped lib FoundationLibName  selector "isFlipped" (id as ptr) as Boolean
		    return isFlipped (id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0, Description = 466F7220636865636B696E672069662061206D6574686F6420697320696D706C656D656E7465642E
		Attributes( hidden ) Declare Function getinstancesRespondToSelector Lib foundationlibname Selector "instancesRespondToSelector:" (classptr as ptr, sel as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0, Description = 7472756520696620746865206F7468657220636C617373206973206F66207468652073616D65206F72206F662061207375706572636C6173732E
		Attributes( hidden ) Declare Function getisSubclassOfClass Lib foundationlibname Selector "isSubclassOfClass:" (classptr as ptr, aclass as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Attributes( hidden ) Declare Function getmutableCopy Lib foundationlibname Selector "mutableCopy" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function getName() As Text
		  Declare function name lib FoundationLibName  selector "name" (id as ptr) as CFStringRef
		  return name (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function getOpaque() As Boolean
		  #if targetmacos
		    declare function opaque lib FoundationLibName  selector "opaque" (id as ptr) as Boolean
		    return opaque (id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function getSize() As FoundationFramework.NSSize
		  #if Target64Bit
		    Declare function size lib FoundationLibName  selector "size" (id as ptr) as FoundationFramework.NSSize
		    return size (id)
		  #elseif Target32Bit
		    Declare function size lib FoundationLibName  selector "size" (id as ptr) as FoundationFramework.NSSize32Bit
		    return size(id).toNSSize
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function getSuperObject(id as ptr, instanceclass as ptr) As objc_super
		  dim result as ObjectiveCRuntime.objc_super
		  result.Instance = id
		  result.SuperClass = ObjectiveCRuntime.class_getSuperclass (instanceClass)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function getTitle() As Text
		  Declare Function title lib FoundationLibName  selector "title" (id as ptr) as CFStringRef
		  Return title (id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonKVOObservation(keyPath as CFStringRef, SourceObject As Ptr, Change as ptr, Context as ptr)
		  dim source as appleobject = AppleObject.MakeFromPtr(sourceobject)
		  dim changedict as iOSLibKeyValueChangeDictionary = iOSLibKeyValueChangeDictionary.MakeFromPtr(change)
		  RaiseEvent KVOChange (keypath, source, changedict, context)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0, Description = 696E697469616C697A657320616E206F626A6563742063726561746564207769746820616C6C6F6328636C617373707472292E
		Attributes( hidden ) Declare Function Init Lib foundationlibname Selector "init" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function InstanceMethodImplementation(aSelector as cfstringref) As Ptr
		  return InstanceMethodImplementation (FoundationFramework.NSSelectorFromString(aSelector))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InstanceMethodImplementation(aSelector as Ptr) As Ptr
		  declare function methodForSelector lib FoundationLibName  selector "methodForSelector:" (id as Ptr, aselector as Ptr) as Ptr
		  return methodForSelector (id, aSelector)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function IsKindOfClass(aClass as Ptr) As Boolean
		  declare function isKindOfClass lib FoundationLibName  selector "isKindOfClass:" (id as Ptr, aClass as Ptr) as Boolean
		  return isKindOfClass (id, aClass)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function IsMemberOfClass(aClass as Ptr) As Boolean
		  declare function isMemberOfClass lib FoundationLibName  selector "isMemberOfClass:" (id as Ptr, aClass as Ptr) as Boolean
		  return isMemberOfClass (id, aClass)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 72657475726E73207472756520696620746865206F74686572206F626A6563742069732061207375706572636C61737327206F7220636C61737327206F626A656374206F66207468652063757272656E7420747970652E
		Attributes( hidden )  Shared Function IsSubclassOfClass(anobject as AppleObject) As Boolean
		  return getisSubclassOfClass (classptr, anobject.classptr)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleObject
		  return if (aptr <> NIL, new AppleObject (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MethodSignature(aSelector as cfstringref) As AppleMethodSignature
		  return MethodSignature (FoundationFramework.NSSelectorFromString(aSelector))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MethodSignature(aSelector as Ptr) As AppleMethodSignature
		  declare function methodSignatureForSelector lib FoundationLibName  selector "methodSignatureForSelector:" (id as Ptr, aselector as Ptr) as Ptr
		  return  AppleMethodSignature.MakefromPtr ( methodSignatureForSelector (id, aSelector))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320746865206D6574686F64207369676E617475726520666F7220612073656C6563746F72
		Attributes( hidden ) Protected Shared Function MethodSignatureForSelector(aSelector as cfstringref) As AppleMethodSignature
		  return MethodSignatureForSelector (FoundationFramework.NSSelectorFromString(aSelector))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320746865206D6574686F64207369676E617475726520666F7220612073656C6563746F72
		Protected Shared Function MethodSignatureForSelector(aSelector as Ptr) As AppleMethodSignature
		  declare function instanceMethodSignatureForSelector lib FoundationLibName  selector "instanceMethodSignatureForSelector:" (id as Ptr, aselector as Ptr) as Ptr
		  return  AppleMethodSignature.MakeFromPtr( instanceMethodSignatureForSelector (classptr, aSelector))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function MutableArrayForKey(Key as cfstringref) As AppleMutableArray
		  Declare Function mutableArrayValueForKey lib FoundationLibName  selector "mutableArrayValueForKey:" (id as ptr, key as CFStringRef) as ptr
		  return new AppleMutableArray (mutableArrayValueForKey (id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function MutableArrayForKeyPath(KeyPath as cfstringref) As AppleMutableArray
		  Declare Function mutableArrayValueForKeyPath lib FoundationLibName  selector "mutableArrayValueForKeyPath:" (id as ptr, key as CFStringRef) as ptr
		  return new AppleMutableArray (mutableArrayValueForKeyPath (id, KeyPath))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PerformSelector(aSelector as cfstringref, anObject as AppleObject = NIL, anotherObject as AppleObject = NIL) As Ptr
		  return PerformSelector (FoundationFramework.NSSelectorFromString(aSelector), anobject, anotherObject)
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformSelector(aSelector as cfstringref, delay as double, anObject as AppleObject = Nil)
		  PerformSelector FoundationFramework.NSSelectorFromString (aSelector), delay, anObject
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PerformSelector(aSelector as Ptr, anObject as AppleObject = NIL, anotherObject as AppleObject = NIL) As Ptr
		  Declare function performSelector lib FoundationLibName  selector "performSelector:"(id as ptr, aselector as Ptr) as Ptr
		  Declare function performSelectorwithObject lib FoundationLibName  selector "performSelector:withObject:"(id as ptr, aselector as Ptr, withObject as Ptr) as Ptr
		  Declare function performSelectorwithObjectwithObject lib FoundationLibName  selector "performSelector:withObject:withObject:"(id as ptr, aselector as Ptr, withObject as Ptr, anotherobject as Ptr) as Ptr
		  
		  if anotherObject <> NIL then
		    return performSelectorwithObjectwithObject (id, aSelector, anObject.id, anotherObject.id)
		  elseif anObject <> NIL then
		    return performSelectorwithObject (id, aSelector, anObject.id)
		  else
		    return performSelector (id, aSelector)
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformSelector(aSelector as Ptr, delay as double, anObject as AppleObject = Nil)
		  Declare Sub performSelectorwithObjectafterDelay lib FoundationLibName  selector "performSelector:withObject:afterDelay:" (id as ptr, aselector as Ptr, withObject as Ptr, delay as Double)
		  
		  performSelectorwithObjectafterDelay id, aSelector, if (anObject = nil, nil, anObject.id), delay
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformSelectorInBackground(aSelector as cfstringref, anObject as AppleObject = NIL)
		  
		  performSelectorInBackground FoundationFramework.NSSelectorFromString (aSelector), anObject
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformSelectorInBackground(aSelector as Ptr, anObject as AppleObject = NIL)
		  Declare sub performSelectorInBackground lib FoundationLibName  selector "performSelectorInBackground:withObject:" (id as ptr, aselector as Ptr, withObject as Ptr)
		  
		  performSelectorInBackground id, aSelector, if (anObject = nil, nil, anObject.id)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformSelectorOnMainThread(aSelector as cfstringRef, anObject as AppleObject, waitUntilDone as Boolean = False)
		  performSelectorOnMainThread FoundationFramework.NSSelectorFromString (Aselector), anObject, waitUntilDone
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformSelectorOnMainThread(aSelector as Ptr, anObject as AppleObject, waitUntilDone as Boolean = False)
		  performSelectorOnMainThread  aSelector, if (anObject = nil, nil, anObject.id), waituntildone
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformSelectorOnMainThread(aSelector as Ptr, anObject as Ptr, waitUntilDone as Boolean = False)
		  Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean)
		  
		  performSelectorOnMainThread id, aSelector, anObject, waituntildone
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub Release()
		  declare Sub release lib FoundationLibName  selector "release" (id as ptr)
		  release (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F7073206120676976656E206F626A6563742066726F6D20726563656976696E67206368616E6765206E6F74696669636174696F6E7320666F72207468652070726F706572747920737065636966696564206279206120676976656E206B65792D706174682072656C617469766520746F207468652063757272656E74206F626A6563742E
		Sub RemoveKVOObserver(Observer as AppleObject, keypath as cfstringref)
		  removeobserverKVO id, observer.id, keypath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F7073206120676976656E206F626A6563742066726F6D20726563656976696E67206368616E6765206E6F74696669636174696F6E7320666F72207468652070726F706572747920737065636966696564206279206120676976656E206B65792D706174682072656C617469766520746F207468652063757272656E74206F626A6563742E
		Sub RemoveKVOObserver(Observer as AppleObject, keypath as cfstringref, context as ptr)
		  removeobserverKVO id, observer.id, keypath, context
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Attributes( hidden ) Declare Sub removeObserverKVO Lib foundationlibname Selector "removeObserver:forKeyPath:" (id as ptr, observer as ptr, keypath as cfstringref)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Attributes( hidden ) Declare Sub removeObserverKVO Lib foundationlibname Selector "removeObserver:forKeyPath:context:" (id as ptr, observer as ptr, keypath as cfstringref, context as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 466F7220636865636B696E672069662061206D6574686F6420697320696D706C656D656E7465642E
		 Shared Function RespondsToSelector(aClassptr as ptr, aSelector as cfstringref) As Boolean
		  return RespondsToSelector (aClassptr, FoundationFrameWork.NSSelectorFromString(aSelector))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466F7220636865636B696E672069662061206D6574686F6420697320696D706C656D656E7465642E
		 Shared Function RespondsToSelector(aClassptr as ptr, aSelector as ptr) As Boolean
		  return ObjectiveCRuntime.class_respondsToSelector (aClassPtr, aSelector)
		  // Probably faster this way
		  // Declare function respondsToSelector lib FoundationLibName  selector "respondsToSelector:" (id as ptr, aselector as Ptr) as Boolean
		  // return respondsToSelector (id, aSelector)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub Retain()
		  declare function retain lib FoundationLibName  selector "retain" (id as ptr) as ptr
		  call retain (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 412053686F727463757220666F722072657461696E696E6720616E642074616B696E67206F776E657273686970206F66206F626A6563747320637265617465642066726F6D206120636C61737320696E697469616C697A65722E
		Attributes( hidden ) Protected Sub RetainClassObject()
		  Retain
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub SetCGAffineTransformForKey(Key as CFStringRef, value as CGAffineTransform)
		  #if Target64Bit
		    Declare Sub setValueForKey lib FoundationLibName  selector "setValue:forKey:" (id as ptr, KeyPath as CFStringRef, value as CGAffineTransform)
		    setValueForKey (id, Key, value)
		  #elseif Target32Bit
		    Declare Sub setValueForKey lib FoundationLibName  selector "setValue:forKey:" (id as ptr, KeyPath as CFStringRef, value as CGAffineTransform32Bit)
		    setValueForKey(id, Key, value.toCGAffineTransform32Bit)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub setDelegate(value as Ptr)
		  Declare Sub setDelegate lib FoundationLibName  selector "setDelegate:" (id as ptr, value as Ptr)
		  setDelegate (id, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub setName(Name as cfstringref)
		  Declare Sub setName lib FoundationLibName  selector "setName:" (id as ptr, value as CFStringRef)
		  setName (id, Name)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub SetNilValueForKey(key as cfstringref)
		  declare sub setNilValueForKey lib FoundationLibName  selector "setNilValueForKey:" (id as Ptr, key as CFStringRef)
		  setNilValueForKey (id, key)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub setOpaque(value as boolean)
		  declare sub setOpaque lib FoundationLibName  selector "setOpaque:" (id as ptr, value as Boolean)
		  setOpaque id, value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub setSize(value as FoundationFramework.NSSize)
		  #if Target64Bit
		    Declare sub setSize lib FoundationLibName  selector "setSize:" (id as ptr, value as FoundationFramework.NSSize)
		    setSize id, value
		  #elseif Target32Bit
		    Declare sub setSize lib FoundationLibName  selector "setSize:" (id as ptr, value as FoundationFramework.NSSize32Bit)
		    setSize id, value.toNSSize32
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub setTitle(Title as cfstringref)
		  Declare Sub setTitle lib FoundationLibName  selector "setTitle:" (id as ptr, value as CFStringRef)
		  settitle (id, title)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub SetValueForKey(Key as CFStringRef, value as AppleGeneralObject)
		  Declare sub setValueForKey lib FoundationLibName  selector "setValue:forKey:" (id as ptr, value as ptr, Key as CFStringRef)
		  setValueForKey (id, value.GeneralID, Key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub SetValueForKeyPath(KeyPath as CFStringRef, value as AppleGeneralObject)
		  Declare sub setValueForKeyPath lib FoundationLibName  selector "setValue:forKeyPath:" (id as ptr, value as ptr, KeyPath as CFStringRef)
		  setValueForKeyPath (id, value.GeneralID, KeyPath)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SuperClassMethodImplementation(aSelector as CFStringRef) As Ptr
		  return SuperClassMethodImplementation (FoundationFramework.NSSelectorFromString (aSelector))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SuperClassMethodImplementation(aSelector as Ptr) As Ptr
		  #if Target32Bit
		    return ObjectiveCRuntime.class_getMethodImplementation_stret (me.SuperClass, aSelector)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValueForKey(Key as CFStringRef) As ptr
		  Declare Function ValueForKey lib FoundationLibName  selector "valueForKey:" (id as ptr, KeyPath as CFStringRef) as ptr
		  return ValueForKey (id, Key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValueForKeyPath(KeyPath as CFStringRef) As Ptr
		  Declare Function ValueForKeyPath lib FoundationLibName  selector "valueForKeyPath:" (id as ptr, KeyPath as CFStringRef) as ptr
		  return ValueForKeyPath (id, KeyPath)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValueKeyDictionary(Keys as AppleArray) As AppleDictionary
		  Declare Function dictionaryWithValuesForKeys lib FoundationLibName  selector "dictionaryWithValuesForKeys:" (id as ptr, keys as ptr) as ptr
		  return  AppleDictionary.MakeFromPtr (dictionaryWithValuesForKeys (id, keys.id))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event KVOChange(keyPath as text, SourceObject As appleobject, Change as iOSLibKeyValueChangeDictionary, Context as ptr)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 412073686F727463757420666F7220636865636B696E672069662074686520636C61737320697320617661696C61626C65206F6E207468652063757272656E742064657669636520616E6420694F532076657273696F6E2E
		#tag Getter
			Get
			  return (ClassPtr <> nil)
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getName (classptr_)
			  
			End Get
		#tag EndGetter
		ClassName As CString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSObject")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return ObjectiveCRuntime.object_getClass (id)
			  
			End Get
		#tag EndGetter
		Attributes( hidden ) Protected ClassPtr_ As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function debugDescription lib FoundationLibName  selector "debugDescription" (id as Ptr) as cfstringref
			  return debugDescription (id)
			  
			End Get
		#tag EndGetter
		DebugDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    declare function getdescription lib FoundationLibName  selector "description" (id as Ptr) as cfstringref
			    return getdescription (ClassPtr)
			  #endif
			End Get
		#tag EndGetter
		Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    declare function hash lib FoundationLibName  selector "hash" (id as Ptr) as UInteger
			    return hash (id)
			  #endif
			  
			End Get
		#tag EndGetter
		Hash As UInteger
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

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #if targetmacos
			    declare function isProxy lib FoundationLibName  selector "isProxy" (id as Ptr) as Boolean
			    return isProxy (id)
			  #endif
			  
			End Get
		#tag EndGetter
		Private isProxy As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.objc_getMetaClass (ClassName)
			  
			End Get
		#tag EndGetter
		MetaClass As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    return ObjectiveCRuntime.class_getName (MetaClass)
			  #endif
			End Get
		#tag EndGetter
		MetaClassName As CString
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Attributes( hidden ) mHasOwnership As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mId As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function retainCount  lib FoundationLibName  selector "retainCount" (id as ptr) as uinteger
			  return retainCount (id)
			  
			End Get
		#tag EndGetter
		RetainCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getSuperclass (classptr_)
			  
			End Get
		#tag EndGetter
		Attributes( hidden ) SuperClass As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getName (SuperClass)
			  
			End Get
		#tag EndGetter
		SuperClassName As CString
	#tag EndComputedProperty


	#tag Enum, Name = NSImageAlignment, Type = UInteger, Flags = &h0
		Center
		  Top
		  TopLeft
		  TopRight
		  Left
		  Bottom
		  BottomLeft
		  BottomRight
		Right
	#tag EndEnum

	#tag Enum, Name = NSImageFrameStyle, Type = UInteger, Flags = &h0
		None
		  Photo
		  GrayBezel
		  Groove
		Button
	#tag EndEnum

	#tag Enum, Name = NSImageScaling, Type = UInteger, Flags = &h0
		ProportionallyDown
		  AxesIndependently
		  None
		ProportionallyUpOrDown
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
