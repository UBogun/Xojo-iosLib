#tag Class
Protected Class AppleImage
Inherits AppleObject
	#tag Method, Flags = &h1000
		 Shared Function Animatedimage(Images As AppleArray, duration as double) As AppleImage
		  Declare function animatedImageWithImages lib UIKit selector "animatedImageWithImages:duration:" (id as ptr, images as Ptr, duration as double) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Dim Result as new AppleImage (animatedImageWithImages (classptr, Images.id, duration))
		  result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function Animatedimage(imagename as cfstringref, duration as double) As AppleImage
		  Declare function animatedImageNamed lib UIKit selector "animatedImageNamed:duration:" (id as ptr, imagename as cfstringref, duration as double) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Dim Result as new AppleImage (animatedImageNamed (classptr, imagename, duration))
		  result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function AnimatedStretchedResizableImage(imagename as cfstringref, capInsets as UIEdgeInsets, duration as double) As AppleImage
		  #if Target64Bit
		    Declare function animatedStretchedResizableImageNamed lib UIKit selector "animatedResizableImageNamed:capInsets:resizingMode:duration:" (id as ptr, imagename as cfstringref, capInsets as UIEdgeInsets, resizingMode as Integer, duration as double) as ptr
		    Dim Result as new AppleImage (animatedStretchedResizableImageNamed (classptr, imagename, capInsets, 1, duration))
		  #Elseif Target32Bit
		    Declare function animatedStretchedResizableImageNamed lib UIKit selector "animatedResizableImageNamed:capInsets:resizingMode:duration:" (id as ptr, imagename as cfstringref, capInsets as UIEdgeInsets32Bit, resizingMode as Integer, duration as double) as ptr
		    Dim Result as new AppleImage (animatedStretchedResizableImageNamed (classptr, imagename, capInsets.toUIEdgeInset32, 1, duration))
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function AnimatedTiledResizableImage(imagename as cfstringref, capInsets as UIEdgeInsets, duration as double) As AppleImage
		  #if Target64Bit
		    Declare function animatedResizableImageNamed lib UIKit selector "animatedResizableImageNamed:capInsets:duration:" (id as ptr, imagename as cfstringref, capInsets as UIEdgeInsets, duration as double) as ptr
		    Dim Result as new AppleImage (animatedResizableImageNamed (classptr, imagename, capInsets, duration))
		  #Elseif Target32Bit
		    Declare function animatedResizableImageNamed lib UIKit selector "animatedResizableImageNamed:capInsets:duration:" (id as ptr, imagename as cfstringref, capInsets as UIEdgeInsets32Bit, duration as double) as ptr
		    Dim Result as new AppleImage (animatedResizableImageNamed (classptr, imagename, capInsets.toUIEdgeInset32, duration))
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as AppleCGImage)
		  #if Target64Bit
		    Declare function imageWithCGImage lib UIKit selector "imageWithCGImage:" (id as ptr, animage as ptr) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCGImage lib UIKit selector "imageWithCGImage:" (id as ptr, animage as ptr) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCGImage ( ClassPtr, animage.CFTypeRef))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as AppleCGImage, scale as double, orientation as UIImageOrientation = UIImageOrientation.normal)
		  #if Target64Bit
		    Declare function imageWithCGImage lib UIKit selector "imageWithCGImage:scale:orientation:" (id as ptr, animage as ptr, scale as double, orientation as UIImageOrientation) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCGImage lib UIKit selector "imageWithCGImage:scale:orientation:" (id as ptr, animage as ptr, scale as single, orientation as UIImageOrientation) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCGImage ( ClassPtr, animage.CFTypeRef, scale, orientation))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as AppleCIImage)
		  Declare function imageWithCIImage lib UIKit selector "imageWithCIImage:" (id as ptr, animage as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCIImage (classptr, animage.id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as AppleCIImage, scale as double, orientation as UIImageOrientation = UIImageOrientation.normal)
		  #if Target64Bit
		    Declare function imageWithCIImage lib UIKit selector "imageWithCIImage:scale:orientation:" (id as ptr, animage as ptr, scale as double, orientation as UIImageOrientation) as ptr
		  #elseif Target32Bit
		    Declare function imageWithCIImage lib UIKit selector "imageWithCIImage:scale:orientation:" (id as ptr, animage as ptr, scale as single, orientation as UIImageOrientation) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithCIImage (classptr, animage.id, scale, orientation))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ImageData as AppleData)
		  Declare function imageWithData lib UIKit selector "imageWithData:" (id as ptr, ImageData as Ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithData (classptr, ImageData.Id))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ImageData as AppleData, Scale as Double)
		  #if Target64Bit
		    Declare function imageWithDataScale lib UIKit selector "imageWithData:scale:" (id as ptr, ImageData as Ptr, scale as double) as ptr
		  #elseif Target32Bit
		    Declare function imageWithDataScale lib UIKit selector "imageWithData:scale:" (id as ptr, ImageData as Ptr, scale as single) as ptr
		  #endif
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithDatascale (classptr, ImageData.Id, scale))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(imagename as cfstringref)
		  Declare function imageNamed lib UIKit selector "imageNamed:" (id as ptr, imagename as cfstringref) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imagenamed (classptr, imagename))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(imagename as cfstringref, Bundle as AppleCFBundle, traitcollection as AppleTraitCollection = nil)
		  Declare function imageNamedinBundle lib UIKit selector "imageNamed:inBundle:compatibleWithTraitCollection:" _
		  (id as ptr, imagename as cfstringref, bundle as ptr, traitcollection as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageNamedinBundle (classptr, imagename, bundle.CFTypeRef, if (traitcollection = nil, nil, traitcollection.id)))
		  if not IsNIL then RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(imagePath as folderitem)
		  Declare function imageWithContentsOfFile lib UIKit selector "imageWithContentsOfFile:" (id as ptr, Path as cfstringref) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (imageWithContentsOfFile (classptr, imagePath.Path))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(animage as iOSImage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  call ClassPtr
		  Super.Constructor (animage.Handle)
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawAsPatternInRect(Rect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare sub drawAsPatternInRect lib UIKit selector "drawAsPatternInRect:" (id as ptr, Rect  as FoundationFramework.NSRect)
		    drawAsPatternInRect (id, rect)
		  #elseif Target32Bit
		    Declare sub drawAsPatternInRect lib UIKit selector "drawAsPatternInRect:" (id as ptr, Rect as FoundationFramework.NSRect32Bit)
		    drawAsPatternInRect (id, rect.toNSRect32)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawAtPoint(Point As FoundationFramework.NSPoint)
		  #if Target64Bit
		    Declare sub drawAtPoint lib UIKit selector "drawAtPoint:" (id as ptr, point as FoundationFramework.NSPoint)
		    drawAtPoint (id, point)
		  #elseif Target32Bit
		    Declare sub drawAtPoint lib UIKit selector "drawAtPoint:" (id as ptr, point as FoundationFramework.NSPoint32Bit)
		    drawAtPoint (id, point.toNSPoint32)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawAtPoint(Point As FoundationFramework.NSPoint, BlendMode as CGBlendMode, Alpha as Double = 1)
		  #if Target64Bit
		    Declare sub drawAtPointblendMode lib UIKit selector "drawAtPoint:blendMode:alpha:" (id as ptr, point as FoundationFramework.NSPoint, blendmode as CGBlendMode, alpha as double)
		    drawAtPointblendMode (id, point, blendmode, alpha)
		  #elseif Target32Bit
		    Declare sub drawAtPointblendMode lib UIKit selector "drawAtPoint:blendMode:alpha:" (id as ptr, point as FoundationFramework.NSPoint32Bit,  blendmode as CGBlendMode, alpha as single)
		    drawAtPointblendMode (id, point.toNSPoint32, blendmode, alpha)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawInRect(Rect as FoundationFramework.NSRect)
		  #if Target64Bit
		    Declare sub drawInRect lib UIKit selector "drawInRect:" (id as ptr, Rect  as FoundationFramework.NSRect)
		    drawInRect (id, rect)
		  #elseif Target32Bit
		    Declare sub drawInRect lib UIKit selector "drawInRect:" (id as ptr, Rect as FoundationFramework.NSRect32Bit)
		    drawInRect (id, rect.toNSRect32)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawInRect(Rect as FoundationFramework.NSRect, BlendMode as CGBlendMode, Alpha as Double = 1)
		  #if Target64Bit
		    Declare sub drawInRectBlendMode lib UIKit selector "drawInRect:blendMode:alpha:" (id as ptr, Rect  as FoundationFramework.NSRect, blendmode as CGBlendMode, alpha as double)
		    drawInRectBlendMode (id, rect, blendmode, alpha)
		  #elseif Target32Bit
		    Declare sub drawInRectBlendMode lib UIKit selector "drawInRect:blendMode:alpha:" (id as ptr, Rect as FoundationFramework.NSRect32Bit, blendmode as CGBlendMode, alpha as single)
		    drawInRectBlendMode (id, rect.toNSRect32, blendmode, alpha)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FlipHorizontal() As AppleImage
		  const SEL as text = "imageFlippedForRightToLeftLayoutDirection"
		  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString (SEL)) then
		    Declare function imageFlippedForRightToLeftLayoutDirection lib UIKit selector "imageFlippedForRightToLeftLayoutDirection" (id as ptr) as ptr
		    return new AppleImage (imageFlippedForRightToLeftLayoutDirection(id))
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function FromIOSImage(animage as iOSImage) As AppleImage
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim result as new AppleImage (animage.Handle)
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JPEGData(compressionQuality as double) As AppleData
		  #if Target64Bit
		    Declare Function UIImageJPEGRepresentation lib UIKit (Image as ptr, quality as double) as ptr
		  #elseif Target32Bit
		    Declare Function UIImageJPEGRepresentation lib UIKit (Image as ptr, quality as single) as ptr
		  #endif
		  Return AppleData.MakefromPtr (UIImageJPEGRepresentation (id, compressionQuality))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleImage
		  return if (aptr <> NIL, new AppleImage (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert(animage as iOSImage) As AppleImage
		  return new AppleImage(animage)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub PhotoSaved(error as ptr, contextinfo as ptr)
		  dim myerror as AppleError = AppleError.MakefromPtr (error)
		  if myerror = nil then
		    raiseEvent PhotoSaved (contextinfo)
		  else
		    RaiseEvent PhotoSaveError (myerror, contextinfo)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResizableStretchedImage(CapInsets as UIEdgeInsets) As AppleImage
		  #if Target64Bit
		    Declare Function ResizableStretchedImage lib UIKit selector "resizableImageWithCapInsets:resizingMode:" (id as ptr, insets as UIEdgeInsets, resizingMode as integer) as ptr
		    return new AppleImage (ResizableStretchedImage(id, CapInsets, 1))
		  #elseif Target32Bit
		    Declare Function ResizableStretchedImage lib UIKit selector "resizableImageWithCapInsets:resizingMode:" (id as ptr, insets as UIEdgeInsets32Bit, resizingMode as integer) as ptr
		    return new AppleImage (ResizableStretchedImage(id, CapInsets.toUIEdgeInset32, 1))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResizableTiledImage(CapInsets as UIEdgeInsets) As AppleImage
		  #if Target64Bit
		    Declare Function resizableImageWithCapInsets lib UIKit selector "resizableImageWithCapInsets:" (id as ptr, insets as UIEdgeInsets) as ptr
		    return new AppleImage (resizableImageWithCapInsets(id, CapInsets))
		  #elseif Target32Bit
		    Declare Function resizableImageWithCapInsets lib UIKit selector "resizableImageWithCapInsets:" (id as ptr, insets as UIEdgeInsets32Bit) as ptr
		    return new AppleImage (resizableImageWithCapInsets(id, CapInsets.toUIEdgeInset32))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resize(Scalefactor as double) As AppleImage
		  if toCGImage <> NIL then
		    return new AppleImage (toCGImage, Scalefactor)
		  elseif toCIImage <> NIL then
		    return new AppleImage (toCIImage, Scalefactor)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resize(NewRect as FoundationFramework.NSRect) As AppleImage
		  dim scale as double = min (NewRect.Size_.width / Width, NewRect.Size_.height/Height)
		  return Resize (scale)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetAlignmentRect(Insets as UIEdgeInsets) As AppleImage
		  #if Target64Bit
		    Declare Function imageWithAlignmentRectInsets lib UIKit selector "imageWithAlignmentRectInsets:" (id as ptr, insets as UIEdgeInsets) as ptr
		    return new AppleImage (imageWithAlignmentRectInsets(id, Insets))
		  #elseif Target32Bit
		    Declare Function imageWithAlignmentRectInsets lib UIKit selector "imageWithAlignmentRectInsets:" (id as ptr, insets as UIEdgeInsets32Bit) as ptr
		    return new AppleImage (imageWithAlignmentRectInsets(id, Insets.toUIEdgeInset32))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetRenderingMode(RenderingMode as UIImageRenderingMode) As AppleImage
		  Declare Function imageWithRenderingMode lib UIKit selector "imageWithRenderingMode:" (id as ptr, RenderingMode as UIImageRenderingMode) as ptr
		  return new AppleImage (imageWithRenderingMode(id, RenderingMode))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function UIImagePNGRepresentation Lib UIKit (UIImage as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub UIImageWriteToSavedPhotosAlbum Lib UIKit (UIImage as Ptr, completion as ptr, completionselector as ptr, contextinfo as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub WriteToPhotoAlbum()
		  dim myDelegate as new iOSLibImageDelegate
		  UIImageWriteToSavedPhotosAlbum (id, myDelegate.id, FoundationFramework.NSSelectorFromString ("wroteToPhotoAlbum:error:context:"), nil)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event PhotoSaved(contextInfo as ptr)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PhotoSaveError(error as AppleError, contextInfo as ptr)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function alignmentRectInsets lib UIKit selector "alignmentRectInsets" (id as ptr) as UIEdgeInsets
			    return alignmentRectInsets (id)
			  #elseif Target32Bit
			    Declare function alignmentRectInsets lib UIKit selector "alignmentRectInsets" (id as ptr) as UIEdgeInsets32Bit
			    return alignmentRectInsets(id).toUIEdgeInset
			  #endif
			End Get
		#tag EndGetter
		AlignmentRectInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If Target64Bit
			    Declare Function capInsets lib UIKit selector "capInsets" (id as ptr) as UIEdgeInsets
			    Return capInsets (id)
			  #elseif Target32Bit
			    Declare Function capInsets lib UIKit selector "capInsets" (id as ptr) as UIEdgeInsets32Bit
			    Return capInsets(id).toUIEdgeInset
			  #endif
			  
			End Get
		#tag EndGetter
		CapInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr = FoundationFramework.NSClassFromString ("UIImage")
			  return targetID
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function duration lib UIKit selector "duration" (id as ptr) as Double
			  return  duration(id)
			End Get
		#tag EndGetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  const SEL as text = "flipsForRightToLeftLayoutDirection"
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString (SEL)) then
			    Declare function flipsForRightToLeftLayoutDirection lib UIKit selector "flipsForRightToLeftLayoutDirection" (id as ptr) as Boolean
			    return  (flipsForRightToLeftLayoutDirection(id))
			  end if
			  
			End Get
		#tag EndGetter
		FlipsInRightToLeftLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Size.height
			End Get
		#tag EndGetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if AppleImageAsset.ClassAvailable then
			    Declare function imageAsset lib UIKit selector "imageAsset" (id as ptr) as ptr
			    return AppleImageAsset.MakefromPtr (imageAsset(id))
			  end if
			End Get
		#tag EndGetter
		ImageAsset As AppleImageAsset
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function imageOrientation lib UIKit selector "imageOrientation" (id as ptr) as UIImageOrientation
			  return imageOrientation (id)
			  
			End Get
		#tag EndGetter
		ImageOrientation As UIImageOrientation
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function images lib UIKit selector "images" (id as ptr) as ptr
			  return AppleArray.MakeFromPtr (images(id))
			End Get
		#tag EndGetter
		Images As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleData.MakeFromPtr (UIImagePNGRepresentation(id))
			End Get
		#tag EndGetter
		PNGData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function renderingMode lib UIKit selector "renderingMode" (id as ptr) as UIImageRenderingMode
			  return renderingMode (id)
			  
			End Get
		#tag EndGetter
		RenderingMode As UIImageRenderingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function resizingMode lib UIKit selector "resizingMode" (id as ptr) as UIImageResizingMode
			  return resizingMode (id)
			  
			End Get
		#tag EndGetter
		ResizingMode As UIImageResizingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If Target64Bit
			    Declare Function scale lib UIKit selector "scale" (id as ptr) as double
			  #elseif Target32Bit
			    Declare Function scale lib UIKit selector "scale" (id as ptr) as single
			  #endif
			  Return scale (id)
			  
			End Get
		#tag EndGetter
		Scale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getSize
			End Get
		#tag EndGetter
		Size As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function CGImage lib UIKit selector "CGImage" (id as ptr) as ptr
			  return  AppleCGImage.MakeFromCFTypeRef ( CGImage (id), false)
			End Get
		#tag EndGetter
		toCGImage As AppleCGImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function CIImage lib uikit selector "CIImage" (id as ptr) as ptr
			  return AppleCIImage.MakefromPtr (CIImage(id))
			End Get
		#tag EndGetter
		toCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return if (id = nil, nil, iOSImage.FromHandle (id))
			End Get
		#tag EndGetter
		toiOSImage As iOSImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if AppleTraitCollection.ClassAvailable then
			    Declare function traitCollection lib UIKit selector "traitCollection" (id as ptr) as ptr
			    return AppleTraitCollection.MakefromPtr (traitCollection(id))
			  end if
			End Get
		#tag EndGetter
		TraitCollection As AppleTraitCollection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Size.width
			End Get
		#tag EndGetter
		Width As Double
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
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FlipsInRightToLeftLayout"
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
			Name="ImageOrientation"
			Group="Behavior"
			Type="UIImageOrientation"
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
			Name="RenderingMode"
			Group="Behavior"
			Type="UIImageRenderingMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ResizingMode"
			Group="Behavior"
			Type="UIImageResizingMode"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scale"
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
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
