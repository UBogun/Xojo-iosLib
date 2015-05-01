#tag Class
Protected Class iOSLibCIFilter
Inherits iOSLibObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1001
		Protected Sub Constructor(FilterName as CFStringRef)
		  Declare function filterWithName lib CoreImage selector "filterWithName:" (id as ptr, name as cfstringref) as ptr
		  super.Constructor (filterWithName(ClassPtr, FilterName))
		  RetainClassObject
		  SetDefaults
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function Filternames(categories as ptr) As ioslibarray
		  declare function filterNamesInCategories lib CoreImage selector "filterNamesInCategories:" (id as ptr, categories as ptr) as ptr
		  return iOSLibArray.MakeFromPtr (filterNamesInCategories (classptr, categories))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FilternamesForCategory(category as cfstringref) As ioslibarray
		  declare function filterNamesInCategory lib CoreImage selector "filterNamesInCategory:" (id as ptr, category as CFStringRef) as ptr
		  return iOSLibArray.MakeFromPtr (filterNamesInCategory (classptr, category))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFilter(FilterName as text) As ioslibcifilter
		  if FilterNames.ContainsText (FilterName) then
		    return new ioslibcifilter (FilterName)
		  else
		    dim err as new BadDataException
		    err.Reason = "CIFiltername "+FilterName+" is not registered"
		    raise err
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As iOSLibCIFilter
		  return if (aptr = nil, nil, new iOSLibCIFilter(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDefaults()
		  Declare Sub setDefaults lib CoreImage selector "setDefaults" (id as ptr)
		  setDefaults id
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cBlur)
			End Get
		#tag EndGetter
		Shared BlurFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cBuiltIn)
			End Get
		#tag EndGetter
		Shared BuiltInFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryBlur", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cBlur As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryBuiltIn", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cBuiltIn As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryColorAdjustment", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cColorAdjust As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryColorEffect", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cColorEffect As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryCompositeOperation", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cComposite As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryDistortionEffect", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared CDistortion As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryGenerator", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cGenerator As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryGeometryAdjustment", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared CGeoAdjustment As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryGradient", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cGradient As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryHalftoneEffect", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cHalfTone As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryHighDynamicRange", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cHDR As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryInterlaced", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cInterlaced As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("CIFilter")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryNonSquarePixels", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cNonSquare As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cColorAdjust)
			End Get
		#tag EndGetter
		Shared ColorAdjustmentFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cColorEffect)
			End Get
		#tag EndGetter
		Shared ColorEffectFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cComposite)
			End Get
		#tag EndGetter
		Shared CompositeOperationFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryReduction", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cReduction As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategorySharpen", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cSharpen As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryStillImage", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cStillImage As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryStylize", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cStylize As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryTileEffect", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cTile As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryTransition", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cTransition As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static result as text = SystemConstantName ("kCICategoryVideo", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Private Shared cVideo As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (CDistortion)
			End Get
		#tag EndGetter
		Shared DistortionFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function attributes_ lib CoreImage selector "attributes" (id as ptr) as ptr
			  return iOSLibDictionary.MakeFromPtr (attributes_ (id))
			End Get
		#tag EndGetter
		FilterAttributes As iOSLibDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilterNames (nil)
			End Get
		#tag EndGetter
		Shared FilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cGenerator)
			End Get
		#tag EndGetter
		Shared GeneratorFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (CGeoAdjustment)
			End Get
		#tag EndGetter
		Shared GeometryAdjustmentFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cGradient)
			End Get
		#tag EndGetter
		Shared GradientFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cHalfTone)
			End Get
		#tag EndGetter
		Shared HalfToneFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cHDR)
			End Get
		#tag EndGetter
		Shared HDRFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return iOSLibCIImage.MakeFromPtr (ValueForKey (cInputImage))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if InputKeys.ContainsText (cInputImage) then setValueForKey (cInputImage, value)
			End Set
		#tag EndSetter
		InputCIImage As ioslibciimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new iOSLibImage (InputCIImage)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  InputCIImage = new iOSLibCIImage(value.toCGImage)
			End Set
		#tag EndSetter
		InputImage As ioslibImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function InputKeys lib CoreImage selector "inputKeys" (id as ptr) as ptr
			  return iOSLibArray.MakeFromPtr (InputKeys(id))
			End Get
		#tag EndGetter
		InputKeys As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cHalfTone)
			End Get
		#tag EndGetter
		Shared InterlacedFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cNonSquare)
			End Get
		#tag EndGetter
		Shared NonSquarePixelsFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function outputImage lib CoreImage selector "outputImage" (id as ptr) as ptr
			  dim result as ptr = outputImage (id)
			  if result <> nil then
			    dim myimage as new iOSLibCIImage(result)
			    myimage.Retain
			    return myimage
			  else
			    return NIL
			  end if
			  
			End Get
		#tag EndGetter
		OutputCIImage As ioslibciimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if OutputciImage <> nil then
			    dim extent as NSRect = OutputCIImage.Extent
			    if extent.Origin.x < -1000 then
			      return new  iOSLibImage(OutputciImage.CropToRect(NSRect (0,0,600,600)))
			    else
			      return new iOSLibImage(OutputciImage)
			    end if
			  end if
			End Get
		#tag EndGetter
		OutputImage As ioslibimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cReduction)
			End Get
		#tag EndGetter
		Shared ReductionFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cSharpen)
			End Get
		#tag EndGetter
		Shared SharpenFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cStillImage)
			End Get
		#tag EndGetter
		Shared StillImageFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cStylize)
			End Get
		#tag EndGetter
		Shared StylizeFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cTile)
			End Get
		#tag EndGetter
		Shared TileEffectFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cTransition)
			End Get
		#tag EndGetter
		Shared TransitionFilterNames As iOSLibArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FilternamesForCategory (cVideo)
			End Get
		#tag EndGetter
		Shared VideoFilterNames As iOSLibArray
	#tag EndComputedProperty


	#tag Constant, Name = cInputImage, Type = Text, Dynamic = False, Default = \"inputImage", Scope = Protected
	#tag EndConstant


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
