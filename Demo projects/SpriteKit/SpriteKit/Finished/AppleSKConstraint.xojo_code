#tag Class
Protected Class AppleSKConstraint
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Distance(Node As AppleSKNode, Distance As AppleSKRange) As AppleSKConstraint
		  Declare function distancetoNode lib SpriteKit selector "distance:toNode:" (id as ptr, distance as ptr, node as ptr) as ptr
		  dim result as  new AppleSKConstraint  (distancetoNode(ClassPtr, distance.id, node.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Distance(aPoint As FoundationFramework.NSPoint, Node as AppleSKNode, Distance As AppleSKRange) As AppleSKConstraint
		  dim result as   AppleSKConstraint
		  #if Target64Bit
		    Declare function distanceToPointinNode lib SpriteKit selector "distance:ToPoint:inNode:" (id as ptr, distance as ptr,  aPoint as FoundationFramework.NSPoint, node as ptr) as ptr
		    result =  new AppleSKConstraint  (distanceToPointinNode(ClassPtr, Distance.id, aPoint, node.id))
		  #elseif Target32Bit
		    Declare function distanceToPointinNode lib SpriteKit selector "distance:ToPoint:inNode:" (id as ptr, distance as ptr,  aPoint as FoundationFramework.NSPoint32Bit, node as ptr) as ptr
		    result =  new AppleSKConstraint  (distanceToPointinNode(ClassPtr, Distance.id, aPoint.toNSPoint32, node.id))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Distance(aPoint As FoundationFramework.NSPoint, Distance As AppleSKRange) As AppleSKConstraint
		  dim result as   AppleSKConstraint
		  #if Target64Bit
		    Declare function distanceToPoint lib SpriteKit selector "distance:ToPoint:" (id as ptr, distance as ptr,  aPoint as FoundationFramework.NSPoint) as ptr
		    result =  new AppleSKConstraint  (distanceToPoint(ClassPtr, Distance.id, aPoint))
		  #elseif Target32Bit
		    Declare function distanceToPoint lib SpriteKit selector "distance:ToPoint:" (id as ptr, distance as ptr,  aPoint as FoundationFramework.NSPoint32Bit) as ptr
		    result =  new AppleSKConstraint  (distanceToPoint(ClassPtr, Distance.id, aPoint.toNSPoint32))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OrientToNode(Node As AppleSKNode) As AppleSKConstraint
		  return OrientToNode (node, AppleSKRange.WithConstantValue(0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OrientToNode(Node As AppleSKNode, OffsetRadians As AppleSKRange) As AppleSKConstraint
		  Declare function orientToNode lib SpriteKit selector "orientToNode:offset:" (id as ptr, node as ptr, offset as ptr) as ptr
		  dim result as  new AppleSKConstraint  (orientToNode(ClassPtr, node.id, OffsetRadians.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OrientToPoint(aPoint As FoundationFramework.NSPoint) As AppleSKConstraint
		  return OrientToPoint (aPoint, AppleSKRange.WithConstantValue(0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OrientToPoint(aPoint As FoundationFramework.NSPoint, Node as AppleSKNode) As AppleSKConstraint
		  return OrientToPoint (aPoint, Node, AppleSKRange.WithConstantValue(0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OrientToPoint(aPoint As FoundationFramework.NSPoint, Node as AppleSKNode, OffsetRadians As AppleSKRange) As AppleSKConstraint
		  dim result as   AppleSKConstraint
		  #if Target64Bit
		    Declare function orientToPointinNode lib SpriteKit selector "orientToPoint:inNode:offset:" (id as ptr, aPoint as FoundationFramework.NSPoint, node as ptr, offset as ptr) as ptr
		    result =  new AppleSKConstraint  (orientToPointinNode(ClassPtr, aPoint, node.id, OffsetRadians.id))
		  #elseif Target32Bit
		    Declare function orientToPointinNode lib SpriteKit selector "orientToPoint:inNode:offset:" (id as ptr, aPoint as FoundationFramework.NSPoint32Bit, node as ptr, offset as ptr) as ptr
		    result =  new AppleSKConstraint  (orientToPointinNode(ClassPtr, aPoint.toNSPoint32, node.id, OffsetRadians.id))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OrientToPoint(aPoint As FoundationFramework.NSPoint, OffsetRadians As AppleSKRange) As AppleSKConstraint
		  dim result as   AppleSKConstraint
		  #if Target64Bit
		    Declare function orientToPoint lib SpriteKit selector "orientToPoint:offset:" (id as ptr, aPoint as FoundationFramework.NSPoint, offset as ptr) as ptr
		    result =  new AppleSKConstraint  (orientToPoint(ClassPtr, aPoint, OffsetRadians.id))
		  #elseif Target32Bit
		    Declare function orientToPoint lib SpriteKit selector "orientToPoint:offset:" (id as ptr, aPoint as FoundationFramework.NSPoint32Bit, offset as ptr) as ptr
		    result =  new AppleSKConstraint  (orientToPoint(ClassPtr, aPoint.toNSPoint32, OffsetRadians.id))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Position(XRange As AppleSKRange, YRange As AppleSKRange) As AppleSKConstraint
		  Declare function positionXY lib SpriteKit selector "positionX:Y:" (id as ptr, postionx as ptr, positiony as ptr) as ptr
		  dim result as  new AppleSKConstraint  (positionXY(ClassPtr, xRange.id, YRange.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function PositionX(XRange As AppleSKRange) As AppleSKConstraint
		  Declare function positionX lib SpriteKit selector "positionX:" (id as ptr, postion as ptr) as ptr
		  dim result as  new AppleSKConstraint  (positionX(ClassPtr, XRange.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function PositionY(YRange As AppleSKRange) As AppleSKConstraint
		  Declare function positionY lib SpriteKit selector "positionY:" (id as ptr, postion as ptr) as ptr
		  dim result as  new AppleSKConstraint  (positionY(ClassPtr, YRange.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ZRotation(ZRange As AppleSKRange) As AppleSKConstraint
		  Declare function zRotation lib SpriteKit selector "zRotation:" (id as ptr, postion as ptr) as ptr
		  dim result as  new AppleSKConstraint  (zRotation(ClassPtr, ZRange.id))
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKConstraint")
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
			  Declare function enabled lib SpriteKit selector "enabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setEnabled lib SpriteKit selector "setEnabled:" (id as ptr, value as Boolean)
			  setenabled id, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function referenceNode lib SpriteKit selector "referenceNode" (id as ptr) as ptr
			  return AppleSKNode.MakeFromPtr (referenceNode(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setReferenceNode lib SpriteKit selector "setReferenceNode:" (id as ptr, value as ptr)
			  setReferenceNode id, value.id
			End Set
		#tag EndSetter
		ReferenceNode As AppleSKNode
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Enabled"
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
End Class
#tag EndClass
