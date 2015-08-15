#tag Class
Protected Class AppleAlertAction
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub ActionHandler(ActionPtr as Ptr)
		  Dim actionitem as new AppleAlertAction (actionptr)
		  ActionItem.mLastSelectedTitle = ActionItem.Title
		  
		  if AlertControlDict.HasKey (actionptr) then
		    dim wr as WeakRef = AlertControlDict.Value(actionptr)
		    if wr.Value <> nil then
		      dim controller as AppleAlertController = AppleAlertController (wr.Value)
		      controller.informOnAlertFinished (ActionItem.Title)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Controller as AppleAlertController, Title as CFStringRef, Style as UIAlertActionStyle = uiAlertActionStyle.Default, ActionHandler as Ptr = Nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim myHandler as new iosblock (AddressOf ActionHandler)
		  
		  if ActionHandler = nil then
		    ActionHandler = myHandler.Handle
		  end if
		  declare function actionWithTitle lib UIKit selector "actionWithTitle:style:handler:" (clsRef as ptr, title as CFStringRef, style as UIAlertActionStyle, UIAlertAction as ptr) as ptr
		  
		  Super.Constructor (actionWithTitle (ClassPtr, Title, style, ActionHandler))
		  RetainClassObject
		  
		  if AlertControlDict = nil then AlertControlDict = new Dictionary
		  AlertControlDict.Value (id) = WeakRef.Create (Controller)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub destructor()
		  if AlertControlDict.HasKey (id) then AlertControlDict.Remove (id)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared AlertControlDict As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIAlertAction")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function enabled lib UIKit selector "isEnabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setEnabled lib UIKit selector "setEnabled:" (id as ptr, value as Boolean)
			  setenabled (id, value)
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLastSelectedTitle
			End Get
		#tag EndGetter
		Shared LastSelectedTitle As Text
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared mLastSelectedTitle As Text
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function style lib UIKit selector "style" (obj_id as ptr) as UIAlertActionStyle
			  return style (id)
			End Get
		#tag EndGetter
		Style As UIALertActionStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			Text
		#tag EndNote
		#tag Getter
			Get
			  return getTitle
			End Get
		#tag EndGetter
		Title As Text
	#tag EndComputedProperty


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
			Name="Enabled"
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
			Name="Style"
			Group="Behavior"
			Type="UIALertActionStyle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
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
	#tag EndViewBehavior
End Class
#tag EndClass
