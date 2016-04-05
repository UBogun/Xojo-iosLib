#tag Class
Protected Class AppleApplication
Inherits Appleresponder
	#tag Method, Flags = &h0, Description = 4D61726B732074686520626567696E6E696E67206F662061206E6577206C6F6E672D72756E6E696E67206261636B67726F756E64207461736B2E
		Function BeginBackgroundTask(Expirationhandler as AppleBlock) As UInteger
		  return beginBackgroundTaskWithExpirationHandler (id, if (Expirationhandler = nil, nil, Expirationhandler.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D61726B732074686520626567696E6E696E67206F662061206E6577206C6F6E672D72756E6E696E67206261636B67726F756E64207461736B20776974682074686520737065636966696564206E616D652E
		Function BeginBackgroundTask(Name As Text, Expirationhandler as AppleBlock) As UInteger
		  return beginBackgroundTaskWithName (id, name, if (Expirationhandler = nil, nil,  Expirationhandler.Handle))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function beginBackgroundTaskWithExpirationHandler Lib UIKItLibName Selector "beginBackgroundTaskWithExpirationHandler:" (id as ptr, expirationhandler as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function beginBackgroundTaskWithName Lib UIKItLibName Selector "beginBackgroundTaskWithName:expirationHandler:" (id as ptr, name as CFStringRef, expirationhandler as ptr) As uinteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 54656C6C732074686520726563656976657220746F2073757370656E64207468652068616E646C696E67206F6620746F7563682D72656C61746564206576656E74732E
		Sub BeginIgnoringInteractionEvents()
		  beginIgnoringInteractionEvents id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub beginIgnoringInteractionEvents Lib UIKItLibName Selector "beginIgnoringInteractionEvents" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 54656C6C73207468652061707020746F20626567696E20726563656976696E672072656D6F74652D636F6E74726F6C206576656E74732E
		Sub BeginReceivingRemoteControlEvents()
		  beginReceivingRemoteControlEvents id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub beginReceivingRemoteControlEvents Lib UIKItLibName Selector "beginReceivingRemoteControlEvents" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43616E63656C73207468652064656C6976657279206F6620616C6C207363686564756C6564206C6F63616C206E6F74696669636174696F6E732E
		Sub CancelAllLocalNotifications()
		  cancelAllLocalNotifications id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub cancelAllLocalNotifications Lib UIKItLibName Selector "cancelAllLocalNotifications" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43616E63656C73207468652064656C6976657279206F662074686520737065636966696564207363686564756C6564206C6F63616C206E6F74696669636174696F6E2E
		Sub CancelLocalNotification(Notification as AppleLocalNotification)
		  cancelLocalNotification id, Notification.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub cancelLocalNotification Lib UIKItLibName Selector "cancelLocalNotification:" (id as ptr, notification as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E672077686574686572206F72206E6F74207468652055524CE280997320736368656D652063616E2062652068616E646C656420627920736F6D652061707020696E7374616C6C6564206F6E20746865206465766963652E
		Function CanOpenURL(URL as AppleURL) As Boolean
		  return canOpenURL (id, URL.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function canOpenURL Lib UIKItLibName Selector "canOpenURL:" (id as ptr, url as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 54656C6C732074686520617070207468617420796F757220636F6465206861732066696E697368656420616E79206173796E6368726F6E6F757320737461746520726573746F726174696F6E2E
		Sub CompleteStateRestoration()
		  completeStateRestoration Id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub completeStateRestoration Lib UIKItLibName Selector "completeStateRestoration" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  super.Constructor (getsharedapplication(classptr))
		  dim mydelegate as new iOSLibApplicationDelegate
		  mydelegate.retain
		  setdelegate mydelegate.id
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub endBackgroundTask Lib UIKItLibName Selector "endBackgroundTask:" (id as ptr, identifier as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D61726B732074686520656E64206F662061207370656369666963206C6F6E672D72756E6E696E67206261636B67726F756E64207461736B2E
		Function EndBackgroundTask(TaskIdentifier as UInteger) As UInteger
		  EndBackgroundTask id, TaskIdentifier
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54656C6C73207468652061707020746F20726573756D65207468652068616E646C696E67206F6620746F7563682D72656C61746564206576656E74732E
		Sub EndIgnoringInteractionEvents()
		  endIgnoringInteractionEvents id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub endIgnoringInteractionEvents Lib UIKItLibName Selector "endIgnoringInteractionEvents" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 54656C6C73207468652061707020746F2073746F7020726563656976696E672072656D6F74652D636F6E74726F6C206576656E74732E
		Sub EndReceivingRemoteControlEvents()
		  endReceivingRemoteControlEvents id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub endReceivingRemoteControlEvents Lib UIKItLibName Selector "endReceivingRemoteControlEvents" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 54656C6C732074686520617070207468617420796F757220636F646520697320726573746F72696E67207374617465206173796E6368726F6E6F75736C792E
		Sub ExtendStateRestoration()
		  extendStateRestoration Id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub extendStateRestoration Lib UIKItLibName Selector "extendStateRestoration" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getapplicationIconBadgeNumber Lib UIKItLibName Selector "applicationIconBadgeNumber" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getapplicationState Lib UIKItLibName Selector "applicationState" (id as ptr) As UIApplicationState
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getapplicationSupportsShakeToEdit Lib UIKItLibName Selector "applicationSupportsShakeToEdit" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getbackgroundRefreshStatus Lib UIKItLibName Selector "backgroundRefreshStatus" (id as ptr) As UIBackgroundRefreshStatus
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getbackgroundTimeRemaining Lib UIKItLibName Selector "backgroundTimeRemaining" (id as ptr) As double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcurrentUserNotificationSettings Lib UIKItLibName Selector "currentUserNotificationSettings" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getisIgnoringInteractionEvents Lib UIKItLibName Selector "isIgnoringInteractionEvents" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getkeyWindow Lib UIKItLibName Selector "keyWindow" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getpreferredContentSizeCategory Lib UIKItLibName Selector "preferredContentSizeCategory" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getscheduledLocalNotifications Lib UIKItLibName Selector "scheduledLocalNotifications" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getsharedApplication Lib UIKItLibName Selector "sharedApplication" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetIOS and (Target64Bit))
		Attributes( hidden ) Private Declare Function getstatusBarFrame Lib UIKItLibName Selector "statusBarFrame" (id as ptr) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getstatusBarFrame32 Lib UIKItLibName Selector "statusBarFrame" (id as ptr) As FoundationFrameWork.nsrect32Bit
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getstatusBarOrientationAnimationDuration Lib UIKItLibName Selector "statusBarOrientationAnimationDuration" (id as ptr) As double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getuserInterfaceLayoutDirection Lib UIKItLibName Selector "userInterfaceLayoutDirection" (id as ptr) As UIUserInterfaceLayoutDirection
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetIOS and (Target64Bit))
		Attributes( hidden ) Private Declare Function getWindows Lib UIKItLibName Selector "windows" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50726576656E747320746865206170702066726F6D207573696E672074686520726563656E7420736E617073686F7420696D61676520647572696E6720746865206E657874206C61756E6368206379636C652E
		Sub IgnoreSnapshotOnNextApplicationLaunch()
		  ignoreSnapshotOnNextApplicationLaunch id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub ignoreSnapshotOnNextApplicationLaunch Lib UIKItLibName Selector "ignoreSnapshotOnNextApplicationLaunch" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_didReceiveLocalNotification(pid as ptr, sel as ptr, application as ptr, notification as Ptr) As Boolean
		  dim myapp as AppleApplication = AppleApplication.MakeFromPtr (application)
		  // return not myapp.informon_willFinishLaunchingWithOptions (options)
		  // #pragma unused sel
		  // #Pragma Unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_shouldRestoreApplicationState(pid as ptr, sel as ptr, application as ptr, coder as ptr) As Boolean
		  // dim myapp as AppleApplication = AppleApplication.MakeFromPtr (application)
		  // return not myapp.informon_WillResignActive ()
		  // #pragma unused sel
		  // #Pragma Unused pid
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_willFinishLaunchingWithOptions(pid as ptr, sel as ptr, application as ptr, options as ptr) As Boolean
		  dim myapp as AppleApplication = AppleApplication.MakeFromPtr (application)
		  return not myapp.informon_willFinishLaunchingWithOptions (options)
		  #pragma unused sel
		  #Pragma Unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_WillResignActive(pid as ptr, sel as ptr, application as ptr) As Boolean
		  dim myapp as AppleApplication = AppleApplication.MakeFromPtr (application)
		  return not myapp.informon_WillResignActive ()
		  #pragma unused sel
		  #Pragma Unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_window(pid as ptr, sel as ptr) As Ptr
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informon_willFinishLaunchingWithOptions(options as ptr) As Boolean
		  return RaiseEvent WillOpen (AppleDictionary.MakeFromPtr (options))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informon_WillResignActive() As Boolean
		  RaiseEvent WillDeactivate
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isIdleTimerDisabled Lib UIKItLibName Selector "isIdleTimerDisabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isNetworkActivityIndicatorVisible Lib UIKItLibName Selector "isNetworkActivityIndicatorVisible" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isProtectedDataAvailable Lib UIKItLibName Selector "isProtectedDataAvailable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isRegisteredForRemoteNotifications Lib UIKItLibName Selector "isRegisteredForRemoteNotifications" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleApplication
		  return if (aptr = nil, nil, new AppleApplication(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 417474656D70747320746F206F70656E20746865207265736F7572636520617420746865207370656369666965642055524C2E2052657475726E732074686520737563636573732E
		Function OpenURL(URL as AppleURL) As Boolean
		  return OpenURL (id, URL.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function openURL Lib UIKItLibName Selector "openURL:" (id as ptr, url as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50726573656E74732061206C6F63616C206E6F74696669636174696F6E20696D6D6564696174656C792E
		Sub PresentLocalNotificationNow(Notification as AppleLocalNotification)
		  presentLocalNotificationNow id, Notification.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub presentLocalNotificationNow Lib UIKItLibName Selector "presentLocalNotificationNow:" (id as ptr, notification as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526567697374657220746F20726563656976652072656D6F7465206E6F74696669636174696F6E7320766961204170706C652050757368204E6F74696669636174696F6E20736572766963652E
		Sub RegisterForRemoteNotifications()
		  registerForRemoteNotifications id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub registerForRemoteNotifications Lib UIKItLibName Selector "registerForRemoteNotifications" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656769737465727320796F757220707265666572726564206F7074696F6E7320666F72206E6F74696679696E672074686520757365722E
		Sub RegisterUserNotificationSettings(Settings as AppleUserNotificationSettings)
		  registerUserNotificationSettings id, settings.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub registerUserNotificationSettings Lib UIKItLibName Selector "registerUserNotificationSettings:" (id as ptr, settings as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5363686564756C65732061206C6F63616C206E6F74696669636174696F6E20666F722064656C69766572792061742069747320656E63617073756C61746564206461746520616E642074696D652E
		Sub ScheduleLocalNotification(Notification as AppleLocalNotification)
		  scheduleLocalNotification id, Notification.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub scheduleLocalNotification Lib UIKItLibName Selector "scheduleLocalNotification:" (id as ptr, notification as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53656E647320616E20616374696F6E206D657373616765206964656E7469666965642062792073656C6563746F7220746F206120737065636966696564207461726765742E
		Sub SendAction(Selector as Ptr, Target as appleobject, Sender as AppleObject, AnEvent As AppleNSEvent)
		  sendAction id, Selector, target.Id, sender.id, anevent.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub sendAction Lib UIKItLibName Selector "sendAction:to:from:forEvent:" (id as ptr, sel as ptr, target as ptr, sender as ptr, anevent as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4469737061746368657320616E206576656E7420746F2074686520617070726F70726961746520726573706F6E646572206F626A6563747320696E20746865206170702E
		Sub SendEvent(AnEvent As AppleNSEvent)
		  sendEvent id, anevent.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub sendEvent Lib UIKItLibName Selector "sendEvent:" (id as ptr, anavent as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setapplicationIconBadgeNumber Lib UIKItLibName Selector "setApplicationIconBadgeNumber:" (id as ptr, value as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setapplicationSupportsShakeToEdit Lib UIKItLibName Selector "setApplicationSupportsShakeToEdit:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setIdleTimerDisabled Lib UIKItLibName Selector "setIdleTimerDisabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53706563696669657320746865206D696E696D756D20616D6F756E74206F662074696D652074686174206D75737420656C61707365206265747765656E206261636B67726F756E64206665746368206F7065726174696F6E732E20486173206E6F20656666656374206966207468652061707020686173206E6F2055494261636B67726F756E644D6F646573206B65792077697468207468652066657463682076616C756520696E2069747320496E666F2E706C6973742066696C652E0A0A
		Sub setMinimumBackgroundFetchInterval(interval as double)
		  setMinimumBackgroundFetchInterval id, interval
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setMinimumBackgroundFetchInterval Lib UIKItLibName Selector "setMinimumBackgroundFetchInterval:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setNetworkActivityIndicatorVisible Lib UIKItLibName Selector "setNetworkActivityIndicatorVisible:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setProtectedDataAvailable Lib UIKItLibName Selector "setProtectedDataAvailable:" (id as ptr, vaue as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setscheduledLocalNotifications Lib UIKItLibName Selector "setScheduledLocalNotifications:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setWindow Lib UIKItLibName Selector "setWindow:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E726567697374657220666F7220616C6C2072656D6F7465206E6F74696669636174696F6E7320726563656976656420766961204170706C652050757368204E6F74696669636174696F6E20736572766963652E
		Sub UnregisterForRemoteNotifications()
		  unregisterForRemoteNotifications id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub unregisterForRemoteNotifications Lib UIKItLibName Selector "unregisterForRemoteNotifications" (id as ptr)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0, Description = 546865206C61756E63682070726F636573732068617320626567756E206275742074686520737461746520726573746F726174696F6E20686173206E6F7420796574206F636375727265642E2052657475726E207472756520696620796F752077616E7420746F2073746F7020696E697469616C697A696E672E
		Event WillDeactivate()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 546865206C61756E63682070726F636573732068617320626567756E206275742074686520737461746520726573746F726174696F6E20686173206E6F7420796574206F636375727265642E2052657475726E207472756520696620796F752077616E7420746F2073746F7020696E697469616C697A696E672E
		Event WillOpen(options as appledictionary) As Boolean
	#tag EndHook


	#tag Note, Name = Status
		
		UIStateRestoring class missing, therefore no register
		UIApplicationShortcutItem class missing, therefore no shortcuitems
		supportedInterfaceOrientationsForWindow nit implemented, use TraitCollection & TraitEnvironment instead
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D6265722063757272656E746C792073657420617320746865206261646765206F6620746865206170702069636F6E20696E20537072696E67626F6172642E
		#tag Getter
			Get
			  return getapplicationIconBadgeNumber (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setapplicationIconBadgeNumber id, value
			End Set
		#tag EndSetter
		ApplicationIconBadgeNumber As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072756E74696D65207374617465206F6620746865206170702E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getapplicationState (id)
			End Get
		#tag EndGetter
		ApplicationState As UIApplicationState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206162696C697479206F66207468652061707020746F206265206C61756E6368656420696E746F20746865206261636B67726F756E6420736F20746861742069742063616E20706572666F726D206261636B67726F756E64206265686176696F72732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getBackgroundRefreshStatus (id)
			End Get
		#tag EndGetter
		BackgroundRefreshStatus As UIBackgroundRefreshStatus
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207365636F6E647320746865206170702068617320746F2072756E20696E20746865206261636B67726F756E642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getbackgroundTimeRemaining (id)
			End Get
		#tag EndGetter
		BackgroundTimeRemaining As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFrameWork.NSClassFromString("UIApplication")
			  
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652075736572206E6F74696669636174696F6E2073657474696E677320666F7220746865206170702E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleUserNotificationSettings.MakefromPtr(getcurrentUserNotificationSettings(id))
			End Get
		#tag EndGetter
		CurrentUserNotificationSettings As AppleUserNotificationSettings
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74726F6CE28099732064656C65676174652E20496E207468697320637573746F6D20636C617373206175746F6D61746963616C6C792069642E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr (getDelegate (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Delegate_ As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652069646C652074696D65722069732064697361626C656420666F7220746865206170702E
		#tag Getter
			Get
			  return isIdleTimerDisabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setIdleTimerDisabled id, value
			End Set
		#tag EndSetter
		IdleTimerDisabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206170702069732069676E6F72696E67206576656E747320696E6974696174656420627920746F7563686573206F6E207468652073637265656E2E
		#tag Getter
			Get
			  return getisIgnoringInteractionEvents (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    if not IgnoresInteractionEvents then BeginIgnoringInteractionEvents
			  else
			    if IgnoresInteractionEvents then EndIgnoringInteractionEvents
			  end if
			  #pragma unused value
			End Set
		#tag EndSetter
		IgnoresInteractionEvents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206170702773206B65792077696E646F772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleWindow.MakefromPtr(getkeyWindow(id))
			End Get
		#tag EndGetter
		KeyWindow As AppleWindow
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C75652074686174207475726E7320616E20696E64696361746F72206F66206E6574776F726B206163746976697479206F6E206F72206F66662E
		#tag Getter
			Get
			  return isNetworkActivityIndicatorVisible (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setNetworkActivityIndicatorVisible id, value
			End Set
		#tag EndSetter
		NetworkActivityIndicatorVisible As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E742073697A696E67206F7074696F6E207072656665727265642062792074686520757365722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getpreferredContentSizeCategory (id)
			End Get
		#tag EndGetter
		PreferredContentSizeCategory As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220636F6E74656E742070726F74656374696F6E206973206163746976652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isProtectedDataAvailable (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setProtectedDataAvailable id, value
			End Set
		#tag EndSetter
		ProtectedDataAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 7768657468657220746865206170702069732063757272656E746C79207265676973746572656420666F722072656D6F7465206E6F74696669636174696F6E732E
		#tag Getter
			Get
			  return isRegisteredForRemoteNotifications (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    if not RegisteredForRemoteNotifications then RegisterForRemoteNotifications
			  else
			    if RegisteredForRemoteNotifications then UnregisterForRemoteNotifications
			  end if
			  #pragma unused value
			End Set
		#tag EndSetter
		RegisteredForRemoteNotifications As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C6C2063757272656E746C79207363686564756C6564206C6F63616C206E6F74696669636174696F6E732E
		#tag Getter
			Get
			  return applearray.MakefromPtr(getScheduledLocalNotifications(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setScheduledLocalNotifications id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ScheduledLocalNotifications As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073696E676C65746F6E2061707020696E7374616E63652E
		#tag Getter
			Get
			  return new AppleApplication(getsharedApplication(classptr))
			End Get
		#tag EndGetter
		Shared SharedApplication As AppleApplication
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616D652072656374616E676C6520646566696E696E67207468652061726561206F662074686520737461747573206261722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #if Target64Bit
			    return getstatusbarframe (id)
			  #elseif Target32Bit
			    return getstatusbarframe32(id).tonsrect
			  #endif
			End Get
		#tag EndGetter
		StatusBarFrame As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E696D6174696F6E206475726174696F6E20696E207365636F6E647320666F7220746865207374617475732062617220647572696E67206120393020646567726565206F7269656E746174696F6E206368616E67652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getstatusBarOrientationAnimationDuration (id)
			End Get
		#tag EndGetter
		StatusBarOrientationAnimationDuration As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207368616B696E67207468652064657669636520646973706C6179732074686520756E646F2D7265646F207573657220696E746572666163652E
		#tag Getter
			Get
			  return getapplicationSupportsShakeToEdit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setapplicationSupportsShakeToEdit id, value
			End Set
		#tag EndSetter
		SupportsShakeToEdit As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796F757420646972656374696F6E206F6620746865207573657220696E746572666163652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getuserInterfaceLayoutDirection (id)
			End Get
		#tag EndGetter
		UserInterfaceLayoutDirection As UIUserInterfaceLayoutDirection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652061707027732076697369626C6520616E642068696464656E2077696E646F77732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  declare function getWindows lib UIKitLibName selector "windows" (id as ptr) as ptr
			  return applearray.MakeFromPtr (getWindows(id))
			End Get
		#tag EndGetter
		Windows As AppleArray
	#tag EndComputedProperty


	#tag Enum, Name = UIApplicationState, Type = Integer, Flags = &h0
		Active
		  Inactive
		Background
	#tag EndEnum

	#tag Enum, Name = UIBackgroundFetchResult, Type = UInteger, Flags = &h0
		NewData
		  NoData
		Failed
	#tag EndEnum

	#tag Enum, Name = UIBackgroundRefreshStatus, Type = UInteger, Flags = &h0
		Restricted
		  Denied
		Available
	#tag EndEnum

	#tag Enum, Name = UIUserInterfaceLayoutDirection, Type = Integer, Flags = &h0
		LeftToRight
		RightToLeft
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="ApplicationIconBadgeNumber"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ApplicationState"
			Group="Behavior"
			Type="UIApplicationState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Active"
				"1 - Inactive"
				"2 - Background"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundRefreshStatus"
			Group="Behavior"
			Type="UIBackgroundRefreshStatus"
			EditorType="Enum"
			#tag EnumValues
				"0 - Restricted"
				"1 - Denied"
				"2 - Available"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundTimeRemaining"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
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
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IdleTimerDisabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresInteractionEvents"
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
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
			Name="NetworkActivityIndicatorVisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredContentSizeCategory"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProtectedDataAvailable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegisteredForRemoteNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StatusBarOrientationAnimationDuration"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SupportsShakeToEdit"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInterfaceLayoutDirection"
			Group="Behavior"
			Type="UIUserInterfaceLayoutDirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
