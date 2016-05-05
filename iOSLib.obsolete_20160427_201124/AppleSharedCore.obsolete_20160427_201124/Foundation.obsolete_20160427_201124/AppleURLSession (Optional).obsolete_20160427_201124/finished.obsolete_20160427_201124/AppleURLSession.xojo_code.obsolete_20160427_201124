#tag Class
Protected Class AppleURLSession
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 437265617465732061207461736B2074686174207265747269657665732074686520636F6E74656E7473206F6620746865207370656369666965642055524C2E
		Function AddDataTask(URL as AppleURL) As AppleURLSessionTask
		  Declare Function dataTaskWithURL lib FoundationLibName  selector "dataTaskWithURL:" (id as ptr, url as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (dataTaskWithURL(id, url.Id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207461736B2074686174207265747269657665732074686520636F6E74656E7473206F6620746865207370656369666965642055524C2C207468656E2063616C6C7320612068616E646C65722075706F6E20636F6D706C6574696F6E2E
		Function AddDataTask(URL as AppleURL, completionHandler as appleblock) As AppleURLSessionTask
		  Declare Function dataTaskWithURLCompletion lib FoundationLibName  selector "dataTaskWithURL:completionHandler:" (id as ptr, url as ptr, completionHandler as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (dataTaskWithURLCompletion(id, url.Id, completionHandler.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207461736B2074686174207265747269657665732074686520636F6E74656E7473206F6620612055524C206261736564206F6E20746865207370656369666965642055524C2072657175657374206F626A6563742E
		Function AddDataTask(Request as AppleURLRequest) As AppleURLSessionTask
		  Declare Function dataTaskWithRequest lib FoundationLibName  selector "dataTaskWithRequest:" (id as ptr, request as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (dataTaskWithRequest(id, Request.Id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207461736B2074686174207265747269657665732074686520636F6E74656E7473206F6620612055524C206261736564206F6E20746865207370656369666965642055524C2072657175657374206F626A6563742C20616E642063616C6C7320612068616E646C65722075706F6E20636F6D706C6574696F6E2E
		Function AddDataTask(Request as AppleURLRequest, completionHandler as appleblock) As AppleURLSessionTask
		  Declare Function dataTaskWithRequestCompletion lib FoundationLibName  selector "dataTaskWithRequest:completionHandler:" (id as ptr, request as ptr, completionHandler as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (dataTaskWithRequestCompletion(id, Request.Id, completionHandler.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120646F776E6C6F6164207461736B20746F20726573756D6520612070726576696F75736C792063616E63656C6564206F72206661696C656420646F776E6C6F61642E
		Function AddDownloadTask(ResumeData as Appledata) As AppleURLSessionDownloadTask
		  Declare Function downloadTaskWithResumeData lib FoundationLibName  selector "downloadTaskWithResumeData:" (id as ptr, url as ptr) as ptr
		  Return AppleURLSessionDownloadTask.MakefromPtr (downloadTaskWithResumeData(id, ResumeData.Id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120646F776E6C6F6164207461736B20746F20726573756D6520612070726576696F75736C792063616E63656C6564206F72206661696C656420646F776E6C6F616420616E642063616C6C7320612068616E646C65722075706F6E20636F6D706C6574696F6E2E
		Function AddDownloadTask(ResumeData as Appledata, completionHandler as appleblock) As AppleURLSessionDownloadTask
		  Declare Function downloadTaskWithResumeDataCompletion lib FoundationLibName  selector "downloadTaskWithResumeData:completionHandler:" (id as ptr, url as ptr, completionHandler as ptr) as ptr
		  Return AppleURLSessionDownloadTask.MakefromPtr (downloadTaskWithResumeDataCompletion(id, ResumeData.Id, completionHandler.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120646F776E6C6F6164207461736B2074686174207265747269657665732074686520636F6E74656E7473206F6620746865207370656369666965642055524C20616E642073617665732074686520726573756C747320746F20612066696C652E204D757374206265207374617274656420627920726573756D65206166746572206372656174696F6E2E
		Function AddDownloadTask(URL as AppleURL) As AppleURLSessionDownloadTask
		  Declare Function downloadTaskWithURL lib FoundationLibName  selector "downloadTaskWithURL:" (id as ptr, url as ptr) as ptr
		  Return AppleURLSessionDownloadTask.MakefromPtr (downloadTaskWithURL(id, url.Id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120646F776E6C6F6164207461736B2074686174207265747269657665732074686520636F6E74656E7473206F6620746865207370656369666965642055524C2C2073617665732074686520726573756C747320746F20612066696C652C20616E642063616C6C7320612068616E646C65722075706F6E20636F6D706C6574696F6E2E204D7574206265207374617274656420627920726573756D65206166746572206372656174696F6E2E
		Function AddDownloadTask(URL as AppleURL, completionHandler as ptr) As AppleURLSessionDownloadTask
		  Declare Function downloadTaskWithURLCompletion lib FoundationLibName  selector "downloadTaskWithURL:completionHandler:" (id as ptr, url as ptr, completionHandler as ptr) as ptr
		  Return AppleURLSessionDownloadTask.MakefromPtr (downloadTaskWithURLCompletion(id, url.Id, completionHandler))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120646F776E6C6F6164207461736B2074686174207265747269657665732074686520636F6E74656E7473206F6620612055524C206261736564206F6E20746865207370656369666965642055524C2072657175657374206F626A65637420616E642073617665732074686520726573756C747320746F20612066696C652E
		Function AddDownloadTask(Request as AppleURLRequest) As AppleURLSessionDownloadTask
		  Declare Function downloadTaskWithRequest lib FoundationLibName  selector "downloadTaskWithRequest:" (id as ptr, url as ptr) as ptr
		  Return AppleURLSessionDownloadTask.MakefromPtr (downloadTaskWithRequest(id, Request.Id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120646F776E6C6F6164207461736B2074686174207265747269657665732074686520636F6E74656E7473206F6620612055524C206261736564206F6E20746865207370656369666965642055524C2072657175657374206F626A6563742C2073617665732074686520726573756C747320746F20612066696C652C20616E642063616C6C7320612068616E646C65722075706F6E20636F6D706C6574696F6E2E
		Function AddDownloadTask(Request as AppleURLRequest, completionHandler as appleblock) As AppleURLSessionDownloadTask
		  Declare Function downloadTaskWithRequestCompletion lib FoundationLibName  selector "downloadTaskWithRequest:completionHandler:" (id as ptr, url as ptr, completionHandler as ptr) as ptr
		  Return AppleURLSessionDownloadTask.MakefromPtr (downloadTaskWithRequestCompletion(id, Request.Id, completionHandler.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207461736B207468617420706572666F726D7320616E2048545450207265717565737420666F722075706C6F6164696E672064617461206261736564206F6E20746865207370656369666965642055524C20726571756573742E
		Function AddUploadTask(Request as AppleURLRequest) As AppleURLSessionTask
		  Declare Function uploadTaskWithStreamedRequest lib FoundationLibName  selector "uploadTaskWithStreamedRequest:" _
		  (id as ptr, Request as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (uploadTaskWithStreamedRequest(id, Request.Id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207461736B207468617420706572666F726D7320616E2048545450207265717565737420666F7220746865207370656369666965642055524C2072657175657374206F626A65637420616E642075706C6F616473207468652070726F766964656420646174612E
		Function AddUploadTask(Request as AppleURLRequest, data as AppleData) As AppleURLSessionTask
		  Declare Function uploadTaskWithRequest lib FoundationLibName  selector "uploadTaskWithRequest:fromData:" _
		  (id as ptr, Request as ptr, data as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (uploadTaskWithRequest(id, Request.Id, data.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207461736B207468617420706572666F726D7320616E2048545450207265717565737420666F7220746865207370656369666965642055524C2072657175657374206F626A6563742C2075706C6F616473207468652070726F766964656420646174612C20616E642063616C6C7320612068616E646C65722075706F6E20636F6D706C6574696F6E2E
		Function AddUploadTask(Request as AppleURLRequest, data as AppleData, completionHandler as appleblock) As AppleURLSessionTask
		  Declare Function uploadTaskWithRequestCompletion lib FoundationLibName  selector "uploadTaskWithRequest:fromData:completionHandler:" _
		  (id as ptr, Request as ptr, data as ptr, completionHandler as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (uploadTaskWithRequestCompletion(id, Request.Id, data.id, completionHandler.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207461736B207468617420706572666F726D7320616E2048545450207265717565737420666F722075706C6F6164696E6720746865207370656369666965642066696C652E
		Function AddUploadTask(Request as AppleURLRequest, file as AppleURL) As AppleURLSessionTask
		  Declare Function uploadTaskWithRequestFile lib FoundationLibName  selector "uploadTaskWithRequest:fromFile:" _
		  (id as ptr, Request as ptr, file as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (uploadTaskWithRequestFile(id, Request.Id, file.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207461736B207468617420706572666F726D7320616E2048545450207265717565737420666F722075706C6F6164696E6720746865207370656369666965642066696C652C207468656E2063616C6C7320612068616E646C65722075706F6E20636F6D706C6574696F6E2E
		Function AddUploadTask(Request as AppleURLRequest, file as AppleURL, completionHandler as appleblock) As AppleURLSessionTask
		  Declare Function uploadTaskWithRequestFileCompletion lib FoundationLibName  selector "uploadTaskWithRequest:fromFile:completionHandler:" _
		  (id as ptr, Request as ptr, file as ptr, completionHandler as ptr) as ptr
		  Return AppleURLSessionTask.MakefromPtr (uploadTaskWithRequestFileCompletion(id, Request.Id, file.id, completionHandler.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub constructor()
		  Declare Function sharedSession lib FoundationLibName  selector "sharedSession" (id as ptr) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (sharedSession(ClassPtr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320612073657373696F6E207769746820746865207370656369666965642073657373696F6E20636F6E66696775726174696F6E2E
		Sub constructor(Configuration as AppleURLSessionConfiguration)
		  Declare Function sessionWithConfiguration lib FoundationLibName  selector "sessionWithConfiguration:" (id as ptr, configuration as ptr) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (sessionWithConfiguration(ClassPtr, Configuration.id))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320612073657373696F6E207769746820746865207370656369666965642073657373696F6E20636F6E66696775726174696F6E2C2064656C65676174652C20616E64206F7065726174696F6E2071756575652E
		Sub constructor(Configuration as AppleURLSessionConfiguration, Sessiondelegate as AppleURLSessionDelegate, delegatequeue as AppleOperationQueue)
		  Declare Function sessionWithConfigurationDelegate lib FoundationLibName  selector "sessionWithConfiguration:delegate:delegateQueue:" _
		  (id as ptr, configuration as ptr, Sessiondelegate as ptr, DelegateQueue as Ptr) as ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (sessionWithConfigurationDelegate(ClassPtr, Configuration.id, Sessiondelegate.Id, delegatequeue.id))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E76616C696461746573207468652073657373696F6E2C20616C6C6F77696E6720616E79206F75747374616E64696E67207461736B7320746F2066696E6973682E
		Sub FinishTasksAndInvalidate()
		  Declare sub finishTasksAndInvalidate lib FoundationLibName  selector "finishTasksAndInvalidate" (id as ptr)
		  finishTasksAndInvalidate id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466C757368657320636F6F6B69657320616E642063726564656E7469616C7320746F206469736B2C20636C65617273207472616E7369656E74206361636865732C20616E6420656E7375726573207468617420667574757265207265717565737473206F63637572206F6E2061206E65772054435020636F6E6E656374696F6E2E
		Sub Flush(completionhandler as appleblock = nil)
		  Declare sub flushWithCompletionHandler lib FoundationLibName  selector "flushWithCompletionHandler:" (id as ptr, completionHandler as ptr)
		  if completionhandler = nil then completionhandler = new appleblock (AddressOf FlushCompletionBlock)
		  flushWithCompletionHandler id, completionhandler.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FlushCompletionBlock()
		  if self <> NIL then RaiseEvent FlushCompleted
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getsharedSession Lib FoundationLibname Selector "sharedSession" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792063616C6C73206120636F6D706C6574696F6E2063616C6C6261636B207769746820616C6C20646174612C2075706C6F61642C20616E6420646F776E6C6F6164207461736B7320696E20612073657373696F6E2E
		Sub GetTasks(completionhandler as appleblock = nil)
		  Declare sub getTasksWithCompletionHandler lib FoundationLibName  selector "getTasksWithCompletionHandler:" (id as ptr, completionHandler as ptr)
		  if completionhandler  = nil then completionhandler = new appleblock (AddressOf GetTasksBlock)
		  getTasksWithCompletionHandler id, completionhandler.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetTasksBlock(DataTasks as AppleArray, uploadtasks as applearray, DownloadTasks as AppleArray)
		  // You should do something with the received values in your own implementation here
		  // and remove the pragmas for the properrties yuo use
		  
		  #Pragma Unused DataTasks
		  #Pragma Unused uploadtasks
		  #Pragma Unused DownloadTasks
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiondataTaskdidBecomeDownloadTask(task as ptr, downloadtask as ptr)
		  RaiseEvent DataTaskdidBecomeDownloadTask (new AppleURLSessionTask(task),new AppleURLSessionDownloadTask(downloadtask))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiondataTaskdidReceiveData(task as ptr, data as ptr)
		  RaiseEvent DataTaskdidReceiveData (new AppleURLSessionTask(task), new appledata(data))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiondataTaskdidReceiveResponse(task as ptr, response as ptr, completion as ptr)
		  RaiseEvent DataTaskdidReceiveResponse _
		  (new AppleURLSessionTask(task),new AppleHTTPURLResponse(response),  appleobject.MakeFromPtr (completion))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiondataTaskwillCacheResponse(task as ptr, response as ptr, completion as ptr)
		  RaiseEvent DataTaskwillCacheResponse _
		  (new AppleURLSessionTask(task),new AppleHTTPURLResponse(response),  appleobject.MakeFromPtr (completion))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiondidBecomeInvalidWithError(Error as Ptr)
		  RaiseEvent SessiondidBecomeInvalidWithError (new AppleError(error))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessionDidFinishEventsForBackgroundURLSession()
		  RaiseEvent SessionDidFinishEventsForBackgroundURLSession
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnURLSessiondidReceiveChallengecompletionHandler(challenge as ptr)
		  RaiseEvent SessiondidReceiveChallenge (new AppleURLAuthenticationChallenge(challenge))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiondownloadTaskdidFinishDownloadingToURL(task as ptr, location as ptr)
		  RaiseEvent downloadTaskdidFinishDownload (new AppleURLSessionTask(task),new AppleURL(location))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiondownloadTaskdidResumeAtOffsetexpectedTotalBytes(task as ptr, Offset as int64, bytes as int64)
		  RaiseEvent downloadTaskdidResume (new AppleURLSessionTask(task),offset, bytes)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnURLSessiondownloadTaskdidWriteDatatotalBytesWrittentotalBytesExpectedToWrite(task as ptr, DataWritten as int64, TotalBytesWritten as int64, TotalBytesExpectedToWrite As Int64)
		  RaiseEvent DownloadTaskdidWriteData (new AppleURLSessionTask(task), DataWritten, TotalBytesWritten, TotalBytesExpectedToWrite)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnURLSessiontaskdidCompleteWithError(task as ptr, error as ptr)
		  RaiseEvent TaskdidCompleteWithError (new AppleURLSessionTask(task), new AppleError(error))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiontaskdidReceiveChallenge(task as ptr, challenge as ptr, completion as ptr)
		  RaiseEvent TaskdidReceiveChallenge (new AppleURLSessionTask(task), new AppleURLAuthenticationChallenge(challenge), appleobject.makefromptr(completion))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiontaskdidSendBodyDatatotalBytesSenttotalBytesExpectedToSend(task as ptr, BytesSent as Int64, TotalBytesSent as Int64, TotalExpectedBytesToSend as Int64)
		  RaiseEvent taskdidSendBodyData (new AppleURLSessionTask(task), bytesSent, TotalBytesSent, TotalExpectedBytesToSend)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiontaskneedNewBodyStream(task as ptr, Bodystream as ptr)
		  RaiseEvent taskneedNewBodyStream (new AppleURLSessionTask(task),appleobject.makefromptr(bodystream))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonURLSessiontaskwillPerformHTTPRedirectionnewRequest(task as ptr, response as ptr, request as ptr, completion as ptr)
		  RaiseEvent taskwillPerformHTTPRedirection _
		  (new AppleURLSessionTask(task),new AppleHTTPURLResponse(response), new AppleURLRequest(request), appleobject.MakeFromPtr (completion))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616E63656C7320616C6C206F75747374616E64696E67207461736B7320616E64207468656E20696E76616C696461746573207468652073657373696F6E2E
		Sub InvalidateAndCancel()
		  Declare sub invalidateAndCancel lib FoundationLibName  selector "invalidateAndCancel" (id as ptr)
		  invalidateAndCancel id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleURLSession
		  return if (aptr = nil, Nil, new AppleURLSession(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456D707469657320616C6C20636F6F6B6965732C2063616368657320616E642063726564656E7469616C2073746F7265732C2072656D6F766573206469736B2066696C65732C20666C757368657320696E2D70726F677265737320646F776E6C6F61647320746F206469736B2C20616E6420656E7375726573207468617420667574757265207265717565737473206F63637572206F6E2061206E657720736F636B65742E
		Sub Reset(completionHandler as appleblock)
		  Declare sub resetWithCompletionHandler lib FoundationLibName  selector "resetWithCompletionHandler:" (id as ptr, completionHandler as ptr)
		  if  completionHandler = nil then completionHandler = new appleblock (AddressOf ResetCompletionBlock)
		  resetWithCompletionHandler id, completionHandler.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ResetCompletionBlock()
		  if self <> NIL then RaiseEvent ResetCompleted
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DataTaskdidBecomeDownloadTask(task as appleurlsessiontask, downloadtask as AppleURLSessiondownloadtask)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DataTaskdidReceiveData(task as appleurlsessiontask, data as AppleData)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DataTaskdidReceiveResponse(task as appleurlsessiontask, response as appleHTTPURLResponse, completion as appleobject)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DataTaskwillCacheResponse(task as appleurlsessiontask, response as appleHTTPURLResponse,completion as appleobject)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DownloadTaskdidFinishDownload(task as appleurlsessiontask, atLocation as AppleURL)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DownloadTaskdidResume(task as appleurlsessiontask, didResumeAtOffset as Int64, ExpectedTotalBytes as Int64)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DownloadTaskdidWriteData(task as appleurlsessiontask, DataWritten as int64, TotalBytesWritten as int64, TotalBytesExpectedToWrite As Int64)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FlushCompleted()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ResetCompleted()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SessiondidBecomeInvalidWithError(Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SessionDidFinishEventsForBackgroundURLSession()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SessiondidReceiveChallenge(Challenge as AppleURLAuthenticationChallenge)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TaskdidCompleteWithError(Task as AppleURLSessionTask, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TaskdidReceiveChallenge(Task as AppleURLSessionTask, Challenge as AppleURLAuthenticationChallenge, completion as AppleObject)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TaskdidSendBodyData(task as appleurlsessiontask, BytesSent as Int64, TotalBytesSent as Int64, TotalExpetcedBytesToSend as Int64)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TaskneedNewBodyStream(task as appleurlsessiontask, bodystream as AppleObject)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TaskwillPerformHTTPRedirection(task as appleurlsessiontask, response as appleHTTPURLResponse, request as AppleURLREquest, completion as appleobject)
	#tag EndHook


	#tag Note, Name = StatusCompleted
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSURLSession")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F7079206F662074686520636F6E66696775726174696F6E206F626A65637420666F7220746869732073657373696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function configuration lib FoundationLibName  selector "configuration" (id as ptr) as ptr
			  return AppleURLSessionConfiguration.MakeFromPtr (configuration (id))
			End Get
		#tag EndGetter
		Configuration As AppleURLSessionConfiguration
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7065726174696F6E2071756575652070726F7669646564207768656E2074686973206F626A6563742077617320637265617465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function delegateQueue lib FoundationLibName  selector "delegateQueue" (id as ptr) as ptr
			  return AppleOperationQueue.MakeFromPtr (delegateQueue (id))
			End Get
		#tag EndGetter
		DelegateQueue As AppleOperationQueue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21, Description = 4B6579207573656420696E20636F6E6A756E6374696F6E2077697468204E534572726F72206F626A656374732072657475726E656420627920746865204E5355524C53657373696F6E204150492E
		#tag Getter
			Get
			  static result as text =  SystemConstantName("NSURLErrorBackgroundTaskCancelledReasonKey", FoundationPath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kNSURLErrorBackgroundTaskCancelledReasonKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21, Description = 4B6579207573656420696E20636F6E6A756E6374696F6E2077697468204E534572726F72206F626A656374732072657475726E656420627920746865204E5355524C53657373696F6E204150492E
		#tag Getter
			Get
			  static result as text =  SystemConstantName("NSURLSessionDownloadTaskResumeData", FoundationPath)
			  return result
			End Get
		#tag EndGetter
		Private Shared kNSURLSessionDownloadTaskResumeData As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21, Description = 636F6E7374616E742064656E6F74696E6720616E20756E6B6E6F776E207472616E736665722073697A652E
		#tag Getter
			Get
			  return -1
			End Get
		#tag EndGetter
		Private Shared kTransferSizeUnknown As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C65676174652061737369676E6564207768656E2074686973206F626A6563742077617320637265617465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleURLSessionDelegate.MakeFromPtr (getdelegate)
			End Get
		#tag EndGetter
		SessionDelegate As AppleURLSessionDelegate
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206170702D646566696E6564206465736372697074697665206C6162656C20666F72207468652073657373696F6E2E
		#tag Getter
			Get
			  Declare Function sessionDescription lib FoundationLibName  selector "sessionDescription" (id as ptr) as CFStringRef
			  return sessionDescription (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setSessionDescription lib FoundationLibName  selector "setSessionDescription:" (id as ptr, value as CFStringRef)
			  setsessionDescription (id, value)
			End Set
		#tag EndSetter
		SessionDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207368617265642073696E676C65746F6E2073657373696F6E206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleURLSession(getsharedsession(classptr))
			End Get
		#tag EndGetter
		Shared SharedSession As AppleURLSession
	#tag EndComputedProperty


	#tag Enum, Name = BackgroundTaskCancelReasons, Type = Integer, Flags = &h0
		UserForceQuitApplication = 0
		BackgroundUpdatesDisabled = 1
	#tag EndEnum

	#tag Enum, Name = NSURLSessionResponseDisposition, Type = Integer, Flags = &h0
		Cancel
		  Allow
		BecomeDownload
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
			Name="SessionDescription"
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
