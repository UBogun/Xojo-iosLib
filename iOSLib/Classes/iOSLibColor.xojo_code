#tag Class
Protected Class iOSLibColor
Inherits iosLibObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aColor as Color)
		  dim r as Double = aColor.red/255
		  dim g as Double = aColor.Green/255
		  dim b as Double = aColor.Blue/255
		  dim a as Double = (255 - aColor.Alpha) / 255
		  
		  #if Target32Bit
		    declare function colorFromRGBA lib UIKit selector "initWithRed:green:blue:alpha:" (id as Ptr, red as Single, green as Single, blue as Single, alpha as Single) as Ptr
		  #elseif Target64Bit
		    declare function colorFromRGBA lib UIKit selector "initWithRed:green:blue:alpha:" (id as Ptr, red as Double, green as Double, blue as Double, alpha as Double) as Ptr
		  #endif
		  
		  
		  super.Constructor ( colorFromRGBA(alloc(ClassPtr), r, g, b, a))
		  mhasOwnership = true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromColor(aColor as Color) As iOSLibColor
		  return new iOSLibColor (acolor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getRGB(byref red as double, byref green as double, byref blue as double, byref alpha as double) As Boolean
		  dim result as Boolean
		  #if Target32Bit
		    dim r, g, b, a as single
		    declare Function getColors Lib UIKit selector "getRed:green:blue:alpha:" _
		    (Id as ptr, byref red as Single, byref green as single, byref blue as single, byref alpha as single) as Boolean
		    result = getColors (id, r,g,b,a)
		    red = r
		    green = g
		    blue = b
		    alpha = a
		  #elseif Target64Bit
		    declare function getColors Lib UIKit selector "getRed:green:blue:alpha:" _
		    (Id as ptr, byref red as Double, byref green as Double, byref blue as Double, byref alpha as Double) as boolean
		    result = getcolors (id, red, green, blue, alpha)
		  #endif
		  return result
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  call getRGB (red, green, blue, alpha)
			  #pragma unused red
			  #Pragma unused green
			  #Pragma unused blue
			  return alpha
			End Get
		#tag EndGetter
		AlphaValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  call getRGB (red, green, blue, alpha)
			  #pragma unused red
			  #Pragma unused green
			  #Pragma unused alpha
			  return blue
			End Get
		#tag EndGetter
		BlueValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIColor")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  dim result as Boolean
			  result = getRGB (red, green, blue, alpha)
			  #pragma unused red
			  #Pragma unused green
			  #Pragma unused blue
			  #Pragma unused alpha
			  return result
			End Get
		#tag EndGetter
		ConvertibleToRGB As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  call getRGB (red, green, blue, alpha)
			  #pragma unused red
			  #Pragma unused blue
			  #Pragma unused alpha
			  return green
			End Get
		#tag EndGetter
		GreenValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			https://github.com/UBogun/Xojo-iosLib/wiki/iOSLibColor
		#tag EndNote
		#tag Getter
			Get
			  dim red, green, blue, alpha as double
			  call getRGB (red, green, blue, alpha)
			  #pragma unused green
			  #Pragma unused blue
			  #Pragma unused alpha
			  return red
			End Get
		#tag EndGetter
		RedValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if ConvertibleToRGB then
			    dim col as  color = color.rgba (RedValue * 255, GreenValue * 255, BlueValue * 255, 255 - AlphaValue * 255)
			    return col
			  end if
			  
			End Get
		#tag EndGetter
		toColor As Color
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AlphaValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlueValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConvertibleToRGB"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GreenValue"
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
			Name="RedValue"
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
			Name="toColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
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
