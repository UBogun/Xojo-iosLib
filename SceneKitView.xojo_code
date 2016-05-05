#tag IOSView
Begin iosView SceneKitView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin OSLIbSCNView OSLIbSCNView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   OSLIbSCNView1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   OSLIbSCNView1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   OSLIbSCNView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   OSLIbSCNView1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   460.0
      Hidden          =   False
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   2
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   20
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Untitled()
		  boxnode.RunAction AppleSCNAction.Group(AppleSCNAction.ScaleBy (0.8, 5.0) , AppleSCNAction.MoveBy (0, 10, -20, 5.0))
		  // boxnode.RunAction AppleSCNAction.ScaleBy (0.8, 5.0)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		boxnode As applescnnode
	#tag EndProperty


#tag EndWindowCode

#tag Events OSLIbSCNView1
	#tag Event
		Sub Shown()
		  dim scene as new AppleSCNScene
		  dim boxGeometry as new AppleSCNBox(10,10,10,1.0)
		  boxnode = new AppleSCNNode(boxGeometry)
		  scene.RootNode.AddChildNode(boxnode)
		  scene.rootNode.addChildNode(boxNode)
		  
		  dim pbody as AppleSCNPhysicsBody = AppleSCNPhysicsBody.DynamicBody
		  boxnode.PhysicsBody = pbody
		  me.ID.Scene = scene
		  // me.id.AutoenablesDefaultLighting = true
		  me.id.AllowsCameraControl = true
		  // me.id.JitteringEnabled = true
		  // me.id.AntialiasingMode = SceneKitFrameWork.SCNAntialiasingMode.Multi4X
		  me.id.ShowsStatistics = true
		  
		  dim ambiennode as new AppleSCNNode
		  ambiennode.Light = new AppleSCNLight
		  ambiennode.Light.Type = AppleSCNLight.SCNLightType.Ambient
		  ambiennode.Light.LightColor = AppleColor.FromColor (&c99999999)
		  scene.RootNode.AddChildNode ambiennode
		  
		  dim omniLightNode as new AppleSCNNode
		  omniLightNode.light =new AppleSCNLight
		  omniLightNode.light.type = AppleSCNLight.SCNLightType.Omni
		  omniLightNode.light.lightcolor = new applecolor(&cCDFF6600)
		  omniLightNode.position = SCNVector3Make(0, 50, 50)
		  scene.rootNode.addChildNode(omniLightNode)
		  dim logoimg as new AppleImage (iosLibLogo)
		  scene.Background.Contents = logoimg
		  
		  dim floor as new AppleSCNFloor
		  dim floornode as new AppleSCNNode(floor)
		  floornode.CreatePhysicsBody(AppleSCNPhysicsBody.SCNPhysicsBodyType.DynamicType)
		  floornode.PhysicsBody.CategoryBitMask = 2
		  floornode.PhysicsBody.CollisionBitMask = 3
		  floor.Reflectivity = 0.4
		  scene.RootNode.AddChildNode (Floor)
		  me.id.ContentScaleFactor = AppleScreen.MainScreen.Scale
		  boxnode.PhysicsBody.CategoryBitMask = 1
		  boxnode.PhysicsBody.CollisionBitMask = 3
		  boxnode.PhysicsBody.AffectedByGravity = false
		  
		  // dim t as text = SystemConstantName("SCNSceneEndTimeAttributeKey", SceneKitPath)
		  dim textnode as new AppleSCNText("SceneKit iOSLib", 2)
		  textnode.Flatness = 0.1
		  textnode.FirstMaterial.Shininess = 0.9
		  // textnode.FirstMaterial.Normal.BorderColor = new applecolor(&c5D81D300)
		  boxnode.AddChildNode textnode
		  scene.FogStartDistance = 100
		  scene.FogEndDistance = 200
		  scene.FogColor = new applecolor (&c2433C400)
		  scene.FogDensityExponent = 1
		  boxnode.Geometry.FirstMaterial.Normal.Contents =logoimg
		  // dim al as AppleSCNNode = me.id.AudioListener
		  // break
		  timer.CallLater 2000, AddressOf untitled
		  
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
