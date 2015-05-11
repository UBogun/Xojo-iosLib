Xojo-iOSLib (v2)
===========

A library extending Xojo's iOS features by adding extension modules and classes.
This is a restart of the iOSLib project, now 64bit compatible and started from scratch. 
iOSLib tries to implement declared features completely transparent to Xojo, which means you can use many of the extended features by just copying the lib to your project and using the extension modules, only handling Xojo classes.
If you want to dig deeper into iOS, you can always address the API features on a class level and use all the bells and whistles.
You are very welcome to send additions, declares or more convenience methods that create a native Xojo-like feeling for the declare routines.

You will find descriptions and hints on the https://github.com/UBogun/Xojo-iosLib/wiki/Home/

There's also a SpriteKit addition to iOSLib: https://github.com/UBogun/Xojo-iOSLibWithSpriteKit

Feel free to use, change or add more objects. Check forum.xojo.com for a lot more Xojo iOS extensions.
Other great ressources are https://github.com/Mitchboo/XojoiOSWrapper/tree/master for legacy and conversion methods (and a lot more) and https://github.com/sbeardsl/xojoGestures for an implementation of UIGestureRecognizers and of course Jason King's iOSKit library which adds a lot of new controls: https://github.com/kingj5/iOSKit. 
A forum thread with announcements of new declares is here: https://forum.xojo.com/20157-ios-declares

##Important announcement
I hope you won't hit me, but please don't get too used to the names of iOSLib. It occured to me that with 64bit Desktop ante portas and iOS and OS X sharing a lot of frameworks and classes (and not to forget Xojo being a xplatform IDE), it would be a nice feature if you would be able to say, copy your iOS SpriteKit game to a OS X desktop project, make only a handful of adjustments and have it running on OS X too.   
So currently I am in the process of unifying my iOS and (still private) OS X library to have them both available after Xojo 2015r3 is released. Of course, names like "iOSLibColor" wouldn't be adequate for a OS X project. But you should later be able to convert existing projects by replacing "iOSLib" by something like "Apple" …

