Xojo-iOSLib
===========

A library extending Xojo's iOS features by adding extension modules and classes.
While the classes are not fully independent, they are to a high degree, meaning you can cut this lib to a few items if your project does not need all the added classes. 
To the outside, the classes are usually communicating via Xojo native data types and methods, which should make it easy to adapt this lib to newly added Xojo features. The data type and objects conversions are included too.
Basic functionality is mostly added via modules, so you can have NSObject & UIVIew features in every Xojo control that inherits from iOSControl.
Please check the demo app for the main features and the documentation inside for the various classes and modules.

#Very important
Currently this version is not 64bit ready. I was lacking time to make the needed adjustments, hope to find time to add them soon.

* IMPORTANT *
Upon loading the project (file iosLib.xojo_project), Xojo will inform you that a few images could not be located. There are 4 images included which need to be relocated. They are used only for some demo screens and can be ignored if you only need the lib for your own projects but not the demo views.
As of today, there is no "package" function in Xojo enabling you to add external files with a relocation of the internal references. So if you want to view the demo screens, please select the four images Apfel, Apfel-chrom, Verlauf gelb and Verlauf blau that are included.
And skip the request for App Icon and launch images. There are none; the project will run once you skip them.
Sorry for this inconvenience. If you know of any better method to include external files, please let me know.

Christian informed me that it would be wise to encpasulate subclasses by giving them unqiue names. I started so with the iOSControlsEffectView classes and will rename more classes in the future.


Currently included modules:
- Conversion modules for several conversion to and from Xojo/iOS classes.
- iOSControl module: UIVIew and NSObject features for every control, including old style animations.
- iOSImageView module: Highlighted images and GIF-like animations for iOSView
- iOSTable module: adding UISCrollView features to Tables. UITableView features will be added soon.
- iOSTextField module: more features for your iOSTextfields, including images and colors
- iOTextArea module: adding UIScrollView and UITextView features to Textareas.
- iOSView module: Animated transitions for views.
- ObjectiveCRuntime FrameWork giving access to low-level iOS methods.

Currently included classes:
- iOSControlsEffectView classes for UIVisualEffectView features.
- NSIndexPath: For handling Table cells & sections.
- NSNotification & NSNotificationCenter: Catch appwide NSEvents or attach a specialized NotificationCenter to a control for easy event handling. Uses NotificationReceiverInterface (included).
- NSMethodSignature for low-level introspections
- UIImageView: Block animations for iOSImageViews.
- UITextField: An iOSTextField subclass adding TextEditBegin & TextEditEnded events
- UIVIew: Block animations & events for iOSViews.

Feel free to use, change or add more objects. Check forum.xojo.com for a lot more Xojo iOS extensions.
Other great ressources are https://github.com/Mitchboo/XojoiOSWrapper/tree/master for legacy and conversion methods (and a lot more) and https://github.com/sbeardsl/xojoGestures for an implementation of UIGestureRecognizers.
