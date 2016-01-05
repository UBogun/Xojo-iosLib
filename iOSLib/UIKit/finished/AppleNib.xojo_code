#tag Class
Protected Class AppleNib
Inherits AppleObject
	#tag Method, Flags = &h21, Description = 4372656174657320612055494E6962206F626A6563742066726F6D206E696220646174612073746F72656420696E206D656D6F72792E
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612055494E6962206F626A6563742066726F6D206E696220646174612073746F72656420696E206D656D6F72792E
		Sub Constructor(NibData As AppleData, bundle as applebundle = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (nibwithdata(classptr, NibData.id, if (bundle = nil, nil, bundle.id)))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612055494E6962206F626A65637420696E697469616C697A656420746F20746865206E69622066696C6520696E20746865207370656369666965642062756E646C652E
		Sub Constructor(NibName as CFStringRef, bundle as applebundle = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (nibwithnibname(classptr, nibname, if (bundle = nil, nil, bundle.id)))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 556E617263686976657320616E6420696E7374616E7469617465732074686520696E2D6D656D6F727920636F6E74656E7473206F6620746865207265636569766572E2809973206E69622066696C652C206372656174696E6720612064697374696E6374206F626A656374207472656520616E6420736574206F6620746F70206C6576656C206F626A656374732E0A52657475726E7320616E206175746F72656C6561736564204E534172726179206F626A65637420636F6E7461696E696E672074686520746F702D6C6576656C206F626A656374732066726F6D20746865206E69622066696C652E
		Function Instantiate(owner as appleobject = nil, options as AppleDictionary = nil) As AppleArray
		  return AppleArray.MakeFromPtr (instantiateWithOwner(id, if (owner = nil, nil, owner.id), if (options = nil, nil, options.id)))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function instantiateWithOwner Lib UIKitLibName Selector "instantiateWithOwner:options" (id as ptr, owner as ptr, options as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function nibWithData Lib UIKitLibName Selector "nibWithData:bundle:" (id as ptr, data as ptr, bundle as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function nibWithNibName Lib UIKitLibName Selector "nibWithNibName:bundle:" (id as ptr, name as cfstringref, bundle as ptr) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UINib")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


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
