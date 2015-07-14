#tag Class
Protected Class AppleSKShapeNode
Inherits AppleSKNode
	#tag Method, Flags = &h1000
		 Shared Function Circle(Radius as Double) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  
		  #if Target64Bit
		    declare Function shapeNodeWithCircleOfRadius lib SpriteKit selector "shapeNodeWithCircleOfRadius:" (id as ptr,  asize as double) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithCircleOfRadius (ClassPtr, radius))
		  #elseif Target32Bit
		    declare Function shapeNodeWithCircleOfRadius lib SpriteKit selector "shapeNodeWithCircleOfRadius:" (id as ptr,  asize as single) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithCircleOfRadius (ClassPtr, radius))
		  #endif
		  result.RetainClassObject
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function Ellipse(aRect as NSRect) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  #if Target64Bit
		    declare Function shapeNodeWithEllipseInRect lib SpriteKit selector "shapeNodeWithEllipseInRect:" (id as ptr,  asize as nsrect) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithEllipseInRect (ClassPtr, arect))
		  #elseif Target32Bit
		    declare Function shapeNodeWithEllipseInRect lib SpriteKit selector "shapeNodeWithEllipseInRect:" (id as ptr,  asize as NSRect32Bit) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithEllipseInRect (ClassPtr, arect.toNSRect32))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function Ellipse(aSize as NSSize) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  #if Target64Bit
		    declare Function shapeNodeWithEllipseOfSize lib SpriteKit selector "shapeNodeWithEllipseOfSize:" (id as ptr,  asize as nssize) as ptr
		    result = new AppleSKShapeNode  (shapeNodeWithEllipseOfSize (ClassPtr, aSize))
		  #elseif Target32Bit
		    declare Function shapeNodeWithEllipseOfSize lib SpriteKit selector "shapeNodeWithEllipseOfSize:" (id as ptr,  asize as NSSize32Bit) as ptr
		    result = new AppleSKShapeNode  (shapeNodeWithEllipseOfSize (ClassPtr, asize.toNSSize32))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function FromPoints(pointarray as AppleArray, count as uinteger = 0) As AppleSKShapeNode
		  declare Function shapeNodeWithPoints lib SpriteKit selector "shapeNodeWithPoints:count:" (id as ptr,  apath as ptr, count as uinteger) as ptr
		  if count = 0 then count = pointarray.Count
		  dim result as new AppleSKShapeNode (shapeNodeWithPoints (ClassPtr, pointarray.id, count))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function FromPoints(paramarray pointarray() as nspoint) As AppleSKShapeNode
		  return FromPoints (AppleMutableArray.NSPointArray (pointarray))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function FromSplinePoints(pointarray as AppleArray, count as uinteger = 0) As AppleSKShapeNode
		  declare Function shapeNodeWithSplinePoints lib SpriteKit selector "shapeNodeWithSplinePoints:count:" (id as ptr,  apath as ptr, count as uinteger) as ptr
		  if count = 0 then count = pointarray.Count
		  dim result as new AppleSKShapeNode (shapeNodeWithSplinePoints (ClassPtr, pointarray.id, count))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function FromSplinePoints(paramarray pointarray() as nspoint) As AppleSKShapeNode
		  return FromsplinePoints (AppleMutableArray.NSPointArray (pointarray))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function Path(aPath as AppleCGPath, centered as boolean = False) As AppleSKShapeNode
		  declare Function shapeNodeWithPath lib SpriteKit selector "shapeNodeWithPath:centered:" (id as ptr,  apath as ptr, centered as boolean) as ptr
		  dim result as new AppleSKShapeNode (shapeNodeWithPath (ClassPtr, apath.CFTypeRef, centered))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function Rect(aRect as NSRect) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  #if Target64Bit
		    declare Function shapeNodeWithRect lib SpriteKit selector "shapeNodeWithRect:" (id as ptr,  asize as nsrect) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithRect (ClassPtr, arect))
		  #elseif Target32Bit
		    declare Function shapeNodeWithRect lib SpriteKit selector "shapeNodeWithRect:" (id as ptr,  asize as NSRect32Bit) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithRect (ClassPtr, arect.toNSRect32))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function Rect(aSize as NSSize) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  #if Target64Bit
		    declare Function shapeNodeWithRectOfSize lib SpriteKit selector "shapeNodeWithRectOfSize:" (id as ptr,  asize as nssize) as ptr
		    result = new AppleSKShapeNode  (shapeNodeWithRectOfSize (ClassPtr, aSize))
		  #elseif Target32Bit
		    declare Function shapeNodeWithRectOfSize lib SpriteKit selector "shapeNodeWithRectOfSize:" (id as ptr,  asize as NSSize32Bit) as ptr
		    result = new AppleSKShapeNode  (shapeNodeWithRectOfSize (ClassPtr, asize.toNSSize32))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function RoundRect(aRect as NSRect, Cornerradius as double) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  #if Target64Bit
		    declare Function shapeNodeWithRectCorner lib SpriteKit selector "shapeNodeWithRect:cornerRadius:" (id as ptr,  asize as nsrect, radius as double) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithRectCorner (ClassPtr, arect, Cornerradius))
		  #elseif Target32Bit
		    declare Function shapeNodeWithRectCorner lib SpriteKit selector "shapeNodeWithRect:cornerRadius:" (id as ptr,  asize as NSRect32Bit, radius as single) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithRectCorner (ClassPtr, arect.toNSRect32, Cornerradius))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function RoundRect(aSize as NSSize, Cornerradius as double) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  #if Target64Bit
		    declare Function shapeNodeWithRectofSizeCorner lib SpriteKit selector "shapeNodeWithRectOfSize:cornerRadius:" (id as ptr,  asize as nssize, radius as double) as ptr
		    result = new AppleSKShapeNode ( shapeNodeWithRectofSizeCorner (ClassPtr, asize, Cornerradius))
		  #elseif Target32Bit
		    declare Function shapeNodeWithRectofSizeCorner lib SpriteKit selector "shapeNodeWithRectOfSize:cornerRadius:" (id as ptr,  asize as NSSize32Bit, radius as single) as ptr
		    result = new AppleSKShapeNode (shapeNodeWithRectofSizeCorner (ClassPtr, asize.toNSSize32, Cornerradius))
		  #endif
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function antialiased lib SpriteKit selector "isAntialiased" (id as ptr) as Boolean
			  Return antialiased (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAntialiased lib SpriteKit selector "setAntialiased:" (id as ptr, value as Boolean)
			  setAntialiased id, value
			End Set
		#tag EndSetter
		AntiAliased As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BlendMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBlendMode value
			End Set
		#tag EndSetter
		BlendMode As SKBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.SpriteKitEnabled then
			      mClassPtr  =  NSClassFromString ("SKShapeNode")
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
			  declare function fillColor lib spritekit selector "fillColor" (id as ptr) as Ptr
			  return AppleColor.MakeFromPtr (fillColor(id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setFillColor lib spritekit selector "setFillColor:" (id as ptr, value as Ptr)
			  setFillColor (id, value.id)
			  
			End Set
		#tag EndSetter
		FillColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function fillShader lib spritekit selector "fillShader" (id as ptr) as ptr
			  return AppleSKShader.MakeFromPtr (fillShader (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setFillShader lib spritekit selector "setFillShader:" (id as ptr, value as ptr)
			  setFillShader id, value.id
			  
			End Set
		#tag EndSetter
		FillShader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function fillTexture lib spritekit selector "fillTexture" (id as ptr) as Ptr
			  return AppleSKTexture.MakeFromPtr (fillTexture(id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setFillTexture lib spritekit selector "setFillTexture:" (id as ptr, value as Ptr)
			  setFillTexture (id, value.id)
			  
			End Set
		#tag EndSetter
		FillTexture As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function glowWidth lib spritekit selector "glowWidth" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function glowWidth lib spritekit selector "glowWidth" (id as ptr) as single
			  #endif
			  return glowWidth(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setGlowWidth lib spritekit selector "setGlowWidth:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setGlowWidth lib spritekit selector "setGlowWidth:" (id as ptr, value as single)
			  #endif
			  setGlowWidth id, value
			  
			End Set
		#tag EndSetter
		GlowWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function lineCap lib SpriteKit selector "lineCap" (id as ptr) as CGLineCap
			  Return lineCap (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLineCap lib SpriteKit selector "setLineCap:" (id as ptr, value as CGLineCap)
			  setLineCap id, value
			End Set
		#tag EndSetter
		LineCap As CGLineCap
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function lineJoin lib SpriteKit selector "lineJoin" (id as ptr) as CGLineJoin
			  Return lineJoin (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLineJoin lib SpriteKit selector "setLineJoin:" (id as ptr, value as CGLineJoin)
			  setLineJoin id, value
			End Set
		#tag EndSetter
		LineJoin As CGLineJoin
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function lineLength lib spritekit selector "lineLength" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function lineLength lib spritekit selector "lineLength" (id as ptr) as single
			  #endif
			  return lineLength(id)
			  
			End Get
		#tag EndGetter
		LineLength As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function lineWidth lib spritekit selector "lineWidth" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function lineWidth lib spritekit selector "lineWidth" (id as ptr) as single
			  #endif
			  return LineWidth(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setLineWidth lib spritekit selector "setLineWidth:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setLineWidth lib spritekit selector "setLineWidth:" (id as ptr, value as single)
			  #endif
			  setLineWidth id, value
			  
			End Set
		#tag EndSetter
		LineWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function miterLimit lib spritekit selector "miterLimit" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function miterLimit lib spritekit selector "miterLimit" (id as ptr) as single
			  #endif
			  return miterLimit(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setMiterLimit lib spritekit selector "setMiterLimit:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare sub setMiterLimit lib spritekit selector "setMiterLimit:" (id as ptr, value as single)
			  #endif
			  setMiterLimit id, value
			  
			End Set
		#tag EndSetter
		MiterLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function path lib spritekit selector "path" (id as ptr) as Ptr
			  dim result as ptr = path(id)
			  return if (result <> NIL, new AppleCGPath (result), NIL)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setPath lib spritekit selector "setPath:" (id as ptr, value as Ptr)
			  setPath (id, value.CFTypeRef)
			  
			End Set
		#tag EndSetter
		Path As AppleCGPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function strokeColor lib spritekit selector "strokeColor" (id as ptr) as Ptr
			  return AppleColor.MakeFromPtr (strokeColor(id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setStrokeColor lib spritekit selector "setStrokeColor:" (id as ptr, value as Ptr)
			  setStrokeColor (id, value.id)
			  
			End Set
		#tag EndSetter
		StrokeColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function strokeShader lib spritekit selector "strokeShader" (id as ptr) as ptr
			  return AppleSKShader.MakeFromPtr (strokeShader (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setStrokeShader lib spritekit selector "setStrokeShader:" (id as ptr, value as ptr)
			  setStrokeShader id, value.id
			  
			End Set
		#tag EndSetter
		StrokeShader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function strokeTexture lib spritekit selector "strokeTexture" (id as ptr) as Ptr
			  return AppleSKTexture.MakeFromPtr (strokeTexture(id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare Sub setStrokeTexture lib spritekit selector "setStrokeTexture:" (id as ptr, value as Ptr)
			  setStrokeTexture (id, value.id)
			  
			End Set
		#tag EndSetter
		StrokeTexture As AppleSKTexture
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AntiAliased"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="SKBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - MultiplyX2"
				"5 - Screen"
				"6 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GlowWidth"
			Group="Behavior"
			Type="Double"
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
			Name="LineLength"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MiterLimit"
			Group="Behavior"
			Type="Double"
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
