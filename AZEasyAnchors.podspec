#
# Be sure to run `pod lib lint AZEasyAnchors.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AZEasyAnchors'
  s.version          = '0.2.0'
  s.summary          = 'This library provides extensions to create pain-free constraints using layout anchors.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This library provides extensions to create pain-free constraints using layout anchors. It has UIView methods to position a view, give it width and height based on a constant or relative to the other view and center it in it's parent view.
                       DESC

  s.homepage         = 'https://github.com/andzuz/AZEasyAnchors'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'andzuz' => 'andrz.zuzak@gmail.com' }
  s.source           = { :git => 'https://github.com/andzuz/AZEasyAnchors.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Classes/**/*'
  
  # s.resource_bundles = {
  #   'AZEasyAnchors' => ['AZEasyAnchors/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
