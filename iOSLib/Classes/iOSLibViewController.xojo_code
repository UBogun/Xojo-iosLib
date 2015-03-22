#tag Class
Protected Class iOSLibViewController
Inherits iOSLibResponder
	#tag Method, Flags = &h0
		Sub Dismiss(animated as boolean = false)
		  declare sub dismissViewControllerAnimated lib UIKit selector "dismissViewControllerAnimated:completion:" _
		  (id as ptr, animated as Boolean, completion as ptr)
		  dim completion as new iOSBlock (AddressOf DismissCompletionBlock)
		  dismissViewControllerAnimated id, animated, completion.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DismissCompletionBlock()
		  if self <> NIL then RaiseEvent DismissViewAnimationFinished
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Present(newView as ioslibviewcontroller, animated as boolean = false)
		  declare sub presentViewController lib UIKit selector "presentViewController:animated:completion:" _
		  (id as ptr, newview as ptr, animated as Boolean, completion as ptr)
		  dim completion as new iOSBlock (AddressOf PresentCompletionBlock)
		  presentViewController id, newview.id, animated, completion.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PresentCompletionBlock()
		  if self <> NIL then RaiseEvent PresentViewAnimationFinished
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DismissViewAnimationFinished()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PresentViewAnimationFinished()
	#tag EndHook


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIViewController")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function modalTransitionStyle lib UIKit selector "modalTransitionStyle" (id as ptr) as UIModalTransitionStyle
			  Return modalTransitionStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setModalTransitionStyle lib UIKit selector "setModalTransitionStyle:" (id as ptr, value as UIModalTransitionStyle)
			  setModalTransitionStyle id, value
			End Set
		#tag EndSetter
		ModalTransitonStyle As UIModalTransitionStyle
	#tag EndComputedProperty


	#tag Enum, Name = UIModalTransitionStyle, Type = Integer, Flags = &h0
		CoverVertical
		  FlipHorizontal
		  CrossDissolve
		PartialCurl
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
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
End Class
#tag EndClass
