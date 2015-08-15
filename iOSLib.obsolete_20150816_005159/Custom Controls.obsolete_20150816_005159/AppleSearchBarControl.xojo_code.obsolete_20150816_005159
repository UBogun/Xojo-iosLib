#tag Class
Protected Class AppleSearchBarControl
Inherits appleviewcontrol
	#tag Event
		Sub Close()
		  ViewObject.RemoveObserver
		  ViewObject = Nil
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As UInteger
		  ViewObject = new AppleSearchBar (NSrect (0,0,100,100), self)
		  return UInteger(ViewObject.id)
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Function BackgroundImage(BarPosition As UIKitFramework.UIBarPosition, BarMetrics As UIKitFramework.UIBarMetrics) As iOSImage
		  return ViewObject.BackgroundImage(BarPosition, BarMetrics).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundImage(BarPosition As UIKitFramework.UIBarPosition, BarMetrics As UIKitFramework.UIBarMetrics, assigns value as iosimage)
		  ViewObject.BackgroundImage (BarPosition, BarMetrics) = value.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HorizontalPositionAdjustment(Icon As UIKitFramework.UISearchBarIcon) As double
		  return ViewObject.PositionAdjustment(icon).Horizontal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HorizontalPositionAdjustment(Icon As uikitframework.UISearchBarIcon, assigns value as double)
		  ViewObject.PositionAdjustment (icon) = UIOffset (value, ViewObject.PositionAdjustment(icon).Vertical)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Image(Icon As UIKitFramework.UISearchBarIcon, state as UIKitFramework.UIControlState) As iOSImage
		  return ViewObject.Image(icon, state).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Image(Icon As UIKitFramework.UISearchBarIcon, state as UIKitFramework.UIControlState, assigns value as iosimage)
		  ViewObject.Image (icon, state) = value.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function operator_convert() As AppleSearchBar
		  return ViewObject
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReceivedEvent(Details as AppleArray)
		  // Part of the AppleNSEventReceiver interface.
		  if not Details.IsNIL then
		    if Details.Count > 0 then
		      dim compare as text = Details.TextAtIndex(0)
		      Select case  compare
		      case AppleView.kWillMoveToWindow, appleview.WillMoveToSuperview, AppleView.DidAddSubview, AppleView.DidMoveToSuperview, _
		        AppleView.DidMoveToWindow, AppleView.WillRemoveSubview, AppleView.TouchesBegan, AppleView.TouchesEnded , _
		        AppleView.TouchesMoved, AppleView.TouchesCancelled, AppleView.MotionBegan, AppleView.MotionEnded, AppleView.MotionCancelled
		        super.ReceivedEvent (details)
		        
		        
		      case AppleSearchBar.kTextDidChange
		        dim mytext as text
		        if Details.Count > 1 then mytext =  Details.TextAtIndex(1)
		        raiseevent TextDidChange (myText)
		      case AppleSearchBar.kTextDidBeginEditing
		        raiseevent TextDidBeginEditing ()
		      case AppleSearchBar.kTextDidEndEditing
		        raiseevent TextDidEndEditing ()
		      case AppleSearchBar.kBookmarkButtonClicked
		        RaiseEvent BookmarkButtonClicked
		      case AppleSearchBar.kCancelButtonClicked
		        RaiseEvent CancelButtonClicked
		      case AppleSearchBar.kSearchButtonClicked
		        RaiseEvent SearchButtonClicked
		      case AppleSearchBar.kResultsListButtonClicked
		        RaiseEvent ResultsListButtonClicked
		      case AppleSearchBar.kScopeButtonSelectionChanged
		        dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        RaiseEvent ScopeButtonSelectionChanged (mynumber.integervalue)
		      else
		        break
		      End Select
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReceivedReturnEvent(Details as AppleArray) As boolean
		  // Part of the AppleNSEventReceiver interface.
		  if not Details.IsNIL then
		    if Details.Count > 0 then
		      dim compare as text = Details.TextAtIndex(0)
		      Select case  compare
		        // case appleview.WillMoveToSuperview
		        // dim newview as AppleView
		        // if Details.Count > 1 then newview  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        // RaiseEvent WillMoveToSuperview (newview)
		        // case AppleView.WillMoveToWindow
		        // dim windowptr as ptr
		        // if Details.Count > 1 then WindowPtr = Details.PtrAtIndex(1)
		        // RaiseEvent WillMoveToWindow (windowptr)
		        // case AppleView.DidAddSubview
		        // dim newview as AppleView  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        // RaiseEvent DidAddSubview (newview)
		        // case AppleView.DidMoveToSuperview
		        // RaiseEvent DidMoveToSuperview
		        // case AppleView.DidMoveToWindow
		        // RaiseEvent DidMoveToWindow
		        // OrientationFrame = me.AppleView.Frame
		        // case AppleView.WillRemoveSubview
		        // dim newview as AppleView  = AppleView.MakeFromPtr (Details.PtrAtIndex(1))
		        // RaiseEvent WillRemoveSubview (newview)
		        // case AppleView.TouchesBegan
		        // raiseEvent TouchesBegan (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.TouchesEnded
		        // raiseEvent TouchesEnded (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.TouchesMoved
		        // raiseEvent TouchesMoved (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.TouchesCancelled
		        // raiseEvent TouchesCancelled (AppleSet.makefromptr (Details.PtrAtIndex(1)), AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.MotionBegan
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        // RaiseEvent MotionBegan (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.MotionEnded
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        // RaiseEvent MotionEnded (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.MotionCancelled
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // dim myType as AppleNSEvent.UIEventSubtype = AppleNSEvent.UIEventSubtype (mynumber.IntegerValue)
		        // RaiseEvent MotionCancelled (mytype, AppleNSEvent.makefromptr  (Details.PtrAtIndex(2)))
		        // case AppleView.LayoutSubviews
		        // if OrientationFrame.size_.width <> me.AppleView.Frame.size_.width then
		        // OrientationFrame = me.AppleView.Frame
		        // RaiseEvent OrientationChanged
		        // if ViewArray.Ubound > -1 then
		        // StitchViews
		        // end if
		        // end if
		        // raiseevent LayoutSubviews
		        // case appleview.DrawRect
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // RaiseEvent DrawRect (mynumber.NSRectValue)
		        // case AppleScrollView.kdidendzoom
		        // dim myview as appleview = appleview.MakeFromPtr (details.PtrAtIndex(1))
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(2))
		        // RaiseEvent DidEndZoom (myview, mynumber.doublevalue)
		        // case AppleScrollView.kDidScroll
		        // raiseevent DidScroll
		        // case AppleScrollView.kDoubleTap
		        // RaiseEvent doubleTap (me.appleview.DoubleTapRecognizer)
		        // case AppleScrollView.kWillBeginZooming
		        // dim myview as appleview = appleview.MakeFromPtr (details.PtrAtIndex(1))
		        // RaiseEvent WillZoom (myview)
		        // case AppleScrollView.kWillBeginDragging
		        // RaiseEvent WillDrag
		        // case AppleScrollView.kDidEndDrag
		        // dim mynumber as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // raiseEvent DidDrag (mynumber.BoolValue)
		        // case AppleScrollView.kShouldScrollToTop
		        // if AppleView.ScrollsToTop then raiseEvent WillScrollToTop
		        // case AppleScrollView.kDidZoom
		        // raiseevent didzoom
		        // case AppleScrollView.kScrollingAnimationEnded
		        // RaiseEvent ScrollingEnded
		        // case AppleScrollView.kDidScrollToTop
		        // raiseEvent DidScrollToTop
		        // case AppleScrollView.kWillBeginDecelerating
		        // raiseEvent WillDecelerate
		        // case AppleScrollView.kDidEndDecelerating
		        // raiseEvent DidDecelerate
		        // case AppleScrollView.kWillEndDrag
		        // dim mynumber1 as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        // dim mynumber2 as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(2))
		        // RaiseEvent WillEndDrag (mynumber1.NSPointValue.tocorePoint, mynumber2.NSPointValue.toCorePoint)
		        // case AppleScrollView.kTwoFingerTap
		        // RaiseEvent TwoFingerTap (me.appleview.TwoFingerTapRecognizer)
		      case AppleSearchBar.kTextShouldChange
		        dim location as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(1))
		        dim length as AppleNumber = AppleNumber.MakefromPtr(Details.PtrAtIndex(2))
		        dim mytext as text
		        if Details.Count > 3 then mytext =  Details.TextAtIndex(3)
		        return raiseevent TextShouldChange (location.IntegerValue, length.IntegerValue, myText)
		      case AppleSearchBar.kShouldBeginEditing
		        return raiseevent ShouldBeginEditing
		      case AppleSearchBar.kShouldEndEditing
		        return raiseevent ShouldEndEditing
		      else
		        break
		      End Select
		    end if
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScopeBarButtonDividerImages() As iosimage()
		  // Returns the dividerimages for states {Normal, Normal; Selected, Normal; Normal, Selected}
		  dim result() as iOSImage
		  result.append ViewObject.ScopeBarButtonDividerImage (UIKitFramework.UIControlState.Normal, UIKitFramework.UIControlState.Normal).toiOSImage
		  result.append ViewObject.ScopeBarButtonDividerImage (UIKitFramework.UIControlState.Selected, UIKitFramework.UIControlState.Normal).toiOSImage
		  result.append ViewObject.ScopeBarButtonDividerImage (UIKitFramework.UIControlState.Normal, UIKitFramework.UIControlState.selected).toiOSImage
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScopeBarButtonDividerImages(assigns value() as iosimage)
		  // Sets the dividerimages for states {Normal, Normal; Selected, Normal; Normal, Selected}
		  if value.Ubound < 2 then
		    AppleLibSystem.MakeException ("You must supply three values for the different control states in ScopeBarButtonDividerImages")
		  else
		    ViewObject.ScopeBarButtonDividerImage (UIKitFramework.UIControlState.Normal, UIKitFramework.UIControlState.Normal) = value(0).toAppleImage
		    ViewObject.ScopeBarButtonDividerImage (UIKitFramework.UIControlState.Selected, UIKitFramework.UIControlState.Normal) = value(1).toAppleImage
		    ViewObject.ScopeBarButtonDividerImage (UIKitFramework.UIControlState.Normal, UIKitFramework.UIControlState.selected) = value(2).toAppleImage
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchFieldBackgroundImage(state as UIKitFramework.uicontrolstate) As iOSImage
		  return ViewObject.SearchFieldBackgroundImage(state).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchFieldBackgroundImage(state as UIKitFramework.uicontrolstate, assigns value as iOSImage)
		  ViewObject.SearchFieldBackgroundImage(state) = value.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScopeButtonTitles(Paramarray Titles() as Text)
		  dim count as Integer = Titles.Ubound
		  if count = -1 then
		    ViewObject.ScopeButtonTitles = nil
		  else
		    ViewObject.ScopeButtonTitles = AppleMutableArray.Textarray (titles)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VerticalPositionAdjustment(Icon As UIKitFramework.UISearchBarIcon) As double
		  return ViewObject.PositionAdjustment(icon).Vertical
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VerticalPositionAdjustment(Icon As UIKitFramework.UISearchBarIcon, assigns value as double)
		  ViewObject.PositionAdjustment (icon) = UIOffset (ViewObject.PositionAdjustment(icon).Horizontal, value)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BookmarkButtonClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CancelButtonClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ResultsListButtonClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ScopeButtonSelectionChanged(ButtonIndex as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SearchButtonClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldBeginEditing() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldEndEditing() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextDidBeginEditing()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextDidChange(SearchText As Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextDidEndEditing()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextShouldChange(Location as integer, Length as integer, NewText As Text) As boolean
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject
			End Get
		#tag EndGetter
		AppleView As AppleSearchBar
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.BackgroundImage.toiOSImage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.BackgroundImage = value.toAppleImage
			End Set
		#tag EndSetter
		BackgroundImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.BarStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.BarStyle = value
			End Set
		#tag EndSetter
		BarStyle As UIKitFRamework.UIBarStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ShowsBookmarkButton
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ShowsBookmarkButton = value
			End Set
		#tag EndSetter
		BookmarkButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ShowsCancelButton
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ShowsCancelButton = value
			End Set
		#tag EndSetter
		CancelButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ConfirmChangesInEvents
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ConfirmChangesInEvents = true
			End Set
		#tag EndSetter
		ConfirmChangesInEvents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.SearchFieldBackgroundPositionAdjustment.Horizontal
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.SearchFieldBackgroundPositionAdjustment = uioffset (value, ViewObject.SearchFieldBackgroundPositionAdjustment.Vertical)
			End Set
		#tag EndSetter
		HorizontalSearchFieldBackgroundPositionAdjustment As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.SearchTextPositionAdjustment.Horizontal
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.SearchTextPositionAdjustment = uioffset (value, ViewObject.SearchTextPositionAdjustment.Vertical)
			End Set
		#tag EndSetter
		HorizontalSearchTextPositionAdjustment As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.Placeholder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.Placeholder = value
			End Set
		#tag EndSetter
		Placeholder As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.Prompt
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.Prompt = value
			End Set
		#tag EndSetter
		Prompt As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ScopeBarBackgroundImage.toiOSImage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ScopeBarBackgroundImage = value.toAppleImage
			End Set
		#tag EndSetter
		ScopeBarBackgroundImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.SearchbarStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.SearchbarStyle = value
			End Set
		#tag EndSetter
		SearchbarStyle As UIKitFramework.UIsearchBarStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ShowsSearchResultsButton
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ShowsSearchResultsButton = value
			End Set
		#tag EndSetter
		SearchResultsButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.searchResultsButtonSelected
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.searchResultsButtonSelected = value
			End Set
		#tag EndSetter
		searchResultsButtonSelected As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.SearchText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.SearchText = value
			End Set
		#tag EndSetter
		SearchText As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.SelectedScopeButtonIndex
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.SelectedScopeButtonIndex = value
			End Set
		#tag EndSetter
		SelectedButton As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.ShowsScopeBar
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.ShowsScopeBar = value
			End Set
		#tag EndSetter
		ShowsScopeBar As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.Translucent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.Translucent = value
			End Set
		#tag EndSetter
		Translucent As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.SearchFieldBackgroundPositionAdjustment.Vertical
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.SearchFieldBackgroundPositionAdjustment = uioffset (ViewObject.SearchFieldBackgroundPositionAdjustment.Horizontal, value)
			End Set
		#tag EndSetter
		VerticalSearchFieldBackgroundPositionAdjustment As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ViewObject.SearchTextPositionAdjustment.Vertical
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ViewObject.SearchTextPositionAdjustment = uioffset (ViewObject.SearchTextPositionAdjustment.Horizontal, value)
			End Set
		#tag EndSetter
		VerticalSearchTextPositionAdjustment As double
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ViewObject As AppleSearchBar
	#tag EndProperty


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
			Name="BarStyle"
			Group="Behavior"
			Type="UIKitFRamework.UIBarStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Black"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BookmarkButton"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CancelButton"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConfirmChangesInEvents"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalSearchFieldBackgroundPositionAdjustment"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalSearchTextPositionAdjustment"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Placeholder"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Prompt"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SearchbarStyle"
			Group="Behavior"
			Type="UIKitFramework.UIsearchBarStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Prominent"
				"2 - Minimal"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SearchResultsButton"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="searchResultsButtonSelected"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SearchText"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedButton"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsScopeBar"
			Visible=true
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
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Translucent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalSearchFieldBackgroundPositionAdjustment"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalSearchTextPositionAdjustment"
			Group="Behavior"
			Type="double"
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
