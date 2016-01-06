#tag Class
Protected Class iOSLibScreenRecorder
	#tag Method, Flags = &h0
		Sub CalculateinForeGround()
		  dim t as date = date.now
		  for q as integer = 0 to Screenshots.Ubound
		    images.Append Screenshots(q).toImage.toiOSImage
		    ProgressValue = q
		  next
		  dim dif as DateInterval = date.now - t
		  System.DebugLog dif.NanoSeconds.ToText
		  // CalcView.Dismiss
		  // CalcView = nil
		  timer.CallLater 1, AddressOf switchView
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(RecordView as iosview, fps as double = 10)
		  mRecordView = RecordView.AppleView
		  UpdateThread = new xojo.Threading.Thread
		  UpdateThread.Priority = Thread.PriorityHigh
		  iOSOriginalView = RecordView
		  ScreenshotTimer = new timer
		  ScreenshotTimer.Period = 1000/fps
		  mRecordfps = fps
		  AddHandler ScreenshotTimer.action, AddressOf MakeScreenshot
		  AddHandler UpdateThread.run, AddressOf ThreadRun
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitateThread()
		  UpdateThread.run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeScreenshot(t as timer)
		  #pragma unused t
		  Screenshots.Append mRecordView.Snapshot()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowRecording(view as iOSView)
		  iOSOriginalView = view
		  // CalcView = new CalculationProgressView (me)
		  // view.PushTo CalcView
		  CalculateinForeGround
		  // timer.CallLater 400, AddressOf InitateThread
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Start()
		  ScreenshotTimer.Mode = timer.modes.Multiple
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  ScreenshotTimer.Mode = timer.modes.Off
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SwitchView()
		  dim RecordViewer as new ScreenRecorderView (self)
		  iOSOriginalView.PushToSlide recordviewer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ThreadRun(thr as xojo.Threading.thread)
		  dim t as date = date.now
		  for q as integer = 0 to Screenshots.Ubound
		    images.Append Screenshots(q).toImage.toiOSImage
		    // AppleImages.Addobject mRecorder.Screenshots(q).toImage
		    // system.DebugLog q.ToText
		    ProgressValue = q
		    Dim waitUntil As Integer = Ticks + 15
		    
		    While Ticks < waitUntil
		    Wend
		  next
		  dim dif as DateInterval = date.now - t
		  System.DebugLog dif.NanoSeconds.ToText
		  timer.CallLater 1000, AddressOf switchView
		  #pragma unused thr
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CalcView As CalculationProgressView
	#tag EndProperty

	#tag Property, Flags = &h0
		Images() As iOSImage
	#tag EndProperty

	#tag Property, Flags = &h0
		iOSOriginalView As iOSView
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRecordfps As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRecordView As AppleView
	#tag EndProperty

	#tag Property, Flags = &h0
		Progressvalue As integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mRecordfps
			End Get
		#tag EndGetter
		Recordfps As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return mRecordView
			End Get
		#tag EndGetter
		Private RecordView As AppleView
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Screenshots() As AppleView
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ScreenshotTimer As Timer
	#tag EndProperty

	#tag Property, Flags = &h0
		UpdateThread As xojo.Threading.Thread
	#tag EndProperty


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
			Name="Progressvalue"
			Group="Behavior"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Recordfps"
			Group="Behavior"
			Type="Integer"
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
