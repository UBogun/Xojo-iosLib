#tag Class
Protected Class CGAnimatedCurve
	#tag Method, Flags = &h0
		Sub ChangeMutation()
		  xv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  yv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  cp1xv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  cp1yv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  cp2xv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  cp2yv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  sxv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  syv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor(MaxX as Double, maxY as double)
		  sx = math.RandomInt (0, maxx)
		  sy = math.RandomInt (0, maxy)
		  cp1x = math.RandomInt (0, maxx)
		  cp1y = math.RandomInt (0, maxy)
		  cp2x = math.RandomInt (0, maxx)
		  cp2y = math.RandomInt (0, maxy)
		  x = math.RandomInt (0, maxx)
		  y = math.RandomInt (0, maxy)
		  
		  LineWidth = math.RandomInt (1, 20)
		  MyColor = ColorExtension.RandomColor (2, 255)
		  dim mycap as uint32 = math.RandomInt(0,2)
		  cap = CGLineCap (mycap)
		  ChangeMutation
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Mutate()
		  x = x + xv
		  y = y + yv
		  sx = sx + sxv
		  sy = sy + syv
		  cp1x = cp1x + cp1xv
		  cp1y = cp1y + cp1yv
		  cp2x = cp2x + cp2xv
		  cp2y = cp2y + cp2yv
		  
		  MutationCount = MutationCount + 1
		  if MutationCount > 200 then
		    if math.RandomInt (0,200) = 0 then
		      ChangeMutation
		      MutationCount = 0
		    end if
		  end if
		  'y = math.RandomInt (0, maxy)
		  'LineWidth = math.RandomInt (1, 10)
		  'StartAngle = math.RandomInt (0, 2000)/1000
		  'EndAngle = math.RandomInt (0, 2000)/1000
		  'cw = math.RandomInt (0,1) = 0
		  'Radius = math.RandomInt (5, maxx)
		  '
		  'varx = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cap As CGLineCap
	#tag EndProperty

	#tag Property, Flags = &h0
		CP1X As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		CP1XV As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		CP1Y As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		CP1YV As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		CP2X As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		CP2XV As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		CP2Y As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		CP2YV As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		LineWidth As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		MutationCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MyColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		SX As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		SXV As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		SY As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		SYV As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		X As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		XV As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		YV As Double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="cap"
			Group="Behavior"
			Type="CGLineCap"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CP1X"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CP1XV"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CP1Y"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CP1YV"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CP2X"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CP2XV"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CP2Y"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CP2YV"
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
			Name="LineWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MutationCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MyColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
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
			Name="SX"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SXV"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SY"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SYV"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XV"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YV"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
