#tag IOSView
Begin iosView UIdynamicsView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   "AppleDynamics"
   Title           =   "AppleDynamics"
   Top             =   0
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 58, 
      AutoLayout      =   ImageView1, 7, , 0, False, +1.00, 1, 1, 58, 
      ContentMode     =   "0"
      Height          =   58.0
      Image           =   "1557645311"
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   0
      Visible         =   True
      Width           =   58.0
   End
   Begin iOSCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 7, , 0, False, +1.00, 2, 1, 29, 
      AutoLayout      =   Canvas1, 3, <Parent>, 3, False, +1.00, 1, 1, 315, 
      AutoLayout      =   Canvas1, 1, ImageView1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Canvas1, 8, , 0, False, +1.00, 1, 1, 24, 
      Height          =   24.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   315
      Visible         =   True
      Width           =   29.0
   End
   Begin AppleDynamicsEventDelegate AppleDynamicsEventDelegate1
      Height          =   0.0
      Left            =   0.0
      LockedInPosition=   False
      Top             =   0.0
      Width           =   0.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim button As iOSToolButton
		  
		  button = iOSToolButton.NewBordered("Help")
		  Toolbar.Add(button)
		  timer.CallLater 100, AddressOf animate
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  dim help as new InfoView ("AppleDynamics (aka UIDynamics) is an optional framework part of UIKit. It gives you full physics simulation features for every view (= every control)."+eol+eol+ _
		  "Short Introduction:"+eol+"The base object is an AppleDynamicAnimator. As long as the animator lives, it can perform its attached behaviors. You instantiate it with a view as reference object."+eol + _
		  "If you want to use the events, you should use an AppleDynamicsEventDelegate like in this demo. Assign it to the Animator’s EventDelegate property right after instantiation, so it will tweak AppleCollisionBehaviors’ delegates to this custom delegate when you add them." + eol+ _
		  "If you don’t, you can always create your own behavior subclasses. Without an EventDelegate the behaviors fire events themselves."+eol+eol+ _
		  "Next you should add different behaviors to controls. You are better off to remove their autolayout constraints or they could interfere with the animation, so a better way is to create them programmatically and add them to a view as a layer."+eol + eol+ _
		  "Finally add the behaviors to the animator and off you go!")
		  self.PushToCurl help
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub Animate()
		  Animator = new AppleDynamicAnimator (self)
		  Animator.EventDelegate = AppleDynamicsEventDelegate1
		  dim gravity as new AppleGravityBehavior (ImageView1)
		  gravity.AngleInDegrees =90
		  
		  dim collision as new AppleCollisionBehavior (ImageView1)
		  collision.TranslatesReferenceBoundsIntoBoundary = true
		  collision.AddBoundary ("barrier", new AppleBezierPath(Canvas1.AppleView.Frame))
		  collision.CollisionBehavior = AppleCollisionBehavior.UICollisionBehaviorMode.Everything
		  
		  dim Behavior as new AppleDynamicItemBehavior (ImageView1)
		  Behavior.Elasticity = 0.9
		  animator.AddBehavior gravity
		  animator.AddBehavior collision
		  Animator.AddBehavior Behavior
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Sound copyright
		
		8_BIT_[50_SFX]_Powerup_Free_Sound_Effects_N1_BY_jalastram / opengameart.org
	#tag EndNote


	#tag Property, Flags = &h21
		Private Animator As AppleDynamicAnimator
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As iOSGraphics)
		  g.AddPath new AppleCGPathRoundedRect (FoundationFrameWork.nsmakerect (0,0,g.Width,g.Height), 2, 2)
		  g.clip
		  g.DrawLinearGradient array(&c394D7E00, &cDA770000, &c7478FF00), 0,0,g.Width, g.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppleDynamicsEventDelegate1
	#tag Event
		Sub AnimatorDidPause(animator as AppleDynamicAnimator)
		  system.DebugLog "Paused!"
		End Sub
	#tag EndEvent
	#tag Event
		Sub AnimatorWillResume(animator as AppleDynamicAnimator)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub EndedContactWithBoundary(Bevahior as AppleDynamicBehavior, Item as AppleView, Identifier as Text)
		  SFX_Powerup_21.Play
		End Sub
	#tag EndEvent
	#tag Event
		Sub EndedContactWithItem(Bevahior as AppleDynamicBehavior, Item as AppleView, withItem as Appleview)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub BeganContactWithBoundary(Bevahior as AppleDynamicBehavior,  Item as AppleView, Identifier as Text, atPoint as FoundationFrameWork.NSPoint)
		  SFX_Powerup_49.play
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
