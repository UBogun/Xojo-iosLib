#tag Module
Protected Module AVFoundationFramework
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getChannelCount Lib AVFoundationLibname Selector "channelCount" (id as ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlayout Lib AVFoundationLibname Selector "channelLayout" (id as ptr) As AudioChannelLayout
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getSampleRate Lib AVFoundationLibname Selector "sampleRate" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isEqual Lib AVFoundationLibname Selector "isEqual:" (id as ptr, anObject as ptr) As Boolean
	#tag EndExternalMethod


	#tag Constant, Name = AVFoundationLibName, Type = Text, Dynamic = False, Default = \"AVFoundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResize, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResizeAspect, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResizeAspect", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AVLayerVideoGravityResizeAspectFill, Type = Text, Dynamic = False, Default = \"AVLayerVideoGravityResizeAspectFill", Scope = Public
	#tag EndConstant


	#tag Structure, Name = AudioBufferList, Flags = &h0
		NumberOfBuffers as UInt32
		BufferPtr As Ptr
	#tag EndStructure

	#tag Structure, Name = AudioChannelDescription, Flags = &h0
		ChannelLabel as AudioChannelLabel
		  ChannelFlags as AudioChannelFlags
		  CoordinateX as Double
		  CoordinateY as Double
		CoordinateZ as Double
	#tag EndStructure

	#tag Structure, Name = AudioChannelDescription32Bit, Flags = &h0
		ChannelLabel as AudioChannelLabel
		  ChannelFlags as AudioChannelFlags
		  CoordinateX as Single
		  CoordinateY as Single
		CoordinateZ as Single
	#tag EndStructure

	#tag Structure, Name = AudioChannelLayout, Flags = &h0
		LayoutTag as AudioChannelLayoutTag
		  ChannelBitMap as UINT32
		  NumberOfChannelDescriptions as UINT32
		ChannelDecriptions as Ptr
	#tag EndStructure

	#tag Structure, Name = AudioStreamBasicDescription, Flags = &h0
		SampleRate as Double
		  FormatID as UInt32
		  FormatFlags As UInt32
		  BytesPerPacket As UInt32
		  FramesPerPacket As UInt32
		  BytesPerFrame As UInt32
		  ChannelsPerFrame As UInt32
		  BitsPerChannel As UInt32
		Reserved As UInt32
	#tag EndStructure

	#tag Structure, Name = AudioTimeStamp, Flags = &h0
		SampleTime As Double
		  HostTime As UInt64
		  RateScalar As Double
		  WorldClockTime As UInt64
		  SMPTETime as SMPTETime
		  Hours As Int16
		  Minutes As Int16
		  Seconds As Int16
		Frames As Int16
	#tag EndStructure


	#tag Enum, Name = AudioChannelCoordinates, Flags = &h0
		LeftRight = 0
		  BackFront = 1
		  DownUp = 2
		  Azimuth = LeftRight
		  Elevation = BackFront
		Distance = Downup
	#tag EndEnum

	#tag Enum, Name = AudioChannelFlags, Flags = &h0
		AllOff = 0
		  RectangularCoordinates = 1
		  SphericalCoordinates = 2
		Meters = 4
	#tag EndEnum

	#tag Enum, Name = AudioChannelLabel, Flags = &h0
		Unused = 0
		  Left = 1
		  Right = 2
		Center = 3
	#tag EndEnum

	#tag Enum, Name = AudioChannelLayoutTag, Flags = &h0
		UseChannelDescriptions = 0
		  UseChannelBitmap = &h10000
		  Mono = &h10001
		  Stereo = &h650002
		  StereoHeadphones = &h660002
		  MatrixStereo = &h670002	
		  MidSide = &h680002
		  XY = &h690002
		  Binaural = &h6A0002
		  Ambisonic_B_Format = &h6B0004
		  Quadraphonic = &h6C0004
		  Pentagonal = &h6D0005
		  Hexagonal = &h6E0006
		  Octagonal  = &h6F0008
		  Cube = &h700008
		  MPEG1 = Mono
		MPEG2 = Stereo
	#tag EndEnum

	#tag Enum, Name = AVAudioCommonFormat, Type = UInteger, Flags = &h0
		OtherFormat = 0
		  PCMSingle = 1
		  PCMDouble = 2
		  PCMInt16 = 3
		PCMInt32= 4
	#tag EndEnum

	#tag Enum, Name = AVLayerGravity, Type = Integer, Flags = &h0
		Fill
		  FitProportional
		FillProportional
	#tag EndEnum

	#tag Enum, Name = SMPTETime, Type = UInt32, Flags = &h0
		Type24 = 0
		  Type25
		  Type30Drop
		  Type30
		  Type2997
		  Type2997Drop
		  Type60
		  Type5994
		  Type60Drop
		  Type5994Drop
		  Type50
		Type2398
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
