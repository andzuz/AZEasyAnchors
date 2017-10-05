# AZEasyAnchors

[![CI Status](http://img.shields.io/travis/andzuz/AZEasyAnchors.svg?style=flat)](https://travis-ci.org/andzuz/AZEasyAnchors)
[![Version](https://img.shields.io/cocoapods/v/AZEasyAnchors.svg?style=flat)](http://cocoapods.org/pods/AZEasyAnchors)
[![License](https://img.shields.io/cocoapods/l/AZEasyAnchors.svg?style=flat)](http://cocoapods.org/pods/AZEasyAnchors)
[![Platform](https://img.shields.io/cocoapods/p/AZEasyAnchors.svg?style=flat)](http://cocoapods.org/pods/AZEasyAnchors)

## Requirements

## Installation

AZEasyAnchors is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AZEasyAnchors'
```

## Author

Andrzej Zuzak, andrz.zuzak@gmail.com

## Usage 

### Quick start

Firstly, we want to make ```childView``` fill it's ```parentView```:

```swift
parentView.addSubview(childView)
childView.fillView(view: parentView)
```

Then, we want our ```childView``` to be 20pt from ```parentView``` top, 30pt from it's right, 0pt from it's left and for it to have height of 300:

```swift
parentView.addSubview(childView)
childView.position(top: parentView.topAnchor, topConstant: 20,
                   trailing: parentView.trailingAnchor, trailingConstant: 30,
                   leading: parentView.leadingAnchor)
childView.size(heightConstant: 300)
```

Next, we want to animate our constraints. We do it in a very simple way:

```swift
parentView.addSubview(childView)
let constraints = childView.position(top: parentView.topAnchor, topConstant: 20)
constraints[.top]?.constant += 10

UIView.animateWithDuration(0.5) {
    self.view.layoutIfNeeded()
}
```

## License

AZEasyAnchors is available under the MIT license. See the LICENSE file for more info.
