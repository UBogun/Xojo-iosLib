Xojo-iOSLib Unified
===========
#Please note you have to copy the iOSLib folder from the main project into the demo projects. Else they will not run!  

A library extending Xojo's iOS features by adding extension modules and classes.
This is a restart of the iOSLib project, now 64bit compatible and started from scratch. 
iOSLib tries to implement declared features completely transparent to Xojo, which means you can use many of the extended features by just copying the lib to your project and using the extension modules, only handling Xojo classes.
If you want to dig deeper into iOS, you can always address the API features on a class level and use all the bells and whistles.
You are very welcome to send additions, declares or more convenience methods that create a native Xojo-like feeling for the declare routines.

#Very important – New, easier structure!
As I was having troubles too often with th project not finding its external files anymore, I have included external files now. You will most probably only have to locate images and sounds once.
**As a side effect, there is now one main project containing iOSLib and the splash screen. The demo views have moved to different separate projects in a Demo projects folder.**  


##Important – previous code will be broken!
**This is a new and (I very much hope so) final modification to the structure. As you can see, the project's name is now iOSLib Unified. I have renamed (most of all will do all) classes from iOSLib… to Apple… The reason I did so is I am working on a MacOS X library to be released after Xojo2015r3 which shares a lot of the code and which will enable you to transfer many projects without a lot of manual modifications needed.**

You will find descriptions and hints on the https://github.com/UBogun/Xojo-iosLib/wiki/Home/
**Please keep in mind classes have been renamed, so look for Apple… instead of iOSLib… names.**

SpriteKit lib is included now. You can remove the folder if you don't need it. SpriteKit documentation is available here: https://github.com/UBogun/Xojo-iOSLibWithSpriteKit

Feel free to use, change or add more objects. Check forum.xojo.com for a lot more Xojo iOS extensions.
Other great resources are https://github.com/Mitchboo/XojoiOSWrapper/tree/master for legacy and conversion methods (and a lot more) and https://github.com/sbeardsl/xojoGestures for an implementation of UIGestureRecognizers (but please note iOSLib carries an own implementation of GestureRecognizers too, though not yet documented) and of course Jason King's iOSKit library which adds a lot of new controls: https://github.com/kingj5/iOSKit. 
A forum thread with announcements of new declares is here: https://forum.xojo.com/20157-ios-declares
