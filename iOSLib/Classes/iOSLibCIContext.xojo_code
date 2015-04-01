#tag Class
Protected Class iOSLibCIContext
Inherits iOSLibObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(useSoftwareRenderer As Boolean = False, lowPriority as boolean = false)
		  declare function contextWithOptions lib UIKit selector "contextWithOptions:" (id as ptr, options as ptr) as ptr
		  dim mynumber as new iOSLibNumber (useSoftwareRenderer)
		  dim myDict as new iOSLibMutableDictionary (2)
		  myDict.SetObjectForKey (ContextOptions.Value (useSoftwareRenderer), mynumber)
		  mynumber = new iOSLibNumber (lowPriority)
		  myDict.SetObjectForKey (ContextOptions.Value (LowGPUPriority), mynumber)
		  super.Constructor (contextWithOptions (ClassPtr, myDict.id))
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CIContext")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mContextOptions as Dictionary
			  if mContextOptions = nil then
			    mContextOptions = new Dictionary
			    mContextOptions.Value (LowGPUPriority) = SystemConstantName ("kCIContextPriorityRequestLow", CoreImagePath)
			    mContextOptions.value (OutputColorSpace) = SystemConstantName ("kCIContextOutputColorSpace", CoreImagePath)
			    mContextOptions.value (UseSoftwareRenderer) = SystemConstantName ("kCIContextUseSoftwareRenderer", CoreImagePath)
			    mContextOptions.value (WorkingColorSpace) = SystemConstantName ("kCIContextWorkingColorSpace", CoreImagePath)
			    mContextOptions.value (WorkingFormat) = SystemConstantName ("kCIContextWorkingFormat", CoreImagePath)
			  end if
			  return mContextOptions
			End Get
		#tag EndGetter
		Shared ContextOptions As Dictionary
	#tag EndComputedProperty


	#tag Constant, Name = LowGPUPriority, Type = Text, Dynamic = False, Default = \"LowGPUPriority", Scope = Public
	#tag EndConstant

	#tag Constant, Name = OutputColorSpace, Type = Text, Dynamic = False, Default = \"OutputColorSpace", Scope = Public
	#tag EndConstant

	#tag Constant, Name = UseSoftwareRenderer, Type = Text, Dynamic = False, Default = \"UseSoftwareRenderer", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WorkingColorSpace, Type = Text, Dynamic = False, Default = \"WorkingColorSpace", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WorkingFormat, Type = Text, Dynamic = False, Default = \"WorkingFormat", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
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
