#tag Module
Protected Module iOSCoreModule
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static eol as text = Text.FromUnicodeCodepoint(13)
			  return eol
			End Get
		#tag EndGetter
		EndOfline As Text
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		LibDebug As Boolean = true
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If Target32Bit Then
			    Declare Function scale Lib "Foundation" Selector "scale" (classRef As Ptr) As Single
			  #Else
			    Declare Function scale Lib "Foundation" Selector "scale" (classRef As Ptr) As Double
			  #Endif
			  Declare Function mainScreen Lib "Foundation" Selector "mainScreen" (classRef As Ptr) As Ptr
			  
			  Return scale(mainScreen(NSClassFromString("UIScreen")))
			  
			End Get
		#tag EndGetter
		ScreenResolution As double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="EndOfline"
			Group="Behavior"
			Type="Text"
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
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LibDebug"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScreenResolution"
			Group="Behavior"
			Type="double"
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
End Module
#tag EndModule
