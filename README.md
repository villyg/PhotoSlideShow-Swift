## PhotoSlideShow-Swift

The PhotoSlideShow-Swift project is a Swift port of the Apple's PhotoScroll app demoed during the 2012 WWDC event. It doesn't include the Tile logic but it has a fully functional slide-show functionality using UIPageViewController and UIScrollView.

**Updated in Swift 3**

Just like the Apple's app it includes:
- Swiping
- Zooming
- Centering
- Rotation support

The zoom and centering are preserved during rotation just like in the original app.

The ImageScrollView.swift file contains ready to reuse logic that can be included in your project and the viewDidLoad() method in SlideController.swift file shows how to wire it up.

The only other non-obvious Storyboard change is assigning a Storyboard ID to the SlideController so that it can be instantiated using it 
