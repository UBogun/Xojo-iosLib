#tag IOSView
Begin iosView View1
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      Caption         =   "Transform"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button2, 3, Button1, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 1, 1, 200, 
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "ShowRecord"
      Enabled         =   True
      Height          =   30.0
      Left            =   200
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLIbSearchBar iOSLIbSearchBar4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   iOSLIbSearchBar4, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbSearchBar4, 3, <Parent>, 3, False, +1.00, 1, 1, 101, 
      AutoLayout      =   iOSLIbSearchBar4, 8, , 0, False, +1.00, 1, 1, 75, 
      AutoLayout      =   iOSLIbSearchBar4, 7, , 0, False, +1.00, 1, 1, 320, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      BarStyle        =   "0"
      BookmarkButton  =   False
      CanBecomeFocused=   False
      CancelButton    =   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   0.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   75.0
      Hidden          =   False
      HorizontalSearchFieldBackgroundPositionAdjustment=   0.0
      HorizontalSearchTextPositionAdjustment=   0.0
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      Placeholder     =   "Placeholder"
      PreservesSuperviewLayoutMargins=   False
      Prompt          =   "Default translucent without buttons"
      Scope           =   2
      ScopeButtonTitles=   "Hello,World,How are you?"
      SearchbarStyle  =   "1"
      SearchResultsButton=   False
      searchResultsButtonSelected=   False
      SearchText      =   "Searchtext is a bit lighter"
      SelectedButton  =   0
      ShowsScopeBar   =   False
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   101
      TranslatesAutoresizingMaskIntoConstraints=   False
      Translucent     =   True
      UserInteractionEnabled=   False
      VerticalSearchFieldBackgroundPositionAdjustment=   0.0
      VerticalSearchTextPositionAdjustment=   0.0
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button3, 10, Button1, 10, False, +1.00, 1, 1, , 
      AutoLayout      =   Button3, 2, Button2, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   30.0
      Left            =   92
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLibScrollView iOSLibScrollView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AlwaysBounceHorizontal=   True
      AlwaysBounceVertical=   True
      AutoLayout      =   iOSLibScrollView1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibScrollView1, 8, , 0, False, +1.00, 1, 1, 226, 
      AutoLayout      =   iOSLibScrollView1, 10, <Parent>, 10, False, +1.00, 1, 1, 81, 
      AutoLayout      =   iOSLibScrollView1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      Bounces         =   True
      BouncesZoom     =   True
      CanBecomeFocused=   False
      CanCancelContentTouches=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   "0"
      ContentScaleFactor=   1.0
      Decelerating    =   False
      DecelerationRate=   1.0
      DelaysContentTouches=   True
      DirectionalLock =   False
      Dragging        =   False
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   226.0
      Hidden          =   False
      IndicatorStyle  =   "2"
      KeyboardDismissMode=   ""
      Left            =   0
      LockedInPosition=   False
      MaximumZoomScale=   10.0
      MinimumZoomScale=   0.2000000000000000111022
      MultipleTouchEnabled=   True
      Opaque          =   False
      PagingEnabled   =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   2
      ScrollEnabled   =   True
      ScrollsToTop    =   True
      ShowsHorizontalScrollIndicator=   True
      ShowsVerticalScrollIndicator=   True
      Tag             =   0
      TintAdjustmentMode=   "0"
      Top             =   208
      Tracking        =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
      Zoomable        =   True
      ZoomBouncing    =   False
      Zooming         =   False
      ZoomOnDoubleTap =   True
      ZoomScale       =   1.0
   End
   Begin iOSLibTextfield iOSLibTextfield1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustFontSize  =   False
      aFontType       =   "0"
      AllowTextAttributesEdit=   False
      Alpha           =   1.0
      AutocapitalizationType=   "0"
      AutocorrectionType=   "0"
      AutoLayout      =   iOSLibTextfield1, 1, iOSLibScrollView1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibTextfield1, 2, iOSLibScrollView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibTextfield1, 8, , 0, False, +1.00, 1, 1, 31, 
      AutoLayout      =   iOSLibTextfield1, 3, <Parent>, 3, False, +1.00, 1, 1, 49, 
      AutoresizesSubviews=   False
      BackgroundColor =   &cFFFFFFFF
      BorderStyle     =   "3"
      CanBecomeFocused=   False
      Caption         =   ""
      ClearButtonMode =   "1"
      ClearsContextBeforeDrawing=   False
      ClearsOnEditBegin=   False
      ClearsOnInsertion=   False
      ClipsToBounds   =   False
      ContentMode     =   ""
      ContentScaleFactor=   0.0
      Editing         =   False
      EnablesReturnKeyAutomatically=   False
      ExclusiveTouch  =   False
      Focused         =   False
      FontName        =   "Helvetica"
      FontSize        =   24.0
      HasAmbiguousLayout=   False
      Height          =   31.0
      Hidden          =   False
      KeyboardAppearance=   "0"
      KeyboardType    =   "0"
      Left            =   0
      LeftViewMode    =   ""
      LockedInPosition=   False
      MinimumFontSize =   0.0
      MultipleTouchEnabled=   False
      Opaque          =   False
      Password        =   False
      Placeholder     =   "Placeholder"
      PreservesSuperviewLayoutMargins=   False
      ReturnKeyType   =   "0"
      RightViewMode   =   ""
      Scope           =   2
      SpellCheckingType=   "0"
      Tag             =   0
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TintAdjustmentMode=   ""
      Top             =   49
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  myWindow = self.AppleView.Window
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Changeblock()
		  // Canvas1.view.Scale ( 0.4)
		  // Canvas1.view.center = FoundationFrameWork.NSMakePoint(self.Size.Width/2, self.size.Height/2)
		  // Canvas1.Rotate (180)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetBlock()
		  // canvas1.BackgroundColor = &cFF000000
		  // recorder.stop
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		myWindow As AppleWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		Recorder As iOSLibScreenRecorder
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  // // dim sb as AppleSearchBar = iOSLIbSearchBar1.id
		  // // iOSLIbSearchBar1.BookmarkButton = true
		  // // dim sb2 as new AppleSearchBar (sb.Frame)
		  // dim option as  AppleViewAnimationOption = AppleViewAnimationOption.OptionNone
		  // 
		  // AppleTextfield.Appearance.alpha = 0.3
		  // AppleTextfield.Appearance.BackgroundColor = new applecolor (&c230988aa)
		  // AppleTextfield.Appearance.BorderStyle = AppleTextfield.UITextFieldBorderStyle.None
		  // 
		  // // sb.ViewTransition (sb, sb2, appleview.UIVIewAnimationTransition.FlipFromBottom, option)
		  // recorder = new iOSLibScreenRecorder (self, 60)
		  // dim angle as double = -300
		  // dim transform as CGAffineTransform = TransformExtension.CGAffineTransformScale (canvas1.view.transform, 0.5)
		  // transform =TransformExtension.CGAffineTransformRotate (transform, angle.DegreeToRadian)
		  // // dim animationoption as AppleViewAnimationOption = AppleViewAnimationOption.OptionRepeatAndReverse
		  // // // dim curve as appleview.UIVIewAnimationCurve = AppleView.UIVIewAnimationCurve.EaseInEaseOut
		  // // // dim block as new AppleBlock (AddressOf resetBlock)
		  // // canvas1.view.springAnimateColor (new applecolor(&c5D81D300), animationoption,2)
		  // // // recorder.start
		  // dim newcolor as color = &cB3FFCA00
		  // // dim block as new AppleBlock (AddressOf tr)
		  // // self.AppleView.BackgroundColor = newcolor.toAppleColor
		  // dim newcolor1 as color  = &cD9D0EF00
		  // option.AllowUserInteraction = true
		  // dim newview as new AppleView (Canvas1.View.frame)
		  // // dim sz as FoundationFrameWork.nssize = sb.SizeThatFits
		  // // break
		  // newview.BackgroundColor = new applecolor(&cACACAC00)
		  // 
		  // dim tf as iOSLibTextfield = iOSLibTextfield1
		  // dim w as AppleWindow =  self.AppleView.Window
		  // dim val as double = w.UIWindowLevelStatusBar
		  // dim c as new applecolor (iosLibLogo)
		  // canvas1.view.BackgroundColor= c
		  // // canvas1.view.removeanimated (option)
		  // 
		  // // dim block as new appleblock (AddressOf appleview.EmptyBlock)
		  // // AppleView.PerformSystemAnimation (appleview.UISystemAnimation.Delete, me.view.SubViews, AppleView.AnimationOption(option, appleview.UIVIewAnimationCurve.EaseInEaseOut, _
		  // // appleview.UIVIewAnimationTransition.None), block)
		  // // 
		  
		  // dim d as double = AppleFont.kUIFontWeightUltraLight
		  // dim b as AppleBundle = AppleBundle.BundleWithIdentifier(UIKitPath)
		  
		  dim r as foundationframework.nsrect = iOSLibTextfield1.id.TextRect
		  dim i as iOSLibTextfield = iOSLibTextfield1
		  break
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  // Recorder.ShowRecording(self)
		  iOSLibScrollView1.FlashScrollIndicators
		  // dim b as applebundle= AppleBundle.MainBundle
		  // dim f as applearray = b.AllFrameworks
		  // for q as integer = 0 to f.Count -1
		  // dim u as AppleBundle = AppleBundle.MakeFromPtr(f.PtrAtIndex(q))
		  // if u.BundleIdentifier.IndexOf("UIKit") > -1 then
		  // break
		  // end if
		  // next
		  // break
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Action()
		  // iOSLibHTMLViewer1.ID.LoadRequest new AppleURLRequest(new appleurl(tf.caption))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSLibScrollView1
	#tag Event
		Sub Shown()
		  me.ScrollContent = iosLibLogo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
