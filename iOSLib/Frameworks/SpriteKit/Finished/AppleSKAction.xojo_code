#tag Class
Protected Class AppleSKAction
Inherits AppleObject
	#tag Method, Flags = &h0
		 Shared Function AnimateWithTextures(textures as AppleArray, timeperframe as Double) As AppleSKAction
		  Declare function animateWithTextures lib SpriteKit selector "animateWithTextures:timePerFrame:" (id as ptr, textures as ptr, duration as double) as ptr
		  dim result as  new AppleSKAction (animateWithTextures (classptr, textures.id, timeperframe))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function AnimateWithTextures(textures as AppleArray, timeperframe as Double, resize as boolean, restore as boolean = false) As AppleSKAction
		  Declare function animateWithTexturesResize lib SpriteKit selector "animateWithTextures:timePerFrame:resize:restore:" _
		  (id as ptr, textures as ptr, duration as double, resize as boolean, restore as boolean) as ptr
		  dim result as  new AppleSKAction (animateWithTexturesResize (classptr, textures.id, timeperframe, resize, restore))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Colorize(aColor as AppleColor, Blendfactor as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function colorizeWithColor lib SpriteKit selector "colorizeWithColor:colorBlendFactor:duration:" (id as ptr, acolor as ptr, Blendfactor as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function colorizeWithColor lib SpriteKit selector "colorizeWithColor:colorBlendFactor:duration:" (id as ptr, acolor as ptr, Blendfactor as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (colorizeWithColor (classptr, acolor.id, Blendfactor, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Colorize(Blendfactor as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function colorizeWithColorBlendFactor lib SpriteKit selector "colorizeWithColorBlendFactor:duration:" (id as ptr, Blendfactor as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function colorizeWithColorBlendFactor lib SpriteKit selector "colorizeWithColorBlendFactor:duration:" (id as ptr, Blendfactor as single, duration as Double) as ptr
		  #endif
		  dim result as  new AppleSKAction (colorizeWithColorBlendFactor (classptr,  Blendfactor, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FadeAlphaBy(factor as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function fadeAlphaBy lib SpriteKit selector "fadeAlphaBy:duration:" (id as ptr, factor as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function fadeAlphaBy lib SpriteKit selector "fadeAlphaBy:duration:" (id as ptr, factor as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (fadeAlphaBy (classptr, factor, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FadeAlphaTo(factor as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function fadeAlphaTo lib SpriteKit selector "fadeAlphaTo:duration:" (id as ptr, factor as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function fadeAlphaTo lib SpriteKit selector "fadeAlphaTo:duration:" (id as ptr, factor as single, duration as Double) as ptr
		  #endif
		  dim result as new  AppleSKAction (fadeAlphaTo (classptr, factor, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FadeIn(duration as Double) As AppleSKAction
		  Declare function fadeInWithDuration lib SpriteKit selector "fadeInWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as  new AppleSKAction (fadeInWithDuration (classptr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FadeOut(duration as Double) As AppleSKAction
		  Declare function fadeOutWithDuration lib SpriteKit selector "fadeOutWithDuration:" (id as ptr, duration as double) as ptr
		  dim result as  new AppleSKAction (fadeOutWithDuration (classptr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FalloffBy(falloff as single, duration as Double) As AppleSKAction
		  Declare function falloffBy lib SpriteKit selector "falloffBy:duration" (id as ptr, strength as single, duration as double) as ptr
		  dim result as new AppleSKAction (falloffBy (classptr, falloff, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FalloffTo(falloff as single, duration as Double) As AppleSKAction
		  Declare function falloffTo lib SpriteKit selector "falloffTo:duration" (id as ptr, strength as single, duration as double) as ptr
		  dim result as new AppleSKAction (falloffTo (classptr, falloff, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FollowPathOrientedWithDuration(aPath as AppleCGPath, asOffset as Boolean, orientToPath as Boolean, Duration As Double) As AppleSKAction
		  Declare function followPathOrientedDuration lib SpriteKit selector "followPath:asOffset:orientToPath:duration:"(id as ptr,  aPath as Ptr,  asOffset as boolean, orientToPath  as Boolean, duration as Double) as ptr
		  dim result as new AppleSKAction (FollowPathOrientedDuration (classptr,apath.CFTypeRef, asOffset, orientToPath, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FollowPathOrientedWithSpeed(aPath as AppleCGPath, asOffset as Boolean, orientToPath as Boolean, Speed As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function followPathOrientedSpeed lib SpriteKit selector "followPath:asOffset:orientToPath:speed:"(id as ptr, aPath as Ptr, asOffset as boolean, orientToPath as boolean, Speed as Double) as ptr
		  #elseif Target32Bit
		    Declare function followPathOrientedSpeed lib SpriteKit selector "followPath:asOffset:orientToPath:speed:"(id as ptr, aPath as Ptr, asOffset as boolean, orientToPath as boolean, Speed as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (FollowPathOrientedSpeed (classptr, apath.CFTypeRef, asOffset, orientToPath, speed))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FollowPathWithDuration(aPath as AppleCGPath, Duration As Double) As AppleSKAction
		  Declare function followPathDuration lib SpriteKit selector "followPath:duration:"(id as ptr, aPath as Ptr, duration as Double) as ptr
		  dim result as new AppleSKAction (followPathDuration (classptr, apath.CFTypeRef, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FollowPathWithSpeed(aPath as AppleCGPath, Speed As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function followPathSpeed lib SpriteKit selector "followPath:speed:"(id as ptr, aPath as Ptr, Speed as Double) as ptr
		  #elseif Target32Bit
		    Declare function followPathSpeed lib SpriteKit selector "followPath:speed:"(id as ptr, aPath as Ptr, Speed as single) as ptr
		  #endif
		  dim result as new AppleSKAction (FollowPathSpeed (classptr, apath.CFTypeRef, speed))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Group(ActionGroup as AppleArray) As AppleSKAction
		  Declare function group lib SpriteKit selector "group:" (id as ptr, group as ptr) as ptr
		  dim result as new AppleSKAction (group (classptr, ActionGroup.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Group(paramarray ActionGroup() as AppleSKAction) As AppleSKAction
		  return Group (AppleMutableArray.fromAppleObjects (ActionGroup))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Hide() As AppleSKAction
		  Declare function hide lib SpriteKit selector "hide" (id as ptr) as ptr
		  dim result as new AppleSKAction (hide (classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKAction
		  Return if (aptr = NIL, NIL, new AppleSKAction (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MoveBy(Delta As CGVector, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function moveByVector lib SpriteKit selector "moveBy:duration:" (id as ptr, Delta as CGVector, duration as Double) as ptr
		    dim result as new AppleSKAction (moveByVector (classptr, Delta, Duration))
		  #elseif Target32Bit
		    Declare function moveByVector lib SpriteKit selector "moveBy:duration:" (id as ptr, Delta as CGVector32Bit, duration as Double) as ptr
		    dim result as new AppleSKAction (moveByVector (classptr, Delta.toCGVector32, Duration))
		  #endif
		  
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MoveBy(x as Double, y as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function moveBy lib SpriteKit selector "moveByX:y:duration:" (id as ptr, x as double, y as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function moveBy lib SpriteKit selector "moveByX:y:duration:" (id as ptr, x as single, y as single, duration as Double) as ptr
		  #endif
		  
		  dim result as new AppleSKAction (Moveby (classptr, x, y, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MoveTo(aPoint as NSPoint, Duration As Double) As AppleSKAction
		  dim result as AppleSKAction
		  #if Target64Bit
		    Declare function moveTo lib SpriteKit selector "moveTo:duration:"(id as ptr, aPoint as NSPoint, duration as Double) as ptr
		    result = new AppleSKAction (MoveTo (classptr, aPoint, Duration))
		  #elseif Target32Bit
		    Declare function moveTo lib SpriteKit selector "moveTo:duration:"(id as ptr, aPoint as NSPoint32Bit, duration as Double) as ptr
		    result = new AppleSKAction (MoveTo (classptr, aPoint.toNSPoint32, Duration))
		  #endif
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MoveToX(X as Double, Duration As Double) As AppleSKAction
		  dim result as AppleSKAction
		  
		  #if Target64Bit
		    Declare function moveToX lib SpriteKit selector "moveToX:duration:"(id as ptr, x as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function moveToX lib SpriteKit selector "moveToX:duration:"(id as ptr, x as single, duration as Double) as ptr
		  #endif
		  result = new AppleSKAction (MoveTox (classptr, x, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MoveToY(Y as Double, Duration As Double) As AppleSKAction
		  dim result as AppleSKAction
		  #if Target64Bit
		    Declare function moveToY lib SpriteKit selector "moveToY:duration:"(id as ptr, x as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function moveToY lib SpriteKit selector "moveToY:duration:"(id as ptr, x as single, duration as Double) as ptr
		  #endif
		  result = new AppleSKAction (MoveToy (classptr, y, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function PerformSelector(SEL as Ptr, Target as AppleSKNode) As AppleSKAction
		  Declare function performSelector lib SpriteKit selector "performSelector:onTarget" (id as ptr, sel as ptr, target as ptr) as ptr
		  dim result as new AppleSKAction (performSelector (classptr, sel, Target.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function PlaySound(soundname as cfstringref, WaitForCompletion as Boolean = False) As AppleSKAction
		  Declare function playSoundFileNamed lib SpriteKit selector "playSoundFileNamed:waitForCompletion:" (id as ptr, soundname as cfstringref, waitForCompletion as Boolean) as ptr
		  dim result as new AppleSKAction (playSoundFileNamed (classptr, soundname, waitForCompletion))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ReachToNodeWithDuration(TargetNode as AppleSKNode, RootNode As AppleSKNode, Duration As Double) As AppleSKAction
		  if iOS8Avaliable then
		    dim result as AppleSKAction
		    Declare function ReachToNodeWithDuration lib SpriteKit selector "reachToNode:rootNode:duration:" (id as ptr, Targetnode as Ptr, rootnode as ptr, duration as Double) as ptr
		    result = new AppleSKAction (ReachToNodeWithDuration (classptr, TargetNode.id, RootNode.id, Duration))
		    result.RetainClassObject
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ReachToNodeWithVelocity(TargetNode as AppleSKNode, RootNode As AppleSKNode, Velocity As Double) As AppleSKAction
		  if iOS8Avaliable then
		    
		    dim result as AppleSKAction
		    #if Target64Bit
		      Declare function ReachToNodeWithVelocity lib SpriteKit selector "reachToNode:rootNode:velocity:" (id as ptr, Targetnode as Ptr, rootnode as ptr, velecoity as Double) as ptr
		    #elseif Target32Bit
		      Declare function ReachToNodeWithVelocity lib SpriteKit selector "reachToNode:rootNode:velocity:" (id as ptr, Targetnode as Ptr, rootnode as ptr, velecoity as Single) as ptr
		    #endif
		    result = new AppleSKAction (ReachToNodeWithVelocity (classptr, TargetNode.id, RootNode.id, velocity))
		    result.RetainClassObject
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ReachToPoint(aPoint as NSPoint, RootNode As AppleSKNode, Velocity As Double) As AppleSKAction
		  if iOS8Avaliable then
		    dim result as AppleSKAction
		    #if Target64Bit
		      Declare function reachToRNV lib SpriteKit selector "reachTo:rootNode:velocity:"(id as ptr, aPoint as NSPoint, rootnode as ptr, velecoity as Double) as ptr
		      result = new AppleSKAction (reachToRNV (classptr, aPoint, RootNode.id, velocity))
		    #elseif Target32Bit
		      Declare function reachToRNV lib SpriteKit selector "reachTo:rootNode:velocity:"(id as ptr, aPoint as NSPoint32Bit, rootnode as ptr, velecoity as single) as ptr
		      result = new AppleSKAction (reachToRNV (classptr, aPoint.toNSPoint32, RootNode.id, velocity))
		    #endif
		    result.RetainClassObject
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RemoveFromParent() As AppleSKAction
		  Declare function removeFromParent lib SpriteKit selector "removeFromParent" (id as ptr) as ptr
		  dim result as new AppleSKAction (removeFromParent (classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RepeatAction(action as AppleSKaction, count as uinteger = 0) As AppleSKAction
		  Declare function repeatActionForever lib SpriteKit selector "repeatActionForever:" (id as ptr, action as ptr) as ptr
		  Declare function repeatAction lib SpriteKit selector "repeatAction:count:" (id as ptr, action as ptr, count as uinteger) as ptr
		  dim result as AppleSKAction
		  if count > 0 then
		    result = new AppleSKAction ( repeatAction (classptr, action.id, count))
		  else
		    result = new AppleSKAction ( repeatActionForever (classptr, action.id))
		  end if
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ResizeBy(Width as Double, Height as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function resizeByWidth lib SpriteKit selector "resizeByWidth:height:duration:" (id as ptr, width as double, height as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function resizeByWidth lib SpriteKit selector "resizeByWidth:height:duration:" (id as ptr, width as single, height as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (resizeByWidth (classptr, width, height, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ResizeTo(Width as Double, Height as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function resizeTo lib SpriteKit selector "resizeToWidth:height:duration:" (id as ptr, width as double, height as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function resizeTo lib SpriteKit selector "resizeToWidth:height:duration:" (id as ptr, width as single, height as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (resizeTo (classptr, width, height, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ResizeToHeight(Height as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function resizeToHeight lib SpriteKit selector "resizeToHeight:duration:" (id as ptr, width as double,  duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function resizeToHeight lib SpriteKit selector "resizeToHeight:duration:" (id as ptr, width as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (resizeToHeight (classptr, height,  Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ResizeToWidth(Width as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function resizeToWidth lib SpriteKit selector "resizeToWidth:duration:" (id as ptr, width as double,  duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function resizeToWidth lib SpriteKit selector "resizeToWidth:duration:" (id as ptr, width as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (ResizeToWidth (classptr, width,  Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RotateByAngle(Angle as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function rotateByAngle lib SpriteKit selector "rotateByAngle:duration:" (id as ptr, angle as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function rotateByAngle lib SpriteKit selector "rotateByAngle:duration:" (id as ptr, angle as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (RotateByAngle (classptr, angle, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RotateToAngle(Angle as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function rotateToAngle lib SpriteKit selector "rotateToAngle:duration:" (id as ptr, angle as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function rotateToAngle lib SpriteKit selector "rotateToAngle:duration:" (id as ptr, angle as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (rotateToAngle (classptr, angle, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RotateToAngle(Angle as Double, Duration As Double, ShortestUnitArc As Boolean) As AppleSKAction
		  #if Target64Bit
		    Declare function rotateToAngleShort lib SpriteKit selector "rotateToAngle:duration:shortestUnitArc:" (id as ptr, angle as double, duration as Double, ShortestUnitArc as boolean) as ptr
		  #elseif Target32Bit
		    Declare function rotateToAngleShort lib SpriteKit selector "rotateToAngle:duration:shortestUnitArc" (id as ptr, angle as single, duration as Double, ShortestUnitArc as boolean) as ptr
		  #endif
		  dim result as new AppleSKAction (rotateToAngleshort (classptr, angle, Duration, ShortestUnitArc))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RunActionOnChild(Action as AppleSKAction, Childname as CFStringRef) As AppleSKAction
		  Declare function runAction lib SpriteKit selector "runAction:onChildWithName:" (id as ptr, anaction as ptr, Childname as CFStringRef) as ptr
		  dim result as new AppleSKAction (runAction (classptr, action.id, Childname))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RunBlock(Block as AppleBlock) As AppleSKAction
		  Declare function runBlock lib SpriteKit selector "runBlock:" (id as ptr, block as ptr) as ptr
		  dim result as new AppleSKAction (runBlock (classptr, block.Handle))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function RunBlock(Block as AppleBlock, Duration As Double) As AppleSKAction
		  Declare function customActionWithDuration lib SpriteKit selector "customActionWithDuration:actionBlock:" (id as ptr, duration as double, block as ptr) as ptr
		  dim result as new AppleSKAction (customActionWithDuration (classptr, duration, block.Handle))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ScaleBy(scale as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function scaleBy lib SpriteKit selector "scaleBy:duration:" (id as ptr, scale as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function scaleBy lib SpriteKit selector "scaleBy:duration:" (id as ptr, scale as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (scaleBy (classptr, scale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ScaleTo(scale as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function scaleTo lib SpriteKit selector "scaleTo:duration:" (id as ptr, scale as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function scaleTo lib SpriteKit selector "scaleTo:duration:" (id as ptr, scale as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (scaleTo (classptr, scale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ScaleXTo(xscale as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function scaleXTo lib SpriteKit selector "scaleXTo:duration:" (id as ptr, xscale as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function scaleXTo lib SpriteKit selector "scaleXTo:duration:" (id as ptr, xscale as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (scaleXto (classptr, xscale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ScaleXYBy(xscale as Double, yscale as double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function scaleXYBy lib SpriteKit selector "scaleXBy:y:duration:" (id as ptr, xscale as double, yscale as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function scaleXYBy lib SpriteKit selector "scaleXBy:y:duration:" (id as ptr, xscale as single, yscale as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (scaleXYBy (classptr, xscale, yscale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ScaleXYTo(xscale as Double, yscale as double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function scaleXYTo lib SpriteKit selector "scaleXTo:y:duration:" (id as ptr, xscale as double, yscale as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function scaleXYTo lib SpriteKit selector "scaleXTo:y:duration:" (id as ptr, xscale as single, yscale as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (scaleXYto (classptr, xscale, yscale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ScaleYTo(yscale as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function scaleYTo lib SpriteKit selector "scaleYTo:duration:" (id as ptr, xscale as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function scaleYTo lib SpriteKit selector "scaleYTo:duration:" (id as ptr, xscale as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (scaleYTo (classptr, yscale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Sequence(ActionGroup as AppleArray) As AppleSKAction
		  Declare function sequence lib SpriteKit selector "sequence:" (id as ptr, group as ptr) as ptr
		  dim result as AppleSKAction = new  AppleSKAction ( sequence (classptr, ActionGroup.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Sequence(Paramarray actions() as AppleSKAction) As AppleSKAction
		  dim myarray as new AppleMutableArray (actions.Ubound +1)
		  for q as uinteger = 0 to actions.Ubound
		    myarray.Addobject actions(q)
		  next
		  return Sequence (myarray)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function SetTexture(Texture as AppleSKTexture, resize as boolean = false) As AppleSKAction
		  Declare function setTexture lib SpriteKit selector "setTexture:resize:" (id as ptr, texture as ptr, resize as boolean) as ptr
		  dim result as  new AppleSKAction (setTexture (classptr, texture.id, resize))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function SpeedBy(speed as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function speedBy lib SpriteKit selector "speedBy:duration:" (id as ptr,speed as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function speedBy lib SpriteKit selector "speedBy:duration:" (id as ptr, speed as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (speedBy (classptr, speed, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function SpeedTo(speed as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function speedTo lib SpriteKit selector "speedTo:duration:" (id as ptr,speed as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function speedTo lib SpriteKit selector "speedTo:duration:" (id as ptr, speed as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (speedTo (classptr, speed, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function StrengthBy(strength as single, duration as Double) As AppleSKAction
		  Declare function strengthBy lib SpriteKit selector "strengthBy:duration" (id as ptr, strength as single, duration as double) as ptr
		  dim result as new AppleSKAction (strengthBy (classptr, strength, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function StrengthTo(strength as single, duration as Double) As AppleSKAction
		  Declare function strengthTo lib SpriteKit selector "strengthTo:duration" (id as ptr, strength as single, duration as double) as ptr
		  dim result as new AppleSKAction (strengthTo (classptr, strength, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Unhide() As AppleSKAction
		  Declare function unhide lib SpriteKit selector "unhide" (id as ptr) as ptr
		  dim result as new AppleSKAction (unhide (classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Wait(duration as Double) As AppleSKAction
		  Declare function waitForDuration lib SpriteKit selector "waitForDuration:" (id as ptr, duration as double) as ptr
		  dim result as new AppleSKAction (waitForDuration (classptr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Wait(duration as Double, DurationRange as Double) As AppleSKAction
		  Declare function waitForDurationwithRange lib SpriteKit selector "waitForDuration:withRange:" (id as ptr, duration as double, range as double) as ptr
		  dim result as new AppleSKAction (waitForDurationwithRange (classptr, duration, durationRange))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKAction")
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
			  declare function duration lib SpriteKit selector "duration" (id as ptr) as Double
			  return duration (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setDuration lib SpriteKit selector "setDuration:" (id as ptr, value as Double)
			  setDuration (id, value)
			  
			End Set
		#tag EndSetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static miOS8available as boolean = ObjectiveCRuntime.class_respondsToSelector (classptr, NSSelectorFromString("reachTo:rootNode:velocity:"))
			  return miOS8available
			End Get
		#tag EndGetter
		Private Shared iOS8Avaliable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function reversedAction lib SpriteKit selector "reversedAction" (id as ptr) as ptr
			  return new AppleSKAction (reversedAction(id))
			End Get
		#tag EndGetter
		ReversedAction As AppleSKAction
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
		#tag Setter
			Set
			  Declare Sub setTimingFunction lib SpriteKit selector "setTimingFunction:" (id as ptr, value as ptr)
			  setTimingFunction id, value.Handle
			End Set
		#tag EndSetter
		TimingFunction As AppleBlock
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function timingMode lib SpriteKit selector "timingMode" (id as ptr) as SKActionTimingMode
			  return timingMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTimingMode lib SpriteKit selector "setTimingMode:" (id as ptr, value as SKActionTimingMode)
			  setTimingMode id, value
			End Set
		#tag EndSetter
		TimingMode As SKActionTimingMode
	#tag EndComputedProperty


	#tag Enum, Name = SKActionTimingMode, Type = Integer, Flags = &h0
		Linear
		  EaseIn
		  EaseOut
		EaseInEaseOut
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isProxy"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
			Name="TimingMode"
			Group="Behavior"
			Type="SKActionTimingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - EaseIn"
				"2 - EaseOut"
				"3 - EaseInEaseOut"
			#tag EndEnumValues
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
