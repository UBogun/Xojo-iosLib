#tag Class
Protected Class CGAnimatedArc
	#tag Method, Flags = &h0
		Sub ChangeMutation()
		  xv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  yv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/500, 0)
		  radiusv = if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/10000, 0)
		  StartAnglev =  if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/100000, 0)
		  endAnglev =  if (math.RandomInt (0,4) = 0, math.RandomInt(-1000, 1000)/100000, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor(MaxX as Double, maxY as double)
		  x = math.RandomInt (0, maxx)
		  y = math.RandomInt (0, maxy)
		  LineWidth = math.RandomInt (1, 20)
		  StartAngle = math.RandomInt (0, 2000)/1000
		  EndAngle = math.RandomInt (0, 2000)/1000
		  cw = math.RandomInt (0,1) = 0
		  Radius = math.RandomInt (1, maxx*2)
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
		  Radius = Radius + RadiusV
		  StartAngle = StartAngle + StartAngleV
		  Endangle = Endangle + Endanglev
		  MutationCount = MutationCount + 1
		  if MutationCount > 200 then
		    if math.RandomInt (0,100) = 0 then
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
		CW As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Endangle As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		EndangleV As Double
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
		Radius As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		RadiusV As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		StartAngle As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		StartAngleV As Double
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
			EditorType="Enum"
			#tag EnumValues
				"0 - Butt"
				"1 - Round"
				"2 - Square"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CW"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Endangle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EndangleV"
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
			Name="Radius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RadiusV"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartAngleV"
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
