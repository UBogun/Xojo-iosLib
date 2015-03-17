#tag Class
Protected Class iOSLibResponder
Inherits iOSLibObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  // No direct constructor, UIResponder is an interfaace base class
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function DoInitWithFrame(aClass as Ptr, aFRame as NSRect) As Ptr
		  #if target32bit
		    declare function initWithFrame lib UIKit selector "initWithFrame:" (id as ptr, aFrame as NSRect32Bit) as ptr
		    return initWithFrame (aClass, Aframe.toNSRect32 )
		  #elseif Target64Bit
		    declare function initWithFrame lib UIKit selector "initWithFrame:" (id as ptr, aFrame as NSRect) as ptr
		    return initWithFrame (aClass, Aframe)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getbounds() As NSRect
		  #if Target64bit
		    declare function bounds lib UIKit selector "bounds" (id as ptr) as NSRect
		    return bounds (id)
		  #elseif target32bit
		    declare function bounds lib UIKit selector "bounds" (id as ptr) as NSRect32Bit
		    return bounds(id).toNSRect
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getFrame() As NSRect
		  #if target32bit
		    declare function getframe lib UIKit selector "frame" (id as Ptr) as NSRect32Bit
		    return getframe(id).toNSRect
		  #elseif Target64Bit
		    declare function getframe lib UIKit selector "frame" (id as Ptr) as NSRect
		    return getframe (id)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOpaque(id as Ptr) As Boolean
		  declare function opaque lib UIKit selector "isOpaque" (id as ptr) as Boolean
		  return opaque (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBounds(value as NSRect)
		  #if Target64bit
		    declare sub setbounds lib UIKit selector "setBounds:" (id as ptr, value as NSRect)
		    setBounds id, value
		  #elseif target32bit
		    declare sub setBounds lib UIKit selector "setBounds:" (id as ptr, value as NSRect32Bit)
		    setBounds id, value.toNSRect32
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setFrame(value as NSRect)
		  #if target32bit
		    declare sub setFrame lib UIKit selector "setFrame:" (id as Ptr, value as NSRect32Bit)
		    setFrame id, value.toNSRect32
		  #elseif target64bit
		    declare sub setFrame lib UIKit selector "setFrame:" (id as Ptr, value as NSRect)
		    setFrame id, value
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setOpaque(id as Ptr, value as boolean)
		  declare sub setOpaque lib UIKit selector "setOpaque:" (id as ptr, value as Boolean)
		  setOpaque id, value
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIResponder")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
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
