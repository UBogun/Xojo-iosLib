#tag Class
Protected Class AppleProgressView
Inherits AppleView
	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub DidAddSubview(view as AppleView)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20766965772077617320617474616368656420746F206120737570657276696577206173206120737562766965772E
		Sub DidMoveToSuperview()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772061707065617273206F6E2073637265656E2E
		Sub DidMoveToWindow()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652072656374616E676C6520286F722077686F6C65206172656129206F662074686520766965772067657473207265647261776E
		Sub DrawRect(Rect  as FoundationFramework.NSRect)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520657374696D617465642070726F70657274696573206F66206120746F756368206576656E74206368616E67652E
		Sub EstimatedPropertiesUpdated(Touchset as AppleSet)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20746865207669657720686173206368616E6765642073697A65206C696B6520616674657220616E206F7269656E746174696F6E206368616E67652E
		Sub LayoutSubviews()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061206D6F74696F6E2068617320626567756E2E
		Sub MotionBeganwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061206D6F74696F6E2068617320626567756E2E
		Sub MotionCancelledwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061206D6F74696F6E2068617320626567756E2E
		Sub MotionEndedwithEvent(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E206120706879736963616C20627574746F6E206973207072657373656420696E20746865206173736F63696174656420766965772E
		Sub PressesBeganwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E20612073797374656D206576656E742063616E63656C732061207072657373206576656E742E
		Sub PressesCancelledwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520666F726365206F662061207072657373206576656E74206368616E676573
		Sub PressesChangedwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 46697265207768656E206120627574746F6E207761732072656C65617365642E
		Sub PressesEndedwithEvent(Touchset as AppleSet, anEvent as ApplePressesEvent)
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061206D6F74696F6E2068617320656E646564
		Sub RemoteControlReceived(anEvent as AppleNSEvent)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 41646A75737473207468652063757272656E742070726F67726573732073686F776E206279207468652070726F6772657373206261722C20616E696D6174696E6720746865206368616E67652E
		Sub AnimateProgress(Value as Single, animate as Boolean = true)
		  setprogressanimated id, value, animate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Style as UIProgressViewStyle)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleView
		  // Constructor(aFrame as FoundationFramework.NSRect) -- From AppleView
		  // Constructor(anID as Ptr) -- From AppleView
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(initWithProgressViewStyle(alloc(classptr), style))
		  MHasOwnership = True
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getobservedProgress Lib uikitlibname Selector "observedProgress" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getprogress Lib uikitlibname Selector "progress" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getprogressImage Lib uikitlibname Selector "progressImage" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getprogressTintColor Lib uikitlibname Selector "progressTintColor" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getprogressViewStyle Lib uikitlibname Selector "progressViewStyle" (id as ptr) As UIProgressViewStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function gettrackImage Lib uikitlibname Selector "trackImage" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function initWithProgressViewStyle Lib uikitlibname Selector "initWithProgressViewStyle:" (id as ptr, style as UIProgressViewStyle) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleProgressView
		  return if (aptr = nil, nil, new appleprogressview(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden )  Function ParentControl() As iOSLibProgressBar
		  dim  wr as weakref = XojoControls.Lookup (id, nil)  
		  return if (wr = nil, nil,  iOSLibProgressBar(wr.Value))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, Description = 5468652070726F6772657373206F626A65637420746F2075736520666F72207570646174696E67207468652070726F677265737320766965772E
		Attributes( hidden ) Private Declare Sub setobservedProgress Lib uikitlibname Selector "setObservedProgress:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setprogress Lib uikitlibname Selector "setProgress:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setprogressanimated Lib uikitlibname Selector "setProgress:animated:" (id as ptr, value as single, animated as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setprogressImage Lib uikitlibname Selector "setProgressImage:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setprogressTintColor Lib uikitlibname Selector "setProgressTintColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub setprogressViewStyle Lib uikitlibname Selector "setProgressViewStyle:" (id as ptr, value as UIProgressViewStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub settrackImage Lib uikitlibname Selector "setTrackImage:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mclassptr = nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			    mclassptr = BuildTargetClass ("UIProgressView", "iOSLibProgressView",methods)
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E742070726F67726573732073686F776E206279207468652072656365697665722E
		#tag Getter
			Get
			  if RespondsToSelector (classptr, "observedProgress") then return appleprogress.MakefromPtr(getobservedProgress(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector (classptr, "setObservedProgress:") then setobservedProgress (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		ObservedProgress As AppleProgress
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E742070726F67726573732073686F776E206279207468652072656365697665722E
		#tag Getter
			Get
			  return getprogress(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setprogress (id, value)
			End Set
		#tag EndSetter
		Progress As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696D61676520746F2075736520666F722074686520706F7274696F6E206F66207468652070726F67726573732062617220746861742069732066696C6C65642E204966207365742C2050726F677265737354696E74436F6C6F722077696C6C2062652069676E6F7265642E
		#tag Getter
			Get
			  return appleimage.MakefromPtr(getprogressImage(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setprogressImage (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		ProgressImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F722073686F776E20666F722074686520706F7274696F6E206F66207468652070726F67726573732062617220746861742069732066696C6C65642E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(getprogressTintColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setprogressTintColor (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		ProgressTintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E742067726170686963616C207374796C65206F66207468652070726F6772657373206261722E
		#tag Getter
			Get
			  return getProgressViewStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setProgressViewStyle id, value
			End Set
		#tag EndSetter
		ProgressViewStyle As UIProgressViewStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696D61676520746F2075736520666F722074686520706F7274696F6E206F66207468652070726F67726573732062617220746861742069732066696C6C65642E204966207365742C2050726F677265737354696E74436F6C6F722077696C6C2062652069676E6F7265642E
		#tag Getter
			Get
			  return appleimage.MakefromPtr(gettrackImage(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settrackImage (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		TrackImage As AppleImage
	#tag EndComputedProperty


	#tag Enum, Name = UIProgressViewStyle, Type = Integer, Flags = &h0
		Default
		Bar
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlsCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
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
			Name="MultipleTouchEnabled"
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Progress"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProgressViewStyle"
			Group="Behavior"
			Type="UIProgressViewStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Bar"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RestorationIdentifier"
			Group="Behavior"
			Type="Text"
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
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
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
	#tag EndViewBehavior
End Class
#tag EndClass
