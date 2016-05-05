#tag Module
Protected Module iOSHTMLViewerExtension
	#tag Method, Flags = &h0, Description = 576865746865722041697220506C617920697320616C6C6F7765642066726F6D207468697320766965772E
		Function AllowAirplay(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.MediaPlaybackAllowsAirPlay
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722041697220506C617920697320616C6C6F7765642066726F6D207468697320766965772E
		Sub AllowAirplay(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleView.MediaPlaybackAllowsAirPlay = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AllowInlineMediaPlayback(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.AllowsInlineMediaPlayback
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722048544D4C3520766964656F7320706C617920696E6C696E65206F722075736520746865206E61746976652066756C6C2D73637265656E20636F6E74726F6C6C65722E
		Sub AllowInlineMediaPlayback(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleView.AllowsInlineMediaPlayback = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AllowLinkPreview(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.AllowsLinkPreview
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57686574686572207072657373696E67206F6E2061206C696E6B20646973706C61797320612070726576696577206F66207468652064657374696E6174696F6E20666F7220746865206C696E6B2E20417661696C61626C652073696E636520694F5320392E30206F6E20334420546F75636820646576696365732E
		Sub AllowLinkPreview(extends c as ioshtmlviewer, value as Boolean)
		  c.AppleView.AllowsLinkPreview = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57686574686572205069637475726520696E205069637475726520706C61796261636B20697320616C6C6F7765642066726F6D207468697320766965772E20417661696C61626C652073696E636520694F5320392E302E09
		Function AllowPictureInPicturePlayback(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.AllowsPictureInPicturePlayback
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57686574686572205069637475726520696E205069637475726520706C61796261636B20697320616C6C6F7765642066726F6D207468697320766965772E20417661696C61626C652073696E636520694F5320392E302E09
		Sub AllowPictureInPicturePlayback(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleView.AllowsPictureInPicturePlayback = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206F626A65637420697473656C66206173204170706C6557656256696577
		Function AppleView(extends c as ioshtmlviewer) As AppleWebView
		  return new AppleWebView (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722074686520776562766965772063616E206D6F7665206261636B776172642E2028726561642D6F6E6C7929
		Function CanGoBack(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.CanGoBack
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722074686520776562766965772063616E206D6F766520666F72776172642E2028726561642D6F6E6C7929
		Function CanGoForward(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.CanGoForward
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C6F616473207468652070726576696F7573206C6F636174696F6E20696E20746865206261636B2D666F7277617264206C6973742E
		Sub goBack(extends c as ioshtmlviewer)
		  c.AppleView.GoBack
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C6F61647320746865206E657874206C6F636174696F6E20696E20746865206261636B2D666F7277617264206C6973742E
		Sub goForward(extends c as ioshtmlviewer)
		  c.AppleView.GoForward
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57686574686572207468652057656256696577206973206C6F6164696E6720636F6E74656E742E2028726561642D6F6E6C7929
		Function IsLoading(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.IsLoading
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722048544D4C3520766964656F732063616E20706C6179206175746F6D61746963616C6C79206F72207265717569726520746865207573657220746F20737461727420706C6179696E67207468656D2E
		Function PlayMediaAutomatically(extends c as ioshtmlviewer) As Boolean
		  return not ( c.AppleView.MediaPlaybackRequiresUserAction)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 576865746865722048544D4C3520766964656F732063616E20706C6179206175746F6D61746963616C6C79206F72207265717569726520746865207573657220746F20737461727420706C6179696E67207468656D2E
		Sub PlayMediaAutomatically(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleView.MediaPlaybackRequiresUserAction = not (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656C6F616473207468652063757272656E7420706167652E
		Sub Reload(extends c as ioshtmlviewer)
		  c.AppleView.Reload
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520726573756C74206F662072756E6E696E672061204A617661536372697074207363726970742E
		Function RunJavaScript(extends c as ioshtmlviewer, aScript As Text) As Text
		  return c.AppleView.RunJavaScript (aScript)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57686574686572207468652077656270616765207363616C657320746F2066697420746865207669657720616E642074686520757365722063616E206368616E676520746865207363616C652E
		Function ScalesPageToFit(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.ScalesPageToFit
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57686574686572207468652077656270616765207363616C657320746F2066697420746865207669657720616E642074686520757365722063616E206368616E676520746865207363616C652E
		Sub ScalesPageToFit(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleView.ScalesPageToFit = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F7073206C6F6164696E672074686520636F6E74656E742E
		Sub StopLoading(extends c as ioshtmlviewer)
		  c.AppleView.StopLoading
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5768657468657220746865207765622076696577207375707072657373657320636F6E74656E742072656E646572696E6720756E74696C2069742069732066756C6C79206C6F6164656420696E746F206D656D6F72792E
		Function SuppressRenderDuringLoad(extends c as ioshtmlviewer) As Boolean
		  return c.AppleView.SuppressesIncrementalRendering
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5768657468657220746865207765622076696577207375707072657373657320636F6E74656E742072656E646572696E6720756E74696C2069742069732066756C6C79206C6F6164656420696E746F206D656D6F72792E
		Sub SuppressRenderDuringLoad(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleView.SuppressesIncrementalRendering = value
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
End Module
#tag EndModule
