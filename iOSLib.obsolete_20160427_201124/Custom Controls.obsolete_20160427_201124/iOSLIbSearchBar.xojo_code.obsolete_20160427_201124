#tag Class
Protected Class iOSLIbSearchBar
Inherits iOSLIbCanvas
	#tag Event
		Function CreateView() As uinteger
		  dim subID as uinteger = raiseEvent CreateView
		  if  subid = 0 then
		    dim myview as new AppleSearchBar (FoundationFrameWork.nsmakerect (0,0,100,100))
		    mid = myview
		    myview.RegisterControl (self)
		    // myview.BackgroundColor = AppleColor.WhiteColor
		    
		    return uinteger(myview.id)
		  else
		    return subid
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Draw(Rect  as xojo.core.rect)
		  #pragma unused rect
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub WillShow(window as applewindow)
		  me.UserInteractionEnabled = true
		  me.ExclusiveTouch = false
		  raiseevent WillShow
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function BackgroundImage(BarPosition As UIKitFramework.UIBarPosition, BarMetrics As UIKitFramework.UIBarMetrics) As iOSImage
		  return id.BackgroundImage(BarPosition, BarMetrics).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HorizontalPositionAdjustment(Icon As UIKitFramework.UISearchBarIcon) As double
		  return id.PositionAdjustment(icon).Horizontal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Image(Icon As UIKitFramework.UISearchBarIcon, state as AppleControlState) As iOSImage
		  return id.Image(icon, state).toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonBookmarkButtonClicked()
		  RaiseEvent BookmarkButtonClicked ()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonCancelButtonClicked()
		  RaiseEvent CancelButtonClicked ()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonResultsListButtonClicked()
		  RaiseEvent ResultsListButtonClicked ()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonSearchButtonClicked()
		  
		  RaiseEvent SearchButtonClicked ()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonSelectedScopeButtonIndexDidChange(index as integer)
		  RaiseEvent ScopeButtonSelectionChanged (index)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldBeginEditing() As boolean
		  return  RaiseEvent ShouldNotBeginEditing ()
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldChangeText() As boolean
		  
		  return  RaiseEvent ShouldNotChangeText ()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldEndEditing() As boolean
		  return  RaiseEvent ShouldNotEndEditing ()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTextDidBeginEditing()
		  RaiseEvent editstarted ()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTextDidChange(SearchText as Text)
		  RaiseEvent TextChanged (SearchText)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTextDidEndEditing()
		  RaiseEvent EditFinished ()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScopeBarButtonDividerImages() As iosimage()
		  // Returns the dividerimages for states {Normal, Normal; Selected, Normal; Normal, Selected}
		  dim result() as iOSImage
		  result.append id.ScopeBarButtonDividerImage (AppleControlState.Normal, AppleControlState.Normal).toiOSImage
		  result.append id.ScopeBarButtonDividerImage (AppleControlState.Selected, AppleControlState.Normal).toiOSImage
		  result.append id.ScopeBarButtonDividerImage (AppleControlState.Normal, AppleControlState.selected).toiOSImage
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScopeBarButtonDividerImages(assigns value() as iosimage)
		  // Sets the dividerimages for states {Normal, Normal; Selected, Normal; Normal, Selected}
		  if value.Ubound < 2 then
		    AppleLibSystem.MakeException ("You must supply three values for the different control states in ScopeBarButtonDividerImages")
		  else
		    id.ScopeBarButtonDividerImage (AppleControlState.Normal, AppleControlState.Normal) = value(0).toAppleImage
		    id.ScopeBarButtonDividerImage (AppleControlState.Selected, AppleControlState.Normal) = value(1).toAppleImage
		    id.ScopeBarButtonDividerImage (AppleControlState.Normal, AppleControlState.selected) = value(2).toAppleImage
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchFieldBackgroundImage(state as AppleControlState) As iOSImage
		  return id.SearchFieldBackgroundImage(state).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchFieldBackgroundImage(state as AppleControlState, assigns value as iOSImage)
		  id.SearchFieldBackgroundImage(state) = value.toAppleImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScopeButtonTitles(Paramarray Titles() as Text)
		  dim count as Integer = Titles.Ubound
		  if count = -1 then
		    id.ScopeButtonTitles = nil
		  else
		    id.ScopeButtonTitles = AppleMutableArray.Textarray (titles)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VerticalPositionAdjustment(Icon As UIKitFramework.UISearchBarIcon) As double
		  return id.PositionAdjustment(icon).Vertical
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VerticalPositionAdjustment(Icon As UIKitFramework.UISearchBarIcon, assigns value as double)
		  id.PositionAdjustment (icon) = UIOffset (id.PositionAdjustment(icon).Horizontal, value)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BookmarkButtonClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CancelButtonClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CreateView() As uinteger
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EditFinished()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EditStarted()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ResultsListButtonClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ScopeButtonSelectionChanged(index as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SearchButtonClicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotBeginEditing() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotChangeText() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldNotEndEditing() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextChanged(searchtext as text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillShow()
	#tag EndHook


	#tag Note, Name = SizesThatFit
		
		SizeThatFits under iOS 9.2 returns
		
		Height = 119 with scopebar
		Height = 75 without
		Height = 44 for minimal barstyle
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.BackgroundImage.toiOSImage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.BackgroundImage = value.toAppleImage
			End Set
		#tag EndSetter
		BackgroundImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.BarStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.BarStyle = value
			End Set
		#tag EndSetter
		BarStyle As UIKitFRamework.UIBarStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsBookmarkButton
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsBookmarkButton = value
			End Set
		#tag EndSetter
		BookmarkButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsCancelButton
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsCancelButton = value
			End Set
		#tag EndSetter
		CancelButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.SearchFieldBackgroundPositionAdjustment.Horizontal
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.SearchFieldBackgroundPositionAdjustment = uioffset (value, id.SearchFieldBackgroundPositionAdjustment.Vertical)
			End Set
		#tag EndSetter
		HorizontalSearchFieldBackgroundPositionAdjustment As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.SearchTextPositionAdjustment.Horizontal
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.SearchTextPositionAdjustment = uioffset (value, id.SearchTextPositionAdjustment.Vertical)
			End Set
		#tag EndSetter
		HorizontalSearchTextPositionAdjustment As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applesearchbar(mID)
			End Get
		#tag EndGetter
		ID As AppleSearchbar
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.Placeholder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.Placeholder = value
			End Set
		#tag EndSetter
		Placeholder As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.Prompt
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.Prompt = value
			End Set
		#tag EndSetter
		Prompt As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ScopeBarBackgroundImage.toiOSImage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ScopeBarBackgroundImage = value.toAppleImage
			End Set
		#tag EndSetter
		ScopeBarBackgroundImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result() as text= me.id.ScopeButtonTitles.toTextArray
			  return result.tocommalist
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim newarray as new AppleMutableArray
			  dim texts() as text = value.Split(",")
			  for q as uinteger = 0 to texts.Ubound
			    newarray.AddText texts(q).trim
			  next
			  id.ScopeButtonTitles = newarray
			End Set
		#tag EndSetter
		ScopeButtonTitles As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.SearchbarStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.SearchbarStyle = value
			End Set
		#tag EndSetter
		SearchbarStyle As UIKitFramework.UIsearchBarStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsSearchResultsButton
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsSearchResultsButton = value
			End Set
		#tag EndSetter
		SearchResultsButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.searchResultsButtonSelected
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.searchResultsButtonSelected = value
			End Set
		#tag EndSetter
		searchResultsButtonSelected As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.SearchText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.SearchText = value
			End Set
		#tag EndSetter
		SearchText As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.SelectedScopeButtonIndex
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.SelectedScopeButtonIndex = value
			End Set
		#tag EndSetter
		SelectedButton As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.ShowsScopeBar
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.ShowsScopeBar = value
			End Set
		#tag EndSetter
		ShowsScopeBar As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.Translucent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.Translucent = value
			End Set
		#tag EndSetter
		Translucent As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.SearchFieldBackgroundPositionAdjustment.Vertical
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.SearchFieldBackgroundPositionAdjustment = uioffset (id.SearchFieldBackgroundPositionAdjustment.Horizontal, value)
			End Set
		#tag EndSetter
		VerticalSearchFieldBackgroundPositionAdjustment As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return id.SearchTextPositionAdjustment.Vertical
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  id.SearchTextPositionAdjustment = uioffset (id.SearchTextPositionAdjustment.Horizontal, value)
			End Set
		#tag EndSetter
		VerticalSearchTextPositionAdjustment As double
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
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CancelButton"
			Visible=true
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
			Name="Placeholder"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Prompt"
			Visible=true
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScopeButtonTitles"
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
			Name="Translucent"
			Visible=true
			Group="Behavior"
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
