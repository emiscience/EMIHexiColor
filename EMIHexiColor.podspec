version = "1.0.0";

Pod::Spec.new do |s|
  s.name         = "EMIHexiColor"
  s.version      = version
  s.summary      = "A compiler-aware category for both iOS and OS X to extend UIColor or NSColor with the capability to parse hex strings."

  s.description  = <<-DESC
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

            ##How It Works

            `AnyOSColor` is actually a macro that is handled at compile time. depending on what you're compiling for i.e. iOS or OSX, AnyOSColor ultimately renders to UIColor ot NSColor.

            ##Caveats

            Because this category was needed in a hurry, alot of the input string checking was skipped (i.e. the hex string checking). Feel free to update it and let me know so i can add it to the repo for others to enjoy too.

            ### Version
            1.0.0

            ### Mentions
            This grand bottle of wine that kept me sane this evening!
            DESC
  s.homepage     = "http://www.github.com/emiscience/NSUIColor-FlatColors"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Adrian" => "as@emiscience.com" }
  s.social_media_url   = "http://twitter.com/emiscience"
  s.platform     = :ios
  s.platform     = :osx
  s.requires_arc = true
  s.source       = { :git => "https://github.com/emiscience/NSUIColor-FlatColors.git", :tag => "#{version}" }
  s.source_files = "NSUIColor+FlatColors"
end
