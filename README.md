# GMPush
An Elegant Wrapper for PFPush

GMPush makes it easier than ever to send PFPush notifications.

## Why GMPush?
I've noticed sending Push Notifications through Parse's PFPush is incessantly tedious - and repetitive if you're sending multiple push notificiations.  GMPush resolves these inconsistencies by making Push notifications easier than ever.

## Installation
GMPush requires only that Parse's SDK is installed (with the required frameworks and parse libraries).  Other than that, simply drag and drop GMPush.h and GMPush.m into your project files and youre well on your way.  

`#import "GMPush.h"` will do the trick.

## Usage
GMPush is incredible easy to use.  Take the most basic example of sending a push Notification:

`GMPush *push = [[GMPush alloc]init];`
`[push handlePushWithTitle:[NSString stringWithFormat:@"Hello, World"]];`
    
However, GMPush supports built-in UIAlertViews and more.  Simply browse the source file (.h) for more information.

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b newFeature`
3. Commit your changes: `git commit -am 'Detail your commit'`
4. Push to the branch: `git push origin newFeature`
5. Submit a pull request
6. You're done!



