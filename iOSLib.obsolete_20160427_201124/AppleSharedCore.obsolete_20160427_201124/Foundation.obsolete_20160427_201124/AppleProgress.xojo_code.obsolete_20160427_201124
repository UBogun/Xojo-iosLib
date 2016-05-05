#tag Class
Protected Class AppleProgress
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 41646420612070726F63657373206F626A6563742061732061206368696C64206F6620612070726F677265737320747265652E205468652070656E64696E67556E6974436F756E7420696E646963617465732074686520657870656374656420776F726B20666F72207468652070726F677265737320756E69742E20417661696C61626C652073696E636520694F5320392E302E
		Sub AddChild(Child as AppleProgress, PendingUnitCount As Int64)
		  if RespondsToSelector (classptr, "addChild:withPendingUnitCount") then addChild id, child.id, PendingUnitCount
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub addChild Lib foundationlibname Selector "addChild:withPendingUnitCount:" (id as ptr, child as ptr, unitCount as int64)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53657473207468652070726F6772657373206173207468652063757272656E742070726F6772657373206F626A656374206F66207468652063757272656E742074687265616420616E64207370656369666965732074686520706F7274696F6E206F6620776F726B20746F20626520706572666F726D656420627920746865206E657874206368696C642070726F6772657373206F626A656374206F66207468652070726F67726573732E205573656420666F72206275696C64696E672061206368696C642074726565206F662050726F677265737365732E
		Sub BecomeCurrent(PendingUnitCount As Int64)
		  becomeCurrentWithPendingUnitCount id, PendingUnitCount
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub becomeCurrentWithPendingUnitCount Lib foundationlibname Selector "becomeCurrentWithPendingUnitCount:" (id as ptr, unitCount as int64)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43616E63656C2070726F677265737320747261636B696E672E0A54686973206D6574686F6420696E766F6B65732074686520626C6F636B2073657420666F722063616E63656C6C6174696F6E48616E646C65722C206966207468657265206973206F6E652C20616E6420656E7375726573207468617420616E792073756273657175656E74207265616473206F66207468652063616E63656C6C65642070726F70657274792072657475726E205945532E0A4966207468652070726F6772657373206F626A6563742068617320616E79206368696C6472656E2C2074686F7365206368696C6472656E2077696C6C20616C736F2062652063616E63656C6C65642E
		Sub Cancel()
		  cancel id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub cancel Lib foundationlibname Selector "cancel" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A65732061206E65776C7920616C6C6F6361746564204E5350726F677265737320696E7374616E63652E20506172656E742070726F677265737320616E642075736572496E666F206D6179206265204E696C2E
		Sub Constructor(Parent as Appleprogress = nil, UserInfo as Appledictionary = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithParent(alloc(classptr), if (parent = nil, nil, parent.id), if (userinfo = nil, nil, userinfo.id)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320616E204E5350726F677265737320696E7374616E636520617474616368656420746F207468652073706563696669656420706172656E7420776974682074686520746F74616C556E6974436F756E742073657420746F20706F7274696F6E4F66506172656E74546F74616C556E6974436F756E742E
		Sub Constructor(TotalUnitCount As Int64, Parent as AppleProgress, PortionOfParentTotalCount As Int64)
		  if RespondsToSelector (classptr, "progressWithTotalUnitCount:parent:pendingUnitCount:") then
		    super.Constructor(ProgressWithTotalUnitCountParent(classptr, TotalUnitCount, Parent.Id, PortionOfParentTotalCount))
		    retainclassobject
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320616E204E5350726F677265737320696E7374616E63652C20696E697469616C697A656420666F7220556E6974636F756E742E204966206469736372657465206973207472756520616E6420694F5320E289A520392E302C207468652050726F6772657373206973206E6F742070617274206F6620616E79206578697374696E672070726F677265737320747265652E205573652074686973206C6174746572207479706520746F206372656174652074686520746F70206C6576656C2070726F6772657373206F626A65637420666F7220796F7572206F776E20637573746F6D20636C61737365732E
		Sub Constructor(TotalUnitCount As Int64, discrete as boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if discrete and RespondsToSelector (classptr, "discreteProgressWithTotalUnitCount:") then
		    super.Constructor(discreteProgressWithTotalUnitCount(classptr, TotalUnitCount))
		  else
		    Super.Constructor (progressWithTotalUnitCount(classptr, totalunitcount))
		  end if
		  retainclassobject
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function discreteProgressWithTotalUnitCount Lib foundationlibname Selector "discreteProgressWithTotalUnitCount:" (id as ptr, unitCount as int64) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcompletedUnitCount Lib foundationlibname Selector "completedUnitCount" (id as ptr) As int64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcurrentProgress Lib foundationlibname Selector "currentProgress" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getfractionCompleted Lib foundationlibname Selector "fractionCompleted" (id as ptr) As double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getkind Lib foundationlibname Selector "kind" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getlocalizedAdditionalDescription Lib foundationlibname Selector "localizedAdditionalDescription" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function gettotalUnitCount Lib foundationlibname Selector "totalUnitCount" (id as ptr) As int64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function initWithParent Lib foundationlibname Selector "initWithParent:userInfo:" (id as ptr, parent as ptr, userinfo as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isCancellable Lib foundationlibname Selector "isCancellable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isCancelled Lib foundationlibname Selector "isCancelled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isIndeterminate Lib foundationlibname Selector "isIndeterminate" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isPausable Lib foundationlibname Selector "isPausable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function isPaused Lib foundationlibname Selector "isPaused" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleProgress
		  return if (aptr = nil, nil, new appleprogress(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617573652070726F677265737320747261636B696E672E0A54686973206D6574686F6420696E766F6B65732074686520626C6F636B2073657420666F722070617573696E6748616E646C65722C206966207468657265206973206F6E652C20616E6420656E7375726573207468617420616E792073756273657175656E74207265616473206F6620746865207061757365642070726F70657274792072657475726E205945532E0A4966207468652072656365697665722068617320616E79206368696C6472656E2C2074686F7365206368696C6472656E2077696C6C20616C736F206265207061757365642E
		Sub Pause()
		  pause id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub pause Lib foundationlibname Selector "pause" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function progressWithTotalUnitCount Lib foundationlibname Selector "progressWithTotalUnitCount:" (id as ptr, unitCount as int64) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function progressWithTotalUnitCountParent Lib foundationlibname Selector "progressWithTotalUnitCount:parent:pendingUnitCount:" (id as ptr, unitCount as int64, Parent as Ptr, PortionOfParentTotalUnitCount as Int64) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526573746F7265732074686520736974756174696F6E206265666F726520746865206C617374204265636F6D6543757272656E74206D6574686F642063616C6C2E
		Sub ResignCurrent()
		  resignCurrent id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub resignCurrent Lib foundationlibname Selector "resignCurrent" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50617573652070726F677265737320747261636B696E672E0A54686973206D6574686F6420696E766F6B65732074686520626C6F636B2073657420666F7220726573756D696E6748616E646C65722C206966207468657265206973206F6E652C20616E6420656E7375726573207468617420616E792073756273657175656E74207265616473206F6620746865207061757365642070726F70657274792072657475726E205945532E0A4966207468652072656365697665722068617320616E79206368696C6472656E2C2074686F7365206368696C6472656E2077696C6C20616C736F206265207061757365642E0A417661696C61626C652073696E636520694F5320392E302E
		Sub Resume()
		  if RespondsToSelector (classptr, "resume") then resume id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub resume Lib foundationlibname Selector "resume" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setCancellable Lib foundationlibname Selector "setCancellable:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520626C6F636B20746F20696E766F6B65207768656E2070726F67726573732069732063616E63656C6C65642E
		Sub SetCancellationHandler(CancelBlock as AppleBlock)
		  setCancellationHandler id, if (CancelBlock = nil, nil, CancelBlock.handle)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setcancellationHandler Lib foundationlibname Selector "setCancellationHandler:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setcompletedUnitCount Lib foundationlibname Selector "setCompletedUnitCount:" (id as ptr, value as int64)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F756E74206F6620746865206E756D626572206F6620636F6D706C657465642066696C657320666F7220746865206B657920696E20746865207573657220696E666F2064696374696F6E61727920746F2070726F7669646520746865206175746F2D67656E657261746564204465736372697074696F6E20737472696E67732077697468206D6F72652066696C6520696E666F726D6174696F6E2E204F7074696F6E616C2070726F706572747920666F722066696C652070726F67726573732E
		Sub SetInfoCompletedFileCount(Files as integer)
		  dim mynumber as new AppleNumber(files)
		  SetUserInfoObject id, mynumber.id, "NSProgressFileCompletedCountKey"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520657374696D617465642074696D652072656D61696E696E6720666F7220746865206B657920696E20746865207573657220696E666F2064696374696F6E61727920746F2061666665637420746865206175746F2D67656E657261746564206C6F63616C697A65644164646974696F6E616C4465736372697074696F6E20737472696E672E
		Sub SetInfoEstimatedTimeRemaining(Seconds as double)
		  dim mynumber as new AppleNumber(seconds)
		  SetUserInfoObject id, mynumber.id, "NSProgressEstimatedTimeRemainingKey"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652066696C65206B696E6420666F7220746865206B657920696E20746865207573657220696E666F2064696374696F6E61727920746F2070726F7669646520746865206175746F2D67656E657261746564204465736372697074696F6E20737472696E67732077697468206D6F72652066696C6520696E666F726D6174696F6E2E204F626C696761746F72792070726F706572747920666F722066696C65206F7065726174696F6E73
		Sub SetInfoFileOperationKind(kind as NSProgressFileOperationKind)
		  dim message as text
		  select case kind
		  case NSProgressFileOperationKind.Copying
		    message = "NSProgressFileOperationKindCopying"
		  case NSProgressFileOperationKind.Decompressing
		    message = "NSProgressFileOperationKindDecompressingAfterDownloading"
		  case NSProgressFileOperationKind.Downloading
		    message = "NSProgressFileOperationKindDownloading"
		  case NSProgressFileOperationKind.Receiving
		    message = "NSProgressFileOperationKindReceiving"
		  end select
		  setuserInfotext id, message, "NSProgressFileOperationKindKey"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207370656564206F6620646174612070726F63657373696E6720666F7220746865206B657920696E20746865207573657220696E666F2064696374696F6E61727920746F2061666665637420746865206175746F2D67656E657261746564206C6F63616C697A65644164646974696F6E616C4465736372697074696F6E20737472696E672E
		Sub SetInfoThroughput(bytesperseconds as double)
		  dim mynumber as new AppleNumber(bytesperseconds)
		  SetUserInfoObject id, mynumber.id, "NSProgressThroughputKey"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F756E74206F6620746865206E756D626572206F662066696C657320666F7220746865206B657920696E20746865207573657220696E666F2064696374696F6E61727920746F2070726F7669646520746865206175746F2D67656E657261746564204465736372697074696F6E20737472696E67732077697468206D6F72652066696C6520696E666F726D6174696F6E2E204F7074696F6E616C2070726F706572747920666F722066696C652070726F67726573732E
		Sub SetInfoTotalFileCount(Files as integer)
		  dim mynumber as new AppleNumber(files)
		  SetUserInfoObject id, mynumber.id, "NSProgressFileTotalCountKey"
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setkind Lib foundationlibname Selector "setKind:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setlocalizedAdditionalDescription Lib foundationlibname Selector "setLocalizedAdditionalDescription:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setPausable Lib foundationlibname Selector "setPausable:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520626C6F636B20746F20696E766F6B65207768656E2070726F6772657373206973207061757365642E
		Sub SetpausingHandler(PauseBlock as AppleBlock)
		  setpausingHandler id, if (PauseBlock = nil, nil, PauseBlock.handle)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setpausingHandler Lib foundationlibname Selector "setPausingHandler:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520626C6F636B20746F20696E766F6B65207768656E2070726F677265737320697320726573756D65642E20417661696C61626C652073696E636520694F5320392E302E
		Sub SetResumingHandler(ResumeBlock as AppleBlock)
		  if RespondsToSelector(classptr, "resumingHandler") then setresumingHandler id, if (ResumeBlock = nil, nil, ResumeBlock.handle)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setresumingHandler Lib foundationlibname Selector "setResumingHandler:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub settotalUnitCount Lib foundationlibname Selector "setTotalUnitCount:" (id as ptr, value as int64)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53657420612076616C756520696E207468652075736572496E666F2064696374696F6E6172792E205573652074686520646966666572656E7420536574496E666F787878206D6574686F647320666F72206561736965722068616E646C696E672E
		Sub SetUserInfoObject(anObject as AppleObject, Key as CFStringRef)
		  setUserInfoObject id, if (anobject =nil, nil, anObject.id), key
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setUserInfoObject Lib foundationlibname Selector "setUserInfoObject:forKey:" (id as ptr, value as ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setUserInfoText Lib foundationlibname Selector "setUserInfoObject:forKey:" (id as ptr, value as cfstringref, key as CFStringRef)
	#tag EndExternalMethod


	#tag Note, Name = Status completed
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 496E646963617465732077686574686572207468652070726F6772657373206F626A65637420697320747261636B696E6720776F726B20746861742063616E2062652063616E63656C6C65642E
		#tag Getter
			Get
			  return isCancellable (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcancellable id, value
			End Set
		#tag EndSetter
		Cancellable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E646963617465732077686574686572207468652070726F6772657373206F626A65637420697320747261636B696E6720776F726B207468617420686173206265656E2063616E63656C6C65642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isCancelled (id)
			End Get
		#tag EndGetter
		Cancelled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSProgress")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620756E697473206F6620776F726B20666F72207468652063757272656E74206A6F622074686174206861766520616C7265616479206265656E20636F6D706C657465642E
		#tag Getter
			Get
			  return getcompletedUnitCount (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcompletedUnitCount id, value
			End Set
		#tag EndSetter
		CompletedUnitCount As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E7320746865204E5350726F677265737320696E7374616E63652C20696620616E792C206173736F6369617465642077697468207468652063757272656E742074687265616420627920612070726576696F757320696E766F636174696F6E206F66206265636F6D6543757272656E745769746850656E64696E67556E6974436F756E743A2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  dim result as appleprogress = AppleProgress.MakefromPtr (getcurrentProgress(classptr))
			  if result <> nil then result.retainclassobject
			  return result
			End Get
		#tag EndGetter
		Shared CurrentProgress As AppleProgress
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F6E76656E69656E63652073686F727463757420666F722073657474696E67206B696E64203D204E5350726F67726573734B696E6446696C65
		#tag Getter
			Get
			  return if (kind = NSProgressKindFile, true, false)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  kind = if (value, NSProgressKindFile, "")
			End Set
		#tag EndSetter
		FileKind As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616374696F6E206F6620746865206F766572616C6C20776F726B20636F6D706C6574656420627920746869732070726F6772657373206F626A6563742C20696E636C7564696E6720776F726B20646F6E6520627920616E79206368696C6472656E206974206D617920686176652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getfractionCompleted (id)
			End Get
		#tag EndGetter
		FractionCompleted As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E6469636174657320776865746865722074686520747261636B65642070726F677265737320697320696E64657465726D696E6174652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isIndeterminate (id)
			End Get
		#tag EndGetter
		Indeterminate As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120737472696E67206964656E74696679696E6720746865206B696E64206F662070726F6772657373206265696E67206D6164652E205365652046696C654B696E642E
		#tag Getter
			Get
			  return getkind (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setkind (id, value)
			End Set
		#tag EndSetter
		Kind As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D6F7265207370656369666963206C6F63616C697A6564206465736372697074696F6E206F662070726F677265737320747261636B6564206279207468652070726F67726573732E
		#tag Getter
			Get
			  return getlocalizedAdditionalDescription (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlocalizedAdditionalDescription (id, value)
			End Set
		#tag EndSetter
		LocalizedAdditionalDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C6F63616C697A6564206465736372697074696F6E206F662070726F677265737320747261636B6564206279207468652070726F67726573732E
		#tag Getter
			Get
			  return FoundationFrameWork.getlocalizedDescription (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setlocalizedDescription (id, value)
			End Set
		#tag EndSetter
		LocalizedDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E646963617465732077686574686572207468652070726F6772657373206F626A65637420697320747261636B696E6720776F726B20746861742063616E206265207061757365642E
		#tag Getter
			Get
			  return isPausable (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPausable id, value
			End Set
		#tag EndSetter
		Pausable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E646963617465732077686574686572207468652070726F6772657373206F626A65637420697320747261636B696E6720776F726B207468617420686173206265656E207061757365642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return isPaused (id)
			End Get
		#tag EndGetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746F74616C206E756D626572206F6620756E697473206F6620776F726B20747261636B656420666F72207468652063757272656E742070726F67726573732E
		#tag Getter
			Get
			  return gettotalUnitCount (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settotalUnitCount id, value
			End Set
		#tag EndSetter
		TotalUnitCount As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207573657220696E666F726D6174696F6E2064696374696F6E617279206173736F6369617465642077697468207468652070726F6772657373206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDictionary.MakeFromPtr (foundationframework.getuserinfo(id))
			End Get
		#tag EndGetter
		UserInfo As AppleDictionary
	#tag EndComputedProperty


	#tag Constant, Name = NSProgressKindFile, Type = Text, Dynamic = False, Default = \"NSProgressKindFile", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = NSProgressFileOperationKind, Type = Integer, Flags = &h0
		Downloading
		  Decompressing
		  Receiving
		Copying
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Cancellable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cancelled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CompletedUnitCount"
			Group="Behavior"
			Type="Int64"
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
			Name="FileKind"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FractionCompleted"
			Group="Behavior"
			Type="Double"
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
			Name="Indeterminate"
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
			Name="Kind"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedAdditionalDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedDescription"
			Group="Behavior"
			Type="Text"
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
			Name="Pausable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
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
		#tag ViewProperty
			Name="TotalUnitCount"
			Group="Behavior"
			Type="Int64"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
