#tag Class
Protected Class AppleUrLTest
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)))
		  MHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_URLSessiondataTaskdidBecomeDownloadTask(pid as ptr, sel as ptr, session as Ptr, task as ptr, downloadtask as ptr)
		  // dim ego as  AppleURLSession= AppleURLSession.MakeFromPtr (session)
		  // ego.informonURLSessiondataTaskdidBecomeDownloadTask  (task, downloadtask)
		  break
		  
		  #Pragma Unused pid
		  #Pragma Unused Sel
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    //override URLSessionDelegate methods
			    // methods.Append new TargetClassMethodHelper("URLSession:didBecomeInvalidWithError:", AddressOf impl_URLSessiondidBecomeInvalidWithError, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("URLSession:didReceiveChallenge:completionHandler:", AddressOf impl_URLSessiondidReceiveChallengecompletionHandler, "v@:@@@")
			    // methods.Append new TargetClassMethodHelper("URLSessionDidFinishEventsForBackgroundURLSession:", AddressOf impl_URLSessionDidFinishEventsForBackgroundURLSession, "v@:@")
			    //
			    // //override NSURLSessionTaskDelegate methods
			    // methods.Append new TargetClassMethodHelper("URLSession:task:didCompleteWithError:", AddressOf impl_URLSessiontaskdidCompleteWithError, "v@:@@@")
			    // methods.Append new TargetClassMethodHelper("URLSession:task:didReceiveChallenge:completionHandler:", AddressOf impl_URLSessiontaskdidReceiveChallengecompletionHandler, "v@:@@@@")
			    // methods.Append new TargetClassMethodHelper("URLSession:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:", AddressOf impl_URLSessiontaskdidSendBodyDatatotalBytesSenttotalBytesExpectedToSend, "v@:@@qqq")
			    // methods.Append new TargetClassMethodHelper("URLSession:task:needNewBodyStream:", AddressOf impl_URLSessiontaskneedNewBodyStream, "v@:@@@")
			    // methods.Append new TargetClassMethodHelper("URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:", AddressOf impl_URLSessiontaskwillPerformHTTPRedirectionnewRequestcompletionHandler, "v@:@@@@@")
			    //
			    // //override NSURLSessionDataDelegate methods
			    // methods.Append new TargetClassMethodHelper("URLSession:dataTask:didReceiveResponse:completionHandler:", AddressOf impl_URLSessiondataTaskdidReceiveResponse, "v@:@@@@")
			    methods.Append new TargetClassMethodHelper("URLSession:dataTask:didBecomeDownloadTask:", AddressOf impl_URLSessiondataTaskdidBecomeDownloadTask, "v@:@@@")
			    // methods.Append new TargetClassMethodHelper("URLSession:dataTask:didReceiveData:", AddressOf impl_URLSessiondataTaskdidReceiveData, "v@:@@@")
			    // methods.Append new TargetClassMethodHelper("URLSession:dataTask:willCacheResponse:completionHandler:", AddressOf impl_URLSessiondataTaskwillCacheResponse, "v@:@@@@")
			    //
			    // //override NSURLSessionDownloadDelegate methods
			    // methods.Append new TargetClassMethodHelper("URLSession:downloadTask:didResumeAtOffset:expectedTotalBytes:", AddressOf impl_URLSessiondownloadTaskdidResumeAtOffsetexpectedTotalBytes, "v@:@@qq")
			    // methods.Append new TargetClassMethodHelper("URLSession:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:", AddressOf impl_URLSessiondownloadTaskdidWriteDatatotalBytesWrittentotalBytesExpectedToWrite, "v@:@@qqq")
			    // methods.Append new TargetClassMethodHelper("URLSession:downloadTask:didFinishDownloadingToURL:", AddressOf impl_URLSessiondownloadTaskdidFinishDownloadingToURL, "v@:@@@")
			    
			    mClassPtr = BuildTargetClass ("NSObject", "iOSLibURLSessionDel",methods)
			  end if
			  Return mClassPtr
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
