#tag Class
Protected Class AppleViewController
Inherits AppleResponder
	#tag Method, Flags = &h0
		 Shared Sub AttemptRotationToDeviceOrientation()
		  Declare Sub attemptRotationToDeviceOrientation lib UIKit selector "attemptRotationToDeviceOrientation" (id as ptr)
		  attemptRotationToDeviceOrientation classptr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dismiss(animated as boolean = false)
		  declare sub dismissViewControllerAnimated lib UIKit selector "dismissViewControllerAnimated:completion:" _
		  (id as ptr, animated as Boolean, completion as ptr)
		  dim completion as new AppleBlock (AddressOf DismissCompletionBlock)
		  dismissViewControllerAnimated id, animated, completion.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DismissCompletionBlock()
		  if self <> NIL then RaiseEvent DismissViewAnimationFinished
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadView()
		  declare sub loadView lib UIKit selector "loadView:" (id as ptr)
		  loadview id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleViewController
		  return if (aptr= nil, nil, new AppleViewController(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Present(newView as AppleViewcontroller, animated as boolean = false)
		  declare sub presentViewController lib UIKit selector "presentViewController:animated:completion:" _
		  (id as ptr, newview as ptr, animated as Boolean, completion as ptr)
		  dim completion as new AppleBlock (AddressOf PresentCompletionBlock)
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


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function view lib uikit selector "view" (id as ptr) as ptr
			  return appleview.MakeFromPtr (view(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setView lib uikit selector "setView:" (id as ptr, value as ptr)
			  setView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AppleView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function automaticallyAdjustsScrollViewInsets lib uikit selector "automaticallyAdjustsScrollViewInsets" (id as ptr) as Boolean
			  return automaticallyAdjustsScrollViewInsets (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAutomaticallyAdjustsScrollViewInsets lib uikit selector "setAutomaticallyAdjustsScrollViewInsets:" (id as ptr, value as Boolean)
			  setAutomaticallyAdjustsScrollViewInsets id, value
			End Set
		#tag EndSetter
		AutomaticallyAdjustsScrollViewInsets As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function shouldAutorotate lib uikit selector "shouldAutorotate" (id as ptr) as Boolean
			  return shouldAutorotate (id)
			End Get
		#tag EndGetter
		AutoRotate As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIViewController")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function edgesForExtendedLayout lib uikit selector "edgesForExtendedLayout" (id as ptr) as uinteger
			  return new UIRectEdge (edgesForExtendedLayout (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setEdgesForExtendedLayout lib uikit selector "setEdgesForExtendedLayout:" (id as ptr, value as uinteger)
			  setEdgesForExtendedLayout id, value.id
			End Set
		#tag EndSetter
		EdgesForExtendedLayout As UIRectEdge
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function extendedLayoutIncludesOpaqueBars lib uikit selector "extendedLayoutIncludesOpaqueBars" (id as ptr) as Boolean
			  return extendedLayoutIncludesOpaqueBars (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setExtendedLayoutIncludesOpaqueBars lib uikit selector "setExtendedLayoutIncludesOpaqueBars:" (id as ptr, value as Boolean)
			  setExtendedLayoutIncludesOpaqueBars id, value
			End Set
		#tag EndSetter
		ExtendedLayoutIncludesOpaqueBars As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isModalInPopover lib uikit selector "isModalInPopover" (id as ptr) as Boolean
			  return isModalInPopover (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setModalInPopover lib uikit selector "setModalInPopover:" (id as ptr, value as Boolean)
			  setModalInPopover id, value
			End Set
		#tag EndSetter
		ModalInPopover As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function modalPresentationStyle lib UIKit selector "modalPresentationStyle" (id as ptr) as UIViewModalPresentationStyle
			  Return modalPresentationStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setModalPresentationStyle lib UIKit selector "setModalPresentationStyle:" (id as ptr, value as UIViewModalPresentationStyle)
			  setModalPresentationStyle id, value
			End Set
		#tag EndSetter
		ModalPresentationStyle As UIViewModalPresentationStyle
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function navigationController lib uikit selector "navigationController" (id as ptr) as ptr
			  return navigationController (id)
			End Get
		#tag EndGetter
		NavigationController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function nibBundle lib uikit selector "nibBundle" (id as ptr) as Ptr
			  return AppleCFBundle.MakeFromCFTypeRef (nibBundle(id))
			End Get
		#tag EndGetter
		NibBundle As AppleCFBundle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function nibName lib uikit selector "nibName" (id as ptr) as CFStringRef
			  return nibName (id)
			End Get
		#tag EndGetter
		NibName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function parentViewController lib uikit selector "parentViewController" (id as ptr) as ptr
			  return appleviewcontroller.MakeFromPtr (parentViewController (id))
			End Get
		#tag EndGetter
		ParentViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function popoverPresentationController lib uikit selector "popoverPresentationController" (id as ptr) as ptr
			  return popoverPresentationController (id)
			End Get
		#tag EndGetter
		PopOverPresentationController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function presentationController lib uikit selector "presentationController" (id as ptr) as ptr
			  return presentationController (id)
			End Get
		#tag EndGetter
		PresentationController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function presentedViewController lib uikit selector "presentedViewController" (id as ptr) as ptr
			  return appleviewcontroller.MakeFromPtr (presentedViewController (id))
			End Get
		#tag EndGetter
		PresentedViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function presentingViewController lib uikit selector "presentingViewController" (id as ptr) as ptr
			  return appleviewcontroller.MakeFromPtr (presentingViewController (id))
			End Get
		#tag EndGetter
		PresentingViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function splitViewController lib uikit selector "splitViewController" (id as ptr) as ptr
			  return splitViewController (id)
			End Get
		#tag EndGetter
		SplitViewController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function supportedInterfaceOrientations lib UIKit selector "supportedInterfaceOrientations" (id as ptr) as UInteger
			  Return new AppleInterfaceOrientationMask (supportedInterfaceOrientations(id))
			End Get
		#tag EndGetter
		SupportedOrientations As AppleInterfaceOrientationMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function tabBarController lib uikit selector "tabBarController" (id as ptr) as ptr
			  return tabBarController (id)
			End Get
		#tag EndGetter
		TabBarController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getTitle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTitle value
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isViewLoaded lib uikit selector "isViewLoaded" (id as ptr) as Boolean
			  return isViewLoaded (id)
			End Get
		#tag EndGetter
		ViewIsLoaded As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutomaticallyAdjustsScrollViewInsets"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoRotate"
			Group="Behavior"
			Type="Boolean"
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
			Name="ExtendedLayoutIncludesOpaqueBars"
			Group="Behavior"
			Type="Boolean"
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
			Name="IsFirstResponder"
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
			Name="ModalInPopover"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ModalPresentationStyle"
			Group="Behavior"
			Type="UIViewModalPresentationStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - FullScreen"
				"1 - PageSheet"
				"2 - FormSheet"
				"3 - CurrentContext"
				"4 - Custom"
				"5 - OverFullScreen"
				"6 - OverCurrentContext"
				"7 - PopOver"
				"-1 - None"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ModalTransitonStyle"
			Group="Behavior"
			Type="UIModalTransitionStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - CoverVertical"
				"1 - FlipHorizontal"
				"2 - CrossDissolve"
				"3 - PartialCurl"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NibName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ViewIsLoaded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
