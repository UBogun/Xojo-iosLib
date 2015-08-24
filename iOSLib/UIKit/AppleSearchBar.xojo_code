#tag Class
Protected Class AppleSearchBar
Inherits AppleView
	#tag Method, Flags = &h0
		Sub AnimateCancelButton(value as boolean)
		  Declare sub setShowsCancelButton lib UIKit selector "setShowsCancelButton:animated:" (id as ptr, value as boolean, animated as boolean)
		  setShowsCancelButton id, value, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundImage(BarPosition As UIBarPosition, BarMetrics As UIBarMetrics) As AppleImage
		  Declare function backgroundImageForBarPosition lib uikit selector "backgroundImageForBarPosition:barMetrics:" (id as ptr, BarPosition as UIBarPosition, BarMetrics as UIBarMetrics) as ptr
		  return appleimage.MakeFromPtr(backgroundImageForBarPosition(id, BarPosition, BarMetrics))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundImage(BarPosition As UIBarPosition, BarMetrics As UIBarMetrics, assigns value as appleimage)
		  Declare sub setBackgroundImageForBarPosition lib uikit selector "setBackgroundImage:forBarPosition:barMetrics:" (id as ptr, value as ptr, BarPosition as UIBarPosition, BarMetrics as UIBarMetrics)
		  setbackgroundImageForBarPosition(id,  if (value = nil, nil, value.id), BarPosition, BarMetrics)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aRect as NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame As NSRect) -- From AppleView
		  // Constructor(aFrame As NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if mConfirmChangesinEvent = nil then mConfirmChangesinEvent = new Dictionary
		  Super.Constructor (DoInitWithFrame(alloc(ClassPtr), aRect))
		  MHasOwnerShip = true
		  me.setDelegate id, id
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame As NSRect, observer as AppleNSEventReceiver)
		  Constructor (aFrame)
		  RegisterObserver (observer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mConfirmChangesinEvent.HasKey (id) then mConfirmChangesinEvent.Remove id
		  super.Destructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Image(Icon As UISearchBarIcon, state as UIControlState) As AppleImage
		  Declare function imageForSearchBarIcon lib uikit selector "imageForSearchBarIcon:state:" (id as ptr, Icon As UISearchBarIcon, state as UIControlState) as ptr
		  return appleimage.MakeFromPtr(imageForSearchBarIcon(id, icon, state))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Image(Icon As UISearchBarIcon, state as UIControlState, assigns value as AppleImage)
		  Declare Sub setimageForSearchBarIcon lib uikit selector "setImage:orSearchBarIcon:state:" (id as ptr, value as ptr, Icon As UISearchBarIcon, state as UIControlState)
		  setimageForSearchBarIcon id, if (value = nil, nil, value.id), icon, state
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidAddSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonDidAddSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToSuperview(pid as ptr, sel as ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonDidMoveToSuperview
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToWindow(pid as ptr, sel as ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonDidMoveToWindow
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionBeganWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonMotionBeganwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionCancelledWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonMotionCancelledwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionEndedWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonMotionEndedwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SearchBarBookmarkButtonClicked(pid as ptr, sel as ptr, searchbar as ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonBookmarkButtonClicked  ()
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SearchBarCancelButtonClicked(pid as ptr, sel as ptr, searchbar as ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonCancelButtonClicked  ()
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SearchBarResultsListButtonClicked(pid as ptr, sel as ptr, searchbar as ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonResultsListButtonClicked  ()
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SearchBarSearchButtonClicked(pid as ptr, sel as ptr, searchbar as ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonSearchButtonClicked  ()
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_SearchBarShouldBeginEditing(pid as ptr, sel as ptr, searchbar as ptr) As Boolean
		  dim ego as new AppleSearchBar (pid)
		  return ego.informonShouldBeginEditing  ()
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_SearchBarShouldChangeText(pid as ptr, sel as ptr, searchbar as ptr, Range as NSRange, searchtext as cfstringref) As Boolean
		  dim ego as new AppleSearchBar (pid)
		  return ego.informonShouldChangeText  (range, SearchText)
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_SearchBarShouldEndEditing(pid as ptr, sel as ptr, searchbar as ptr) As Boolean
		  dim ego as new AppleSearchBar (pid)
		  return ego.informonShouldEndEditing  ()
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SearchBarTextDidBeginEditing(pid as ptr, sel as ptr, searchbar as ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonTextDidBeginEditing  ()
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SearchBarTextDidChange(pid as ptr, sel as ptr, searchbar as ptr, searchtext as cfstringref)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonTextDidChange  (SearchText)
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SearchBarTextDidEndEditing(pid as ptr, sel as ptr, searchbar as ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonTextDidEndEditing  ()
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_SelectedScopeButtonIndexDidChange(pid as ptr, sel as ptr, searchbar as ptr, buttonIndex as Integer)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonSelectedScopeButtonIndexDidChange  (buttonIndex)
		  
		  #Pragma Unused  sel
		  #pragma unused searchbar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesBeganWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleView (pid)
		  ego.informonTouchesBeganwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesCancelledWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonTouchesCancelledwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesEndedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonTouchesEndedwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesMovedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonTouchesMovedwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToSuperview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonwillMoveToSuperview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToWindow(pid as ptr, sel as ptr, window as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonwillMoveToWindow (window)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willRemoveSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleSearchBar (pid)
		  ego.informonwillRemoveSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonBookmarkButtonClicked()
		  RaiseEvent BookmarkButtonClicked ()
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kBookmarkButtonClicked
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonCancelButtonClicked()
		  RaiseEvent CancelButtonClicked ()
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kCancelButtonClicked
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonResultsListButtonClicked()
		  RaiseEvent ResultsListButtonClicked ()
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kResultsListButtonClicked
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonSearchButtonClicked()
		  RaiseEvent SearchButtonClicked ()
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kSearchButtonClicked
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonSelectedScopeButtonIndexDidChange(Index as integer)
		  RaiseEvent ScopeButtonSelectionChanged (index)
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  kScopeButtonSelectionChanged
		    myarray.Addobject new applenumber (index)
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldBeginEditing() As boolean
		  if ConfirmChangesinEvents then
		    If Observers.HasKey(id) then
		      dim myarray as new AppleMutableArray(1)
		      myarray.AddText  kShouldbeginEditing
		      return NotifyObserversBoolean (myarray)
		    End If
		  else
		    return true
		  end if
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldChangeText(aRange as NSRange, SearchText as Text) As boolean
		  if ConfirmChangesinEvents then
		    If Observers.HasKey(id) then
		      dim myarray as new AppleMutableArray(4)
		      myarray.AddText  kTextShouldChange
		      dim location as integer = arange.location
		      myarray.Addobject new AppleNumber (location)
		      dim length as integer = aRange.length
		      myarray.Addobject new AppleNumber (length)
		      if not SearchText.Empty then myarray.AddText SearchText
		      return NotifyObserversBoolean (myarray)
		    End If
		  else
		    return true
		  end if
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldEndEditing() As boolean
		  if ConfirmChangesinEvents then
		    If Observers.HasKey(id) then
		      dim myarray as new AppleMutableArray(1)
		      myarray.AddText  kShouldEndEditing
		      return NotifyObserversBoolean (myarray)
		    End If
		  else
		    return true
		  end if
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTextDidBeginEditing()
		  RaiseEvent TextDidBeginEditing ()
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kTextDidBeginEditing
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonTextDidChange(SearchText as Text)
		  RaiseEvent TextDidChange (SearchText)
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(2)
		    myarray.AddText  kTextDidChange
		    if not SearchText.Empty then myarray.AddText SearchText
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTextDidEndEditing()
		  RaiseEvent TextDidEndEditing ()
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kTextDidEndEditing
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PositionAdjustment(Icon As UISearchBarIcon) As UIOffset
		  #if Target64Bit
		    Declare function positionAdjustmentForSearchBarIcon lib uikit selector "positionAdjustmentForSearchBarIcon:" (id as ptr, Icon As UISearchBarIcon) as UIOffset
		    return positionAdjustmentForSearchBarIcon (id, Icon)
		  #elseif Target32Bit
		    Declare function positionAdjustmentForSearchBarIcon lib uikit selector "positionAdjustmentForSearchBarIcon:" (id as ptr, Icon As UISearchBarIcon) as UIOffset32Bit
		    return positionAdjustmentForSearchBarIcon(id, Icon).toUIOffset
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PositionAdjustment(Icon As UISearchBarIcon, assigns value as uioffset)
		  #if Target64Bit
		    Declare Sub setPositionAdjustmentForSearchBarIcon lib uikit selector "setPositionAdjustment:forSearchBarIcon:" (id as ptr, Icon As UISearchBarIcon, value as UIOffset)
		    setpositionAdjustmentForSearchBarIcon (id, Icon, value)
		  #elseif Target32Bit
		    Declare Sub setPositionAdjustmentForSearchBarIcon lib uikit selector "setPositionAdjustment:forSearchBarIcon:" (id as ptr, Icon As UISearchBarIcon, value as UIOffset32Bit)
		    setpositionAdjustmentForSearchBarIcon (id, Icon, value.toUIOffset32)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScopeBarButtonDividerImage(Leftstate as UIControlState, RightState as UIControlState) As AppleImage
		  Declare function scopeBarButtonDividerImageForLeftSegmentState lib uikit selector "scopeBarButtonDividerImageForLeftSegmentState:rightSegmentState:" (id as ptr, Leftstate as UIControlState, RightState as UIControlState) as ptr
		  return appleimage.MakeFromPtr(scopeBarButtonDividerImageForLeftSegmentState(id, Leftstate, RightState))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScopeBarButtonDividerImage(Leftstate as UIControlState, RightState as UIControlState, assigns value as appleimage)
		  Declare Sub setScopeBarButtonDividerImageForLeftSegmentState lib uikit selector "setScopeBarButtonDividerImage:forLeftSegmentState:rightSegmentState:" (id as ptr, value as ptr, Leftstate as UIControlState, RightState as UIControlState)
		  setScopeBarButtonDividerImageForLeftSegmentState (id, if (value = nil, nil, value.id), Leftstate, RightState)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScopeBarButtonTitleTextAttributes(State as UIControlState) As ApplemutableDictionary
		  Declare function scopeBarButtonTitleTextAttributesForState lib uikit selector "scopeBarButtonTitleTextAttributesForState:" (id as ptr, State as UIControlState) as ptr
		  return AppleMutableDictionary.MakeFromPtr(scopeBarButtonTitleTextAttributesForState(id, State))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScopeBarButtonTitleTextAttributes(State as UIControlState, assigns value as AppleDictionary)
		  Declare Sub setScopeBarButtonTitleTextAttributes lib uikit selector "setScopeBarButtonTitleTextAttributes:forState:" (id as ptr, value as ptr, State as UIControlState)
		  setScopeBarButtonTitleTextAttributes id, if (value = nil, nil, value.id), state
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchFieldBackgroundImage(state as UIControlState) As AppleImage
		  Declare function searchFieldBackgroundImageForState lib uikit selector "searchFieldBackgroundImageForState:" (id as ptr, state as UIControlState) as ptr
		  return appleimage.MakeFromPtr(searchFieldBackgroundImageForState(id, state))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchFieldBackgroundImage(state as UIControlState, assigns value as AppleImage)
		  Declare Sub setSearchFieldBackgroundImage lib uikit selector "setSearchFieldBackgroundImage:forState:" (id as ptr, value as ptr, state as UIControlState)
		  setSearchFieldBackgroundImage id, if (value = nil, nil, value.id), state
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
		Event TextDidBeginEditing()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextDidChange(SearchText As Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextDidEndEditing()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleSearchBar(GetAppearance(classptr))
			End Get
		#tag EndGetter
		Shared Appearance As AppleSearchBar
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function backgroundImage lib UIKit selector "backgroundImage" (id as ptr) as Ptr
			  Return AppleImage.MakeFromPtr (backgroundImage (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBackgroundImage lib UIKit selector "setBackgroundImage:" (id as ptr, value as Ptr)
			  setBackgroundImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundImage As appleimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function barStyle lib UIKit selector "barStyle" (id as ptr) as UIBarStyle
			  Return barStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBarStyle lib UIKit selector "setBarStyle:" (id as ptr, value as UIBarStyle)
			  setbarStyle id, value
			End Set
		#tag EndSetter
		BarStyle As UIBarStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function barTintColor lib UIKit selector "barTintColor" (id as ptr) as Ptr
			  Return AppleColor.MakeFromPtr (barTintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBarTintColor lib UIKit selector "setBarTintColor:" (id as ptr, value as Ptr)
			  setBarTintColor id, value.Id
			End Set
		#tag EndSetter
		BarTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    if Observers = nil then Observers = new Dictionary
			    dim methods() as TargetClassMethodHelper
			    //override UIView methods
			    methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    
			    methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    //
			    methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    
			    // UISearchBar method
			    Methods.Append new TargetClassMethodHelper("searchBar:textDidChange:", AddressOf impl_SearchBarTextDidChange, "v@:@@")
			    Methods.Append new TargetClassMethodHelper("searchBar:shouldChangeTextInRange:replacementText:", AddressOf impl_SearchBarShouldChangeText, "b@:@{NSRange}@")
			    Methods.Append new TargetClassMethodHelper("searchBarTextDidBeginEditing:", AddressOf impl_SearchBarTextDidBeginEditing, "v@:@")
			    Methods.Append new TargetClassMethodHelper("searchBarShouldBeginEditing:", AddressOf impl_SearchBarShouldBeginEditing, "b@:@")
			    Methods.Append new TargetClassMethodHelper("searchBarTextDidEndEditing:", AddressOf impl_SearchBarTextDidEndEditing, "v@:@")
			    Methods.Append new TargetClassMethodHelper("searchBarShouldEndEditing:", AddressOf impl_SearchBarShouldEndEditing, "b@:@")
			    
			    Methods.Append new TargetClassMethodHelper("searchBarBookmarkButtonClicked:", AddressOf impl_SearchBarBookmarkButtonClicked, "v@:@")
			    Methods.Append new TargetClassMethodHelper("searchBarCancelButtonClicked:", AddressOf impl_SearchBarCancelButtonClicked, "v@:@")
			    Methods.Append new TargetClassMethodHelper("searchBarSearchButtonClicked:", AddressOf impl_SearchBarSearchButtonClicked, "v@:@")
			    Methods.Append new TargetClassMethodHelper("searchBarResultsListButtonClicked:", AddressOf impl_SearchBarResultsListButtonClicked, "v@:@")
			    
			    Methods.Append new TargetClassMethodHelper("searchBar:selectedScopeButtonIndexDidChange:", AddressOf impl_SelectedScopeButtonIndexDidChange, "v@:@i")
			    
			    #if Target64Bit
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			    #elseif Target32Bit
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			    #endif
			    
			    targetID = BuildTargetClass ("UISearchBar", "iOSLibSearchBar",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		Shared ConfirmChangesInEvent As dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mConfirmChangesinEvent.HasKey (id) then
			    dim mybool as boolean = mConfirmChangesinEvent.Value(id)
			    return mybool
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mConfirmChangesinEvent.Value(id) = value
			End Set
		#tag EndSetter
		ConfirmChangesInEvents As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared mConfirmChangesinEvent As dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getplaceholder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetPlaceHolder value
			End Set
		#tag EndSetter
		Placeholder As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function prompt lib UIKit selector "prompt" (id as ptr) as CFStringRef
			  Return prompt (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPrompt lib UIKit selector "setPrompt:" (id as ptr, value as CFStringRef)
			  setPrompt id, value
			End Set
		#tag EndSetter
		Prompt As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scopeBarBackgroundImage lib UIKit selector "scopeBarBackgroundImage" (id as ptr) as Ptr
			  Return AppleImage.MakeFromPtr (scopeBarBackgroundImage (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setScopeBarBackgroundImage lib UIKit selector "setScopeBarBackgroundImage:" (id as ptr, value as Ptr)
			  setScopeBarBackgroundImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ScopeBarBackgroundImage As appleimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scopeButtonTitles lib UIKit selector "scopeButtonTitles" (id as ptr) as Ptr
			  Return AppleArray.MakeFromPtr (scopeButtonTitles (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setScopeButtonTitles lib UIKit selector "setScopeButtonTitles:" (id as ptr, value as Ptr)
			  setScopeButtonTitles id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ScopeButtonTitles As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function searchbarStyle lib UIKit selector "searchbarStyle" (id as ptr) as UIsearchBarStyle
			  Return searchbarStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSearchbarStyle lib UIKit selector "setSearchBarStyle:" (id as ptr, value as UIsearchBarStyle)
			  setSearchbarStyle id, value
			End Set
		#tag EndSetter
		SearchBarStyle As UIsearchBarStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function searchFieldBackgroundPositionAdjustment lib uikit selector "searchFieldBackgroundPositionAdjustment" (id as ptr) as UIOffset
			    return searchFieldBackgroundPositionAdjustment (id)
			  #elseif Target32Bit
			    Declare function searchFieldBackgroundPositionAdjustment lib uikit selector "searchFieldBackgroundPositionAdjustment" (id as ptr) as UIOffset32Bit
			    return searchFieldBackgroundPositionAdjustment(id).toUIOffset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setSearchFieldBackgroundPositionAdjustment lib uikit selector "setSearchFieldBackgroundPositionAdjustment:" (id as ptr, value as UIOffset)
			    setSearchFieldBackgroundPositionAdjustment (id, value)
			  #elseif Target32Bit
			    Declare Sub setSearchFieldBackgroundPositionAdjustment lib uikit selector "setSearchFieldBackgroundPositionAdjustment:" (id as ptr, value as UIOffset32Bit)
			    setSearchFieldBackgroundPositionAdjustment (id,  value.toUIOffset32)
			  #endif
			End Set
		#tag EndSetter
		SearchFieldBackgroundPositionAdjustment As UIOffset
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function searchResultsButtonSelected lib UIKit selector "isSearchResultsButtonSelected" (id as ptr) as Boolean
			  Return searchResultsButtonSelected (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSearchResultsButtonSelected lib UIKit selector "setSearchResultsButtonSelected:" (id as ptr, value as boolean)
			  setSearchResultsButtonSelected id, value
			End Set
		#tag EndSetter
		SearchResultsButtonSelected As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setText value
			End Set
		#tag EndSetter
		SearchText As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function searchTextPositionAdjustment lib uikit selector "searchTextPositionAdjustment" (id as ptr) as UIOffset
			    return searchTextPositionAdjustment (id)
			  #elseif Target32Bit
			    Declare function searchTextPositionAdjustment lib uikit selector "searchTextPositionAdjustment" (id as ptr) as UIOffset32Bit
			    return searchTextPositionAdjustment(id).toUIOffset
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setSearchTextPositionAdjustment lib uikit selector "setSearchTextPositionAdjustment:" (id as ptr, value as UIOffset)
			    setSearchTextPositionAdjustment (id, value)
			  #elseif Target32Bit
			    Declare Sub setSearchTextPositionAdjustment lib uikit selector "setSearchTextPositionAdjustment:" (id as ptr, value as UIOffset32Bit)
			    setSearchTextPositionAdjustment (id,  value.toUIOffset32)
			  #endif
			End Set
		#tag EndSetter
		SearchTextPositionAdjustment As UIOffset
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function selectedScopeButtonIndex lib UIKit selector "selectedScopeButtonIndex" (id as ptr) as Integer
			  Return selectedScopeButtonIndex (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSelectedScopeButtonIndex lib UIKit selector "setSelectedScopeButtonIndex:" (id as ptr, value as integer)
			  setSelectedScopeButtonIndex id, value
			End Set
		#tag EndSetter
		SelectedScopeButtonIndex As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsBookmarkButton lib UIKit selector "showsBookmarkButton" (id as ptr) as Boolean
			  Return showsBookmarkButton (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsBookmarkButton lib UIKit selector "setShowsBookmarkButton:" (id as ptr, value as boolean)
			  setShowsBookmarkButton id, value
			End Set
		#tag EndSetter
		ShowsBookmarkButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsCancelButton lib UIKit selector "showsCancelButton" (id as ptr) as Boolean
			  Return showsCancelButton (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsCancelButton lib UIKit selector "setShowsCancelButton:" (id as ptr, value as boolean)
			  setShowsCancelButton id, value
			End Set
		#tag EndSetter
		ShowsCancelButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsScopeBar lib UIKit selector "showsScopeBar" (id as ptr) as Boolean
			  Return showsScopeBar (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsScopeBar lib UIKit selector "setShowsScopeBar:" (id as ptr, value as boolean)
			  setShowsScopeBar id, value
			End Set
		#tag EndSetter
		ShowsScopeBar As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function showsSearchResultsButton lib UIKit selector "showsSearchResultsButton" (id as ptr) as Boolean
			  Return showsSearchResultsButton (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsSearchResultsButton lib UIKit selector "setShowsSearchResultsButton:" (id as ptr, value as boolean)
			  setShowsSearchResultsButton id, value
			End Set
		#tag EndSetter
		ShowsSearchResultsButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function tintColor lib UIKit selector "tintColor" (id as ptr) as Ptr
			  Return AppleColor.MakeFromPtr (tintColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTintColor lib UIKit selector "setTintColor:" (id as ptr, value as Ptr)
			  setTintColor id, value.Id
			End Set
		#tag EndSetter
		TintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function Translucent lib UIKit selector "isTranslucent" (id as ptr) as Boolean
			  Return Translucent (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTranslucent lib UIKit selector "setTranslucent:" (id as ptr, value as boolean)
			  setTranslucent id, value
			End Set
		#tag EndSetter
		Translucent As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kBookmarkButtonClicked, Type = Text, Dynamic = False, Default = \"BookmarkButtonClicked", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCancelButtonClicked, Type = Text, Dynamic = False, Default = \"CancelButtonClicked", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kResultsListButtonClicked, Type = Text, Dynamic = False, Default = \"ResultsListButtonClicked", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kScopeButtonSelectionChanged, Type = Text, Dynamic = False, Default = \"ScopeButtonSelectionChanged", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSearchButtonClicked, Type = Text, Dynamic = False, Default = \"SearchButtonClicked", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShouldBeginEditing, Type = Text, Dynamic = False, Default = \"ShouldBeginEditing", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShouldEndEditing, Type = Text, Dynamic = False, Default = \"ShouldEndEditing", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTextDidBeginEditing, Type = Text, Dynamic = False, Default = \"TextDidBeginEditing", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTextDidChange, Type = Text, Dynamic = False, Default = \"TextDidChange", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTextDidEndEditing, Type = Text, Dynamic = False, Default = \"TextDidEndEditing", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTextShouldChange, Type = Text, Dynamic = False, Default = \"TextShouldChange", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
			Name="BarStyle"
			Group="Behavior"
			Type="UIBarStyle"
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
			Name="ConfirmChangesInEvents"
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
			Name="Placeholder"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Prompt"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SearchBarStyle"
			Group="Behavior"
			Type="UIsearchBarStyle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SearchResultsButtonSelected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SearchText"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedScopeButtonIndex"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsBookmarkButton"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsCancelButton"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsScopeBar"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsSearchResultsButton"
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
			Name="Translucent"
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
