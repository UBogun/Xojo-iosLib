#tag IOSView
Begin iosView SpriteKitView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin AppleSKViewer ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowsTransparency=   False
      Asynchronous    =   False
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ImageView1, 4, BottomLayoutGuide, 3, False, +1.00, 1, 1, 0, 
      FrameInterval   =   0
      Height          =   407.0
      IgnoresSiblingOrder=   False
      Left            =   0
      LockedInPosition=   False
      Paused          =   False
      Scope           =   0
      ShouldCullNonVisibleNodes=   False
      ShowsDrawCount  =   False
      ShowsFields     =   False
      ShowsFPS        =   False
      ShowsNodeCount  =   False
      ShowsPhysics    =   False
      ShowsQuadCount  =   False
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Intro")
		  Toolbar.Add(button)
		  
		  
		  button = iOSToolButton.NewBordered("SpaceShooter")
		  Toolbar.Add(button)
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  select case button.Caption
		  case "Spaceshooter"
		    Spaceshooter
		  case "Intro"
		    ShootWorld
		  end select
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub analyzeCollision(contact as AppleSKPhysicsContact)
		  // This method  is run when a Spaceshooter game is running
		  // It checks the collision of two objects
		  // I must admit: It looks a bit confusing, and it can certainly get a better structure.
		  // With a bit more planning on collision types and objects, you can get rid of double checks.
		  
		  dim ObjectA as AppleSKPhysicsBody = contact.BodyA // get both collision objects
		  dim objectb as AppleSKPhysicsBody = contact.BodyB
		  
		  // Now lets see what we have
		  
		  if (ObjectA.CategoryBitMask and BulletCategory) > 0 then // Object A is a fighter bullet
		    if (Objectb.CategoryBitMask and EnemyCategory) > 0 then //  Object B is an enemy
		      objectb.Node.RemoveAllActions
		      objectb.Node.RunAction (Explosion0Action) // remoce it with a fade-out
		      score = score + 100
		    end if
		    
		  elseif (ObjectA.CategoryBitMask and FighterCategory) > 0 then // ObjectA is Fighter
		    if (objectb.CategoryBitMask and EnemyBulletCategory)  > 0 or   (objectb.CategoryBitMask and EnemyCategory)  > 0 then // enemy hit us
		      ObjectA.Node.RemoveAllActions
		      objectb.Node.RemoveAllActions
		      objecta.Node.RunAction (Explosion1Action) // remove enemy bullet
		      objectb.Node.RunAction (Explosion0Action) // remove our ship
		      timer.CallLater 500, addressof GameOverScene
		    end if
		    
		  elseif (Objecta.CategoryBitMask and EnemyBulletCategory) > 0 then // Enemy bullet
		    if ( objectb.CategoryBitMask and BulletCategory) > 0 then // Our Bullet
		      objecta.Node.RunAction (Explosion1Action) // remove enemy bullet
		      objectb.Node.RunAction (Explosion1Action) // remove our bullet
		      score = score + 250
		      
		    elseif ( objectb.CategoryBitMask and FighterCategory) > 0 then
		      ObjectA.Node.RemoveAllActions
		      objectb.Node.RemoveAllActions
		      objecta.Node.RunAction (Explosion1Action) // remove enemy bullet
		      objectb.Node.RunAction (Explosion0Action) // remove our ship
		      timer.CallLater 500, addressof GameOverScene
		    end if
		    
		  elseif (Objecta.CategoryBitMask and EnemyCategory) > 0 then // Enemy
		    if ( objectb.CategoryBitMask and BulletCategory) = BulletCategory then // Our Bullet
		      ObjectA.Node.RemoveAllActions
		      objectb.Node.RemoveAllActions
		      objecta.Node.RunAction (Explosion0Action) // remove enemy bullet
		      objectb.Node.RunAction (Explosion1Action) // remove our bullet
		      score = score + 100
		    end if
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CalculateEnemyMove()
		  // Part of Spaceshooter: Calculates an Enemy move. This method is called whenever one of the enemies finishes its move.
		  
		  dim enemies as AppleArray = SpaceShooterScene.ChildNodes(Enemy1Name) // get all enemies
		  for q as uinteger = 0 to enemies.Count -1
		    dim enemy as AppleSKNode = AppleSKNode.MakeFromPtr (enemies.PtrAtIndex(q)) // rertieve one
		    if enemy <> nil then // probably unnecessary, but in any case: Make sure it still exists
		      if randomint(1,100) < EnemyShootProbability then // don't shoot always, that's too much at first
		        dim currentfighter as AppleSKNode = SpaceShooterScene.childnode( "Fighter") // and then find out where our ship is located
		        if currentfighter <> nil then
		          dim xpos as Double = currentfighter.Position.x + randomint (-100,100)
		          dim ypos as double = ImageView1.Height - randomint (50, ImageView1.Height/2)
		          dim location as NSPoint =NSPoint (xpos, ypos)
		          
		          dim fightervelocity as double = ImageView1.Width / 3.5
		          // dim movedifference as nspoint = nspoint (location.x - bear.Position.x, location.y - bear.position.y)
		          dim movedifference as nspoint = location.Vector_Subtract (Enemy.Position)
		          dim distance as double = sqrt (movedifference.x * movedifference.x + movedifference.y * movedifference.y)
		          dim duration as double = distance / fightervelocity
		          
		          dim wait as AppleSKAction = AppleSKAction.Wait (randomint (0, 100)/100)
		          dim moveaction as AppleSKAction = AppleSKAction.MoveTo (location, duration)
		          
		          dim block as new AppleBlock (AddressOf Enemy1MoveEnded)
		          dim doneaction as AppleSKAction = AppleSKAction.RunBlock (block)
		          dim moveactionWithdone as AppleSKAction = AppleSKAction.Sequence (wait, moveaction, doneaction)
		          enemy.RunActionWithKey (moveactionWithdone, "EnemyMoving")
		        end if
		      end if
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreateEnemy()
		  // Creates a new enemy1 if we have less than MaxEnemies on screen.
		  
		  if SpaceShooterScene.ChildNodes(Enemy1Name).count < MaxEnemies then
		    dim NewEnemy as new AppleSKSpriteNode (Enemy1Texture) // create a new Sprite from the prepared texture
		    NewEnemy.Name = Enemy1Name
		    dim enemybody as new AppleSKPhysicsBody (NewEnemy) // and make a physicsbody for it
		    
		    // See CreateFighter for this section – it's almost the same
		    enemybody.CategoryBitMask = EnemyCategory
		    enemybody.ContactTestBitMask = 0
		    enemybody.CollisionBitMask = FighterCategory or ObjectCategory or BulletCategory
		    enemybody.AffectedByGravity = true
		    NewEnemy.PhysicsBody = enemybody
		    
		    // Place it on a random position slightly above the screen
		    NewEnemy.Position = NSPoint (randomint (-20, ImageView1.Width+20), ImageView1.height + 50)
		    SpaceShooterScene.AddChild NewEnemy // attach it to the scene
		    
		    // Make it move downward
		    dim moveaction as AppleSKAction = AppleSKAction.MoveToY (ImageView1.Height - randomint (100, 250), 2)
		    
		    // and create a Block to call when it has finished its move
		    dim block as new AppleBlock (AddressOf Enemy1MoveEnded)
		    dim doneaction as AppleSKAction = AppleSKAction.RunBlock (block)
		    // Make an actionSequence
		    dim moveactionWithdone as AppleSKAction = AppleSKAction.Sequence (moveaction, doneaction)
		    NewEnemy.RunActionWithKey (moveactionWithdone, "EnemyMoving") // attach it to the new enemy
		  end if
		  DontSpawnEnemies = false
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreateFighter()
		  //Setup for the Fighter
		  
		  FighterNormalTexture = new AppleSKTexture("Fighter")  // Set up and store the textures for the fighter
		  FighterLeftTexture = new AppleSKTexture("FighterLeft")
		  FighterRightTexture = new AppleSKTexture("FighterRight")
		  FighterDamagedTexture = new AppleSKTexture("FighterDamaged")
		  
		  FighterNormal = new AppleSKSpriteNode (FighterNormalTexture) // now create a Sprite with the normal image
		  // FighterNormal.setScale  1/ImageView1.view.ContentScaleFactor // scale it so it matches the display resolution
		  FighterNormal.Position = NSPoint (ImageView1.Width/2, FighterNormal.Frame.Size_.height * 2) // and place it in the middle just a bit above the bottom
		  
		  dim FighterBody as new AppleSKPhysicsBody (FighterNormal) // now add a rectangular physics body for collision detection
		  FighterBody.CategoryBitMask = FighterCategory // and assign it the category
		  FighterBody.ContactTestBitMask = 0 // No contact simulation please!
		  FighterBody.Dynamic = false // Dont influnence it with impacts
		  FighterBody.CollisionBitMask = EnemyCategory // Enemies are spaceships and their bullets, only register collisions with them
		  FighterBody.AffectedByGravity = false //yes, make it influenceable by gravity
		  FighterNormal.PhysicsBody = FighterBody // now assign the phyics body
		  FighterNormal.ZPosition = 1
		  FighterNormal.Name = "Fighter" // we will be able to find the fighter by its name
		  // FighterNormal.BlendMode = AppleSKNode.SKBlendMode.Add
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreatePlanet(Texture as AppleSKTexture, Planetname as Text, PlanetGravity as Single = 0) As AppleSKSpriteNode
		  //Setup for a Planet
		  dim Planet as new AppleSKSpriteNode (Texture) //  create a Sprite with the  image texture
		  Planet.Position = NSPoint (ImageView1.Width/2, Planet.Height) // and place it in the middle
		  
		  
		  dim Planetbody as new AppleSKPhysicsBody (Planet.Height / 2) // now add a circular physics body for collision detection
		  if PlanetGravity > 0 then
		    Planetbody.CategoryBitMask = ObjectCategory // and assign it the category
		    Planetbody.ContactTestBitMask = FighterCategory or SmallObjectCategory or EnemyBulletCategory or EnemyCategory or BulletCategory
		    Planetbody.CollisionBitMask =FighterCategory or SmallObjectCategory or EnemyBulletCategory or EnemyCategory or BulletCategory
		  else
		    Planetbody.ContactTestBitMask =0
		    Planetbody.CollisionBitMask =0
		  end if
		  Planetbody.Mass = PlanetGravity * 10000000
		  Planetbody.AffectedByGravity = false
		  Planet.PhysicsBody = Planetbody // now assign the phyics body
		  
		  Planet.Name = Planetname // we will be able to find the fighter by its name
		  Planet.ZPosition = -1 // Push it to the first background layer
		  
		  return Planet
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreateScore()
		  dim Scoretext as new AppleSKLabelNode ("Score", "Noteworthy Bold") // a label showing the stage
		  Scoretext.FontSize = 24
		  Scoretext.HorizontalAlignment = AppleSKLabelNode.SKLabelHorizontalAlignmentMode.Right
		  Scoretext.Position = nspoint (ImageView1.Width - Scoretext.Width, ImageView1.Height - 30)
		  Scoretext.name = "ScoreText"
		  Scoretext.ZPosition = 10
		  SpaceShooterScene.AddChild Scoretext
		  Score = 0 // Reset the counter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreateStar()
		  dim random as integer = randomint (0,100000)
		  select case random
		  case 5 to 20000
		    // dim astar as AppleSKShapeNode = AppleSKShapeNode.Circle (randomint(1,10) / 10)
		    // astar.FillColor = astar.StrokeColor
		    // astar.GlowWidth = astar.Frame.Size_.width *( randomint (0,5)/10)
		    // astar.Position = nspoint (randomint(0,ImageView1.Width), ImageView1.Height + 10)
		    // SpaceShooterScene.ChildNode(SpaceLayerName).AddChild astar
		    // astar.RunActionWithKey (starfall, StarFallName)
		  case 95000 to 99000
		    CalculateEnemyMove
		  case 99000 to 100000
		    if not DontSpawnEnemies then CreateEnemy
		  end select
		  if SpaceShooterScene.ChildNodes(Enemy1Name).Count = 0  and not DontSpawnEnemies then
		    DontSpawnEnemies = true
		    dim createblock as new AppleBlock (AddressOf CreateEnemy)
		    SpaceShooterScene.RunAction (AppleSKAction.Sequence (AppleSKAction.Wait (2, 2), AppleSKAction.RunBlock (createblock)))
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreateStarBackground()
		  // This method prepares a SKEmitterNode that emits stars in different sizes, slightly colored and moving slowly downwards
		  
		  dim BackGroundnode as new AppleSKEmitterNode // An emitter for the stars background
		  BackGroundnode.Name = SpaceLayerName // a name so we can find it later if we need
		  BackGroundnode.ZPosition = -10 // push it  layer from the Viewer
		  
		  BackGroundnode.ParticleTexture = new AppleSKTexture ("SmallSun") // load the sun picture
		  BackGroundnode.ParticleSize = NSSize (3,3) // and make it small
		  BackGroundnode.ParticleScaleRange = 3 // but give it a variation in size
		  
		  BackGroundnode.ParticleColor = new AppleColor (&cFFFFFF00)
		  BackGroundnode.ParticleColorBlendFactor = 1 // overlay a white color
		  BackGroundnode.ParticleColorRedRange = 0.5 // but vary it a bit
		  BackGroundnode.ParticleColorBlueRange = 0.5
		  BackGroundnode.ParticleColorGreenRange = 0.5
		  BackGroundnode.ParticleBlendMode = AppleSKNode.SKBlendMode.add
		  BackGroundnode.ParticleAlphaRange = 0.6 // dim them randomly
		  BackGroundnode.ParticleZPosition = -1 // Don't know why the fighter is still transparent for the stars
		  
		  BackGroundnode.ParticleBirthRate = 15 // Don't create  too many, 15 per second looks nice
		  
		  //Setting the Point the emitter emits from (Top line of view, in its center)
		  BackGroundnode.ParticlePosition = nspoint (ImageView1.Width / 2, ImageView1.Height) // spawn them on top of the view
		  BackGroundnode.ParticlePositionRange = CGVector (ImageView1.Width, 0) //make it randomize over the full width
		  BackGroundnode.ParticleSpeed = ImageView1.Height / BackgroundSpeedScrollDuration // make them drift nicely
		  BackGroundnode.ParticleSpeedRange = (ImageView1.Height / BackgroundSpeedScrollDuration)/ 4 // with variance to add depth
		  BackGroundnode.ParticleLifetime = BackgroundSpeedScrollDuration * 1.25 // kill them when they left the stage
		  dim myvalue as double =  270 // the spawn angle  – downwards
		  BackGroundnode.EmissionAngle = myvalue.DegreeToRadian
		  SpaceShooterScene.AddChild  BackGroundnode
		  BackGroundnode.AdvanceSimulationTime (20) // skip a few seconds so we start with a full background
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Enemy1MoveEnded()
		  // This block is called whenever an enemy has ended its move (or at some random moments too)
		  Enemyshoot
		  calculateenemyMove
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnemyShoot()
		  // Enemy1 is not too bright:
		  // When it finished its move, it always shoots once.
		  
		  dim enemies as AppleArray = SpaceShooterScene.ChildNodes("Enemy1")
		  // get the array of enemies currently attached to the scene
		  for q as uinteger = 0 to enemies.Count -1
		    dim enemy as AppleSKNode = AppleSKNode.MakeFromPtr (enemies.ptrAtIndex(q))
		    
		    if not enemy.isnil then // just to be sure
		      if  not enemy.ExecutesActions then // is it idle?
		        dim Enemybullet as  new AppleSKSpriteNode (RedshotTexture) // Create a new sprite – see FighterShoot
		        dim Redshotbody as new AppleSKPhysicsBody (enemybullet)
		        Redshotbody.CategoryBitMask = EnemyBulletCategory
		        Redshotbody.ContactTestBitMask =  FighterCategory or SmallObjectCategory or ObjectCategory
		        Redshotbody.CollisionBitMask = FighterCategory or SmallObjectCategory or ObjectCategory
		        Redshotbody.AffectedByGravity = true
		        Redshotbody.PreciseCollisionDetection = true
		        Enemybullet.PhysicsBody = Redshotbody
		        
		        Enemybullet.Position = nspoint (enemy.Position.x, enemy.Position.y - enemy.Frame.Size_.height / 2) // Place it beyond the ship
		        SpaceShooterScene.AddChild Enemybullet // make it appear
		        enemybullet.RunAction enemyshot // and let it fly
		      end if
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FighterMoveEnded()
		  // Fighter has stopped moving, return its texture to normal
		  FighterNormal.RunAction(TextureNormalaction)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FighterReloadDelayBlock()
		  CanShoot = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FighterShoot()
		  if CanShoot then
		    dim Fighterbullet as  new AppleSKSpriteNode (GreenshotTexture)
		    // Fighterbullet.setScale  1/ImageView1.view.ContentScaleFactor // scale it so it matches the display resolution
		    
		    dim Greenshotbody as new AppleSKPhysicsBody (FighterBullet)
		    Greenshotbody.CategoryBitMask = BulletCategory
		    Greenshotbody.ContactTestBitMask =  EnemyCategory or ObjectCategory or SmallObjectCategory or EnemyBulletCategory
		    Greenshotbody.CollisionBitMask = EnemyCategory or ObjectCategory or SmallObjectCategory or EnemyBulletCategory
		    Greenshotbody.AffectedByGravity = true
		    Greenshotbody.PreciseCollisionDetection = true
		    FighterBullet.PhysicsBody = Greenshotbody
		    
		    FighterBullet.Position = nspoint (FighterNormal.Position.x, FighterNormal.Position.y + FighterNormal.Frame.Size_.height / 2)
		    SpaceShooterScene.AddChild FighterBullet
		    CanShoot = false
		    dim block as new AppleBlock (AddressOf FighterReloadDelayBlock)
		    FighterBullet.RunAction FighterShot
		    SpaceShooterScene.RunAction AppleSKAction.Sequence (AppleSKAction.Wait (FighterReloadTime), AppleSKAction.RunBlock (block))
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GameOverScene()
		  // When Spaceshooter Fighter dies, we replace the SpaceshooterScene with this one and delete SpaceShooterScene to make sure everything is reset.
		  // We wouldn't have to, but this is just a demo, not a Game Design demo, so let me use a quick & dirty way ;)
		  
		  dim endscene as new AppleSKSceneWithInterface (ImageView1)
		  
		  // create a Background from a Noisetexture
		  dim Background as  AppleSKTexture = AppleSKTexture.NoiseTexture (0.9, endscene.Size, true)
		  dim BGsprite as new AppleSKSpriteNode (Background) // make a sprite from it
		  BGsprite.Position = nspoint (ImageView1.Width/2, ImageView1.Height/2)
		  endscene.addchild BGsprite
		  
		  // and three labels.
		  // the last one is being checked for in the TochesEnded Event, that's why it receives a name.
		  dim GOText as new AppleSKLabelNode ("Game Over", "Noteworthy Bold")
		  GOText.FontSize = 70
		  GOText.Position = nspoint (ImageView1.Width/2, ImageView1.Height/2)
		  endscene.name = "GameOverScene"
		  endscene.addchild GOText
		  
		  dim ScoreText as new AppleSKLabelNode ("Score: "+score.totext, "Noteworthy Bold")
		  ScoreText.FontSize = 50
		  ScoreText.FontColor = &c80004000
		  ScoreText.Position = nspoint (ImageView1.Width/2, ImageView1.Height/2 - 100)
		  endscene.addchild ScoreText
		  
		  dim Restart as new AppleSKLabelNode ("Tap here to restart", "Noteworthy Bold")
		  Restart.name = "Restart"
		  Restart.FontSize = 50
		  Restart.FontColor = &c80004000
		  Restart.Position = nspoint (ImageView1.Width/2, ImageView1.Height/2 - 200)
		  endscene.addchild Restart
		  
		  ImageView1.PresentScene endscene, AppleSKTransition.FadeWithColor (new AppleColor (&c99999900), 2)
		  SpaceShooterScene = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitFighter()
		  CanSteer = true
		  CanShoot = true
		  SpaceShooterScene.PhysicsWorld.RemoveAllJoints
		  CreateEnemy
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessSpaceShooterTouch(touchset as AppleSet, asnevent as AppleNSEvent)
		  if CanSteer then
		    dim touch as AppleSKTouch = AppleSKTouch.MakeFromPtr (touchset.AllObjects.PtrAtIndex(0)) // get the first touch item of the array
		    dim location as NSPoint = touch.LocationInNode (SpaceShooterScene) // and convert its point to view points
		    
		    if Location.y > FighterNormal.Frame.Size_.height * 6 then location.y = FighterNormal.Frame.Size_.height * 6 // limit the y position, don't get too close to the upper bounds
		    dim FighterVelocity as double = ImageView1.Width / FighterSpeed // calculate the speed, standardly fighter takes 2 secons to cross the screen width
		    dim movedifference as nspoint = location.Vector_Subtract( FighterNormal.Position)
		    dim distance as double = sqrt (movedifference.x * movedifference.x + movedifference.y * movedifference.y)
		    dim duration as double = distance / FighterVelocity
		    //
		    dim textureaction as AppleSKAction =  if (movedifference.x <0, TextureLeftAction, if (movedifference.x > 0, TextureRightaction, TextureNormalaction))
		    dim moveaction as AppleSKAction = AppleSKAction.MoveTo (location, duration)
		    dim block as new AppleBlock (AddressOf FighterMoveEnded)
		    dim doneaction as AppleSKAction = AppleSKAction.RunBlock (block)
		    dim moveactionWithdone as AppleSKAction = AppleSKAction.Sequence (textureaction, moveaction, doneaction)
		    FighterNormal.RunActionWithKey (moveactionWithdone, "FighterMoving")
		    
		    if touch.TapCount > 1 then FighterShoot
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShootWorld()
		  dim myscene as new AppleSKSceneWithInterface (ImageView1.View.frame.Size_, ImageView1)
		  myscene.PhysicsWorld.Gravity = CGVector (0,-0.05)
		  ImageView1.PresentScene (myscene, AppleSKTransition.Doorway (2))
		  
		  
		  // Labelnode
		  for q as integer = 0 to 15
		    dim mynode as new AppleSKLabelNode ("iOSLibSpriteKit is here!", "Menlo Bold")
		    mynode.FontSize =  randomint (3,40)
		    mynode.VerticalAlignment = AppleSKLabelNode.SKLabelVerticalAlignmentMode.Center
		    myscene.AddChild mynode
		    mynode.Position = NSPoint ( randomint (20, ImageView1.width - 20),  randomint (10, ImageView1.height- 100))
		    mynode.BlendColor = new AppleColor (&cff229933)
		    mynode.ColorBlendFactor = 0.5
		    
		    dim firstbody as new AppleSKPhysicsBody (mynode.Frame.Size_)
		    firstbody.CategoryBitMask = ObjectCategory
		    firstbody.ContactTestBitMask = ObjectCategory or BulletCategory or BorderCategory
		    firstbody.CollisionBitMask = ObjectCategory or BulletCategory or BorderCategory
		    firstbody.PreciseCollisionDetection = true
		    firstbody.Mass = randomint (0, 2)
		    firstbody.LinearDamping = 0.1
		    firstbody.AngularDamping = 0.1
		    firstbody.Restitution = 0.95
		    firstbody.Dynamic = true
		    firstbody.AffectedByGravity = true
		    mynode.PhysicsBody = firstbody
		    firstbody.ApplyImpulse (CGVector(randomint (-1000, 1000), randomint (-1000, 1000)))
		    
		  next
		  
		  
		  // Bullet
		  
		  dim anothernode as new AppleSKSpriteNode (new AppleColor(&c99992222), NSSize (15,15))
		  dim myaction as AppleSKAction = AppleSKAction.PlaySound ("scifi016.mp3", false)
		  anothernode.RunActionWithEvent myaction
		  myscene.AddChild anothernode
		  myaction = AppleSKAction.MoveTo (NSPoint( ImageView1.AppleView.Frame.Size_.width/2 + 80, ImageView1.Height + anothernode.Frame.Size_.height * 2), 2)
		  
		  
		  dim mybody as new AppleSKPhysicsBody (anothernode.Frame.Size_)
		  mybody.CategoryBitMask = BulletCategory
		  mybody.CollisionBitMask = ObjectCategory or BulletCategory or BorderCategory
		  
		  mybody.Mass = 1
		  mybody.AffectedByGravity = true
		  mybody.PreciseCollisionDetection = true
		  anothernode.PhysicsBody = mybody
		  anothernode.RunActionWithKey myaction, "Rise"
		  
		  // Frame border
		  
		  dim myframe as NSRect = ImageView1.AppleView.Frame
		  myframe.Size_.height = myframe.Size_.height - 10
		  myframe.Size_.width = myframe.Size_.width - 10
		  myframe.Origin.x = 5
		  dim border as  AppleSKShapeNode = AppleSKShapeNode.Rect (myframe)
		  myscene.AddChild border
		  mybody = AppleSKPhysicsBody.EdgeLoop (myframe)
		  mybody.CategoryBitMask = BorderCategory
		  mybody.Friction = 1
		  border.PhysicsBody = mybody
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowStage()
		  // This is the intro sequence with the planet showing the stage.
		  //Yes, you'll never get beyong stage 1 – until you expand the demo ;)
		  
		  dim Planet1Texture as new AppleSKTexture ("planetgeneric05") // create a new planet texture
		  dim StartPlanet as AppleSKSpriteNode = CreatePlanet  (Planet1Texture, "StartPlanet") // and a sprite from it
		  dim StageText as new AppleSKLabelNode ("Stage "+ShooterStage.ToText, "Noteworthy Bold") // a label showing the stage
		  StageText.FontSize = 48
		  
		  dim StageBody as new AppleSKPhysicsBody (StageText) // a PhysicsBody for it, we need it for the joint
		  StageText.PhysicsBody = StageBody //attached!
		  StageText.Position = StartPlanet.Position // center it in the planet
		  SpaceShooterScene.AddChild StartPlanet // show both
		  SpaceShooterScene.AddChild StageText
		  
		  dim pin as new AppleSKPhysicsJointFixed (StartPlanet.PhysicsBody, StageBody, StageText.Position) // create a joint to lock the text in its planet position
		  SpaceShooterScene.PhysicsWorld.AddJoint pin // Don't forget to add a joint to the world!
		  
		  Stagetext.runaction (AppleSKAction.FadeOut (3)) // Make the stage counter disappear
		  
		  dim planetmove as AppleSKAction = AppleSKAction.MoveToY (StartPlanet.Height * -1.1, 10) // move the planet down out of sight
		  planetmove.TimingMode = AppleSKAction.SKActionTimingMode.EaseIn // with accelerating motion
		  StartPlanet.RunAction planetmove // do it!
		  
		  FighterNormal.Position = StartPlanet.position // set the staring point for the fighter
		  FighterNormal.SetScale 0.0001 // minimize it
		  SpaceShooterScene.AddChild FighterNormal //  show the fighter
		  dim CF as new AppleBlock (AddressOf InitFighter)
		  // and start an action that scales it and then calls the first enemy
		  FighterNormal.RunAction (AppleSKAction.Sequence (AppleSKAction.Wait (3), _
		  AppleSKAction.group (AppleSKAction.ScaleTo (1, 4), AppleSKAction.MoveToY (50, 4) ), AppleSKAction.Wait(2), _
		  AppleSKAction.RunBlock (CF)))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Spaceshooter()
		  // Setup for SpaceShooter, in case it exists simply show the scene
		  
		  if SpaceShooterScene = nil then // do we have to create a new scene or does one still exist?
		    SpaceShooterScene = new AppleSKSceneWithInterface (ImageView1) // Dim a new Scene the size of the view
		    SpaceShooterScene.name = "SpaceShooter" //and give it a name..
		    SpaceShooterScene.PhysicsWorld.Gravity = CGVector (0,0) // No gravity in space
		    // Now prepare the images and sprites:
		    createStarBackground // install the falling stars in the background
		    CanSteer = False // Dont let the user control the fighter
		    CreateFighter // Prepare the fighter sprite
		    Enemy1Texture = new AppleSKTexture (Enemy1Name) // Prepare the enemy texture
		    
		    // now prepare the Bullets and Explosions
		    GreenshotTexture = new AppleSKTexture ("GreenShot")
		    RedshotTexture = new AppleSKTexture ("RedShot")
		    Explosion0Texture = new AppleSKTexture ("explosion0")
		    Explosion1Texture = new AppleSKTexture ("explosion2")
		    Explosion2Texture = new AppleSKTexture ("explosion2")
		    DontSpawnEnemies = true // to avoid enemies spawning too early
		    canshoot = false // to avoid that the fighter shoots the planet
		    // Prepare actions we will use often:
		    dim fightershotmove as AppleSKAction = AppleSKAction.MoveToY (ImageView1.Height + 50, 1) // makes a sprite leave the scene on top
		    dim soundaction as AppleSKAction = AppleSKAction.PlaySound ("Standardshoot.mp3", false) // plays the shoot sound
		    // create an actionsequence and save it:
		    FighterShot = AppleSKAction.Sequence (soundaction, FighterShotmove, AppleSKAction.RemoveFromParent)
		    
		    EnemyShot = AppleSKAction.movetoy (-50, 2.5) // moves beyond the bottom of the screen, no sound yet.
		    
		    // Actions for different looks of the fighter
		    TextureLeftAction = AppleSKAction.setTexture ( FighterLeftTexture)
		    TextureRightAction = AppleSKAction.setTexture ( FighterRightTexture)
		    TextureNormalAction = AppleSKAction.setTexture ( FighterNormalTexture)
		    
		    Explosion0Action =  AppleSKAction.Sequence (AppleSKAction.SetTexture (Explosion0Texture, False), AppleSKAction.PlaySound ("plasmahit.mp3", false), _
		    AppleSKAction.Group( AppleSKAction.RepeatAction (AppleSKAction.RotateByAngle (1, 0.1), 3),  AppleSKAction.ScaleTo (0, 0.3)),  AppleSKAction.RemoveFromParent)
		    Explosion1Action =  AppleSKAction.Sequence (AppleSKAction.SetTexture (Explosion1Texture, False), AppleSKAction.PlaySound ("explosion4_01.mp3", false), _
		    AppleSKAction.Group( AppleSKAction.RepeatAction (AppleSKAction.RotateByAngle (-2, 0.1), 2),  AppleSKAction.ScaleTo (0, 0.2)),  AppleSKAction.RemoveFromParent)
		    
		    
		    // Background music – currently plays only once
		    // First create a new AVPlayer with our music
		    dim myplayer as new AppleAVPlayer (SpecialFolder.GetResource ("song18_0.mp3"))
		    // and now create a Videonode with it:
		    dim mynode as new AppleSKVideoNode (myplayer)
		    mynode.Play // Play the music
		    ShowStage
		    SpaceShooterScene.AddChild mynode // and attach it to the scene
		    ImageView1.ShouldCullNonVisibleNodes = true // have the SKView take care for bullets that left the screen will get erased.
		    CreateScore
		  end if
		  
		  // Finally: Show the scene!
		  imageview1.PresentScene SpaceShooterScene, AppleSKTransition.MoveIn (AppleSKTransition.SKTransitionDirection.Down, 2)
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Image and Sounds Credits
		
		Space Ship parts and graphics:
		---
		
		
		
		Space Shooter Create-a-ship expansion graphics by Kenney Vleugels (www.kenney.nl)
		
		
		
		You may use these graphics in personal and commercial projects.
		
		Credit (www.kenney.nl) would be nice but is not mandatory.
		
		
		
		--
		
		Additional Graphics:
		License (http://creativecommons.org/licenses/by/3.0/)
		
		
		
		You are free:
		
		
		
		* to Share ó to copy, distribute and transmit the work
		
		* to Remix ó to adapt the work
		
		
		
		Under the following conditions:
		
		
		
		* Attribution ó You must attribute the work in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the work).
		
		
		
		
		
		ATTRIBUTION INSTRUCTIONS:
		
		
		
		Include my name "Ville Seppanen" in the application/game where the creators/contributors are listed.
		
		
		
		Optional:
		
		
		
		- Leave a link to your project on the opengameart.org download page as a comment (get free exposure!)
		
		- Email or message me with information regarding your app or game if you want it to appear on my Facebook (get even more free exposure!)
		
		- Link to my portfolio (villeseppanen.com) if you are a cool person ;)
		
		
		
		Thank you!
		
		
		
		ville.seppanen@gmail.com
		
		––
		
		
		Additional graphics from opengameart.org (sadly without license files attched to the downloads)
		
		--
		
		Crystal Cave song:
		Credit pixelsphere.org / The Cynic Project. Please link to my website and notify me if you use the music.
		
		__
		
		Walking Bear Demo idea: raywenderlich.com
		Walking Bear graphcis: gameartguppy.com
	#tag EndNote


	#tag Property, Flags = &h21
		Private BackgroundSpeedScrollDuration As Double = 20
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CanShoot As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CanSteer As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DontSpawnEnemies As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Enemy1Texture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private EnemyShootProbability As Integer = 20
	#tag EndProperty

	#tag Property, Flags = &h21
		Private EnemyShot As AppleSKAction
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Explosion0Action As AppleSKAction
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Explosion0Texture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Explosion1Action As AppleSKAction
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Explosion1Texture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Explosion2Action2 As AppleSKAction
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Explosion2Texture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FighterDamagedTexture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FighterLeftTexture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FighterNormal As AppleSKspritenode
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FighterNormalTexture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FighterReloadTime As Double = 0.15
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FighterRightTexture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FighterShot As AppleSKAction
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FighterSpeed As Double = 2.25
	#tag EndProperty

	#tag Property, Flags = &h21
		Private GreenshotTexture As AppleSKTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			+
		#tag EndNote
		Private MaxEnemies As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mScore As UInteger
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RedshotTexture As AppleSKTexture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mScore
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mScore = value
			  dim scoretextnode as AppleSKLabelNode = new AppleSKLabelNode(SpaceShooterScene.ChildNode ("ScoreText").id)
			  scoretextnode.Caption = value.totext
			End Set
		#tag EndSetter
		Score As UInteger
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ShooterStage As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SpaceShooterScene As AppleSKSceneWithInterface
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TextureLeftAction As AppleSKAction
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TextureNormalaction As AppleSKAction
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TextureRightaction As AppleSKAction
	#tag EndProperty


	#tag Constant, Name = BackgroundCategory, Type = Double, Dynamic = False, Default = \"32", Scope = Private
	#tag EndConstant

	#tag Constant, Name = BorderCategory, Type = Double, Dynamic = False, Default = \"4", Scope = Private
	#tag EndConstant

	#tag Constant, Name = BulletCategory, Type = Double, Dynamic = False, Default = \"2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = Enemy1Name, Type = Text, Dynamic = False, Default = \"Enemy1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = EnemyBulletCategory, Type = Double, Dynamic = False, Default = \"128", Scope = Private
	#tag EndConstant

	#tag Constant, Name = EnemyCategory, Type = Double, Dynamic = False, Default = \"16", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FighterCategory, Type = Double, Dynamic = False, Default = \"8", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ObjectCategory, Type = Double, Dynamic = False, Default = \"1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SmallObjectCategory, Type = Double, Dynamic = False, Default = \"64", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SpaceLayerName, Type = Text, Dynamic = False, Default = \"SpaceLayer", Scope = Private
	#tag EndConstant

	#tag Constant, Name = StarFallName, Type = Text, Dynamic = False, Default = \"StarFall", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events ImageView1
	#tag Event
		Sub Open()
		  me.ShowsFPS = true
		  me.ShowsDrawCount = true
		  me.ShowsNodeCount = true
		  // me.ShowsFields = true
		  // me.ShowsPhysics = true
		  // me.ShowsQuadCount = true
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TouchesEnded(Touchset as AppleSet, anEvent as AppleNSEvent)
		  select case me.scene.name
		  case "SpaceShooter"
		    ProcessSpaceShooterTouch (Touchset, anEvent)
		  case "GameOverScene"
		    dim touch as AppleSKTouch = AppleSKTouch.MakeFromPtr (touchset.AllObjects.PtrAtIndex(0)) // get the first touch item of the array
		    dim location as NSPoint = touch.LocationInNode (me.scene) // and convert its point to view points
		    dim restart as AppleSKNode = me.scene.NodeAtPoint (location)
		    if restart <> nil then
		      if restart.Name = "Restart" then Spaceshooter
		    end if
		  end select
		End Sub
	#tag EndEvent
	#tag Event
		Sub LayoutSubviews()
		  if SpaceShooterScene = nil then ShootWorld
		End Sub
	#tag EndEvent
	#tag Event
		Sub UpdateForScene(time as Double)
		  if me.Scene.name = "SpaceShooter" then CreateStar
		End Sub
	#tag EndEvent
	#tag Event
		Sub DidBeginContact(Contact as AppleSKPhysicsContact)
		  //DidBeginContact catches the collision of two sprites.
		  if ImageView1.Scene.Name = "SpaceShooter" then analyzeCollision(contact)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub WillMoveToWindow(window as ptr)
		  if window = nil then
		    me.Scene.RemoveAllActions
		    me.Scene.RemoveAllChildren
		    dim emptyscene as new AppleSKSceneWithInterface (me)
		    me.PresentScene  emptyscene
		  end if
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
