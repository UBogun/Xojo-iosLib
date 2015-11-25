#tag IOSView
Begin iosView AVAudioView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  timer.CallLater (200, AddressOf init)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub AnalyzeBuffer()
		  // if me.BufferPtr <> nil then
		  // // dim buffer as new AppleAVAudioPCMBuffer (me.BufferPtr)
		  // // system.DebugLog buffer.DebugDescription
		  // end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CallBackBlock(BufferPtr as ptr, AVAudioTime as Ptr)
		  #pragma StackOverflowChecking false
		  #pragma BreakOnExceptions false
		  #pragma backgroundtasks false
		  #pragma NilObjectChecking false
		  
		  // A Template for A TapBlock to be used with AppleAVAudioNodes.
		  // Please note this block may be called on a different than the main thread. You should not manipulate the UI from here therefore.
		  
		  // You should just foward both ptrs to app properties and start the analyze on the main thread. 
		  // You convert the properties with:
		  // dim Buffer as new AppleAVAudioPCMBuffer (bufferptr)
		  // dim time as new AppleAVAudioTime (AVAudioTime)
		  
		  me.BufferPtr = BufferPtr
		  me.timeptr = AVAudioTime
		  
		  // Here's a problem: We can neither analyze the buffer and time from inside the method.
		  // Running Xojo methods on a different thread is not really stable, probability of stack overflows gets high
		  
		  // A timer.CallLater 1, AddressOf AnalyzeBuffer doesn't work too - gives stack overflows.
		  // Neither does a computed property for both ptrs.
		  
		  // Currently I see 2 possbilities:
		  // Either have a timer check the ptr values for changes and then start the AnalyzeBuffer method or
		  // Put the analyze method on the iOS Level of a custom subclass where it can be called from this block (hopefully) via ObjectiveC Runtime methods.
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init()
		  session = new AppleAVAudioSession
		  dim error as new AppleError
		  dim success as Boolean
		  if Session.InputAvailable then
		    success = Session.SetCategory(AppleAVAudioSession.kAVAudioSessionCategoryPlayAndRecord, error)
		    if not success then
		      break
		    end if
		    
		    success = Session.SetActive(true, error)
		    if not success then
		      break
		    end if
		    
		    engine = new AppleAVAudioEngine
		    dim mixer as  AppleAVAudioMixerNode = engine.MainMixerNode
		    dim input as  AppleAVAudioInputNode = engine.InputNode
		    dim format as AppleAVAudioFormat = input.InputFormat(0)
		    engine.ConnectNodes (input, mixer, format)
		    
		    dim block as new AppleBlock(AddressOf CallBackBlock)
		    input.InstallTap (0, 4096, format, block)
		    
		    success = engine.start(error)
		    if not success then
		      break
		    end if
		    
		  end if
		  
		  
		  
		  break
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private BufferPtr As ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Engine As AppleAVAudioEngine
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Session As AppleAVAudioSession
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TimePtr As ptr
	#tag EndProperty


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
