
# TKSwarmAlert

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)
[![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
)](http://mit-license.org)
[![CocoaPods](https://img.shields.io/cocoapods/v/TKSwarmAlert.svg)]()

Animation Tool for Alert like [Swarm](https://swarmapp.com/) app.

# ScreenShot
![Demo GIF Animation](https://raw.githubusercontent.com/entotsu/TKSwarmAlert/master/ScreenShots/minidemo.gif "Demo GIF Animation")

<!-- You can play demo at [appetize.io](https://appetize.io/app/hbj0vawpk8uw9z00838vz5he4g). -->

# Installation

``` ruby
pod 'TKSwarmAlert'
```

``` ruby
github "entotsu/TKSwarmAlert"
```


# Usage

``` swift
import TKSwarmAlert
```


## Show

``` swift
let alert = TKSwarmAlert(backgroundType: .Blur)
alert.show(yourViews)

// If you want
alert.addNextViews(yourViews2)
alert.addNextViews(yourViews3)

```

## Static Views
You can also add non-animated views to alert view.
Please use this method before "show".

``` swift
alert.addSubStaticView(yourStaticView)
```

![Demo GIF Animation](https://raw.githubusercontent.com/entotsu/TKSwarmAlert/master/ScreenShots/static.gif "Demo GIF Animation")


## Event Handler

``` swift
alert.didDissmissAllViews = {
    println("didDissmissAllViews")
}
```


# TKSWBackgroundType

## .TransparentBlack
![Demo GIF Animation](https://raw.githubusercontent.com/entotsu/TKSwarmAlert/master/ScreenShots/black.gif "Demo GIF Animation")

## .Blur
![Demo GIF Animation](https://raw.githubusercontent.com/entotsu/TKSwarmAlert/master/ScreenShots/blur.gif "Demo GIF Animation")

## .BrightBlur
![Demo GIF Animation](https://raw.githubusercontent.com/entotsu/TKSwarmAlert/master/ScreenShots/bright.gif "Demo GIF Animation")

# Kind of Blur

* branch `master` -> UIVisualEffectView
* branch `DynamicBlur` -> DynamicBlurView (beautiful but unstable)


# Popup view is just a UIView.

So, you can add original view.

![Demo GIF Animation](https://raw.githubusercontent.com/entotsu/TKSwarmAlert/master/ScreenShots/your.gif "Demo GIF Animation")
