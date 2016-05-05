#tag Class
Protected Class AppleWebView
Inherits AppleView
	#tag Event , Description = 4669726573207768656E207468652072656374616E676C6520286F722077686F6C65206172656129206F662074686520766965772067657473207265647261776E
		Sub DrawRect(Rect  as FoundationFramework.NSRect)
		  #pragma unused Rect
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207669657720686173206368616E6765642073697A65206C696B6520616674657220616E206F7269656E746174696F6E206368616E67652E
		Sub LayoutSubviews()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aRect as FoundationFrameWork.nsrect)
		  super.Constructor(doinitwithframe(alloc(classptr), arect))
		  MHasownership = true
		  me.Delegate_ = self
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getallowsLinkPreview Lib UIKItlibname Selector "allowsLinkPreview" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getallowsPictureInPictureMediaPlayback Lib UIKItlibname Selector "allowsPictureInPictureMediaPlayback" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4C6F616473207468652070726576696F7573206C6F636174696F6E20696E20746865206261636B2D666F7277617264206C6973742E
		Sub GoBack()
		  Declare Sub goBack lib UIKitLibname selector "goBack" (id as ptr)
		  goBack (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C6F61647320746865206E657874206C6F636174696F6E20696E20746865206261636B2D666F7277617264206C6973742E
		Sub GoForward()
		  Declare Sub goForward lib UIKitLibname selector "goForward" (id as ptr)
		  goForward (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_webViewDidFailLoad(pid as ptr, sel as ptr, Webview as ptr, Error as Ptr)
		  dim ego as new AppleWebView (pid)
		  if not ego.isnil then ego.informonDidFailLoad  (error)
		  
		  #Pragma Unused SEL
		  #Pragma unused webview
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_webViewDidFinishLoad(pid as ptr, sel as ptr, Webview as Ptr)
		  dim ego as new AppleWebView (pid)
		  if not ego.isnil then ego.informonDidFinishLoad  ()
		  
		  #Pragma Unused SEL
		  #Pragma unused webview
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_webViewDidStartLoad(pid as ptr, sel as ptr, Webview as ptr)
		  dim ego as new AppleWebView (pid)
		  if not ego.isnil then ego.informonDidStartLoad  ()
		  
		  #Pragma Unused SEL
		  #Pragma unused webview
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_webViewShouldStartLoad(pid as ptr, sel as ptr, Webview as ptr, Request as Ptr, NavigationType as AppleWebView.UIWebViewNavigationType) As Boolean
		  dim ego as new AppleWebView (pid)
		  if not ego.isnil then return not ego.informonshouldStartLoad  (Request, NavigationType)
		  
		  #Pragma Unused SEL
		  #Pragma unused webview
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidFailLoad(error as ptr)
		  if ParentControl <> nil then
		    ParentControl.informonDidFailLoad(error)
		  else
		    raiseevent LoadFailed(appleerror.makefromptr(error))
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidFinishLoad()
		  if ParentControl <> nil then
		    ParentControl.informonDidFinishLoad
		  else
		    raiseEvent LoadFinished
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidStartLoad()
		  if ParentControl <> nil then
		    ParentControl.informonDidStartLoad
		  else
		    raiseEvent LoadStarted
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldStartLoad(Request as Ptr, NavigationType as AppleWebView.UIWebViewNavigationType) As Boolean
		  if ParentControl <> nil then
		    return  ParentControl.informonShouldStartLoad (request, navigationType)
		  else
		    return not raiseEvent SuppressLoad (AppleURLRequest.MakefromPtr(request), navigationType)
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D61696E207061676520636F6E74656E74732C204D494D4520747970652C20636F6E74656E7420656E636F64696E672C20616E6420626173652055524C2E
		Sub LoadData(Data as AppleData, MIMEType as CFStringRef, textEncoding As CFStringRef, baseURL as AppleURL)
		  Declare Sub loadData lib UIKitLibname selector "loadData:MIMEType:textEncodingName:baseURL:" (id as ptr, data as ptr, MIMEType as CFStringRef, textEncoding as CFStringRef, baseURL as Ptr)
		  loadData id, data.id, MIMEType, textEncoding, baseURL.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D61696E207061676520636F6E74656E7420616E6420626173652055524C2E
		Sub LoadHTML(HTMLString as cfstringref, baseurl as AppleURL)
		  Declare Sub loadHTMLString lib UIKitLibname selector "loadHTMLString:baseURL:" (id as ptr, HTMLString as CFStringRef, baseurl as ptr)
		  loadHTMLString id, HTMLString, baseurl.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E6E6563747320746F206120676976656E2055524C20627920696E6974696174696E6720616E206173796E6368726F6E6F757320636C69656E7420726571756573742E
		Sub LoadRequest(aRequest as AppleURLRequest)
		  Declare Sub loadrequest lib UIKitLibname selector "loadRequest:" (id as ptr, request as ptr)
		  loadrequest id, aRequest.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleWebView
		  return AppleWebView(super.MakeFromPtr (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden )  Function ParentControl() As iOSLibHTMLViewer
		  if xojocontrols <> nil and XojoControls.HasKey (id)  then
		    dim wr as weakref = XojoControls.Value (id)
		    if wr <> NIL then
		      return iOSLibHTMLViewer(wr.Value)
		    end if
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656C6F616473207468652063757272656E7420706167652E
		Sub Reload()
		  Declare Sub reload lib UIKitLibname selector "reload" (id as ptr)
		  reload (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520726573756C74206F662072756E6E696E672061204A617661536372697074207363726970742E
		Function RunJavaScript(aScript as CFStringRef) As Text
		  declare function stringByEvaluatingJavaScriptFromString lib UIKitLibname selector "stringByEvaluatingJavaScriptFromString:" _
		  (id as ptr, value as CFStringRef) as CFStringRef
		  return stringByEvaluatingJavaScriptFromString (id, aScript)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setallowsLinkPreview Lib UIKItlibname Selector "setAllowsLinkPreview:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setallowsPictureInPictureMediaPlayback Lib UIKItlibname Selector "setAllowsPictureInPictureMediaPlayback:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53746F707320746865206C6F6164696E67206F6620616E792077656220636F6E74656E74206D616E616765642062792074686520776562766965772E0A0A
		Sub StopLoading()
		  Declare Sub stopLoading lib UIKitLibname selector "stopLoading" (id as ptr)
		  stopLoading (id)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event LoadFailed(Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LoadFinished()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LoadStarted()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SuppressLoad(Request As AppleURLRequest, NavigationType As UIWebViewNavigationType) As boolean
	#tag EndHook


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722048544D4C3520766964656F7320706C617920696E6C696E65206F722075736520746865206E61746976652066756C6C2D73637265656E20636F6E74726F6C6C65722E
		#tag Getter
			Get
			  Declare Function allowsInlineMediaPlayback lib UIKitLibname selector "allowsInlineMediaPlayback" (id as ptr) as Boolean
			  Return allowsInlineMediaPlayback (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAllowsInlineMediaPlayback lib UIKitLibname selector "setAllowsInlineMediaPlayback:" (id as ptr, value as Boolean)
			  setAllowsInlineMediaPlayback id, value
			End Set
		#tag EndSetter
		AllowsInlineMediaPlayback As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207072657373696E67206F6E2061206C696E6B20646973706C61797320612070726576696577206F66207468652064657374696E6174696F6E20666F7220746865206C696E6B2E20417661696C61626C652073696E636520694F5320392E30206F6E20334420546F75636820646576696365732E
		#tag Getter
			Get
			  if RespondsToSelector(classptr, "allowsLinkPreview") then return getallowsLinkPreview (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector(classptr, "setAllowsLinkPreview:") then  setallowsLinkPreview (id, value)
			End Set
		#tag EndSetter
		AllowsLinkPreview As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205069637475726520696E205069637475726520706C61796261636B20697320616C6C6F7765642066726F6D207468697320766965772E20417661696C61626C652073696E636520694F5320392E302E09
		#tag Getter
			Get
			  if RespondsToSelector(classptr, "allowsPictureInPictureMediaPlayback") then return getallowsPictureInPictureMediaPlayback (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector(classptr, "setAllowsPictureInPictureMediaPlayback:") then  setallowsPictureInPictureMediaPlayback (id, value)
			End Set
		#tag EndSetter
		AllowsPictureInPicturePlayback As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520776562766965772063616E206D6F7665206261636B776172642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function canGoBack lib UIKitLibname selector "canGoBack" (id as ptr) as Boolean
			  Return canGoBack (id)
			End Get
		#tag EndGetter
		CanGoBack As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520776562766965772063616E206D6F766520666F72776172642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function canGoForward lib UIKitLibname selector "canGoForward" (id as ptr) as Boolean
			  Return canGoForward (id)
			End Get
		#tag EndGetter
		CanGoForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    //override UIView methods
			    methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerclass, "@@:", true, true)
			    methods.Append new TargetClassMethodHelper("tintColorDidChange", AddressOf impl_tintColorDidChange, "v@:")
			    
			    // #if Target64Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			    // #elseif Target32Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			    // #endif
			    
			    //TraitEnvironment Protocol
			    methods.Append new TargetClassMethodHelper("traitCollectionDidChange:", AddressOf impl_traitCollectionDidChange, "v@:@")
			    
			    
			    //Add UIResponder methods too
			    methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    
			    methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    
			    methods.Append new TargetClassMethodHelper("touchesEstimatedPropertiesUpdated:", AddressOf impl_touchesEstimatedPropertiesUpdated, "v@:@")
			    methods.Append new TargetClassMethodHelper("remoteControlReceivedWithEvent:", AddressOf impl_remoteControlReceivedWithEvent, "v@:@")
			    
			    if ApplePress.ClassAvailable then
			      methods.Append new TargetClassMethodHelper("pressesBegan:withEvent:", AddressOf impl_pressesBeganWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesCancelled:withEvent:", AddressOf impl_pressesCancelledWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesChanged:withEvent:", AddressOf impl_pressesChangedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesEnded:withEvent:", AddressOf impl_pressesEndedWithEvent, "v@:@@")
			    end if
			    
			    methods.Append new TargetClassMethodHelper("webViewDidStartLoad:", AddressOf impl_webViewDidStartLoad, "v@:@")
			    methods.Append new TargetClassMethodHelper("webViewDidFinishLoad:", AddressOf impl_webViewDidFinishLoad, "v@:@")
			    Methods.Append new TargetClassMethodHelper("webView:didFailLoadWithError:", AddressOf impl_webViewDidFailLoad, "v@:@@")
			    Methods.Append new TargetClassMethodHelper("webView:shouldStartLoadWithRequest:navigationType:", AddressOf impl_webViewShouldStartLoad, "c@:@i")
			    
			    targetID = BuildTargetClass ("UIWebView", "iOSLibUIWebView",methods)
			  end if
			  Return targetID
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207479706573206F66206461746120636F6E76657274656420746F20636C69636B61626C652055524C7320696E20746865207765622076696577E280997320636F6E74656E742E
		#tag Getter
			Get
			  Declare function dataDetectorTypes lib UIKitLibname selector "dataDetectorTypes" (id as ptr) as UInteger
			  return new AppleDataDetectorType (dataDetectorTypes (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setdataDetectorTypes lib UIKitLibname selector "setDataDetectorTypes:" (id as ptr, value as UInteger)
			  setdataDetectorTypes (id, value.Id)
			End Set
		#tag EndSetter
		DataDetectors As AppleDataDetectorType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim mydelegate as appleobject = appleobject.MakeFromPtr (getDelegate(id))
			  return if (mydelegate = NIL, nil, mydelegate)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Delegate_ As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F6620746865206761702C20696E20706F696E74732C206265747765656E2070616765732E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function gapBetweenPages lib UIKitLibname selector "gapBetweenPages" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare Function gapBetweenPages lib UIKitLibname selector "gapBetweenPages" (id as ptr) as Single
			  #endif
			  Return gapBetweenPages (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setGapBetweenPages lib UIKitLibname selector "setGapBetweenPages:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setGapBetweenPages lib UIKitLibname selector "setGapBetweenPages:" (id as ptr, value as Single)
			  #endif
			  setGapBetweenPages id, value
			End Set
		#tag EndSetter
		GapBetweenPages As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652057656256696577206973206C6F6164696E6720636F6E74656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function loading lib UIKitLibname selector "isLoading" (id as ptr) as Boolean
			  Return loading (id)
			End Get
		#tag EndGetter
		IsLoading As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722077656220636F6E74656E742063616E2070726F6772616D6D61746963616C6C7920646973706C617920746865206B6579626F6172642E
		#tag Getter
			Get
			  Declare Function keyboardDisplayRequiresUserAction lib UIKitLibname selector "keyboardDisplayRequiresUserAction" (id as ptr) as Boolean
			  Return keyboardDisplayRequiresUserAction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setKeyboardDisplayRequiresUserAction lib UIKitLibname selector "setKeyboardDisplayRequiresUserAction:" (id as ptr, value as Boolean)
			  setKeyboardDisplayRequiresUserAction id, value
			End Set
		#tag EndSetter
		KeyboardDisplayRequiresUserAction As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722041697220506C617920697320616C6C6F7765642066726F6D207468697320766965772E
		#tag Getter
			Get
			  Declare Function mediaPlaybackAllowsAirPlay lib UIKitLibname selector "mediaPlaybackAllowsAirPlay" (id as ptr) as Boolean
			  Return mediaPlaybackAllowsAirPlay (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMediaPlaybackAllowsAirPlay lib UIKitLibname selector "setMediaPlaybackAllowsAirPlay:" (id as ptr, value as Boolean)
			  setMediaPlaybackAllowsAirPlay id, value
			End Set
		#tag EndSetter
		MediaPlaybackAllowsAirPlay As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722048544D4C3520766964656F732063616E20706C6179206175746F6D61746963616C6C79206F72207265717569726520746865207573657220746F20737461727420706C6179696E67207468656D2E
		#tag Getter
			Get
			  Declare Function mediaPlaybackRequiresUserAction lib UIKitLibname selector "mediaPlaybackRequiresUserAction" (id as ptr) as Boolean
			  Return mediaPlaybackRequiresUserAction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMediaPlaybackRequiresUserAction lib UIKitLibname selector "setMediaPlaybackRequiresUserAction:" (id as ptr, value as Boolean)
			  setMediaPlaybackRequiresUserAction id, value
			End Set
		#tag EndSetter
		MediaPlaybackRequiresUserAction As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F662070616765732070726F647563656420627920746865206C61796F7574206F66207468652077656220766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function pageCount lib UIKitLibname selector "pageCount" (id as ptr) as Uinteger
			  Return pageCount (id)
			End Get
		#tag EndGetter
		PageCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F66206561636820706167652C20696E20706F696E74732C20696E2074686520646972656374696F6E20746861742074686520706167657320666C6F772E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function pageLength lib UIKitLibname selector "pageLength" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare Function pageLength lib UIKitLibname selector "pageLength" (id as ptr) as Single
			  #endif
			  Return pageLength (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setPageLength lib UIKitLibname selector "setPageLength:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setPageLength lib UIKitLibname selector "setPageLength:" (id as ptr, value as Single)
			  #endif
			  setPageLength id, value
			End Set
		#tag EndSetter
		PageLength As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D616E6E657220696E20776869636820636F6C756D6E2D206F7220706167652D627265616B696E67206F63637572732E
		#tag Getter
			Get
			  Declare Function paginationBreakingMode lib UIKitLibname selector "paginationBreakingMode" (id as ptr) as UIWebPaginationBreakingMode
			  Return paginationBreakingMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPaginationBreakingMode lib UIKitLibname selector "setPaginationBreakingMode:" (id as ptr, value as UIWebPaginationBreakingMode)
			  setPaginationBreakingMode id, value
			End Set
		#tag EndSetter
		PaginationBreakingMode As UIWebPaginationBreakingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796F7574206F6620636F6E74656E7420696E207468652077656220766965772E
		#tag Getter
			Get
			  Declare Function paginationMode lib UIKitLibname selector "paginationMode" (id as ptr) as UIWebPaginationMode
			  Return paginationMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPaginationMode lib UIKitLibname selector "setPaginationMode:" (id as ptr, value as UIWebPaginationMode)
			  setPaginationMode id, value
			End Set
		#tag EndSetter
		PaginationMode As UIWebPaginationMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055524C2072657175657374206964656E74696679696E6720746865206C6F636174696F6E206F662074686520636F6E74656E7420746F206C6F61642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function request lib UIKitLibname selector "request" (id as ptr) as ptr
			  return AppleURLRequest.MakefromPtr (request(id))
			End Get
		#tag EndGetter
		Request As AppleURLRequest
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077656270616765207363616C657320746F2066697420746865207669657720616E642074686520757365722063616E206368616E676520746865207363616C652E
		#tag Getter
			Get
			  Declare Function scalesPageToFit lib UIKitLibname selector "scalesPageToFit" (id as ptr) as Boolean
			  Return scalesPageToFit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setscalesPageToFit lib UIKitLibname selector "setScalesPageToFit:" (id as ptr, value as Boolean)
			  setscalesPageToFit id, value
			End Set
		#tag EndSetter
		ScalesPageToFit As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577206173736F6369617465642077697468207468652077656220766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function scrollView lib UIKitLibname selector "scrollView" (id as ptr) as ptr
			  return AppleScrollView.MakefromPtr (scrollView(id))
			End Get
		#tag EndGetter
		ScrollView As AppleScrollView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207765622076696577207375707072657373657320636F6E74656E742072656E646572696E6720756E74696C2069742069732066756C6C79206C6F6164656420696E746F206D656D6F72792E
		#tag Getter
			Get
			  Declare Function suppressesIncrementalRendering lib UIKitLibname selector "suppressesIncrementalRendering" (id as ptr) as Boolean
			  Return suppressesIncrementalRendering (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSuppressesIncrementalRendering lib UIKitLibname selector "setSuppressesIncrementalRendering:" (id as ptr, value as Boolean)
			  setSuppressesIncrementalRendering id, value
			End Set
		#tag EndSetter
		SuppressesIncrementalRendering As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = UIWebPaginationBreakingMode, Type = Integer, Flags = &h0
		Page
		Column
	#tag EndEnum

	#tag Enum, Name = UIWebPaginationMode, Type = Integer, Flags = &h0
		Unpaginated
		  LeftToRight
		  TopToBottom
		  BottomToTop
		RightToLeft
	#tag EndEnum

	#tag Enum, Name = UIWebViewNavigationType, Type = UInteger, Flags = &h0
		LinkClicked
		  FormSubmitted
		  BackForward
		  Reload
		  FormResubmitted
		Other
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsInlineMediaPlayback"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsLinkPreview"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsPictureInPicturePlayback"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanGoBack"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanGoForward"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
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
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GapBetweenPages"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
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
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
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
			Name="IsLoading"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyboardDisplayRequiresUserAction"
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
			Name="MediaPlaybackAllowsAirPlay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediaPlaybackRequiresUserAction"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PageCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PageLength"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PaginationBreakingMode"
			Group="Behavior"
			Type="UIWebPaginationBreakingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Page"
				"1 - Column"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="PaginationMode"
			Group="Behavior"
			Type="UIWebPaginationMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unpaginated"
				"1 - LeftToRight"
				"2 - TopToBottom"
				"3 - BottomToTop"
				"4 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RestorationIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScalesPageToFit"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SuppressesIncrementalRendering"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
