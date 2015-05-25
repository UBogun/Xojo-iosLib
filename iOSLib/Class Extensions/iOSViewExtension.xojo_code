#tag Module
Protected Module iOSViewExtension
	#tag Method, Flags = &h0
		Function AppleViewCTRL(extends v as iOSView) As AppleViewController
		  return new AppleViewController (v.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dismiss(extends v as iOSView, animated as boolean = false)
		  v.AppleViewCTRL.Dismiss  animated
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PresentationStyle(extends v as iOSView) As AppleViewController.UIViewModalPresentationStyle
		  return v.AppleViewCTRL.ModalPresentationStyle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentationStyle(extends v as iOSView, assigns value as AppleViewController.UIViewModalPresentationStyle)
		  v.AppleViewCTRL.ModalPresentationStyle =value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToCover(extends v as iOSView, newview as iosview)
		  dim newController as new AppleViewController (newview.Handle)
		  newController.ModalTransitonStyle = AppleViewController.UIModalTransitionStyle.CoverVertical
		  v.AppleViewCTRL.Present newController, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToCurl(extends v as iOSView, newview as iosview)
		  dim newController as new AppleViewController (newview.Handle)
		  newController.ModalTransitonStyle = AppleViewController.UIModalTransitionStyle.PartialCurl
		  v.AppleViewCTRL.Present newController, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToDissolve(extends v as iOSView, newview as iosview)
		  dim newController as new AppleViewController (newview.Handle)
		  newController.ModalTransitonStyle = AppleViewController.UIModalTransitionStyle.CrossDissolve
		  v.AppleViewCTRL.Present newController, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToSlide(extends v as iOSView, newview as iosview)
		  dim newController as new AppleViewController (newview.Handle)
		  newController.ModalTransitonStyle = AppleViewController.UIModalTransitionStyle.FlipHorizontal
		  v.AppleViewCTRL.Present newController, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function View(extends c as iOSView) As AppleView
		  return new AppleView (c.ViewHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewHandle(extends v as iOSView) As Ptr
		  declare function view lib UIKit selector "view" (id as ptr) as ptr
		  return view (v.Handle)
		End Function
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
