#tag Class
Protected Class AppleBundle
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E5342756E646C65206F626A6563742077697468207768696368207468652073706563696669656420636C617373206973206173736F6369617465642E
		 Shared Function BundleForClass(aClass As Ptr) As AppleBundle
		  dim result as new applebundle (BundleForClass(classptr, aClass))
		  if not result.isnil then
		    result.RetainClassObject
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function bundleForClass Lib FoundationLibName Selector "bundleForClass:" (id as ptr, aClass as Ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652070726576696F75736C792063726561746564204E5342756E646C6520696E7374616E636520746861742068617320746865207370656369666965642062756E646C65206964656E7469666965722E
		 Shared Function BundleWithIdentifier(Identifier as CFStringRef) As AppleBundle
		  dim result as new applebundle (bundleWithIdentifier(classptr, identifier))
		  if not result.isnil then
		    result.RetainClassObject
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function bundleWithIdentifier Lib FoundationLibName Selector "bundleWithIdentifier:" (id as ptr, Identifier as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520436C61737350747220666F722074686520737065636966696564206E616D652E
		Function ClassNamed(ClassName as CFStringRef) As Ptr
		  return ClassNamed(id, ClassName)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function classNamed Lib FoundationLibName Selector "classNamed:" (id as ptr, classname as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520436C6173736E616D6520666F722074686520737065636966696564206E616D652E
		Function ClassNameNamed(ClassName as CFStringRef) As cstring
		  return ObjectiveCRuntime.class_getName (ClassNamed( ClassName))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066756C6C20706174686E616D6520666F7220746865207265736F757263652066696C65206964656E7469666965642062792074686520737065636966696564206E616D6520616E6420657874656E73696F6E20616E64207265736964696E6720696E206120676976656E2062756E646C65206469726563746F72792E
		 Shared Function ClassPath(name as cfstringref, type As CFStringRef, Directory As CFStringRef) As Text
		  return getpathForResourceInDir(classptr, name, type, Directory)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E5342756E646C65206F626A65637420696E697469616C697A656420746F20636F72726573706F6E6420746F20746865207370656369666965642066696C652055524C2E
		Sub Constructor(URL as AppleURL)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithURL(alloc(classptr), URL.id))
		  if not isnil then MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E5342756E646C65206F626A65637420696E697469616C697A656420746F20636F72726573706F6E6420746F2074686520737065636966696564206469726563746F72792E
		Sub Constructor(Path as CFStringRef)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithPath(alloc(classptr), path))
		  if not isnil then MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getallBundles Lib FoundationLibName Selector "allBundles" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getallFrameworks Lib FoundationLibName Selector "allFrameworks" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getappStoreReceiptURL Lib FoundationLibName Selector "appStoreReceiptURL" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbuiltInPlugInsPath Lib FoundationLibName Selector "builtInPlugInsPath" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbuiltInPlugInsURL Lib FoundationLibName Selector "builtInPlugInsURL" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getbundleIdentifier Lib FoundationLibName Selector "bundleIdentifier" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbundlePath Lib FoundationLibName Selector "bundlePath" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbundleURL Lib FoundationLibName Selector "bundleURL" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdevelopmentLocalization Lib FoundationLibName Selector "developmentLocalization" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getexecutableArchitectures Lib FoundationLibName Selector "executableArchitectures" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getexecutablePath Lib FoundationLibName Selector "executablePath" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getexecutableURL Lib FoundationLibName Selector "executableURL" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getinfoDictionary Lib FoundationLibName Selector "infoDictionary" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getload Lib FoundationLibName Selector "load" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getloadAndReturnError Lib FoundationLibName Selector "loadAndReturnError:" (id as ptr, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlocalizations Lib FoundationLibName Selector "localizations" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlocalizedInfoDictionary Lib FoundationLibName Selector "localizedInfoDictionary" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlocalizedStringForKey Lib FoundationLibName Selector "localizedStringForKey:value:table:" (id as ptr, key as cfstringRef, value as CFStringRef, TableName as CFStringRef) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getmainBundle Lib FoundationLibName Selector "mainBundle" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getobjectForInfoDictionaryKey Lib FoundationLibName Selector "objectForInfoDictionaryKey:" (id as ptr, key as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpathForAuxiliaryExecutable Lib FoundationLibName Selector "pathForAuxiliaryExecutable:" (id as ptr, name as cfstringref) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpathForResource Lib FoundationLibName Selector "pathForResource:ofType:" (id as ptr, name as cfstringref, type as cfstringRef) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpathForResourceInDir Lib FoundationLibName Selector "pathForResource:ofType:inDirectory:" (id as ptr, name as cfstringref, type as cfstringRef, Directory as CFStringRef) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpathForResourceofType Lib FoundationLibName Selector "pathForResource:ofType:inDirectory:" (id as ptr, name as cfstringref, type as cfstringRef, directory as cfstringRef) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpathForResourceofTypeLocalized Lib FoundationLibName Selector "pathForResource:ofType:inDirectory:forLocalization:" (id as ptr, name as cfstringref, type as cfstringRef, directory as cfstringRef, localization as CFStringRef) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpathsForResourcesofType Lib FoundationLibName Selector "pathsForResourcesOfType:inDirectory:" (id as ptr, extension as cfstringref, directory as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpathsForResourcesofTypeLocalized Lib FoundationLibName Selector "pathsForResourcesOfType:inDirectory:forLocalization:" (id as ptr, extension as cfstringref, directory as cfstringRef, localization as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpreferredLocalizations Lib FoundationLibName Selector "preferredLocalizations" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpreferredLocalizationsFromArray Lib FoundationLibName Selector "preferredLocalizationsFromArray:" (id as ptr, Localizationsarray as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpreferredLocalizationsFromArrayPrefs Lib FoundationLibName Selector "preferredLocalizationsFromArray:forPreferences:" (id as ptr, Localizationsarray as ptr, preferences as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpreservationPriorityForTag Lib FoundationLibName Selector "preservationPriorityForTag:" (id as ptr, tag as cfstringRef) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getprincipalClass Lib FoundationLibName Selector "principalClass" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getprivateFrameworksPath Lib FoundationLibName Selector "privateFrameworksPath" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getprivateFrameworksURL Lib FoundationLibName Selector "privateFrameworksURL" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getresourcePath Lib FoundationLibName Selector "resourcePath" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getresourceURL Lib FoundationLibName Selector "resourceURL" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsharedFrameworksPath Lib FoundationLibName Selector "sharedFrameworksPath" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsharedFrameworksURL Lib FoundationLibName Selector "sharedFrameworksURL" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsharedSupportPath Lib FoundationLibName Selector "sharedSupportPath" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsharedSupportURL Lib FoundationLibName Selector "sharedSupportURL" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getunload Lib FoundationLibName Selector "unload" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLForAuxiliaryExecutable Lib FoundationLibName Selector "URLForAuxiliaryExecutable:" (id as ptr, name as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLForResourceExtension Lib FoundationLibName Selector "URLForResource:withExtension:" (id as ptr, name as cfstringref, Extension as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLForResourceExtensioninBundle Lib FoundationLibName Selector "URLForResource:withExtension:subdirectory:inBundleWithURL:" (id as ptr, name as CFStringRef, Extension as cfstringRef, subpath as cfstringRef, URL as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLForResourceSubdir Lib FoundationLibName Selector "URLForResource:withExtension:subdirectory:" (id as ptr, url as cfstringref, Extension as cfstringRef, SubDirectory as CFStringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLsForResourcesExtension Lib FoundationLibName Selector "URLsForResourcesWithExtension:subdirectory:" (id as ptr, Extension as cfstringRef, subpath as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLsForResourcesExtensioninBundle Lib FoundationLibName Selector "URLsForResourcesWithExtension:subdirectory:inBundleWithURL:" (id as ptr, Extension as cfstringRef, subpath as cfstringRef, URL as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getURLsForResourcesExtensionLocalized Lib FoundationLibName Selector "URLsForResourcesWithExtension:subdirectory:localization:" (id as ptr, Extension as cfstringRef, subpath as cfstringRef, localization as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652076616C7565206173736F63696174656420776974682074686520737065636966696564206B657920696E207468652062756E646C65E280997320696E666F726D6174696F6E2070726F7065727479206C6973742E
		Function InfoDictionaryObject(key as cfstringRef) As AppleObject
		  return AppleObject.makefromptr (getobjectForInfoDictionaryKey(id, key))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithPath Lib FoundationLibName Selector "initWithPath:" (id as ptr, path as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithURL Lib FoundationLibName Selector "initWithURL:" (id as ptr, url as Ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20617272617920636F6E7461696E696E672074686520706174686E616D657320666F7220616C6C2062756E646C65207265736F757263657320686176696E6720746865207370656369666965642066696C656E616D6520657874656E73696F6E20616E64207265736964696E6720696E20746865207265736F75726365207375626469726563746F72792E
		Function InstancePaths(extension as CFStringRef, Directory as CFStringRef) As AppleArray
		  return applearray.makefromptr (getpathsForResourcesofType(id, extension, Directory))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function isLoaded Lib FoundationLibName Selector "isLoaded" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 44796E616D6963616C6C79206C6F616473207468652062756E646C65E28099732065786563757461626C6520636F646520696E746F20612072756E6E696E672070726F6772616D2C2069662074686520636F646520686173206E6F7420616C7265616479206265656E206C6F616465642E0A52657475726E7320547275652069662074686520636F646520776173206C6F61646564207375636365737366756C6C79206E6F77206F72206561726C6965722E
		Function Load() As Boolean
		  return getload(id)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44796E616D6963616C6C79206C6F616473207468652062756E646C65E28099732065786563757461626C6520636F646520696E746F20612072756E6E696E672070726F6772616D2C2069662074686520636F646520686173206E6F7420616C7265616479206265656E206C6F616465642E0A52657475726E7320547275652069662074686520636F646520776173206C6F61646564207375636365737366756C6C79206E6F77206F72206561726C6965722E204368616E676573204572726F72206163636F7264696E676C792E
		Function Load(byref error as AppleError) As Boolean
		  dim errptr as ptr
		  dim result as boolean = getloadAndReturnError(id, errptr)
		  error = appleerror.MakefromPtr(errptr)
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066756C6C20706174686E616D6520666F7220746865207265736F75726365206964656E7469666965642062792074686520737065636966696564206E616D6520616E642066696C6520657874656E73696F6E2C206C6F636174656420696E20746865207370656369666965642062756E646C65207375626469726563746F72792C20616E64206C696D6974656420746F20676C6F62616C207265736F757263657320616E642074686F7365206173736F63696174656420776974682074686520737065636966696564206C6F63616C697A6174696F6E2E
		Function LocalizedPath(name as cfstringref, type As CFStringRef, Directory as CFStringRef, Localization As CFStringRef) As Text
		  return getpathForResourceofTypeLocalized(id, name, type, directory, Localization)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20617272617920636F6E7461696E696E67207468652066696C6520666F7220616C6C2062756E646C65207265736F757263657320686176696E6720746865207370656369666965642066696C656E616D6520657874656E73696F6E2C207265736964696E6720696E2074686520737065636966696564207265736F75726365207375626469726563746F72792C20616E64206C696D6974656420746F20676C6F62616C207265736F757263657320616E642074686F7365206173736F63696174656420776974682074686520737065636966696564206C6F63616C697A6174696F6E2E
		Function LocalizedPaths(extension as cfstringref, Directory as CFStringRef, Localization As CFStringRef) As AppleArray
		  return applearray.MakeFromPtr(getpathsForResourcesofTypeLocalized(id, extension,  directory, Localization))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206C6F63616C697A65642076657273696F6E206F662074686520737472696E672064657369676E617465642062792074686520737065636966696564206B657920616E64207265736964696E6720696E2074686520737065636966696564207461626C652E
		Function LocalizedString(Key As CFStringRef, Value as CFStringRef, Table aS CFStringRef) As Text
		  return getlocalizedStringForKey(id, key, value, table)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20617272617920636F6E7461696E696E67207468652066696C652055524C7320666F7220616C6C2062756E646C65207265736F757263657320686176696E6720746865207370656369666965642066696C656E616D6520657874656E73696F6E2C207265736964696E6720696E2074686520737065636966696564207265736F75726365207375626469726563746F72792C20616E64206C696D6974656420746F20676C6F62616C207265736F757263657320616E642074686F7365206173736F63696174656420776974682074686520737065636966696564206C6F63616C697A6174696F6E2E
		Function LocalizedURLs(Extension As CFStringRef, SubDirectory As CFStringRef, localization as CFStringRef) As Applearray
		  return applearray.MakefromPtr (getURLsForResourcesExtensionLocalized(id, extension, SubDirectory, localization))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleBundle
		  return if (aptr = nil, nil, new applebundle(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066756C6C20706174686E616D6520666F7220746865207265736F75726365206964656E7469666965642062792074686520737065636966696564206E616D6520616E642066696C6520657874656E73696F6E
		Function Path(name as cfstringref, type As CFStringRef) As Text
		  return getpathForResource(id, name, type)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066756C6C20706174686E616D6520666F7220746865207265736F75726365206964656E7469666965642062792074686520737065636966696564206E616D6520616E642066696C6520657874656E73696F6E20616E64206C6F636174656420696E20746865207370656369666965642062756E646C65207375626469726563746F72792E
		Function Path(name as cfstringref, type As CFStringRef, Directory as CFStringRef) As Text
		  return getpathForResourceofType(id, name, type, directory)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066756C6C20706174686E616D65206F66207468652065786563757461626C6520776974682074686520737065636966696564206E616D6520696E207468652062756E646C652E
		Function PathForAuxiliaryExecutable(name as cfstringref) As Text
		  return getpathForAuxiliaryExecutable(id, name)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20617272617920636F6E7461696E696E672074686520706174686E616D657320666F7220616C6C2062756E646C65207265736F757263657320686176696E67207468652073706563696669656420657874656E73696F6E20616E64207265736964696E6720696E207468652062756E646C65206469726563746F7279206174207468652073706563696669656420706174682E
		 Shared Function Paths(extension as CFStringRef, Directory as CFStringRef) As AppleArray
		  return applearray.makefromptr (getpathsForResourcesofType(classptr, extension, Directory))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206F6E65206F72206D6F7265206C6F63616C697A6174696F6E732066726F6D2074686520737065636966696564206C697374207468617420612062756E646C65206F626A65637420776F756C642075736520746F206C6F63617465207265736F757263657320666F72207468652063757272656E7420757365722E
		 Shared Function PreferredLocalizations(LocalizationsArray As AppleArray) As AppleArray
		  return AppleArray.MakeFromPtr(getpreferredLocalizationsFromArray(classptr, LocalizationsArray.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206C6F63616C697A6174696F6E73207468617420612062756E646C65206F626A65637420776F756C64207072656665722C20676976656E20746865207370656369666965642062756E646C6520616E642075736572E2809973206C616E677561676520707265666572656E6365732E
		 Shared Function PreferredLocalizations(LocalizationsArray As AppleArray, PreferencesArray As AppleArray) As AppleArray
		  return AppleArray.MakeFromPtr(getpreferredLocalizationsFromArrayPrefs(classptr, LocalizationsArray.id, PreferencesArray.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E672077686574686572207468652062756E646C65E28099732065786563757461626C6520636F646520636F756C64206265206C6F61646564207375636365737366756C6C792E204368616E676573204572726F72206163636F7264696E676C792E
		Function Preflight(byref Error as AppleError) As Boolean
		  dim Errptr as ptr
		  dim result as Boolean = preflightAndReturnError (id, errptr)
		  if error <> nil then error = AppleError.MakefromPtr(errptr)
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function preflightAndReturnError Lib FoundationLibName Selector "preflightAndReturnError:" (id as ptr, byref error as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E7420707265736572766174696F6E207072696F7269747920666F722074686520737065636966696564207461672E20417661696C61626C652073696E636520694F5320392E302E
		Function PreservationPriority(Tag As CFStringRef) As double
		  if me.RespondsToSelector(classptr, "preservationPriorityForTag:") then
		    return getpreservationPriorityForTag (id,  Tag)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 412068696E7420746F207468652073797374656D206F66207468652072656C6174697665206F7264657220666F722070757267696E67207461676765642073657473206F66207265736F757263657320696E207468652062756E646C652E20417661696C61626C652073696E636520694F5320392E302E
		Sub SetPreservationPriority(Priority as Double, Tags As AppleSet)
		  if me.RespondsToSelector(classptr, "setPreservationPriority:forTags:") then
		    setPreservationPriority (id, Priority, Tags.id)
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setPreservationPriority Lib FoundationLibName Selector "setPreservationPriority:forTags:" (id as ptr, priority as Double, Tags as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E6C6F6164732074686520636F6465206173736F6369617465642077697468207468652072656365697665722E2052657475726E732074686520756E6C6F616420737563636573732E
		Function UnLoad() As Boolean
		  return getunload(id)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066696C652055524C20666F7220746865207265736F75726365206964656E7469666965642062792074686520737065636966696564206E616D6520616E642066696C6520657874656E73696F6E2E
		Function URL(name as cfstringref, Extension As CFStringRef) As AppleURL
		  return AppleURL.MakefromPtr (getURLForResourceExtension(id, name, extension))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066696C652055524C20666F7220746865207265736F757263652066696C65206964656E7469666965642062792074686520737065636966696564206E616D6520616E6420657874656E73696F6E20616E64207265736964696E6720696E206120676976656E2062756E646C65206469726563746F72792E
		Function URL(Name as cfstringref, Extension As CFStringRef, SubDirectory As CFStringRef) As AppleURL
		  return AppleURL.MakefromPtr (getURLForResourceSubdir(id, name, extension, SubDirectory))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066696C652055524C206F66207468652065786563757461626C6520776974682074686520737065636966696564206E616D6520696E207468652062756E646C652E
		Function URLForAuxiliaryExecutable(name as CFStringRef) As AppleURL
		  return AppleURL.MakefromPtr (getURLForAuxiliaryExecutable(id, name))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320612066696C652055524C20666F7220746865207265736F7572636520776974682074686520737065636966696564206E616D6520616E6420657874656E73696F6E20696E20746865207370656369666965642062756E646C652E
		 Shared Function URLinBundle(name as cfstringref, extension As CFStringRef, Directory As CFStringRef, URL As AppleURL) As appleURL
		  return appleurl.MakefromPtr(getURLForResourceExtensioninBundle(classptr, name, extension, Directory, URL.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F662066696C652055524C7320666F7220616C6C207265736F7572636573206964656E74696669656420627920746865207370656369666965642066696C6520657874656E73696F6E20616E64206C6F636174656420696E20746865207370656369666965642062756E646C65207375626469726563746F72792E
		Function URLs(Extension As CFStringRef, SubDirectory As CFStringRef) As Applearray
		  return applearray.MakefromPtr (getURLsForResourcesExtension(id, extension, SubDirectory))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20617272617920636F6E7461696E696E67207468652066696C652055524C7320666F7220616C6C2062756E646C65207265736F757263657320686176696E6720746865207370656369666965642066696C656E616D6520657874656E73696F6E2C207265736964696E6720696E2074686520737065636966696564207265736F75726365207375626469726563746F72792C2077697468696E20746865207370656369666965642062756E646C652E
		 Shared Function URLsInBundle(extension As CFStringRef, Directory As CFStringRef, URL As AppleURL) As applearray
		  return applearray.MakefromPtr(getURLsForResourcesExtensioninBundle(classptr,  extension, Directory, URL.id))
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Status completed & documented
		
		iOs 9.2.
		NotificationReceiver not included.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620616C6C20746865206170706C69636174696F6EE2809973206E6F6E2D6672616D65776F726B2062756E646C65732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getAllBundles(classptr))
			End Get
		#tag EndGetter
		Shared AllBundles As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620616C6C206F6620746865206170706C69636174696F6EE28099732062756E646C6573207468617420726570726573656E74206672616D65776F726B732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getallFrameworks(classptr))
			End Get
		#tag EndGetter
		Shared AllFrameworks As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C652055524C20666F72207468652062756E646C65E2809973204170702053746F726520726563656970742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr (getappStoreReceiptURL (id))
			End Get
		#tag EndGetter
		AppStoreReceiptURL As AppleURL
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C20706174686E616D65206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E6720706C75672D696E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getbuiltInPlugInsPath (id)
			End Get
		#tag EndGetter
		BuiltInPlugInsPath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C652055524C206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E6720706C75672D696E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr (getbuiltInPlugInsURL (id))
			End Get
		#tag EndGetter
		BuiltInPlugInsURL As AppleURL
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652062756E646C65E2809973206964656E7469666965722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getbundleIdentifier (id)
			End Get
		#tag EndGetter
		BundleIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C20706174686E616D65206F66207468652062756E646C652773206469726563746F72792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getbundlePath (id)
			End Get
		#tag EndGetter
		BundlePath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C2055524C206F66207468652062756E646C65E2809973206469726563746F72792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr (getbundleURL (id))
			End Get
		#tag EndGetter
		BundleURL As AppleURL
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSBundle")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6174696F6E20666F722074686520646576656C6F706D656E74206C616E67756167652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getdevelopmentLocalization (id)
			End Get
		#tag EndGetter
		DevelopmentLocalization As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204170706C654E756D6265727320696E6469636174696E67207468652061726368697465637475726520747970657320737570706F72746564206279207468652062756E646C65E28099732065786563757461626C652E2028726561642D6F6E6C79290A53656520746865204E5342756E646C6545786563747561626C6541726368697465637475726520636F6E7374616E747320646566696E656420696E207468697320636C61737320666F7220706F737369626C652076616C7565732E09
		#tag Getter
			Get
			  return applearray.MakefromPtr (getexecutableArchitectures (id))
			End Get
		#tag EndGetter
		ExecutableArchitectures As Applearray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C20706174686E616D65206F66207468652062756E646C65E28099732065786563757461626C652066696C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getexecutablePath (id)
			End Get
		#tag EndGetter
		ExecutablePath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C652055524C206F66207468652062756E646C65E28099732065786563757461626C652066696C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr (getexecutableURL (id))
			End Get
		#tag EndGetter
		ExecutableURL As AppleURL
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792C20636F6E73747275637465642066726F6D207468652062756E646C65277320496E666F2E706C6973742066696C652C207468617420636F6E7461696E7320696E666F726D6174696F6E2061626F7574207468652062756E646C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDictionary.MakefromPtr (getinfoDictionary (id))
			End Get
		#tag EndGetter
		InfoDictionary As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F616420737461747573206F6620612062756E646C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isloaded (id)
			End Get
		#tag EndGetter
		Loaded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F6620616C6C20746865206C6F63616C697A6174696F6E7320636F6E7461696E656420696E207468652062756E646C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applearray.MakefromPtr (getlocalizations (id))
			End Get
		#tag EndGetter
		Localizations As Applearray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E617279207769746820746865206B6579732066726F6D207468652062756E646C65E2809973206C6F63616C697A65642070726F7065727479206C6973742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDictionary.MakefromPtr (getlocalizedInfoDictionary (id))
			End Get
		#tag EndGetter
		LocalizedInfoDictionary As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204E5342756E646C65206F626A656374207468617420636F72726573706F6E647320746F20746865206469726563746F7279207768657265207468652063757272656E74206170706C69636174696F6E2065786563757461626C65206973206C6F63617465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  dim result as new applebundle (getmainBundle(classptr))
			  result.RetainClassObject
			  return result
			  
			End Get
		#tag EndGetter
		Shared MainBundle As AppleBundle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F726465726564206C697374206F6620707265666572726564206C6F63616C697A6174696F6E7320636F6E7461696E656420696E207468652062756E646C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applearray.MakefromPtr (getpreferredLocalizations (id))
			End Get
		#tag EndGetter
		PreferredLocalizations As Applearray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652062756E646C65E2809973207072696E636970616C20636C6173737074722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getprincipalClass (id)
			End Get
		#tag EndGetter
		PrincipalClass As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652062756E646C65E2809973207072696E636970616C20636C6173736E616D652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getName (PrincipalClass)
			End Get
		#tag EndGetter
		PrincipalClassName As CString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C20706174686E616D65206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E672070726976617465206672616D65776F726B732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getprivateFrameworksPath (id)
			End Get
		#tag EndGetter
		PrivateFrameworksPath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C652055524C206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E672070726976617465206672616D65776F726B732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr (getprivateFrameworksURL (id))
			End Get
		#tag EndGetter
		PrivateFrameworksURL As AppleURL
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C20706174686E616D65206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E67207265736F75726365732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getresourcePath (id)
			End Get
		#tag EndGetter
		ResourcePath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C652055524C206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E67207265736F757263652066696C65732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr (getresourceURL (id))
			End Get
		#tag EndGetter
		ResourceURL As AppleURL
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C20706174686E616D65206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E6720736861726564206672616D65776F726B732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getsharedFrameworksPath (id)
			End Get
		#tag EndGetter
		SharedFrameworksPath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C652055524C206F66207468652062756E646C652773207375626469726563746F727920636F6E7461696E696E6720736861726564206672616D65776F726B732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr (getsharedFrameworksURL (id))
			End Get
		#tag EndGetter
		SharedFrameworksURL As AppleURL
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C20706174686E616D65206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E672073686172656420737570706F72742066696C65732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getsharedSupportPath (id)
			End Get
		#tag EndGetter
		SharedSupportPath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C652055524C206F66207468652062756E646C65E2809973207375626469726563746F727920636F6E7461696E696E672073686172656420737570706F72742066696C65732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleurl.MakefromPtr (getsharedSupportURL (id))
			End Get
		#tag EndGetter
		SharedSupportURL As AppleURL
	#tag EndComputedProperty


	#tag Constant, Name = NSBundleDidLoadNotification, Type = Text, Dynamic = False, Default = \"NSBundleDidLoadNotification", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSBundleExecutableArchitectureI386, Type = Double, Dynamic = False, Default = \"&h00000007", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSBundleExecutableArchitecturePPC, Type = Double, Dynamic = False, Default = \"&h00000012", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSBundleExecutableArchitecturePPC64, Type = Double, Dynamic = False, Default = \"&h01000012", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSBundleExecutableArchitectureX86_64, Type = Double, Dynamic = False, Default = \"&h01000007", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="BuiltInPlugInsPath"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BundleIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BundlePath"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
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
			Name="DevelopmentLocalization"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutablePath"
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
			Name="Loaded"
			Group="Behavior"
			Type="Boolean"
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
			Name="PrivateFrameworksPath"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ResourcePath"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SharedFrameworksPath"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SharedSupportPath"
			Group="Behavior"
			Type="Text"
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
