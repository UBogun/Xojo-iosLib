#tag IOSView
Begin iosView TouchIDView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "TouchID"
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Format          =   "0"
      Height          =   407.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  table1.AddSection ("Select Test")
		  table1.AddRow 0, new iOSTableCellData ("Touch ID preflight", "Using canEvaluatePolicy:")
		  table1.AddRow 0, new iOSTableCellData ("Touch ID authentication", "Using evaluatePolicy:")
		  // table1.AddRow 0, new iOSTableCellData ("Touch ID authentication with custom text", "Using evaluatePolicy:")
		  
		  dim TI as new iOSLibTouchID
		  dim b as Boolean = ti.Available
		  dim t as text = ti.UnavailabilityReason
		  dim i as iOSLibTouchID.TouchIDError = ti.UnavailabilityError
		  ti.Authenticate ("Just a test")
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub AnalyzeBuffer(t as timer)
		  if me.BufferPtr <> nil then
		    dim buffer as new AppleAVAudioPCMBuffer (me.BufferPtr)
		    system.DebugLog buffer.DebugDescription
		  end if
		  system.DebugLog "Analyze ran"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CallBackBlock(BufferPtr as ptr, AVAudioTime as Ptr)
		  #pragma StackOverflowChecking false
		  #pragma BreakOnExceptions false
		  // #pragma backgroundtasks false
		  #pragma NilObjectChecking false
		  
		  declare Function floatChannelData lib AVFoundationLibName selector "floatChannelData" (id as ptr) as ptr
		  declare Function frameLength lib AVFoundationLibName selector "frameLength" (id as ptr) as UInt32
		  dim cdata as ptr = AppleAVAudioPCMBuffer.getfloatchanneldata (bufferptr)
		  dim frames as uint32 = frameLength (bufferptr)
		  
		  dim mblock as new MutableMemoryBlock (cdata, frames)
		  // analyzetimer = new timer
		  // AddHandler AnalyzeTimer.action, AddressOf AnalyzeBuffer
		  // AnalyzeTimer.Period = 5
		  // Here's a problem: We can neither analyze the buffer and time from inside the method.
		  // Running Xojo methods on a different thread is not really stable, probability of stack overflows gets high
		  
		  // A timer.CallLater 1, AddressOf AnalyzeBuffer doesn't work too - gives stack overflows.
		  // Neither does a computed property for both ptrs.
		  
		  // Currently I see 2 possbilities:
		  // Either have a timer check the ptr values for changes and then start the AnalyzeBuffer method or
		  // Put the analyze method on the iOS Level of a custom subclass where it can be called from this block (hopefully) via ObjectiveC Runtime methods.
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckTouchID()
		  dim c as new AppleLAContext
		  dim error as new AppleError
		  dim result as Boolean = c.CanEvaluatePolicy (error)
		  dim resulttext as text = if (result = True, "LAContext gave no error – TouchID is available", "LAContext replied with error "+EOL+error.LocalizedDescription)
		  Dim alert as new AppleAlertController ("TouchID result", resulttext)
		  alert.Show (self.AppleViewController)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Evaluate()
		  dim c as new AppleLAContext
		  AddHandler c.EvaluationResult, AddressOf EvaluationFinished
		  c.EvaluatePolicy ("TouchID test")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EvaluationFinished(context as appleLAContext, success as boolean, errorNr as ioslibtouchId.TouchIDError, result as Text)
		  dim resultmessage as text = if (success, "Evaluation was successful", "Evaluation failed"+EOL+result)
		  dim alert as new AppleAlertController ("LAContext evaluation finished", resultmessage)
		  alert.show (me.AppleViewController)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init()
		  
		  // dim cell as new AppleTableViewCell (AppleTableViewCell.UITableViewCellStyle.Value1)
		  // cell.SetEditing (true)
		  // cell.PrepareForReuse
		  
		  
		  
		  // break
		  // t.SetEditingAnimated (true)
		  
		  // t.InsertRows (AppleMutableArray.fromAppleObjects(AppleIndexPath.IndexPathForRow (0,0)), true)
		  // dim c as AppleTableViewCell = t.Cell (1,1)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected AnalyzeTimer As Timer
	#tag EndProperty

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

#tag Events Table1
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  select case row
		  case 0
		    checkTouchID
		  case 1
		    Evaluate
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
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
