Pod::Spec.new do |s|
  s.name     = 'LUFontIconControls'
  s.version  = '0.1'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'Easy way to use icon fonts to replace images in your iOS app.'
  s.homepage = 'https://github.com/rjyo/LUFontIconControls'
  s.author   = { 'Rakuraku Jyo' => 'jyo.rakuraku@gmail.com' }
  s.source   = { :git => 'https://github.com/rjyo/LUFontIconControls.git' }

  s.description = 'Easy way to use icon fonts to replace images in your iOS app. Using icon fonts in iOS will make you life easier. You can do the following to your icon:  Choose any color / Choose any size / Auto scale up for retina display'

  s.source_files = 'Classes/*.{h,m}'
  s.requires_arc = true
end
