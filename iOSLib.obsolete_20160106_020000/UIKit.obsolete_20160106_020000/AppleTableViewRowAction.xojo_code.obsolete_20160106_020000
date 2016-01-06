#tag Class
 Attributes ( incomplete = "backgroundEffect missing" ) Protected Class AppleTableViewRowAction
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub ActionHandlerTemplate(action as ptr, indexpath as ptr)
		  // Use this template for your own implementation of a RowActionHandler which you pass as an AppleBlock to the constructor
		  dim myAction as new AppleTableViewRowAction (action)
		  dim myIndex as new AppleIndexPath (indexpath)
		  if TableViewDict.HasKey (id) then
		    dim wr as WeakRef = TableViewDict.Value(id)
		    if wr.Value <> nil then
		      dim t as AppleTableView = AppleTableView(wr.Value)
		      t.informOnEditAction (myaction, myindex)
		    end if
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor(id as ptr)
		  Super.Constructor (id)
		  if TableViewDict = nil then TableViewDict = new Dictionary
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(style as UITableViewRowActionStyle, title as cfstringref, handler as appleblock = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if handler = nil then 
		    handler= new appleblock (AddressOf ActionHandlerTemplate)
		  end if
		  Super.Constructor (rowactionWithStyle(classptr, style, title, handler.Handle))
		  RetainClassObject
		  if TableViewDict = nil then TableViewDict = new Dictionary
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if mhasownership then UnRegisterTableView
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getStyle Lib UIKitLibName Selector "style" (id as ptr) As UITableViewRowActionStyle
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RegisterTableView(tv as AppleTableView)
		  TableViewDict.value (id) = WeakRef.Create (tv)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function rowActionWithStyle Lib UIKitLibName Selector "rowActionWithStyle:title:handler:" (id as ptr, style as UITableViewRowActionStyle, title as cfstringref, handler as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub UnRegisterTableView()
		  if TableViewDict.HasKey (id) then TableViewDict.Remove (id)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applecolor.MakeFromPtr (UIKitFramework.getbackgroundColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setbackgroundColor (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UITableViewRowAction")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getstyle (id)
			End Get
		#tag EndGetter
		Style As UITableViewRowActionStyle
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared TableViewDict As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return gettitle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTitle value
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty


	#tag Enum, Name = UITableViewRowActionStyle, Type = Integer, Flags = &h0
		Default = 0
		  Destructive = Default
		Normal
	#tag EndEnum


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
			Name="Style"
			Group="Behavior"
			Type="UITableViewRowActionStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"0 - Destructive"
				"1 - Normal"
			#tag EndEnumValues
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
