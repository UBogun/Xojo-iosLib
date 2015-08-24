#tag Class
Protected Class AppleWebView
Inherits AppleView
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GoBack()
		  Declare Sub goBack lib UIKit selector "goBack" (id as ptr)
		  goBack (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GoForward()
		  Declare Sub goForward lib UIKit selector "goForward" (id as ptr)
		  goForward (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadData(Data as AppleData, MIMEType as CFStringRef, textEncoding As CFStringRef, baseURL as AppleURL)
		  Declare Sub loadData lib UIKit selector "loadData:MIMEType:textEncodingName:baseURL:" (id as ptr, data as ptr, MIMEType as CFStringRef, textEncoding as CFStringRef, baseURL as Ptr)
		  loadData id, data.id, MIMEType, textEncoding, baseURL.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadHTML(HTMLString as cfstringref, baseurl as AppleURL)
		  Declare Sub loadHTMLString lib UIKit selector "loadHTMLString:baseURL:" (id as ptr, HTMLString as CFStringRef, baseurl as ptr)
		  loadHTMLString id, HTMLString, baseurl.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRequest(aRequest as AppleURLRequest)
		  Declare Sub loadrequest lib UIKit selector "loadRequest:" (id as ptr, request as ptr)
		  loadrequest id, aRequest.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleWebView
		  return AppleWebView(super.MakeFromPtr (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reload()
		  Declare Sub reload lib UIKit selector "reload" (id as ptr)
		  reload (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RunJavaScript(aScript as CFStringRef) As Text
		  declare function stringByEvaluatingJavaScriptFromString lib UIKit selector "stringByEvaluatingJavaScriptFromString:" _
		  (id as ptr, value as CFStringRef) as CFStringRef
		  return stringByEvaluatingJavaScriptFromString (id, aScript)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopLoading()
		  Declare Sub stopLoading lib UIKit selector "stopLoading" (id as ptr)
		  stopLoading (id)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function allowsInlineMediaPlayback lib UIKit selector "allowsInlineMediaPlayback" (id as ptr) as Boolean
			  Return allowsInlineMediaPlayback (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAllowsInlineMediaPlayback lib UIKit selector "setAllowsInlineMediaPlayback:" (id as ptr, value as Boolean)
			  setAllowsInlineMediaPlayback id, value
			End Set
		#tag EndSetter
		AllowsInlineMediaPlayback As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function canGoBack lib UIKit selector "canGoBack" (id as ptr) as Boolean
			  Return canGoBack (id)
			End Get
		#tag EndGetter
		CanGoBack As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function canGoForward lib UIKit selector "canGoForward" (id as ptr) as Boolean
			  Return canGoForward (id)
			End Get
		#tag EndGetter
		CanGoForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIWebView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function dataDetectorTypes lib UIKit selector "dataDetectorTypes" (id as ptr) as UInteger
			  return new AppleDataDetectorType (dataDetectorTypes (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setdataDetectorTypes lib UIKit selector "setDataDetectorTypes:" (id as ptr, value as UInteger)
			  setdataDetectorTypes (id, value.Id)
			End Set
		#tag EndSetter
		DataDetectors As AppleDataDetectorType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim mydelegate as AppleWebViewDelegate = AppleWebViewDelegate.MakeFromPtr (getDelegate(id))
			  return if (mydelegate = NIL, nil, mydelegate)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Delegate_ As AppleWebViewDelegate
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function gapBetweenPages lib UIKit selector "gapBetweenPages" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare Function gapBetweenPages lib UIKit selector "gapBetweenPages" (id as ptr) as Single
			  #endif
			  Return gapBetweenPages (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setGapBetweenPages lib UIKit selector "setGapBetweenPages:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setGapBetweenPages lib UIKit selector "setGapBetweenPages:" (id as ptr, value as Single)
			  #endif
			  setGapBetweenPages id, value
			End Set
		#tag EndSetter
		GapBetweenPages As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function loading lib UIKit selector "isLoading" (id as ptr) as Boolean
			  Return loading (id)
			End Get
		#tag EndGetter
		IsLoading As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function keyboardDisplayRequiresUserAction lib UIKit selector "keyboardDisplayRequiresUserAction" (id as ptr) as Boolean
			  Return keyboardDisplayRequiresUserAction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setKeyboardDisplayRequiresUserAction lib UIKit selector "setKeyboardDisplayRequiresUserAction:" (id as ptr, value as Boolean)
			  setKeyboardDisplayRequiresUserAction id, value
			End Set
		#tag EndSetter
		KeyboardDisplayRequiresUserAction As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function mediaPlaybackAllowsAirPlay lib UIKit selector "mediaPlaybackAllowsAirPlay" (id as ptr) as Boolean
			  Return mediaPlaybackAllowsAirPlay (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMediaPlaybackAllowsAirPlay lib UIKit selector "setMediaPlaybackAllowsAirPlay:" (id as ptr, value as Boolean)
			  setMediaPlaybackAllowsAirPlay id, value
			End Set
		#tag EndSetter
		MediaPlaybackAllowsAirPlay As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function mediaPlaybackRequiresUserAction lib UIKit selector "mediaPlaybackRequiresUserAction" (id as ptr) as Boolean
			  Return mediaPlaybackRequiresUserAction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMediaPlaybackRequiresUserAction lib UIKit selector "setMediaPlaybackRequiresUserAction:" (id as ptr, value as Boolean)
			  setMediaPlaybackRequiresUserAction id, value
			End Set
		#tag EndSetter
		MediaPlaybackRequiresUserAction As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		myiOSLibHTMLViewer As WeakRef
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function pageCount lib UIKit selector "pageCount" (id as ptr) as Uinteger
			  Return pageCount (id)
			End Get
		#tag EndGetter
		PageCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function pageLength lib UIKit selector "pageLength" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare Function pageLength lib UIKit selector "pageLength" (id as ptr) as Single
			  #endif
			  Return pageLength (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setPageLength lib UIKit selector "setPageLength:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setPageLength lib UIKit selector "setPageLength:" (id as ptr, value as Single)
			  #endif
			  setPageLength id, value
			End Set
		#tag EndSetter
		PageLength As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function paginationBreakingMode lib UIKit selector "paginationBreakingMode" (id as ptr) as UIWebPaginationBreakingMode
			  Return paginationBreakingMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPaginationBreakingMode lib UIKit selector "setPaginationBreakingMode:" (id as ptr, value as UIWebPaginationBreakingMode)
			  setPaginationBreakingMode id, value
			End Set
		#tag EndSetter
		PaginationBreakingMode As UIWebPaginationBreakingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function paginationMode lib UIKit selector "paginationMode" (id as ptr) as UIWebPaginationMode
			  Return paginationMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPaginationMode lib UIKit selector "setPaginationMode:" (id as ptr, value as UIWebPaginationMode)
			  setPaginationMode id, value
			End Set
		#tag EndSetter
		PaginationMode As UIWebPaginationMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function request lib UIKit selector "request" (id as ptr) as ptr
			  return AppleURLRequest.MakefromPtr (request(id))
			End Get
		#tag EndGetter
		Request As AppleURLRequest
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scalesPageToFit lib UIKit selector "scalesPageToFit" (id as ptr) as Boolean
			  Return scalesPageToFit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setscalesPageToFit lib UIKit selector "setScalesPageToFit:" (id as ptr, value as Boolean)
			  setscalesPageToFit id, value
			End Set
		#tag EndSetter
		ScalesPageToFit As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function scrollView lib UIKit selector "scrollView" (id as ptr) as ptr
			  return AppleScrollView.MakefromPtr (scrollView(id))
			End Get
		#tag EndGetter
		ScrollView As AppleScrollView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function suppressesIncrementalRendering lib UIKit selector "suppressesIncrementalRendering" (id as ptr) as Boolean
			  Return suppressesIncrementalRendering (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSuppressesIncrementalRendering lib UIKit selector "setSuppressesIncrementalRendering:" (id as ptr, value as Boolean)
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
			Name="isProxy"
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
