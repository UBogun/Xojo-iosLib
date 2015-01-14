#tag Module
Protected Module iOSTextFieldExtension
	#tag Method, Flags = &h0
		Function AllowsStyledText(extends t as iOSTextField) As Boolean
		  return getallowsEditingTextAttributes (t.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AllowsStyledText(extends t as iOSTextField, assigns value as boolean) As Boolean
		  setallowsEditingTextAttributes t.Handle, value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AutoReduceFontSize(extends t as iOSTextField) As Boolean
		  return getadjustsFontSizeToFitWidth (t.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AutoReduceFontSize(extends t as iOSTextField, assigns value as boolean)
		  setadjustsFontSizeToFitWidth t.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundImage(extends t as iostextfield) As iOSImage
		  return iOSImageExtension.fromPtr (getBackground (t.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundImage(extends t as iostextfield, assigns value as iosimage)
		  setBackground t.Handle, value.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BorderStyle(extends t as iOSTextField) As BorderStyles
		  return getborderStyle (t.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BorderStyle(extends t as iOSTextField, assigns value as BorderStyles)
		  setborderStyle t.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearsOnEditBegin(extends t as iOSTextField) As Boolean
		  return getclearsOnBeginEditing (t.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearsOnEditBegin(extends t as iOSTextField, assigns value as boolean)
		  setclearsOnBeginEditing t.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClearsOnInsertion(extends t as iOSTextField) As Boolean
		  return getclearsOnInsertion (t.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearsOnInsertion(extends t as iOSTextField, assigns value as boolean)
		  setclearsOnInsertion t.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisabledBackgroundImage(extends t as iostextfield) As iOSImage
		  return iOSImageExtension.fromPtr (getDisabledBackground (t.Handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisabledBackgroundImage(extends t as iostextfield, assigns value as iosimage)
		  setdisabledBackground t.Handle, value.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getadjustsFontSizeToFitWidth(id as ptr) As boolean
		  Declare Function adjustsFontSizeToFitWidth lib UIKit selector "adjustsFontSizeToFitWidth" (id as ptr) as boolean
		  return adjustsFontSizeToFitWidth (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getallowsEditingTextAttributes(id as ptr) As boolean
		  Declare Function allowsEditingTextAttributes lib UIKit selector "allowsEditingTextAttributes" (id as ptr) as boolean
		  return allowsEditingTextAttributes (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getBackground(id as ptr) As ptr
		  Declare function background lib UIKit selector "background" (id as ptr) as ptr
		  return background ( id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getborderStyle(id as ptr) As Borderstyles
		  declare Function borderStyle lib UIKit selector "borderStyle" (id as ptr) as BorderStyles
		  return borderStyle (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getclearButtonMode(id as ptr) As ViewMode
		  // Selects when the Clear Button is displayed
		  
		  Declare Function clearButtonMode lib UIKit selector "clearButtonMode" (id as ptr) as ViewMode
		  return clearButtonMode (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getclearsOnBeginEditing(id as ptr) As boolean
		  // True: The textfield is cleared when the user enters text
		  
		  Declare Function clearsOnBeginEditing lib UIKit selector "clearsOnBeginEditing" (id as ptr) as boolean
		  return clearsOnBeginEditing (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getclearsOnInsertion(id as ptr) As boolean
		  // True: The textfield is cleared when the user enters text
		  
		  Declare Function clearsOnInsertion lib UIKit selector "clearsOnInsertion" (id as ptr) as boolean
		  return clearsOnInsertion (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getDisabledBackground(id as ptr) As ptr
		  Declare function disabledBackground lib UIKit selector "disabledBackground" (id as ptr) as ptr
		  return disabledBackground ( id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getIsEditing(id as ptr) As boolean
		  // True while the user edits the textfield
		  
		  Declare Function isEditing lib UIKit selector "isEditing" (id as ptr) as boolean
		  return isEditing (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getleftView(id as ptr) As Ptr
		  Declare Function leftView lib UIKit selector "leftView" (id as ptr) as Ptr
		  return leftView (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getleftViewMode(id as ptr) As ViewMode
		  Declare Function leftViewMode lib UIKit selector "leftViewMode" (id as ptr) as ViewMode
		  return leftViewMode (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getleftViewRect(id as ptr, controlbounds as cgrect) As CGRect
		  declare function leftViewRectForBounds lib UIKit selector "leftViewRectForBounds:" (id as ptr, bounds as cgrect) as cgrect
		  return leftViewRectForBounds (id, controlbounds)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getminimumFontSize(id as ptr) As double
		  Declare Function minimumFontSize lib UIKit selector "minimumFontSize" (id as ptr) as Double
		  return minimumFontSize (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getrightView(id as ptr) As Ptr
		  Declare Function rightView lib UIKit selector "rightView" (id as ptr) as Ptr
		  return rightView (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getrightViewMode(id as ptr) As ViewMode
		  Declare Function rightViewMode lib UIKit selector "rightViewMode" (id as ptr) as ViewMode
		  return rightViewMode (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getrightViewRect(id as ptr, controlbounds as cgrect) As CGRect
		  declare function rightViewRectForBounds lib UIKit selector "rightViewRectForBounds:" (id as ptr, bounds as cgrect) as cgrect
		  return rightViewRectForBounds (id, controlbounds)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsEditing(extends t as iOSTextField) As Boolean
		  return getIsEditing (t.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftIcon(extends t as iOSTextField) As iOSImage
		  return getleftView (t.Handle).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftIcon(extends t as iOSTextField, assigns value as iosimage)
		  dim newview as  ptr = iOSImageViewExtension.fromImage (value)
		  t.lefticon = newview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LeftIcon(extends t as iOSTextField, assigns value as ptr)
		  setleftView t.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftViewRect(extends t as iOSTextField) As cgrect
		  return getleftViewRect (t.handle, iOSControlExtension.getBounds (t.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MinimumFontSize(extends t as iOSTextField) As Double
		  return getminimumFontSize (t.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MinimumFontSize(extends t as iOSTextField, assigns value as double)
		  setminimumFontSize t.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightIcon(extends t as iOSTextField) As iOSImage
		  return getrightView (t.Handle).toiosimage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RightIcon(extends t as iOSTextField, assigns value as iosimage)
		  t.RightIcon = iOSImageViewExtension.fromImage (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RightIcon(extends t as iOSTextField, assigns value as ptr)
		  setrightView t.Handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightViewRect(extends t as iOSTextField) As cgrect
		  return getrightViewRect (t.handle, iOSControlExtension.getBounds (t.handle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setadjustsFontSizeToFitWidth(id as ptr, value as boolean)
		  Declare Sub setAdjustsFontSizeToFitWidth lib UIKit selector "setAdjustsFontSizeToFitWidth:" (id as ptr, value as boolean)
		  setAdjustsFontSizeToFitWidth id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setallowsEditingTextAttributes(id as ptr, value as boolean)
		  declare Sub setAllowsEditingTextAttributes lib UIKit selector "setAllowsEditingTextAttributes:" (id as ptr, value as boolean)
		  setAllowsEditingTextAttributes id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBackground(id as ptr, value as ptr)
		  Declare sub setBackground lib UIKit selector "setBackground:" (id as ptr, value as ptr)
		  setBackground id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setborderStyle(id as ptr, value as borderstyles)
		  declare Sub setBorderStyle lib UIKit selector "setBorderStyle:" (id as ptr, style as BorderStyles)
		  setBorderStyle id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setclearButtonMode(id as ptr, value as ViewMode)
		  // Selects when the Clear Button is displayed
		  
		  Declare Sub setClearButtonMode lib UIKit selector "setClearButtonMode:" (id as ptr, value as ViewMode)
		  setClearButtonMode id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setclearsOnBeginEditing(id as ptr, value as boolean)
		  declare Sub setClearsOnBeginEditing lib UIKit selector "setClearsOnBeginEditing:" (id as ptr, value as boolean)
		  setClearsOnBeginEditing id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setclearsOnInsertion(id as ptr, value as boolean)
		  declare Sub setclearsOnInsertion lib UIKit selector "setclearsOnInsertion:" (id as ptr, value as boolean)
		  setclearsOnInsertion id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setdisabledBackground(id as ptr, value as ptr)
		  Declare sub setDisabledBackground lib UIKit selector "setDisabledBackground:" (id as ptr, value as ptr)
		  setDisabledBackground id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setleftView(id as ptr, value as ptr)
		  Declare Sub setLeftView lib UIKit selector "setLeftView:" (id as ptr, value as Ptr)
		  setLeftView id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setLeftViewMode(id as ptr, value as ViewMode)
		  declare Sub setLeftViewMode lib UIKit selector "setLeftViewMode:" (id as ptr, value as iostextfieldextension.viewmode)
		  setLeftViewMode id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setminimumFontSize(id as ptr, value as double)
		  #if Target64Bit
		    Declare sub setMinimumFontSize lib UIKit selector "setMinimumFontSize:" (id as ptr, value as Double)
		  #elseif target32bit
		    Declare sub setMinimumFontSize lib UIKit selector "setMinimumFontSize:" (id as ptr, value as single)
		  #endif
		  setMinimumFontSize id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setrightView(id as ptr, value as ptr)
		  Declare Sub setrightView lib UIKit selector "setRightView:" (id as ptr, value as Ptr)
		  setrightView id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setRightViewMode(id as ptr, value as ViewMode)
		  declare Sub setRightViewMode lib UIKit selector "setRightViewMode:" (id as ptr, value as iostextfieldextension.viewmode)
		  setRightViewMode id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowClearButton(extends t as iOSTextField) As ViewMode
		  return getclearButtonMode (t.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowClearButton(extends t as iOSTextField, assigns value as ViewMode)
		  setclearButtonMode t.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowLeftIcon(extends t as iOSTextField) As ViewMode
		  return getleftViewMode (t.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowLeftIcon(extends t as iOSTextField, assigns value as viewmode)
		  setleftViewMode t.handle, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowRightIcon(extends t as iOSTextField) As ViewMode
		  return getrightViewMode (t.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowRightIcon(extends t as iOSTextField, assigns value as viewmode)
		  setRightViewMode t.handle, value
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Me
		This is iOSTextField Extension, an extension for Xojo iOS adding iostextfield features to an iOSTextfield
		
		You will find that the properties-as-methods refer to separate protected methods. 
		While this may seem complicated, you can always use them in your own classes in case you need to call them on a different object than id/handle.
		Hopefully this will help saving you from recreating the same lines of code again and again.
		
		This is part of the iOSControls library for easy-to-use Xojo iOS,extensions, hopefully to find soon on xojoblog.me.
		
		
		
		Disclaimer
		This software is delivered AS IS. You are free to use it in your project, modify it according to your needs and you are very welcome to share your contributions too.
		I can not guarantee for data loss, computer problems and all that stuff that may arise from using the classes and methods, but I do guarantee that I use them myself
		in my projects and have not experienced such. Therefore the usual legal warning: Use at your own risk!
		
		
		Copyright
		Written 2014 by Ulrich Bogun, xojoblog.me. This is a private project not connected to my job as german Xojo evangelist.
		This all is only possible because of the tremendous help of some extraordinary gurus sharing their wisdom on forum.xojo.com and, of course, the guys behind MacOSLib.
		Therefore a copyright would be very stange and wrong. Again: iOSCOntrols are free to use and modify.
		
		However, you surely can imagine this took me (and will probably take) a lot of time, and I want to continue refining the classes and adding more to them.
		If you use the classes and find them useful, feel absolutely free to send me a "keep it up"-contribution via PayPal to bogun@satzservice.de.
		The amount is completely up to you and every sum will be appreciated regardless of its height.
		If you cannot afford a few bucks or don't want to: Hey, that's still ok!
		Maybe you like to send me a line abot their use or add a "Uses iOSControls …" line to your splashscreen.
		And if not you’re still not a bad guy. Enjoy, share, contribute.
		
		
		--------------------------------------------------------------------------------------------------------------------------------------------------------------
		
		
		* USE *
		
		Drop the module somewhere into your project folder. That's all.
		
		
		
		* Properties *
		
		– AllowsStyledText (Boolean) = True if the user may change the text tyle attributes.
		
		– AutoReduceFontSize (Boolean) = If true and the Textfield is too small to fit it, the text size is reduced until MinimumTextSize is reached.
		
		– BackgroundImage (iOSImage) = The image that represents the background appearance of the text field when it is enabled.
		   When set, the image referred to by this property replaces the standard appearance controlled by the borderStyle property. 
		
		– BorderStyle (Borderstyle): Lets you chose between None, Line, Bezel and RoundedRect for the border appearance.
		
		– ClearsOnEditBegin (Boolean) = If true, deletes the textfield's text once the user clicks into it.
		
		– ClearsOnInsertion (Boolean) = If true, inserting text replaces the current text.
		
		– DisabledBackgroundImage (iOSImage) = The image that represents the background appearance of the text field when it is disabled.
		
		– IsEditing (Boolean, read-only): True when the user is currently editing the text.
		
		– LeftViewRect (CGRect, read-only):The CGRect for the left control's icon.
		
		– MinimumFontSize (Double): The minimum text size for AutoReduceFontSize = True
		
		– RightViewRect (CGRect, read-only):The CGRect for the right control's icon
		
		– ShowClearButton (ViewMode): Defines when the clearbutton appears in the text field.
		
		– ShowLeftIcon (ViewMode): Defines when the left overlay view appears in the text field.
		
		– ShowRightIcon (ViewMode): Defines when the right overlay view appears in the text field.
		
		
		* TO BE DONE *
		– Nothing, this is all a textfield includes
		
	#tag EndNote


	#tag Enum, Name = BorderStyles, Type = Integer, Flags = &h1
		None
		  Line
		  Bezel
		RoundedRect
	#tag EndEnum

	#tag Enum, Name = ViewMode, Type = Integer, Flags = &h1
		Never
		  WhileEditing
		  UnlessEditing
		Always
	#tag EndEnum


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
End Module
#tag EndModule
