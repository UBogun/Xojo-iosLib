#tag Class
Protected Class iOSLibHTMLViewer
Inherits iOSLIbCanvas
	#tag Event
		Function CreateView() As uinteger
		  dim subID as uinteger = raiseEvent CreateView
		  if  subid = 0 then
		    dim myview as new applewebview (FoundationFrameWork.nsmakerect (0,0,100,100))
		    mid = myview
		    myview.RegisterControl (self)
		    return uinteger(myview.id)
		  else
		    return subid
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Resized()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub TintColorChanged()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub TraitCollectionChanged(PreviousCollection As AppleTraitCollection)
		  RaiseEvent traitcollectionchanged(previousCollection)
		  RaiseEvent Resized
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 4C6F616473207468652070726576696F7573206C6F636174696F6E20696E20746865206261636B2D666F7277617264206C6973742E
		Sub GoBack()
		  id.GoBack
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C6F61647320746865206E657874206C6F636174696F6E20696E20746865206261636B2D666F7277617264206C6973742E
		Sub GoForward()
		  id.GoForward
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidFailLoad(error as ptr)
		  dim err as AppleError = AppleError.MakefromPtr(error)
		  RaiseEvent LoadFailed (err.Code, err.LocalizedDescription)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidFinishLoad()
		  RaiseEvent LoadFinished
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidStartLoad()
		  RaiseEvent LoadStarted
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldStartLoad(Request as Ptr, NavigationType as AppleWebView.UIWebViewNavigationType) As boolean
		  dim req as AppleURLRequest = AppleURLRequest.MakefromPtr (request)
		  return RaiseEvent SuppressLoad (req.url.Host+req.url.path, navigationtype)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D61696E207061676520636F6E74656E74732C204D494D4520747970652C20636F6E74656E7420656E636F64696E672C20616E6420626173652055524C2E
		Sub LoadData(Data as AppleData, MIMEType as CFStringRef, textEncoding As xojo.core.textencoding, baseURL as text)
		  id.LoadData data, MIMEType, textEncoding.IANAName , new appleurl(baseURL)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D61696E207061676520636F6E74656E7420616E6420626173652055524C2E
		Sub LoadHTML(HTMLString as cfstringref, baseurl as text)
		  id.LoadHTML HTMLString, new appleurl(baseurl)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E6E6563747320746F206120676976656E2055524C20627920696E6974696174696E6720616E206173796E6368726F6E6F757320636C69656E7420726571756573742E
		Sub LoadRequest(aRequest as text)
		  id.LoadRequest (new AppleURLRequest(new appleurl(aRequest)))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656C6F616473207468652063757272656E7420706167652E
		Sub Reload()
		  id.Reload
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520726573756C74206F662072756E6E696E672061204A617661536372697074207363726970742E
		Function RunJavaScript(aScript as CFStringRef) As Text
		  return id.RunJavaScript (ascript)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F707320746865206C6F6164696E67206F6620616E792077656220636F6E74656E74206D616E616765642062792074686520776562766965772E0A0A
		Sub StopLoading()
		  id.StopLoading
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CreateView() As uinteger
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4C6F6164696E672057656220636F6E74656E74206661696C65642E
		Event LoadFailed(error as Integer, Reason as text)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 57656220636F6E74656E74206173206C6F616465642E
		Event LoadFinished()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4C6F6164206F662057656220636F6E74656E7420737461727465642E
		Event LoadStarted()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865206C61796F7574206368616E6765732E
		Event Resized()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E205472756520696620796F7520646F206E6F742077616E7420746F2066756C66696C6C207468652055524C526571756573742E
		Event SuppressLoad(Path as Text, NavigationType as AppleWebView.UIWebViewNavigationType) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54686520747261697420636F6C6C656374696F6E206368616E6765642C206C696B6520616674657220612064657669636520726F746174696F6E2E
		Event TraitCollectionChanged(PreviousCollection As AppleTraitCollection)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722041697220506C617920697320616C6C6F7765642066726F6D207468697320766965772E
		#tag Getter
			Get
			  return id.MediaPlaybackAllowsAirPlay
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.MediaPlaybackAllowsAirPlay = value
			End Set
		#tag EndSetter
		AllowAirPlay As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722048544D4C3520766964656F7320706C617920696E6C696E65206F722075736520746865206E61746976652066756C6C2D73637265656E20636F6E74726F6C6C65722E
		#tag Getter
			Get
			  return id.AllowsInlineMediaPlayback
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.AllowsInlineMediaPlayback = value
			End Set
		#tag EndSetter
		AllowInlineMediaPlayback As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207072657373696E67206F6E2061206C696E6B20646973706C61797320612070726576696577206F66207468652064657374696E6174696F6E20666F7220746865206C696E6B2E20417661696C61626C652073696E636520694F5320392E30206F6E20334420546F75636820646576696365732E
		#tag Getter
			Get
			  return id.AllowsLinkPreview
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.AllowsLinkPreview =value
			End Set
		#tag EndSetter
		AllowLinkPreview As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205069637475726520696E205069637475726520706C61796261636B20697320616C6C6F7765642066726F6D207468697320766965772E20417661696C61626C652073696E636520694F5320392E302E09
		#tag Getter
			Get
			  return id.AllowsPictureInPicturePlayback
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.AllowsPictureInPicturePlayback = value
			End Set
		#tag EndSetter
		AllowPictureInPicturePlayback As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520776562766965772063616E206D6F7665206261636B776172642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return id.CanGoBack
			End Get
		#tag EndGetter
		CanGoBack As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520776562766965772063616E206D6F766520666F72776172642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return id.CanGoForward
			End Get
		#tag EndGetter
		CanGoForward As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207479706573206F66206461746120636F6E76657274656420746F20636C69636B61626C652055524C7320696E20746865207765622076696577E280997320636F6E74656E742E
		#tag Getter
			Get
			  return id.DataDetectors
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.DataDetectors = value
			End Set
		#tag EndSetter
		DataDetectors As AppleDataDetectorType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722077656220636F6E74656E742063616E2070726F6772616D6D61746963616C6C7920646973706C617920746865206B6579626F6172642E
		#tag Getter
			Get
			  return not id.KeyboardDisplayRequiresUserAction
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.KeyboardDisplayRequiresUserAction = not(value)
			End Set
		#tag EndSetter
		DisplayKeyboardAutomatically As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F6620746865206761702C20696E20706F696E74732C206265747765656E2070616765732E
		#tag Getter
			Get
			  return id.GapBetweenPages
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.GapBetweenPages = value
			End Set
		#tag EndSetter
		GapBetweenPages As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleWebView(mID)
			End Get
		#tag EndGetter
		ID As AppleWebView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652057656256696577206973206C6F6164696E6720636F6E74656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return id.IsLoading
			End Get
		#tag EndGetter
		IsLoading As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F662070616765732070726F647563656420627920746865206C61796F7574206F66207468652077656220766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return id.PageCount
			End Get
		#tag EndGetter
		PageCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F66206561636820706167652C20696E20706F696E74732C20696E2074686520646972656374696F6E20746861742074686520706167657320666C6F772E
		#tag Getter
			Get
			  return id.PageLength
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.PageLength = value
			End Set
		#tag EndSetter
		PageLength As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D616E6E657220696E20776869636820636F6C756D6E2D206F7220706167652D627265616B696E67206F63637572732E
		#tag Getter
			Get
			  return id.PaginationBreakingMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.PaginationBreakingMode = value
			End Set
		#tag EndSetter
		PaginationBreakingMode As AppleWebView.UIWebPaginationBreakingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796F7574206F6620636F6E74656E7420696E207468652077656220766965772E
		#tag Getter
			Get
			  return id.PaginationMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.PaginationMode = value
			End Set
		#tag EndSetter
		PaginationMode As AppleWebView.UIWebPaginationMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722048544D4C3520766964656F732063616E20706C6179206175746F6D61746963616C6C79206F72207265717569726520746865207573657220746F20737461727420706C6179696E67207468656D2E
		#tag Getter
			Get
			  return not id.MediaPlaybackRequiresUserAction
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.MediaPlaybackRequiresUserAction = not (value)
			End Set
		#tag EndSetter
		PlayMediaAutomatically As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055524C2072657175657374206964656E74696679696E6720746865206C6F636174696F6E206F662074686520636F6E74656E7420746F206C6F61642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return id.Request
			End Get
		#tag EndGetter
		Request As AppleURLRequest
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652077656270616765207363616C657320746F2066697420746865207669657720616E642074686520757365722063616E206368616E676520746865207363616C652E
		#tag Getter
			Get
			  return id.ScalesPageToFit
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ScalesPageToFit = value
			End Set
		#tag EndSetter
		ScalesPageToFit As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577206173736F6369617465642077697468207468652077656220766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return id.ScrollView
			End Get
		#tag EndGetter
		ScrollView As AppleScrollView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207765622076696577207375707072657373657320636F6E74656E742072656E646572696E6720756E74696C2069742069732066756C6C79206C6F6164656420696E746F206D656D6F72792E
		#tag Getter
			Get
			  return id.SuppressesIncrementalRendering
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.SuppressesIncrementalRendering = value
			End Set
		#tag EndSetter
		SuppressRenderDuringLoad As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAirPlay"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowInlineMediaPlayback"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowLinkPreview"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowPictureInPicturePlayback"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFFFFFF00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Appearance"
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
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIKitFramework.UIViewContentMode"
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
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayKeyboardAutomatically"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GapBetweenPages"
			Visible=true
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Visible=true
			Group="Appearance"
			InitialValue="False"
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
			Name="IsLoading"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Visible=true
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
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PageCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PageLength"
			Visible=true
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PaginationBreakingMode"
			Group="Behavior"
			Type="AppleWebView.UIWebPaginationBreakingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Page"
				"1 - Column"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="PaginationMode"
			Group="Behavior"
			Type="AppleWebView.UIWebPaginationMode"
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
			Name="PlayMediaAutomatically"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScalesPageToFit"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SuppressRenderDuringLoad"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="AppleView.UIViewTintAdjustmentMode"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
