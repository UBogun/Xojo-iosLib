#tag Class
Protected Class AppleWebViewDelegate
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor(aiosLibHTMLViewer as iOSLibHTMLViewer)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  super.Constructor  (Init(Alloc(classptr)))
		  mhasownership = true
		  
		  if RetainDict = nil then RetainDict = new Dictionary
		  RetainDict.Value(id) = self
		  
		  if HTMLViewDict = nil then HTMLViewDict = new Dictionary
		  HTMLViewDict.Value (id) = WeakRef.Create (aiosLibHTMLViewer)
		  // system.debuglog "created new WebViewDelegate: "+integer(id).totext
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DEstructor()
		  if mhasownership then
		    if RetainDict.HasKey(id) then
		      RetainDict.Remove (id)
		      system.DebugLog "Removed WebViewDelegate from Dict"
		    end if
		    // if HTMLViewDict.HasKey(id) then
		    // HTMLViewDict.Remove (id)
		    // system.DebugLog "Removed HTMLViewReference from Dict"
		    // end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_webViewDidFailLoad(pid as ptr, sel as ptr, Webview as ptr, Error as Ptr)
		  // dim myView as new iOSLibHTMLViewer (webview)
		  // if myView.id <> nil then  myView.informonerror (Error)
		  
		  if HTMLViewDict.Value (pid) <> nil then
		    dim myRef as WeakRef = HTMLViewDict.Value(pid)
		    dim myViewer as iOSLibHTMLViewer= iOSLibHTMLViewer (myRef.Value)
		    myViewer.informonerror (Error)
		  end if
		  
		  #Pragma Unused SEL
		  #Pragma unused webview
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_webViewDidFinishLoad(pid as ptr, sel as ptr, Webview as Ptr)
		  // dim WR as WeakRef = weakref.Create
		  // dim myView as new iOSLibHTMLViewer (webview)
		  // if myView.id <> nil then  myView.informonfinish
		  
		  #Pragma Unused SEL
		  #Pragma unused webview
		  
		  
		  //
		  if HTMLViewDict.Value (pid) <> nil then
		    dim myRef as WeakRef = HTMLViewDict.Value(pid)
		    dim myViewer as iOSLibHTMLViewer= iOSLibHTMLViewer (myRef.Value)
		    myViewer.informonfinish
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_webViewDidStartLoad(pid as ptr, sel as ptr, Webview as ptr)
		  // dim myView as new iOSLibHTMLViewer (webview)
		  // if myView.id <> nil then  myView.informonload
		  #Pragma Unused SEL
		  #Pragma unused webview
		  
		  if HTMLViewDict.Value (pid) <> nil then
		    dim myRef as WeakRef = HTMLViewDict.Value(pid)
		    dim myViewer as iOSLibHTMLViewer= iOSLibHTMLViewer (myRef.Value)
		    myViewer.informonload
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_webViewShouldStartLoad(pid as ptr, sel as ptr, Webview as ptr, Request as Ptr, NavigationType as AppleWebView.UIWebViewNavigationType) As Boolean
		  // dim myView as new iOSLibHTMLViewer (webview)
		  // if myView.id <> nil then  myView.informonShouldStart (Request, NavigationType)
		  // Return true // Return False if you don't want to load instead
		  
		  #Pragma Unused SEL
		  #Pragma unused webview
		  
		  if HTMLViewDict.Value (pid) <> nil then
		    dim myRef as WeakRef = HTMLViewDict.Value(pid)
		    dim myViewer as iOSLibHTMLViewer= iOSLibHTMLViewer (myRef.Value)
		    return myViewer.informonShouldStart (Request, NavigationType)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleWebViewDelegate
		  return AppleWebViewDelegate(super.MakeFromPtr (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    //delegate methods
			    methods.Append new TargetClassMethodHelper("webViewDidStartLoad:", AddressOf impl_webViewDidStartLoad, "v@:@")
			    methods.Append new TargetClassMethodHelper("webViewDidFinishLoad:", AddressOf impl_webViewDidFinishLoad, "v@:@")
			    Methods.Append new TargetClassMethodHelper("webView:didFailLoadWithError:", AddressOf impl_webViewDidFailLoad, "v@:@@")
			    Methods.Append new TargetClassMethodHelper("webView:shouldStartLoadWithRequest:navigationType:", AddressOf impl_webViewShouldStartLoad, "c@:@i")
			    targetID = BuildTargetClass ("NSObject", "iOSLibUIWebViewDelegate",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared HTMLViewDict As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared RetainDict As Dictionary
	#tag EndProperty


	#tag Constant, Name = DidFailLoad, Type = Text, Dynamic = False, Default = \"DidFailLoad", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DidFinishLoad, Type = Text, Dynamic = False, Default = \"DidFinishLoad", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DidStartLoad, Type = Text, Dynamic = False, Default = \"DidStartLoad", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ShouldStartLoad, Type = Text, Dynamic = False, Default = \"ShouldStartLoad", Scope = Public
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
