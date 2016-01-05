#tag Class
Protected Class AppleDate
Inherits AppleObject
	#tag Method, Flags = &h0
		Function AddTimeInterval(seconds as Double) As AppleDate
		  return new AppleDate (dateByAddingTimeInterval(id, seconds))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AttachNotificationCenter()
		  dim ChangeBlock as new AppleBlock (addressof TimeChangeBlock)
		  call AppleNotificationCenter.DefaultCenter.addObserverForName (NSSystemClockDidChangeNotification, id, AppleOperationQueue.MainQueue, ChangeBlock.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Compare(AnotherDate as AppleDate) As NSComparisonResult
		  return compare (id, AnotherDate.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function compare Lib FoundationLibName Selector "compare:" (id as ptr, otherDate as ptr) As NSComparisonResult
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(init(Alloc(ClassPtr)))
		  MHasOwnership = true
		  AttachNotificationCenter
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aPtr as ptr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (aPtr)
		  AttachNotificationCenter
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function dateByAddingTimeInterval Lib FoundationLibName Selector "dateByAddingTimeInterval:" (id as ptr, Seconds as double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function DateInSecondsFrom1970(SecondsFrom1970 as Double) As appleDate
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim d as new AppleDate(dateWithTimeIntervalSince1970(ClassPtr, SecondsFrom1970))
		  d.RetainClassObject
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DateInSecondsFrom2001(SecondsFrom2001 as Double) As appleDate
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim d as new AppleDate(dateWithTimeIntervalSinceReferenceDate(ClassPtr, SecondsFrom2001))
		  d.RetainClassObject
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DateInSecondsFromNow(seconds as double) As AppleDate
		  dim d as new AppleDate (initWithTimeIntervalSinceNow(alloc(classptr), seconds))
		  d.MHasOwnership = true
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DateInSecondsFromReferenceDate(seconds as double, ReferenceDate as appledate) As AppleDate
		  dim d as new AppleDate (initWithTimeIntervalsinceDate(alloc(classptr), seconds, ReferenceDate.id))
		  d.MHasOwnership = true
		  return d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function dateWithTimeIntervalSince1970 Lib FoundationLibName Selector "dateWithTimeIntervalSince1970:" (id as ptr, seconds as double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function dateWithTimeIntervalSinceReferenceDate Lib FoundationLibName Selector "dateWithTimeIntervalSinceReferenceDate:" (id as ptr, seconds as double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function descriptionWithLocale Lib FoundationLibName Selector "descriptionWithLocale:" (id as ptr, locale as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  if MHAsownership then AppleNotificationCenter.DefaultCenter.removeObserver (self)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function distantFuture Lib FoundationLibName Selector "distantFuture" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function DistantFutureDate() As appleDate
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim d as new AppleDate(distantFuture(ClassPtr))
		  d.RetainClassObject
		  return d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function distantPast Lib FoundationLibName Selector "distantPast" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function DistantPastDate() As appleDate
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim d as new AppleDate(distantPast(ClassPtr))
		  d.RetainClassObject
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EarlierDate(AnotherDate as Appledate) As AppleDate
		  return new appledate (earlierDate(id, AnotherDate.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function earlierDate Lib FoundationLibName Selector "earlierDate:" (id as ptr, otherDate as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Equals(anotherDate as Appledate) As Boolean
		  return isEqualToDate (id, anotherDate.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithTimeIntervalSinceDate Lib FoundationLibName Selector "initWithTimeInterval:sinceDate:" (id as ptr, seconds as double, sinceDate as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithTimeIntervalSinceNow Lib FoundationLibName Selector "initWithTimeIntervalSinceNow:" (id as ptr, seconds as double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function isEqualToDate Lib FoundationLibName Selector "isEqualToDate:" (id as ptr, otherDate as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function LaterDate(AnotherDate as Appledate) As AppleDate
		  return new appledate (laterDate(id, AnotherDate.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function laterDate Lib FoundationLibName Selector "laterDate:" (id as ptr, otherDate as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleDate
		  return if (aptr = nil, nil, new appledate(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TimeChangeBlock(notification as ptr)
		  if me <> nil then RaiseEvent SystemClockChanged
		  #pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TimeInterval(AnotherDate as AppleDate) As Double
		  return timeIntervalSinceDate (id, AnotherDate.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function timeIntervalSince1970 Lib FoundationLibName Selector "timeIntervalSince1970" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function timeIntervalSinceDate Lib FoundationLibName Selector "timeIntervalSinceDate:" (id as ptr, otherDate as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function timeIntervalSinceNow Lib FoundationLibName Selector "timeIntervalSinceNow" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function timeIntervalSinceReferenceDate Lib FoundationLibName Selector "timeIntervalSinceReferenceDate" (id as ptr) As Double
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function toCoreDate() As Xojo.core.date
		  return new xojo.Core.Date (SecondsSince1970, xojo.core.TimeZone.Current)
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SystemClockChanged()
	#tag EndHook


	#tag Note, Name = Status Completed
		
		Could be anhanced with locale (nslocale still missing)
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSDate")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return descriptionWithLocale (id, nil)
			End Get
		#tag EndGetter
		LocalizedDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return timeIntervalSince1970 (id)
			End Get
		#tag EndGetter
		SecondsSince1970 As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return timeIntervalSinceReferenceDate (id)
			End Get
		#tag EndGetter
		SecondsSince2001 As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return timeIntervalSinceReferenceDate (classptr)
			End Get
		#tag EndGetter
		Shared SecondsSince2001ToNow As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return timeIntervalSinceNow (id)
			End Get
		#tag EndGetter
		SecondsToNow As Double
	#tag EndComputedProperty


	#tag Constant, Name = NSSystemClockDidChangeNotification, Type = Text, Dynamic = False, Default = \"NSSystemClockDidChangeNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = NSTimeIntervalSince1970, Type = Double, Dynamic = False, Default = \"978307200.0", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
			Name="LocalizedDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecondsSince1970"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecondsSince2001"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecondsToNow"
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
	#tag EndViewBehavior
End Class
#tag EndClass
