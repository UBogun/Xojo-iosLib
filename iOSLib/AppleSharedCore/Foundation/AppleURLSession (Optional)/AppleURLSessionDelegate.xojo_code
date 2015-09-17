#tag Class
Protected Class AppleURLSessionDelegate
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub CancelAuthenticationChallenge(challenge as AppleURLAuthenticationChallenge)
		  Declare sub cancelAuthenticationChallenge lib FoundationLibName  selector "cancelAuthenticationChallenge:" (id as ptr, challenge as ptr)
		  cancelAuthenticationChallenge id , challenge.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (init(alloc(ClassPtr)))
		  mHAsOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContinueWithoutCredentialForAuthenticationChallenge(challenge as AppleURLAuthenticationChallenge)
		  Declare sub continueWithoutCredentialForAuthenticationChallenge lib FoundationLibName  selector "continueWithoutCredentialForAuthenticationChallenge:" (id as ptr, challenge as ptr)
		  continueWithoutCredentialForAuthenticationChallenge id , challenge.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondataTaskdidBecomeDownloadTask(pid as ptr, sel as ptr, session as Ptr, task as ptr, downloadtask as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiondataTaskdidBecomeDownloadTask  (task, downloadtask)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondataTaskdidReceiveData(pid as ptr, sel as ptr, session as Ptr, task as ptr, data as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiondataTaskdidReceiveData  (task, data)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondataTaskdidReceiveResponse(pid as ptr, sel as ptr, session as Ptr, task as ptr, response as ptr, completion as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiondataTaskdidReceiveResponse  (task, Response, completion)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondataTaskwillCacheResponse(pid as ptr, sel as ptr, session as Ptr, task as ptr, response as ptr, completion as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiondataTaskwillCacheResponse  (task, Response,  completion)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondidBecomeInvalidWithError(pid as ptr, sel as ptr, session as Ptr, error as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiondidBecomeInvalidWithError  (error)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessionDidFinishEventsForBackgroundURLSession(pid as ptr, sel as ptr, session as Ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessionDidFinishEventsForBackgroundURLSession
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondidReceiveChallengecompletionHandler(pid as ptr, sel as ptr, session as Ptr, Challenge as ptr, handler as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informOnURLSessiondidReceiveChallengecompletionHandler  (challenge)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		  #Pragma Unused handler
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondownloadTaskdidFinishDownloadingToURL(pid as ptr, sel as ptr, session as Ptr, task as ptr, url as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiondownloadTaskdidFinishDownloadingToURL  (task,  url)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondownloadTaskdidResumeAtOffsetexpectedTotalBytes(pid as ptr, sel as ptr, session as Ptr, task as ptr, offset as int64, expectedBytes as int64)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiondownloadTaskdidResumeAtOffsetexpectedTotalBytes  (task, offset, expectedBytes)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondownloadTaskdidWriteDatatotalBytesWrittentotalBytesExpectedToWrite(pid as ptr, sel as ptr, session as Ptr, task as ptr, written as int64, totalWritten as int64, totalExpected as int64)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiondownloadTaskdidWriteDatatotalBytesWrittentotalBytesExpectedToWrite  (task, written, totalWritten, totalExpected)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiontaskdidCompleteWithError(pid as ptr, sel as ptr, session as Ptr, task as ptr, error as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiontaskdidCompleteWithError  (task, error)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiontaskdidReceiveChallengecompletionHandler(pid as ptr, sel as ptr, session as Ptr, task as ptr, challenge as ptr, completion as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiontaskdidReceiveChallenge  (task, challenge, completion)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiontaskdidSendBodyDatatotalBytesSenttotalBytesExpectedToSend(pid as ptr, sel as ptr, session as Ptr, task as ptr, Bytessent as int64, totalBytesSent as Int64, TotalExpectedBytes as Int64)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiontaskdidSendBodyDatatotalBytesSenttotalBytesExpectedToSend  (task, Bytessent, totalBytesSent, TotalExpectedBytes)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiontaskneedNewBodyStream(pid as ptr, sel as ptr, session as Ptr, task as ptr, needsBodyStream as Ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiontaskneedNewBodyStream  (task, needsBodyStream)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiontaskwillPerformHTTPRedirectionnewRequestcompletionHandler(pid as ptr, sel as ptr, session as Ptr, task as ptr, response as ptr, request as ptr, completion as ptr)
		  dim ego as new AppleURLSession (session)
		  ego.informonURLSessiontaskwillPerformHTTPRedirectionnewRequest  (task, Response, request, completion)
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLSessionDelegate
		  return if (aptr = nil, nil, new AppleURLSessionDelegate(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformDefaultHandlingForAuthenticationChallenge(challenge as AppleURLAuthenticationChallenge)
		  Declare sub performDefaultHandlingForAuthenticationChallenge lib FoundationLibName  selector "performDefaultHandlingForAuthenticationChallenge:" (id as ptr, challenge as ptr)
		  performDefaultHandlingForAuthenticationChallenge id , challenge.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RejectProtectionSpaceAndContinueWithChallenge(challenge as AppleURLAuthenticationChallenge)
		  Declare sub rejectProtectionSpaceAndContinueWithChallenge lib FoundationLibName  selector "rejectProtectionSpaceAndContinueWithChallenge:" (id as ptr, challenge as ptr)
		  rejectProtectionSpaceAndContinueWithChallenge id , challenge.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UseCredential(Credential as appleurlcredential, challenge as AppleURLAuthenticationChallenge)
		  Declare sub useCredential lib FoundationLibName  selector "useCredential:forAuthenticationChallenge:" (id as ptr, credential as ptr, challenge as ptr)
		  useCredential id , Credential.id, challenge.id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    // if Observers = nil then Observers = new Dictionary
			    dim methods() as TargetClassMethodHelper
			    //override URLSessionDelegate methods
			    methods.Append new TargetClassMethodHelper("URLSession:didBecomeInvalidWithError:", AddressOf impl_URLSessiondidBecomeInvalidWithError, "v@:@@")
			    methods.Append new TargetClassMethodHelper("URLSession:didReceiveChallenge:completionHandler:", AddressOf impl_URLSessiondidReceiveChallengecompletionHandler, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("URLSessionDidFinishEventsForBackgroundURLSession:", AddressOf impl_URLSessionDidFinishEventsForBackgroundURLSession, "v@:@")
			    
			    //override NSURLSessionTaskDelegate methods
			    methods.Append new TargetClassMethodHelper("URLSession:task:didCompleteWithError:", AddressOf impl_URLSessiontaskdidCompleteWithError, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("URLSession:task:didReceiveChallenge:completionHandler:", AddressOf impl_URLSessiontaskdidReceiveChallengecompletionHandler, "v@:@@@@")
			    methods.Append new TargetClassMethodHelper("URLSession:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:", AddressOf impl_URLSessiontaskdidSendBodyDatatotalBytesSenttotalBytesExpectedToSend, "v@:@@qqq")
			    methods.Append new TargetClassMethodHelper("URLSession:task:needNewBodyStream:", AddressOf impl_URLSessiontaskneedNewBodyStream, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:", AddressOf impl_URLSessiontaskwillPerformHTTPRedirectionnewRequestcompletionHandler, "v@:@@@@@")
			    
			    //override NSURLSessionDataDelegate methods
			    methods.Append new TargetClassMethodHelper("URLSession:dataTask:didReceiveResponse:completionHandler:", AddressOf impl_URLSessiondataTaskdidReceiveResponse, "v@:@@@@")
			    methods.Append new TargetClassMethodHelper("URLSession:dataTask:didBecomeDownloadTask:", AddressOf impl_URLSessiondataTaskdidBecomeDownloadTask, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("URLSession:dataTask:didReceiveData:", AddressOf impl_URLSessiondataTaskdidReceiveData, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("URLSession:dataTask:willCacheResponse:completionHandler:", AddressOf impl_URLSessiondataTaskwillCacheResponse, "v@:@@@@")
			    
			    //override NSURLSessionDownloadDelegate methods
			    methods.Append new TargetClassMethodHelper("URLSession:downloadTask:didResumeAtOffset:expectedTotalBytes:", AddressOf impl_URLSessiondownloadTaskdidResumeAtOffsetexpectedTotalBytes, "v@:@@qq")
			    methods.Append new TargetClassMethodHelper("URLSession:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:", AddressOf impl_URLSessiondownloadTaskdidWriteDatatotalBytesWrittentotalBytesExpectedToWrite, "v@:@@qqq")
			    methods.Append new TargetClassMethodHelper("URLSession:downloadTask:didFinishDownloadingToURL:", AddressOf impl_URLSessiondownloadTaskdidFinishDownloadingToURL, "v@:@@@")
			    
			    targetID = BuildTargetClass ("NSObject", "iOSLibURLSessionDelegate",methods)
			  end if
			  Return targetID
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
			Name="Description"
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
			Name="isProxy"
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
