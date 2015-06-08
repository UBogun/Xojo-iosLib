#tag Class
Protected Class AppleURLSessionDownloadTask
Inherits AppleURLSessionTask
	#tag Method, Flags = &h0
		Sub CancelByProducingResumeData(completionhandler as ptr)
		  declare sub cancelByProducingResumeData lib Foundation selector "cancelByProducingResumeData:" (id as ptr, completionhandler as ptr)
		  cancelByProducingResumeData id, completionhandler
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleURLSessionDownloadTask
		  return if (aptr = nil, nil, new AppleURLSessionDownloadTask(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("NSURLSessionDownloadTask")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


End Class
#tag EndClass
