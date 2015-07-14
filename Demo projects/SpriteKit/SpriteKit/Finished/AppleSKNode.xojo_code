#tag Class
Protected Class AppleSKNode
Inherits AppleResponder
	#tag Method, Flags = &h0
		Function ActionForKey(Key as CFStringRef) As AppleSKAction
		  Declare Function actionForKey lib SpriteKit selector "actionForKey:" (id as ptr, key as CFStringRef) as Ptr
		  return AppleSKAction.MakeFromPtr (actionForKey (id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddChild(Child as AppleSKNode)
		  Declare sub addChild lib SpriteKit selector "addChild:" (id as ptr, child as ptr)
		  addChild id, Child.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddConstraint(Constraint as AppleSKConstraint)
		  dim resultarray as AppleMutableArray
		  if Constraints = nil then
		    resultarray = new AppleMutableArray (1)
		  else
		    resultarray = new AppleMutableArray (Constraints)
		  end if
		  resultarray.Addobject Constraint
		  Constraints = resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddReachConstraint(Constraint as AppleSKReachConstraint)
		  dim resultarray as AppleMutableArray
		  if reachConstraints = nil then
		    resultarray = new AppleMutableArray (1)
		  else
		    resultarray = new AppleMutableArray (reachConstraints)
		  end if
		  resultarray.Addobject Constraint
		  ReachConstraints = resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ChildNode(Name as text) As AppleSKNode
		  Declare Function childNodeWithName lib SpriteKit selector "childNodeWithName:" (id as ptr, name as CFStringRef) as Ptr
		  dim result as ptr = childNodeWithName (id, name)
		  return AppleSKNode.MakeFromPtr ( result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ChildNodes(Name as CFStringRef) As AppleArray
		  Declare Function objectForKeyedSubscript lib SpriteKit selector "objectForKeyedSubscript:" (id as ptr, name as CFStringRef) as Ptr
		  return AppleArray.MakeFromPtr ( objectForKeyedSubscript (id, name))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CompletionBlock()
		  if self <> NIL then RaiseEvent ActionFinished
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  Declare Function node lib SpriteKit selector "node" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (node(ClassPtr))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(SKSFileName as CFStringREf)
		  Declare Function nodeWithFileNamed lib SpriteKit selector "nodeWithFileNamed:" (id as ptr, SKSFile as CFStringRef) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (nodeWithFileNamed(ClassPtr, SKSFileName))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(aPoint as NSPoint) As Boolean
		  #if Target64Bit
		    declare Function containsPoint lib SpriteKit selector "containsPoint:" (id as ptr, aPoint as NSPoint) as Boolean
		    return containsPoint (id, apoint)
		  #elseif Target32Bit
		    declare Function containsPoint lib SpriteKit selector "containsPoint:" (id as ptr, aPoint as NSPoint32Bit) as Boolean
		    return containsPoint (id, apoint.toNSPoint32)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointFromNode(aPoint as NSPoint, aNode as AppleSKNode) As NSPoint
		  #if Target64Bit
		    declare Function convertPointfromNode lib SpriteKit selector "convertPoint:fromNode:" (id as ptr, aPoint as NSPoint, aNode as ptr) as NSPoint
		    return convertPointfromNode (id, apoint, aNode.id)
		  #elseif Target32Bit
		    declare Function convertPointfromNode lib SpriteKit selector "convertPoint:fromNode:" (id as ptr, aPoint as NSPoint32Bit, aNode as ptr) as NSPoint32Bit
		    return convertPointfromNode (id, apoint.toNSPoint32, aNode.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertPointToNode(aPoint as NSPoint, aNode as AppleSKNode) As NSPoint
		  #if Target64Bit
		    declare Function convertPointtoNode lib SpriteKit selector "convertPoint:toNode:" (id as ptr, aPoint as NSPoint, aNode as ptr) as NSPoint
		    return convertPointtoNode (id, apoint, aNode.id)
		  #elseif Target32Bit
		    declare Function convertPointtoNode lib SpriteKit selector "convertPoint:toNode:" (id as ptr, aPoint as NSPoint32Bit, aNode as ptr) as NSPoint32Bit
		    return convertPointtoNode (id, apoint.toNSPoint32, aNode.id).tonspoint
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getAnchorPoint() As NSPoint
		  #if target32bit
		    DEclare Function anchorPoint lib SpriteKit selector "anchorPoint" (id as ptr) as NSPoint32Bit
		    return anchorPoint(id).toNSPoint
		  #elseif Target64Bit
		    DEclare Function anchorPoint lib SpriteKit selector "anchorPoint" (id as ptr) as NSPoint
		    return anchorPoint (id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getBlendColor() As AppleColor
		  Declare function BlendColor lib SpriteKit selector "color" (id as ptr) as Ptr
		  return new AppleColor (BlendColor (id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getBlendMode() As SKBlendMode
		  Declare function blendMode lib SpriteKit selector "blendMode" (id as ptr) as SKBlendMode
		  return blendMode (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getCenterRect() As NSRect
		  #if target32bit
		    DEclare Function centerRect lib SpriteKit selector "centerRect" (id as ptr) as NSRect32Bit
		    return centerRect(id).toNSRect
		  #elseif Target64Bit
		    DEclare Function centerRect lib SpriteKit selector "centerRect" (id as ptr) as NSRect
		    return centerRect (id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getColorBlendFactor() As double
		  #if Target64Bit
		    Declare function colorBlendFactor lib SpriteKit selector "colorBlendFactor" (id as ptr) as Double
		  #elseif Target32Bit
		    Declare function colorBlendFactor lib SpriteKit selector "colorBlendFactor" (id as ptr) as Single
		  #endif
		  return colorBlendFactor (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InParentHierarchy(Parent as AppleSKNode) As Boolean
		  Declare Function inParentHierarchy lib SpriteKit selector "inParentHierarchy:" (id as ptr, Parent as Ptr) as Boolean
		  return inParentHierarchy (id, Parent.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertChild(Child as AppleSKNode, Index as Integer)
		  Declare sub InsertChild lib SpriteKit selector "insertChild:atIndex:" (id as ptr, child as ptr, index as integer)
		  InsertChild id, Child.id, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IntersectsNode(aNode as AppleSKNode) As Boolean
		  Declare Function intersectsNode lib SpriteKit selector "intersectsNode:" (id as ptr, aNode as Ptr) as Boolean
		  return intersectsNode (id, aNode.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKNode
		  if aptr <> nil then
		    dim result as new AppleSKNode(aptr)
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NodeAtPoint(aPoint as NSPoint) As AppleSKNode
		  #if Target64Bit
		    declare Function nodeAtPoint lib SpriteKit selector "nodeAtPoint:" (id as ptr, aPoint as NSPoint) as Ptr
		    return AppleSKNode.MakeFromPtr (nodeAtPoint (id, apoint))
		  #elseif Target32Bit
		    declare Function nodeAtPoint lib SpriteKit selector "nodeAtPoint:" (id as ptr, aPoint as NSPoint32Bit) as Ptr
		    return AppleSKNode.MakeFromPtr ( nodeAtPoint (id, apoint.toNSPoint32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NodesAtPoint(aPoint as NSPoint) As AppleArray
		  #if Target64Bit
		    declare Function nodesAtPoint lib SpriteKit selector "nodesAtPoint:" (id as ptr, aPoint as NSPoint) as Ptr
		    return AppleArray.MakeFromPtr (nodesAtPoint (id, apoint))
		  #elseif Target32Bit
		    declare Function nodesAtPoint lib SpriteKit selector "nodesAtPoint:" (id as ptr, aPoint as NSPoint32Bit) as Ptr
		    return AppleArray.MakeFromPtr ( nodesAtPoint (id, apoint.toNSPoint32))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveActionForKey(Key as CFStringRef)
		  Declare sub removeActionForKey lib SpriteKit selector "removeActionForKey:" (id as ptr, key as CFStringRef)
		  removeActionForKey id, key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllActions()
		  Declare sub removeAllActions lib SpriteKit selector "removeAllActions" (id as ptr)
		  removeAllActions id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllChildren()
		  Declare sub RemoveAllChildren lib SpriteKit selector "removeAllChildren" (id as ptr)
		  RemoveAllChildren id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveChildrenInArray(anArray as AppleArray)
		  Declare sub removeChildrenInArray lib SpriteKit selector "removeChildrenInArray:" (id as ptr, anArray as Ptr)
		  removeChildrenInArray id, anArray.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveConstraint(Index as UInteger)
		  dim resultarray as new AppleMutableArray (Constraints)
		  resultarray.RemoveObjectAtIndex (index)
		  Constraints = resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFromParent()
		  Declare sub removeFromParent lib SpriteKit selector "removeFromParent" (id as ptr)
		  removeFromParent id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveReachConstraint(Index as UInteger)
		  dim resultarray as new AppleMutableArray (ReachConstraints)
		  resultarray.RemoveObjectAtIndex (index)
		  ReachConstraints = resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunAction(Action as AppleSKAction)
		  Declare sub runAction lib SpriteKit selector "runAction:" (id as ptr, action as ptr)
		  runAction id, Action.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunActionWithCompletionBlock(Action as AppleSKAction, block as AppleBlock)
		  Declare sub runActionCompletion lib SpriteKit selector "runAction:completion:" (id as ptr, action as ptr, completion as ptr)
		  runActionCompletion id, Action.id, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunActionWithEvent(Action as AppleSKAction)
		  Declare sub runActionCompletion lib SpriteKit selector "runAction:completion:" (id as ptr, action as ptr, completion as ptr)
		  dim completion as new AppleBlock (AddressOf CompletionBlock)
		  runActionwithCompletionBlock action, completion
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunActionWithKey(Action as AppleSKAction, key as CFStringRef)
		  Declare sub runActionWithKey lib SpriteKit selector "runAction:withKey:" (id as ptr, action as ptr, key as CFStringRef)
		  runActionWithKey id, Action.id, key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunBlockOnChildren(ChildName as CFStringRef, Block as AppleBlock)
		  Declare sub enumerateChildNodesWithName lib SpriteKit selector "enumerateChildNodesWithName:block:" (id as ptr, Name as CFstringRef, Block as Ptr)
		  enumerateChildNodesWithName (id, ChildName, block.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunBlockonChildrenTemplate(Child as ptr, byref stop as boolean)
		  dim currentnode as new AppleSKNode(child)
		  
		  // perform anything you want on currentnode now
		  
		  // if you want to stop the RundBlockonChildren method before the remaining children have been processed, set stop to true.
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setAnchorPoint(value as NSPoint)
		  #if target32bit
		    DEclare Sub setAnchorPoint lib SpriteKit selector "setAnchorPoint:" (id as ptr, value as NSPoint32Bit)
		    setAnchorPoint id, value.toNSPoint32
		  #elseif Target64Bit
		    DEclare Sub setAnchorPoint lib SpriteKit selector "setAnchorPoint:" (id as ptr, value as NSPoint)
		    setAnchorPoint id, value
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBlendColor(value as AppleColor)
		  Declare Sub setBlendColor lib SpriteKit selector "setColor:" (id as ptr, value as Ptr)
		  setBlendColor id, value.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBlendMode(value as SKBlendMode)
		  Declare Sub setBlendMode lib SpriteKit selector "setBlendMode:" (id as ptr, value as SKBlendMode)
		  setBlendMode id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setCenterRect(value as NSRect)
		  #if target32bit
		    DEclare Sub setCenterRect lib SpriteKit selector "setCenterRect:" (id as ptr, value as NSRect32Bit)
		    setCenterRect id, value.toNSRect32
		  #elseif Target64Bit
		    DEclare Sub setCenterRect lib SpriteKit selector "setCenterRect:" (id as ptr, value as NSRect)
		    setCenterRect id, value
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setColorBlendfactor(value as double)
		  #if Target64Bit
		    Declare Sub setColorBlendFactor lib SpriteKit selector "setColorBlendFactor:" (id as ptr, value as Double)
		  #elseif Target32Bit
		    Declare Sub setColorBlendFactor lib SpriteKit selector "setColorBlendFactor:" (id as ptr, value as single)
		  #endif
		  setColorBlendFactor id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScale(Factor as double)
		  #if Target64bit
		    Declare Sub setScale lib SpriteKit selector "setScale:" (id as ptr, value as double)
		  #elseif Target32Bit
		    Declare Sub setScale lib SpriteKit selector "setScale:" (id as ptr, value as single)
		  #endif
		  setscale (id, Factor)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ActionFinished()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function calculateAccumulatedFrame lib SpriteKit selector "calculateAccumulatedFrame" (id as ptr) as NSRect
			    return calculateAccumulatedFrame (id)
			  #elseif Target32Bit
			    declare function calculateAccumulatedFrame lib SpriteKit selector "calculateAccumulatedFrame" (id as ptr) as NSRect32Bit
			    return calculateAccumulatedFrame(id).toNSRect
			  #endif
			  
			End Get
		#tag EndGetter
		AccumulatedFrame As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function children lib SpriteKit selector "children" (id as ptr) as Ptr
			  return AppleArray.MakeFromPtr (children(id))
			End Get
		#tag EndGetter
		Children As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if AppleSKConstraint.ClassAvailable then
			    declare Function constraints lib SpriteKit selector "constraints" (id as ptr) as ptr
			    Return AppleArray.MakeFromPtr (constraints(id))
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setConstraints lib SpriteKit selector "setConstraints:" (id as ptr, value as ptr)
			  setConstraints id, value.id
			End Set
		#tag EndSetter
		Constraints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function hasActions lib SpriteKit selector "hasActions" (id as ptr) as Boolean
			  return hasActions (id)
			  
			End Get
		#tag EndGetter
		ExecutesActions As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getFrame
			End Get
		#tag EndGetter
		Frame As NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Frame.Size_.height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  frame.size_.height = value
			End Set
		#tag EndSetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare Function name lib SpriteKit selector "name" (id as ptr) as CFStringRef
			  return name (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setName lib SpriteKit selector "setName:" (id as ptr, value as CFStringRef)
			  setName id, value
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function parent lib SpriteKit selector "parent" (id as ptr) as Ptr
			  return AppleSKNode.MakeFromPtr (parent(id))
			End Get
		#tag EndGetter
		Parent As AppleSKNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function isPaused lib SpriteKit selector "isPaused" (id as ptr) as Boolean
			  Return isPaused (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPaused lib SpriteKit selector "setPaused:" (id as ptr, value as Boolean)
			  setPaused id, value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function physicsBody lib SpriteKit selector "physicsBody" (id as ptr) as Ptr
			  return AppleSKPhysicsBody.MakeFromPtr (physicsBody(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setPhysicsBody lib SpriteKit selector "setPhysicsBody:" (id as ptr, value as Ptr)
			  setPhysicsBody id, value.id
			End Set
		#tag EndSetter
		PhysicsBody As AppleSKPhysicsBody
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function position lib SpriteKit selector "position" (id as ptr) as NSPoint
			    return position (id)
			  #elseif Target32Bit
			    declare function position lib SpriteKit selector "position" (id as ptr) as NSPoint32Bit
			    return position(id).toNSPoint
			  #endif
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setPosition lib SpriteKit selector "setPosition:" (id as ptr, value as NSPoint)
			    setPosition (id, value)
			  #elseif Target32Bit
			    declare sub setPosition lib SpriteKit selector "setPosition:" (id as ptr, value as NSPoint32Bit)
			    setPosition(id, value.toNSPoint32)
			  #endif
			  
			End Set
		#tag EndSetter
		Position As NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if AppleSKReachConstraint.ClassAvailable then
			    declare Function reachConstraints lib SpriteKit selector "reachConstraints" (id as ptr) as ptr
			    Return AppleArray.MakeFromPtr (reachConstraints(id))
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setReachConstraints lib SpriteKit selector "setReachConstraints:" (id as ptr, value as ptr)
			  setReachConstraints id, value.id
			End Set
		#tag EndSetter
		ReachConstraints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scene lib SpriteKit selector "scene" (id as ptr) as Ptr
			  return AppleSKScene.MakeFromPtr (scene(id))
			End Get
		#tag EndGetter
		Scene As AppleSKScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function speed lib SpriteKit selector "speed" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function speed lib SpriteKit selector "speed" (id as ptr) as Single
			  #endif
			  return speed (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setSpeed lib SpriteKit selector "setSpeed:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare Sub setSpeed lib SpriteKit selector "setSpeed:" (id as ptr, value as Single)
			  #endif
			  setSpeed (id, value)
			  
			End Set
		#tag EndSetter
		Speed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function userData lib SpriteKit selector "userData" (id as ptr) as Ptr
			  return AppleMutableDictionary.MakeFromPtr (userData(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setuserData lib SpriteKit selector "setUserData:" (id as ptr, value as Ptr)
			  setuserData id, value.id
			End Set
		#tag EndSetter
		UserData As AppleMutableDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getUserInteractionEnabled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setuserinteractionenabled value
			End Set
		#tag EndSetter
		UserInteractionEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Frame.Size_.width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  frame.size_.width = value
			End Set
		#tag EndSetter
		Width As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64bit
			    Declare Function xScale lib SpriteKit selector "xScale" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function xScale lib SpriteKit selector "xScale" (id as ptr) as single
			  #endif
			  Return xScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64bit
			    Declare Sub setXScale lib SpriteKit selector "setXScale:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setXScale lib SpriteKit selector "setXScale:" (id as ptr, value as single)
			  #endif
			  setXScale (id, value)
			  
			End Set
		#tag EndSetter
		XScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64bit
			    Declare Function yScale lib SpriteKit selector "yScale" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function yScale lib SpriteKit selector "yScale" (id as ptr) as single
			  #endif
			  Return yScale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64bit
			    Declare Sub setYScale lib SpriteKit selector "setYScale:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setYScale lib SpriteKit selector "setYScale:" (id as ptr, value as single)
			  #endif
			  setYScale (id, value)
			  
			End Set
		#tag EndSetter
		YScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function zPosition lib SpriteKit selector "zPosition" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function zPosition lib SpriteKit selector "zPosition" (id as ptr) as Double
			  #endif
			  return zPosition (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setZPosition lib SpriteKit selector "setZPosition:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setZPosition lib SpriteKit selector "setZPosition:" (id as ptr, value as Double)
			  #endif
			  setZPosition id, value
			  
			End Set
		#tag EndSetter
		ZPosition As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    DEclare Function zRotation lib SpriteKit selector "zRotation" (id as ptr) as single
			  #elseif Target64Bit
			    DEclare Function zRotation lib SpriteKit selector "zRotation" (id as ptr) as Double
			  #endif
			  return zRotation (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if target32bit
			    DEclare Sub setZRotation lib SpriteKit selector "setZRotation:" (id as ptr, value as single)
			  #elseif Target64Bit
			    DEclare Sub setZRotation lib SpriteKit selector "setZRotation:" (id as ptr, value as Double)
			  #endif
			  setZRotation id, value
			  
			End Set
		#tag EndSetter
		ZRotation As Double
	#tag EndComputedProperty


	#tag Enum, Name = SKBlendMode, Type = Integer, Flags = &h0
		Alpha
		  Add
		  Subtract
		  Multiply
		  MultiplyX2
		  Screen
		Replace
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
