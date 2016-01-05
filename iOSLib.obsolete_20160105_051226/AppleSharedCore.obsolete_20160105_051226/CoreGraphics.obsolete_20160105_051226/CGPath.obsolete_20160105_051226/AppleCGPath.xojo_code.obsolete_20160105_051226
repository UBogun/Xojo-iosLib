#tag Class
Protected Class AppleCGPath
Inherits AppleCFObject
	#tag Method, Flags = &h0
		Sub Apply(UserData as Ptr, MethodHandler as Ptr)
		  CGPathApply mcftyperef, UserData, MethodHandler
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathApply Lib CoreGraphicsLibName (CFTypeRef as Ptr, info as ptr, Handler as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGPathContainsPoint(APathRef as Ptr, aTransform as CGAffineTransform, aPoint as FoundationFramework.NSPoint, EvenOddFill as Boolean) As Boolean
		  #if Target64Bit
		    Declare Function CGPathContainsPoint lib CoreGraphicsLibName (Id as Ptr, aTransform as CGAffineTransform,  aPoint as FoundationFramework.NSPoint, EvenOddFill as Boolean) as boolean
		    return CGPathContainsPoint (APathRef, aTransform, aPoint, EvenOddFill)
		  #elseif Target32Bit
		    Declare Function CGPathContainsPoint lib CoreGraphicsLibName (Id as Ptr, aTransform as CGAffineTransform32Bit,  aPoint as FoundationFramework.NSPoint32Bit, EvenOddFill as Boolean) as boolean
		    return CGPathContainsPoint (APathRef, aTransform.toCGAffineTransform32Bit, aPoint.toNSPoint32, EvenOddFill)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateCopy Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGPathCreateCopyByTransformingPath(APathRef as Ptr, aTransform as CGAffineTransform) As Ptr
		  #if Target64Bit
		    Declare Function CGPathCreateCopyByTransformingPath lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform) as ptr
		    return CGPathCreateCopyByTransformingPath (apathref, aTransform)
		  #elseif Target32Bit
		    Declare Function CGPathCreateCopyByTransformingPath lib CoreGraphicsLibName (id as ptr, aTransform as CGAffineTransform32Bit) as ptr
		    return CGPathCreateCopyByTransformingPath (APathRef, aTransform.toCGAffineTransform32Bit)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathEqualToPath Lib CoreGraphicsLibName (CFTypeRef as Ptr, anotherTypeRef as Ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathIsEmpty Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CGPathIsRect(APathRef as Ptr, byref aRect as FoundationFramework.NSRect) As boolean
		  #if Target64Bit
		    Declare function CGPathIsRect lib CoreGraphicsLibName (id as ptr, aRect  as FoundationFramework.NSRect) as boolean
		    return CGPathIsRect (APathRef, aRect)
		  #elseif Target32Bit
		    Declare function CGPathIsRect lib CoreGraphicsLibName (id as ptr, aRect as FoundationFramework.NSRect32Bit) as boolean
		    dim myrect as FoundationFramework.NSRect32Bit = aRect.toNSRect32
		    dim result as boolean= CGPathIsRect (APathRef, myrect)
		    arect = myrect.toNSRect
		    return result
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathRelease Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathRetain Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(aPoint as FoundationFramework.NSPoint, evenoddfill as boolean = true) As Boolean
		  return ContainsPoint (aPoint,  evenoddfill, TransformExtension.CGAffineTransformIdentity)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(aPoint as FoundationFramework.NSPoint, evenoddfill as boolean = true, aTransform as CGAffineTransform) As Boolean
		  return CGPathContainsPoint (mCFTypeRef, aTransform, aPoint, evenoddfill)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As AppleCGPath
		  dim result as new AppleCGPath (CGPathCreateCopy (CFTypeRef), true)
		  Result.Mhasownership = true
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy(aTransform as CGAffineTransform) As AppleCGPath
		  return new AppleCGPath (CGPathCreateCopyByTransformingPath (mCFTypeRef, aTransform), true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherPath as AppleCGPath) As boolean
		  return CGPathEqualToPath (mCFTypeRef, anotherPath.CFTypeRef)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsRectangle(ByRef aRect as FoundationFramework.NSRect) As Boolean
		  return CGPathIsRect (mcfTypeRef, aRect)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromCFTypeRef(aCFTypeRef as ptr) As AppleCGPath
		  return if (aCFTypeRef = nil, nil, new AppleCGPath(aCFTypeRef))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MutableCopy() As AppleCGMutablePath
		  return new AppleCGMutablePath(self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PathApplyTemplate(Info as Ptr, PathElement as CGPathElement)
		  // This is a dummy template for the Apply methods.
		  // With info, you can forward the pointer to some user data you want the method to receive
		  // The PathElement gives you information about the pathelement the method is examining currently.
		  // ElementType tells you about its type and Points is an AppleArray of the points the PathElement contains
		  
		  
		  // Don't forget to remove these pragmas:
		  #pragma Unused info
		  #pragma Unused PathElement
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CGPathRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  mCFTypeRef = CGPathRetain (mCFTypeRef)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function CGPathGetBoundingBox lib CoreGraphicsLibName (id as ptr)  as FoundationFramework.NSRect
			    return CGPathGetBoundingBox (mCFTypeRef)
			  #elseif Target32Bit
			    Declare Function CGPathGetBoundingBox lib CoreGraphicsLibName (id as ptr) as FoundationFramework.NSRect32Bit
			    return CGPathGetBoundingBox(mCFTypeRef).toNSRect
			  #endif
			  
			End Get
		#tag EndGetter
		BoundingBox As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function CGPathGetCurrentPoint lib CoreGraphicsLibName (id as ptr) as FoundationFramework.NSPoint
			    return CGPathGetCurrentPoint (mCFTypeRef)
			  #elseif Target32Bit
			    Declare Function CGPathGetCurrentPoint lib CoreGraphicsLibName (id as ptr) as FoundationFramework.NSPoint32Bit
			    return CGPathGetCurrentPoint(mCFTypeRef).toNSPoint
			  #endif
			  
			End Get
		#tag EndGetter
		CurrentPoint As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGPathIsEmpty (mcftypeRef)
			  
			End Get
		#tag EndGetter
		isEmpty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim myRect  as FoundationFramework.NSRect
			  return IsRectangle (myrect)
			End Get
		#tag EndGetter
		isRect As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare Function CGPathGetPathBoundingBox lib CoreGraphicsLibName (id as ptr)  as FoundationFramework.NSRect
			    return CGPathGetPathBoundingBox (mCFTypeRef)
			  #elseif Target32Bit
			    Declare Function CGPathGetPathBoundingBox lib CoreGraphicsLibName (id as ptr) as FoundationFramework.NSRect32Bit
			    return CGPathGetPathBoundingBox(mCFTypeRef).toNSRect
			  #endif
			  
			End Get
		#tag EndGetter
		PathBoundingBox As FoundationFramework.NSRect
	#tag EndComputedProperty


	#tag Structure, Name = CGPathElement, Flags = &h0
		ElementType As CGPathElementType
		Points As Ptr
	#tag EndStructure


	#tag Enum, Name = CGPathElementType, Type = UInt32, Flags = &h0
		MoveToPoint
		  AddLineToPoint
		  AddQuadCurveToPoint
		  AddCurveToPoint
		CloseSubpath
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="CFTypeDescription"
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
			Name="isEmpty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isRect"
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
			Type="Integer"
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
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
