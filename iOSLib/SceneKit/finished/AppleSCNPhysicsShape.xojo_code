#tag Class
Protected Class AppleSCNPhysicsShape
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577207068797369637320736861706520627920636F6D62696E696E67206F74686572732E
		Sub Constructor(Shapes as AppleArray, transforms as AppleArray)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function shapeWithShapes lib SceneKitLib selector "shapeWithShapes:transforms:" (id as ptr, shapes as ptr, transforms as ptr) as ptr
		  Super.Constructor (shapeWithShapes(ClassPtr, shapes.id,transforms.id))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612070687973696373207368617065206261736564206F6E20612067656F6D65747279206F626A6563742E
		Sub Constructor(Geometry as AppleSCNGeometry, options as AppleSCNPhysicsShapeOptionDictionary = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function shapeWithGeometry lib SceneKitLib selector "shapeWithGeometry:options:" (id as ptr, geometry as ptr, options as ptr) as ptr
		  Super.Constructor (shapeWithGeometry(ClassPtr, Geometry.id, if (options = nil, nil, options.id)))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120706879736963732073686170652066726F6D2061206E6F6465206F7220686965726172636879206F66206E6F6465732E
		Sub Constructor(Node as AppleSCNNode, options as AppleDictionary = nil)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function shapeWithNode lib SceneKitLib selector "shapeWithNode:options:" (id as ptr, node as ptr, options as ptr) as ptr
		  Super.Constructor (shapeWithNode(ClassPtr, node.id, if (options = nil, nil, options.id)))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNPhysicsShape
		  return if (aptr = nil, nil, new AppleSCNPhysicsShape(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status completed & documented
		iOS 9.2.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNPhysicsShape")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsShapeKeepAsCompoundKey as text = SystemConstantName("SCNPhysicsShapeKeepAsCompoundKey", SceneKitPath)
			  return mkSCNPhysicsShapeKeepAsCompoundKey
			End Get
		#tag EndGetter
		Shared kSCNPhysicsShapeKeepAsCompoundKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsShapeScaleKey as text = SystemConstantName("SCNPhysicsShapeScaleKey", SceneKitPath)
			  return mkSCNPhysicsShapeScaleKey
			End Get
		#tag EndGetter
		Shared kSCNPhysicsShapeScaleKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsShapeTypeBoundingBox as text = SystemConstantName("SCNPhysicsShapeTypeBoundingBox", SceneKitPath)
			  return mkSCNPhysicsShapeTypeBoundingBox
			End Get
		#tag EndGetter
		Shared kSCNPhysicsShapeTypeBoundingBox As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsShapeTypeConcavePolyhedron as text = SystemConstantName("SCNPhysicsShapeTypeConcavePolyhedron", SceneKitPath)
			  return mkSCNPhysicsShapeTypeConcavePolyhedron
			End Get
		#tag EndGetter
		Shared kSCNPhysicsShapeTypeConcavePolyhedron As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsShapeTypeConvexHull as text = SystemConstantName("SCNPhysicsShapeTypeConvexHull", SceneKitPath)
			  return mkSCNPhysicsShapeTypeConvexHull
			End Get
		#tag EndGetter
		Shared kSCNPhysicsShapeTypeConvexHull As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsShapeTypeKey as text = SystemConstantName("SCNPhysicsShapeTypeKey", SceneKitPath)
			  return mkSCNPhysicsShapeTypeKey
			End Get
		#tag EndGetter
		Shared kSCNPhysicsShapeTypeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7074696F6E732064696374696F6E617279207468617420776173207573656420746F20637265617465207468652073686170652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector (Classptr, "options") then return AppleSCNPhysicsShapeOptionDictionary(AppleDictionary.MakeFromPtr(SceneKitFrameWork.getoptions (id)))
			End Get
		#tag EndGetter
		Options As AppleSCNPhysicsShapeOptionDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A656374207468617420776173207573656420746F20637265617465207468652073686170652E2028726561642D6F6E6C79292E204D617920626520612053434E47656F6D657472792C2020612053434E4E6F6465206F7220616E204170706C654172726179206F662053434E506879736963735368617065206F626A6563742E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector (Classptr, "sourceObject") then return appleobject.MakeFromPtr(SceneKitFrameWork.getsourceObject (id))
			End Get
		#tag EndGetter
		SourceObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172726179206F66207472616E73666F726D73207468617420776173207573656420746F20637265617465206120636F6D706F756E642073686170652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector (Classptr, "transforms") then return AppleArray.MakeFromPtr(SceneKitFrameWork.gettransforms (id))
			End Get
		#tag EndGetter
		Transforms As AppleArray
	#tag EndComputedProperty


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
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
