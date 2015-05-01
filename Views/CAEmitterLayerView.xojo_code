#tag IOSView
Begin iosView CAEmitterLayerView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "iOSLibCAEmitterLayer"
   Top             =   0
   Begin ioslibemitterview testview
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   testview, 4, <Parent>, 4, False, +1.00, 2, 1, 0, 
      AutoLayout      =   testview, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   testview, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   testview, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      Height          =   415.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Close()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  
		  button = iOSToolButton.NewBordered("Animate")
		  Toolbar.Add(button)
		  
		  button = iOSToolButton.NewBordered("Stop")
		  Toolbar.Add(button)
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  if button.Caption = "Help" then
		    dim help as new InfoView ("iOSLibCAEmitterLayer is another subclass of CALayers. Again, you can add one as a sublayer or use the custom control that takes care of autoresizing the layer's bounds."+endofline + _
		    "CAEmitterLayer is not complete without at least one CAEmitterCell (you can attach as many as you like, the property is an array)."+ endofline + _
		    "In this case, I have only created a simple demo with no parameters to influence. But I would encourage you to experiment with it and would be glad if you could add another playground demo view to the project." + endofline + _
		    "Many properties of the EmitterLayer and the Cell are animatable too, they will follow.")
		    self.PushToCurl help
		  elseif button.Caption = "Animate" then
		    MakeEmitter
		    // iOSLibTextView1.Layer.MasksToBounds = true
		  else
		    // dim myvalue as iOSLibNumber = iOSLibNumber.MakeFromPtr (testview.iOSLibView.ValueForKeyPath ("layer.self"))
		    // testview.iOSLibView.setValueForKeyPath ("layer.sublayers.%@.emitterCells.%@.enabled", new iOSLibNumber (fALSE))
		    // testview.iOSLibView.setValueForKeyPath ("layer.Emitterlayer.zPosition", new iOSLibNumber (-2))
		    testview.EmitterLayer.DisableEmitters
		    
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub MakeEmitter()
		  // dim  mylayer as new iOSLibCAEmitterLayer
		  // mylayer.bounds = testview.iOSLibView.Bounds
		  // myLayer.Frame = myLayer.bounds
		  // myLayer.MasksToBounds = true
		  // myLayer.name = "EmitterLayer"
		  // mylayer.ZPosition = 1
		  // mylayer.TileSize = NSSize (100,100)
		  
		  // mylayer.ContentsPositioning = iOSLibCALayer.CaLayerContentPosition.Center
		  // mylayer.LevelsOfDetail = 1
		  // testview.iOSLibView.Layer.AddSubLayer mylayer
		  // mylayer.Seed = 1394639
		  // testview.iOSLibView.layer.Contents =new ioslibobject ( myimage.toCGImage)
		  
		  
		  dim  myEmitterCell as new iOSLibCAEmitterCell
		  dim mylib as new iOSLibMutableArray
		  mylib.Addobject myEmitterCell
		  testview.EmitterLayer.EmitterCells = mylib
		  dim myimage as new iOSLibImage (iosliblogo)
		  
		  myEmitterCell.Contents =new ioslibobject ( myimage.toCGImage.CFTypeRef)
		  myEmitterCell.Name = "iOSLibLogoCell"
		  
		  myEmitterCell.LifeTime = 100
		  myEmitterCell.LifeTimeRange = 95
		  myEmitterCell.RedRange = 1
		  myEmitterCell.BlueRange = 1
		  myEmitterCell.GreenRange = 1
		  myEmitterCell.AlphaRange = 0.9
		  myEmitterCell.RedSpeed = 0.001
		  myEmitterCell.GreenSpeed = 0.01
		  myEmitterCell.BlueSpeed = 0.1
		  myEmitterCell.BirthRate = 2
		  myEmitterCell.Scale = 0.02
		  myEmitterCell.ScaleRange = 0.1
		  myEmitterCell.Velocity = 100
		  myEmitterCell.ScaleSpeed = 0.01
		  myEmitterCell.VelocityRange = 30
		  myEmitterCell.XAcceleration = 5
		  myEmitterCell.YAcceleration = 18
		  myEmitterCell.Spin = 0
		  myEmitterCell.SpinRange = 10
		  myEmitterCell.EmissionRange = 1
		  myEmitterCell.Enabled = true
		  testview.EmitterLayer.BirthRate = 1
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events testview
	#tag Event
		Sub Open()
		  
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
