#tag Class
Protected Class iOSLibSceneRendererDelegate
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (init(alloc(classptr)))
		  mHasownership = true
		  
		  if NotificationDict = nil then NotificationDict = new Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ExamineNotificationDict(instanceID as ptr)
		  // This distribute the events
		  
		  dim ego as new iOSLibSceneRendererDelegate (instanceID)
		  dim result as Dictionary = NotificationDict.Value (instanceid)
		  if result.HasKey (kUpdateAtTime) then
		    dim time as double = result.Value (kUpdateAtTime)
		    ego.informOnRenderUpdate (time)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_rendererUpdateAtTime(pid as ptr, sel as ptr, renderer as ptr, attime as double)
		  #Pragma StackOverflowChecking false
		  #Pragma DisableBackgroundTasks
		  dim d as new Dictionary // I'm using NotificationDict as a Tuple. d holds a constant so the receiving method can distribute the value to the appropriate event
		  d.Value (kUpdateAtTime) = attime // left side is the constant, right side the value
		  NotificationDict.Value(pid) = d // and now I attach it to the shared dictionary by its pid as key
		  Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  performSelectorOnMainThread pid, FoundationFramework.NSSelectorFromString("checkDict:"), pid, false // and have the change checked
		  
		  #Pragma Unused Sel
		  #Pragma Unused renderer
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnNotification(time as double)
		  system.debuglog "Time: "+time.totext
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnRenderUpdate(time as double)
		  system.debuglog "Renderupdate at time: "+time.totext
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("renderer:updateAtTime:", AddressOf impl_rendererUpdateAtTime, "v@:@d")
			    // methods.Append new TargetClassMethodHelper("eventForwarder:", AddressOf impl_eventForwarder, "v@:@")
			    methods.Append new TargetClassMethodHelper("checkDict:", AddressOf ExamineNotificationDict, "v@:@")
			    
			    // methods.Append new TargetClassMethodHelper("renderer:didRenderScene:", AddressOf impl_rendererUpdateAtTime, "v@:@d")
			    mClassPtr = BuildTargetClass("NSObject","iOSLibSCNRendererDelegate",methods)
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared NotificationDict As Dictionary
	#tag EndProperty


	#tag Constant, Name = kUpdateAtTime, Type = Text, Dynamic = False, Default = \"UpdateAtTime", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
