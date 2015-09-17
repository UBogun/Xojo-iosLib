#tag Class
Protected Class AppleTextfield
Inherits AppleControl
	#tag Method, Flags = &h0
		Function ClearButtonRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  #if Target64Bit
		    Declare Function clearButtonRectForBounds lib UIKit selector "clearButtonRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		    return  clearButtonRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function clearButtonRectForBounds lib UIKit selector "clearButtonRectForBounds:" (id as ptr, bounds as FoundationFramework.NSRect32Bit) as FoundationFramework.NSRect32Bit
		    return  clearButtonRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aframe as FoundationFramework.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame  as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame  as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (DoInitWithFrame (alloc(ClassPtr), aFrame))
		  mHasOwnership = true
		  if Observers = nil then Observers = new xojo.Core.Dictionary
		  if EventControlled = nil then EventControlled = new Dictionary
		  EventControlled.Value (id) = false
		  me.UserInteractionEnabled = true
		  // me.AddGestureRecognizer new ApplePanGestureRecognizer (id, FoundationFramework.NSSelectorFromString ("panReceived"))
		  // me.setDelegate (id, id)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aFrame as FoundationFramework.NSRect, observer as AppleNSEventReceiver)
		  Constructor (aFrame)
		  RegisterObserver (observer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(p as ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame  as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(aFrame  as FoundationFramework.NSRect, observer as AppleNSEventReceiver) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		  // make sure the class has been constructed
		  dim classp as ptr = me.ClassPtr
		  #pragma Unused ClassP
		  Super.Constructor(p)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership and retaincount = 1 then
		    
		    super.Destructor
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EditingRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  #if Target64Bit
		    Declare Function editingRectForBounds lib UIKit selector "editingRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		    return  editingRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function editingRectForBounds lib UIKit selector "editingRectForBounds:" (id as ptr, bounds as FoundationFramework.NSRect32Bit) as FoundationFramework.NSRect32Bit
		    return  editingRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidAddSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDidAddSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToSuperview(pid as ptr, sel as ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDidMoveToSuperview
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DidMoveToWindow(pid as ptr, sel as ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDidMoveToWindow
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DrawRect32(pid as ptr, sel as ptr, rect as FoundationFramework.NSRect32Bit)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDrawRect (rect.toNSRect)
		  
		  
		  
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_DrawRect64(pid as ptr, sel as ptr, rect as FoundationFramework.NSRect)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDrawRect (rect)
		  
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_LayoutSubviews(pid as ptr, sel as ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonlayoutSubviews
		  dim superclass as ptr = ObjectiveCRuntime.class_getSuperclass (ego.Class_)
		  dim scname as cstring = ObjectiveCRuntime.class_getName (superclass)
		  dim classmethod as ptr = ObjectiveCRuntime.class_getInstanceMethod (superclass, sel)
		  dim mname as CString = ObjectiveCRuntime.method_getName (classmethod)
		  dim result as ptr =  ObjectiveCRuntime.method_invoke (pid,  classmethod, nil)
		  // ego.PerformSelector (NSStringFromSelector(sel), 0)
		  // #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionBeganWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonMotionBeganwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionCancelledWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonMotionCancelledwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_MotionEndedWithEvent(pid as ptr, sel as ptr, Type as AppleNSEvent.UIEventSubtype, anEvent as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonMotionEndedwithEvent  (type, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_PanReceived()
		  break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TextFieldDidBeginEditing(pid as ptr, sel as ptr, textfield as ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDidBeginEditing
		  break
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_textFieldDidEndEditing(pid as ptr, sel as ptr, textfield as ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonDidEndEditing
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_TextFieldShouldBeginEditing(pid as ptr, sel as ptr, textfield as ptr) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldBeginEditing
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textFieldshouldChangeCharactersInRange(pid as ptr, sel as ptr, textfield as ptr, range as FoundationFramework.NSRange, ReplacementString As CFStringRef) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldChangeCharactersInRange (range, ReplacementString)
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textFieldShouldClear(pid as ptr, sel as ptr, textfield as ptr) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldClear
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textFieldShouldEndEditing(pid as ptr, sel as ptr, textfield as ptr) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldEndEditing
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textFieldShouldReturn(pid as ptr, sel as ptr, textfield as ptr) As Boolean
		  dim ego as new AppleTextfield (pid)
		  return ego.informonShouldReturn
		  
		  #Pragma Unused  sel
		  #Pragma unused textfield
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesBeganWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonTouchesBeganwithEvent  (Touchset, anEvent)
		  break
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesCancelledWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonTouchesCancelledwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesEndedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonTouchesEndedwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_TouchesMovedWithEvent(pid as ptr, sel as ptr, Touchset as ptr, anEvent as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonTouchesMovedwithEvent  (Touchset, anEvent)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToSuperview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonwillMoveToSuperview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willMoveToWindow(pid as ptr, sel as ptr, window as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonwillMoveToWindow (window)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_willRemoveSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as new AppleTextfield (pid)
		  ego.informonwillRemoveSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidBeginEditing()
		  RaiseEvent DidBeginEditing
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kDidBeginEditing
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidEndEditing()
		  RaiseEvent DidEndEditing
		  
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kDidEndEditing
		    NotifyObservers (myarray)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldBeginEditing() As boolean
		  if UseChangeEvents then
		    return RaiseEvent ShouldBeginEditing
		  else
		    return true
		  end if
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kShouldBeginEditing
		    NotifyObservers (myarray)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldChangeCharactersInRange(Range as FoundationFramework.NSRange, Replacement as Text) As boolean
		  if UseChangeEvents then
		    return RaiseEvent ShouldChangeCharactersInRange (range.location, range.length, replacement)
		  else
		    return true
		  end if
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kShouldChangeCharacters
		    NotifyObservers (myarray)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldClear() As boolean
		  if UseChangeEvents then
		    return RaiseEvent ShouldClear
		  else
		    return true
		  end if
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kShouldClear
		    NotifyObservers (myarray)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldEndEditing() As boolean
		  if UseChangeEvents then
		    return RaiseEvent ShouldEndEditing
		  else
		    return true
		  end if
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kShouldEndEditing
		    NotifyObservers (myarray)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonShouldReturn() As boolean
		  if UseChangeEvents then
		    return RaiseEvent ShouldReturn
		  else
		    return true
		  end if
		  
		  If Observers.HasKey(id) then
		    dim myarray as new AppleMutableArray(1)
		    myarray.AddText  kShouldReturn
		    NotifyObservers (myarray)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftViewRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  #if Target64Bit
		    Declare Function leftViewRectForBounds lib UIKit selector "leftViewRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		    return  leftViewRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function leftViewRectForBounds lib UIKit selector "leftViewRectForBounds:" (id as ptr, bounds as FoundationFramework.NSRect32Bit) as FoundationFramework.NSRect32Bit
		    return  leftViewRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PlaceholderRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  #if Target64Bit
		    Declare Function placeholderRectForBounds lib UIKit selector "placeholderRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		    return  placeholderRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function placeholderRectForBounds lib UIKit selector "placeholderRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect) as FoundationFramework.NSRect32Bit
		    return  placeholderRectForBounds (id, bounds).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterObserver(observer As AppleNSEventReceiver)
		  // Part of the AppleNSEventForwarder interface.
		  observers.Value (id) = weakref.create(observer)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightViewRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  #if Target64Bit
		    Declare Function rightViewRectForBounds lib UIKit selector "rightViewRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		    return  rightViewRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function rightViewRectForBounds lib UIKit selector "rightViewRectForBounds:" (id as ptr, bounds as FoundationFramework.NSRect32Bit) as FoundationFramework.NSRect32Bit
		    return  rightViewRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextRectForBounds(Bounds as FoundationFramework.NSRect) As FoundationFramework.NSRect
		  #if Target64Bit
		    Declare Function textRectForBounds lib UIKit selector "textRectForBounds:" (id as ptr, bounds  as FoundationFramework.NSRect)  as FoundationFramework.NSRect
		    return  textRectForBounds (id, bounds)
		  #elseif Target32Bit
		    Declare Function textRectForBounds lib UIKit selector "textRectForBounds:" (id as ptr, bounds as FoundationFramework.NSRect32Bit) as FoundationFramework.NSRect32Bit
		    return  textRectForBounds (id, bounds.toNSRect32).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DidBeginEditing()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidEndEditing()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldBeginEditing() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldChangeCharactersInRange(Start as UInteger, Length as UInteger, Replacement as Text) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldClear() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldEndEditing() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldReturn() As Boolean
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getAdjustsFontSizeToFitWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAdjustsFontSizeToFitWidth value
			End Set
		#tag EndSetter
		AdjustsFontSizeToFitWidth As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function allowsEditingTextAttributes lib UIKit selector "allowsEditingTextAttributes" (id as ptr) as boolean
			  return allowsEditingTextAttributes (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setAllowsEditingTextAttributes lib UIKit selector "setAllowsEditingTextAttributes:" (id as ptr, value as boolean)
			  setAllowsEditingTextAttributes id, value
			End Set
		#tag EndSetter
		AllowsEditingTextAttributes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleTextfield(GetAppearance(classptr))
			End Get
		#tag EndGetter
		Shared Appearance As AppleTextfield
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return getAttributedText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAttributedText value
			End Set
		#tag EndSetter
		AttributedCaption As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function attributedPlaceholder lib UIKit selector "attributedPlaceholder" (id as ptr) as Ptr
			  Return AppleAttributedString.MakeFromPtr (attributedPlaceholder (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAttributedPlaceholder lib UIKit selector "setAttributedPlaceholder:" (id as ptr, value as Ptr)
			  setAttributedPlaceholder id, if ( value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AttributedPlaceholder As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function background lib UIKit selector "background" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (background(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setBackground lib UIKit selector "setBackground:" (id as ptr, value as ptr)
			  setBackground id, value.id
			End Set
		#tag EndSetter
		BackgroundImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function borderStyle lib UIKit selector "borderStyle" (id as ptr) as UITextFieldBorderStyle
			  return borderStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setBorderStyle lib UIKit selector "setBorderStyle:" (id as ptr, style as UITextFieldBorderStyle)
			  setBorderStyle id, value
			End Set
		#tag EndSetter
		BorderStyle As UITextFieldBorderStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return GetText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setText value
			End Set
		#tag EndSetter
		Caption As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr = FoundationFramework.NSClassFromString ("UITextField")
			  // static targetID as ptr
			  
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
			    
			    // methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    
			    methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("panReceived", AddressOf impl_PanReceived, "v@:")
			    // TextField methods
			    
			    // methods.Append new TargetClassMethodHelper ("textFieldShouldBeginEditing:", AddressOf impl_textFieldShouldBeginEditing, "B@:@")
			    methods.Append new TargetClassMethodHelper ("textFieldDidBeginEditing:", AddressOf impl_textFieldDidBeginEditing, "v@:@")
			    // methods.Append new TargetClassMethodHelper ("textFieldShouldEndEditing:", AddressOf impl_textFieldShouldEndEditing, "B:@")
			    methods.Append new TargetClassMethodHelper ("textFieldDidEndEditing:", AddressOf impl_textFieldDidEndEditing, "v@:@")
			    
			    // methods.Append new TargetClassMethodHelper ("textField:shouldChangeCharactersInRange:replacementString:", AddressOf impl_textFieldshouldChangeCharactersInRange, "B@:@{NSRange}@")
			    // methods.Append new TargetClassMethodHelper ("textFieldShouldClear:", AddressOf impl_textFieldShouldClear, "B@:@")
			    // methods.Append new TargetClassMethodHelper ("textFieldShouldReturn:", AddressOf impl_textFieldShouldReturn, "B@:@")
			    
			    #if Target64Bit
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			    #elseif Target32Bit
			      // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			    #endif
			    
			    targetID = BuildTargetClass ("UITextField", "iOSLibTextField",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function clearButtonMode lib UIKit selector "clearButtonMode" (id as ptr) as UITextFieldViewMode
			  return clearButtonMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearButtonMode lib UIKit selector "setClearButtonMode:" (id as ptr, value as UITextFieldViewMode)
			  setClearButtonMode id, value
			End Set
		#tag EndSetter
		ClearButtonMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return ClearButtonRectForBounds (Bounds)
			End Get
		#tag EndGetter
		ClearButtonRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function clearsOnBeginEditing lib UIKit selector "clearsOnBeginEditing" (id as ptr) as boolean
			  return clearsOnBeginEditing (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearsOnBeginEditing lib UIKit selector "setClearsOnBeginEditing:" (id as ptr, value as boolean)
			  setClearsOnBeginEditing id, value
			End Set
		#tag EndSetter
		ClearsOnEditBegin As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function clearsOnInsertion lib UIKit selector "clearsOnInsertion" (id as ptr) as boolean
			  return clearsOnInsertion (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setClearsOnInsertion lib UIKit selector "setClearsOnInsertion:" (id as ptr, value as boolean)
			  setClearsOnInsertion id, value
			End Set
		#tag EndSetter
		ClearsOnInsertion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function defaultTextAttributes lib UIKit selector "defaultTextAttributes" (id as ptr) as Ptr
			  Return AppleDictionary.MakeFromPtr( defaultTextAttributes (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setdefaultTextAttributes lib UIKit selector "setdefaultTextAttributes:" (id as ptr, value as Ptr)
			  setdefaultTextAttributes id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		DefaultTextAttributes As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleobject.MakeFromPtr (getDelegate (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Delegate_ As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function disabledBackground lib UIKit selector "disabledBackground" (id as ptr) as ptr
			  return AppleImage.MakeFromPtr (disabledBackground(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setDisabledBackground lib UIKit selector "setDisabledBackground:" (id as ptr, value as ptr)
			  setDisabledBackground id, value.id
			End Set
		#tag EndSetter
		DisabledBackgroundImage As AppleImage
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared EventControlled As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getFont
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfont value
			End Set
		#tag EndSetter
		Font As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function isEditing lib UIKit selector "isEditing" (id as ptr) as boolean
			  return isEditing (id)
			End Get
		#tag EndGetter
		isEditing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function leftView lib UIKit selector "leftView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (leftView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLeftView lib UIKit selector "setLeftView:" (id as ptr, value as ptr)
			  setLeftView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		LeftView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function leftViewMode lib UIKit selector "leftViewMode" (id as ptr) as UITextFieldViewMode
			  return leftViewMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setLeftViewMode lib UIKit selector "setLeftViewMode:" (id as ptr, value as UITextFieldViewMode)
			  setLeftViewMode id, value
			End Set
		#tag EndSetter
		LeftViewMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return LeftViewRectForBounds (Bounds)
			End Get
		#tag EndGetter
		LeftViewRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function minimumFontSize lib UIKit selector "minimumFontSize" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function minimumFontSize lib UIKit selector "minimumFontSize" (id as ptr) as single
			  #endif
			  return  minimumFontSize (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setMinimumFontSize lib UIKit selector "setMinimumFontSize:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setMinimumFontSize lib UIKit selector "setMinimumFontSize:" (id as ptr, value as single)
			  #endif
			  setMinimumFontSize id, value
			End Set
		#tag EndSetter
		MinimumFontSize As Double
	#tag EndComputedProperty

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
			  Return PlaceholderRectForBounds (Bounds)
			End Get
		#tag EndGetter
		PlaceholderRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function rightView lib UIKit selector "rightView" (id as ptr) as ptr
			  return AppleView.MakeFromPtr (rightView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setRightView lib UIKit selector "setRightView:" (id as ptr, value as ptr)
			  setRightView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		RightView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function rightViewMode lib UIKit selector "rightViewMode" (id as ptr) as UITextFieldViewMode
			  return rightViewMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setRightViewMode lib UIKit selector "setRightViewMode:" (id as ptr, value as UITextFieldViewMode)
			  setRightViewMode id, value
			End Set
		#tag EndSetter
		RightViewMode As UITextFieldViewMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return RightViewRectForBounds (Bounds)
			End Get
		#tag EndGetter
		RightViewRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTextColor value
			End Set
		#tag EndSetter
		TextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return TextRectForBounds (Bounds)
			End Get
		#tag EndGetter
		TextRect As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function typingAttributes lib UIKit selector "typingAttributes" (id as ptr) as ptr
			  return AppleDictionary.MakeFromPtr (typingAttributes(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTypingAttributes lib UIKit selector "setTypingAttributes:" (id as ptr, value as ptr)
			  setTypingAttributes id, value.id
			End Set
		#tag EndSetter
		TypingAttributes As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim value as boolean = EventControlled.value(id)
			  return value
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  EventControlled.value(id) = value
			End Set
		#tag EndSetter
		UseChangeEvents As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kDidBeginEditing, Type = Text, Dynamic = False, Default = \"DidBeginEditing", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDidEndEditing, Type = Text, Dynamic = False, Default = \"DidBeginEditing", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShouldBeginEditing, Type = Text, Dynamic = False, Default = \"ShouldBeginEditing", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShouldChangeCharacters, Type = Text, Dynamic = False, Default = \"ShouldChangeCharacters", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShouldClear, Type = Text, Dynamic = False, Default = \"ShouldClear", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShouldEndEditing, Type = Text, Dynamic = False, Default = \"ShouldEndEditing", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShouldReturn, Type = Text, Dynamic = False, Default = \"ShouldReturn", Scope = Public
	#tag EndConstant


	#tag Enum, Name = UITextFieldBorderStyle, Type = Integer, Flags = &h0
		None
		  Line
		  Bezel
		RoundedRect
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdjustsFontSizeToFitWidth"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEditingTextAttributes"
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
			Name="BorderStyle"
			Group="Behavior"
			Type="UITextFieldBorderStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Line"
				"2 - Bezel"
				"3 - RoundedRect"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearButtonMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsOnEditBegin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsOnInsertion"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentHorizontalAlignment"
			Group="Behavior"
			Type="UIControlContentHorizontalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Left"
				"2 - Right"
				"3 - Fill"
			#tag EndEnumValues
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
			Name="ContentVerticalAlignment"
			Group="Behavior"
			Type="UIControlContentVerticalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Fill"
			#tag EndEnumValues
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
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
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
			Name="Highlighted"
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
			Name="isEditing"
			Group="Behavior"
			Type="Boolean"
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
			Name="LeftViewMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumFontSize"
			Group="Behavior"
			Type="Double"
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
			Name="RightViewMode"
			Group="Behavior"
			Type="UITextFieldViewMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="UIControlState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Normal"
				"1 - Highlighted"
				"2 - Disabled"
				"3 - Selected"
				"4 - Application"
				"5 - Reserved"
			#tag EndEnumValues
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
			Name="TouchInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tracking"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseChangeEvents"
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
