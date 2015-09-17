#tag Module
Protected Module AccelerateFramework
	#tag ExternalMethod, Flags = &h0
		Declare Function vDSP_create_fftsetup Lib AccelerateLib (Log2n As UInt32, Radix As Int32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub vDSP_ctoz Lib AccelerateLib (C As Ptr,  IC As Int32, Z As Ptr,  IZ As Int32, N As UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub vDSP_destroy_fftsetup Lib AccelerateLib (FFT_setup as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub vDSP_fft_zrip Lib AccelerateLib (Setup As Ptr, C As Ptr, IC As Int32,  Log2N As Int32, Direction As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub vDSP_vsq Lib AccelerateLib (vDSP_input as Ptr, vDSP_strideInput as Int32, vDSP_Result as Ptr, vDSP_StrideResult As Int32, vDSP_Size as Uint32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub vDSP_vsqD Lib AccelerateLib (vDSP_input as Ptr, vDSP_strideInput as Int32, vDSP_Result as Ptr, vDSP_StrideResult As Int32, vDSP_Size as Uint32)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Vector_Square(aPoint as FoundationFramework.NSPoint) As FoundationFramework.NSPoint
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #Pragma NilObjectChecking false
		  Dim Output as new xojo.Core.MutableMemoryBlock (16)
		  dim OutPutPtr as Ptr = OutPut.Data
		  vDSP_vsqD (aPoint.toMemoryBlock.Data, 1, OutPutPtr, 1, 2)
		  return Output.toNSPoint
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Vector_SquareSingle(aPoint as FoundationFramework.NSPoint) As FoundationFramework.NSPoint
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #Pragma NilObjectChecking false
		  Dim Output as new xojo.Core.MutableMemoryBlock (8)
		  dim OutPutPtr as Ptr = OutPut.Data
		  vDSP_vsq (aPoint.toMemoryBlock32.Data, 1, OutPutPtr, 1, 2)
		  return Output.toNSPoint32
		  
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = AccelerateLib, Type = Text, Dynamic = False, Default = \"Accelerate.framework", Scope = Public
	#tag EndConstant


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
End Module
#tag EndModule
