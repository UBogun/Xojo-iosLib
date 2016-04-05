#tag Class
Protected Class iOSLibApplicationDelegate
Inherits Appleresponder
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(Classptr)))
		  Retainclassobject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_didReceiveLocalNotification(pid as ptr, sel as ptr, application as ptr, notification as Ptr) As Boolean
		  // dim myapp as AppleApplication = AppleApplication.MakeFromPtr (application)
		  // // return not myapp.informon_willFinishLaunchingWithOptions (options)
		  // // #pragma unused sel
		  // // #Pragma Unused pid
		  break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_setwindow(pid as ptr, sel as ptr, value as ptr)
		  Window = AppleWindow.MakefromPtr(value)
		  // dim ego as new AppleApplication
		  // if ego.KeyWindow = nil then
		  // dim newwin as new applewindow (FoundationFrameWork.NSMakeRect(0,0,100,100))
		  // return newwin.id
		  // else
		  // return ego.KeyWindow.id
		  // end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_shouldRestoreApplicationState(pid as ptr, sel as ptr, application as ptr, coder as ptr) As Boolean
		  // dim myapp as AppleApplication = AppleApplication.MakeFromPtr (application)
		  // return not myapp.informon_WillResignActive ()
		  // #pragma unused sel
		  // #Pragma Unused pid
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_willFinishLaunchingWithOptions(pid as ptr, sel as ptr, application as ptr, options as ptr) As Boolean
		  // dim myapp as AppleApplication = AppleApplication.MakeFromPtr (application)
		  // return not myapp.informon_willFinishLaunchingWithOptions (options)
		  // #pragma unused sel
		  // #Pragma Unused pid
		  break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_WillResignActive(pid as ptr, sel as ptr, application as ptr) As Boolean
		  // dim myapp as AppleApplication = AppleApplication.MakeFromPtr (application)
		  // return not myapp.informon_WillResignActive ()
		  // #pragma unused sel
		  // #Pragma Unused pid
		  break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_window(pid as ptr, sel as ptr) As Ptr
		  if window = nil then
		    window = new AppleWindow(FoundationFrameWork.NSMakeRect(0,0,100,100))
		  end if
		  return Window.id
		  // dim ego as new AppleApplication
		  // if ego.KeyWindow = nil then
		  // dim newwin as new applewindow (FoundationFrameWork.NSMakeRect(0,0,100,100))
		  // return newwin.id
		  // else
		  // return ego.KeyWindow.id
		  // end if
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mclassptr = nil then
			    dim methods() as TargetClassMethodHelper
			    //UIApplicationDelegate Methods
			    // methods.Append new TargetClassMethodHelper("application:willFinishLaunchingWithOptions:", AddressOf impl_willFinishLaunchingWithOptions, "c@:@@")
			    // methods.Append new TargetClassMethodHelper("applicationWillResignActive:", AddressOf impl_WillResignActive, "v@:@")
			    // methods.Append new TargetClassMethodHelper("application:shouldRestoreApplicationState:", AddressOf impl_shouldRestoreApplicationState, "c@:@@")
			    // methods.Append new TargetClassMethodHelper("application:didReceiveLocalNotification:", AddressOf impl_didReceiveLocalNotification, "v@:@@")
			    
			    methods.Append new TargetClassMethodHelper("window", AddressOf impl_window, "@@:")
			    methods.Append new TargetClassMethodHelper("setWindow:", AddressOf impl_setwindow, "v@:@")
			    
			    //Responder protocol
			    methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    
			    methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    
			    methods.Append new TargetClassMethodHelper("touchesEstimatedPropertiesUpdated:", AddressOf impl_touchesEstimatedPropertiesUpdated, "v@:@")
			    methods.Append new TargetClassMethodHelper("remoteControlReceivedWithEvent:", AddressOf impl_remoteControlReceivedWithEvent, "v@:@")
			    
			    if ApplePress.ClassAvailable then
			      methods.Append new TargetClassMethodHelper("pressesBegan:withEvent:", AddressOf impl_pressesBeganWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesCancelled:withEvent:", AddressOf impl_pressesCancelledWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesChanged:withEvent:", AddressOf impl_pressesChangedWithEvent, "v@:@@")
			      methods.Append new TargetClassMethodHelper("pressesEnded:withEvent:", AddressOf impl_pressesEndedWithEvent, "v@:@@")
			    end if
			    
			    mClassPtr = BuildTargetClass ("XOJAppDelegate", "iOSLibApplicationDelegate",methods)
			  end if
			  
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared mWindow As AppleWindow
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mWindow
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mwindow = value
			End Set
		#tag EndSetter
		Shared Window As AppleWindow
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
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
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
