#tag Module
Protected Module iOSHTMLViewerExtension
	#tag Method, Flags = &h0
		Function AllowAirplay(extends c as ioshtmlviewer) As Boolean
		  return c.AppleWebView.MediaPlaybackAllowsAirPlay
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AllowAirplay(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleWebView.MediaPlaybackAllowsAirPlay = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AllowInlineMediaPlayback(extends c as ioshtmlviewer) As Boolean
		  return c.AppleWebView.AllowsInlineMediaPlayback
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AllowInlineMediaPlayback(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleWebView.AllowsInlineMediaPlayback = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppleWebView(extends c as ioshtmlviewer) As AppleWebView
		  return new AppleWebView (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanGoBack(extends c as ioshtmlviewer) As Boolean
		  return c.AppleWebView.CanGoBack
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanGoForward(extends c as ioshtmlviewer) As Boolean
		  return c.AppleWebView.CanGoForward
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub goBack(extends c as ioshtmlviewer)
		  c.AppleWebView.GoBack
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub goForward(extends c as ioshtmlviewer)
		  c.AppleWebView.GoForward
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsLoading(extends c as ioshtmlviewer) As Boolean
		  return c.AppleWebView.IsLoading
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PlayMediaAutomatically(extends c as ioshtmlviewer) As Boolean
		  return not ( c.AppleWebView.MediaPlaybackRequiresUserAction)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PlayMediaAutomatically(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleWebView.MediaPlaybackRequiresUserAction = not (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reload(extends c as ioshtmlviewer)
		  c.AppleWebView.Reload
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RunJavaScript(extends c as ioshtmlviewer, aScript As Text) As Text
		  return c.AppleWebView.RunJavaScript (aScript)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScalesPageToFit(extends c as ioshtmlviewer) As Boolean
		  return c.AppleWebView.ScalesPageToFit
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScalesPageToFit(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleWebView.ScalesPageToFit = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopLoading(extends c as ioshtmlviewer)
		  c.AppleWebView.StopLoading
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SuppressRenderWhileLoad(extends c as ioshtmlviewer) As Boolean
		  return c.AppleWebView.SuppressesIncrementalRendering
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SuppressRenderWhileLoad(extends c as ioshtmlviewer, assigns value as Boolean)
		  c.AppleWebView.SuppressesIncrementalRendering = value
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
