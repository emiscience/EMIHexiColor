# EMIHexiColor (NSColor+EMIHexiColor)

NSColor+EMIHexiColor is a compiler-aware category for both iOS and OS X to extend UIColor or NSColor with the capability to parse hex strings (6 characters long) i.e. AABBCC. It'll work well on shared code between iOS and Mac projects without you needing to alter code to accomodate either individually.'

## Usage
Get the colors from a `UIColor`or `NSColor` from any of your favourite color pickers. And from there you:

```objc
// iOS
#import NSColor+EMIHexiColor.h
someViewYouWantToColor.backgroundColor = [AnyOSColor colorWithHexRGB:@"FF9500"];
```
```objc
// OS X
#import NSColor+EMIHexiColor.h
someViewYouWantToColor.backgroundColor = [AnyOSColor colorWithHexRGB:@"FF0000"];
```

##How It Works

`AnyOSColor` is actually a macro that is handled at compile time. depending on that you're compiling for i.e. iOS or OSX, AnyOSColor ultimately renders to UIColor ot NSColor.

##Caveats

Because this category was needed in a hurry, alot of the input string checking was skipped (i.e. the hex string checking). Feel free to update it and let me know so i can add it to the repo for others to enjoy too.

### Version
1.0.5

### Mentions
This grans bottle fo wine that kept me sane this evening

