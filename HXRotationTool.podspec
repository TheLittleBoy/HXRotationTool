#
# Be sure to run `pod lib lint HXRotationTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HXRotationTool'
  s.version          = '0.2.0'
  s.summary          = 'iOS 屏幕旋转工具类，兼容iOS 16，兼容Xcode 13和Xcode 14。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
iOS 屏幕旋转工具类，兼容iOS 16，兼容Xcode 13和Xcode 14。
                       DESC

  s.homepage         = 'https://github.com/TheLittleBoy/HXRotationTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TheLittleBoy' => 'wangxa@edu-edu.com.cn' }
  s.source           = { :git => 'https://github.com/TheLittleBoy/HXRotationTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'HXRotationTool/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HXRotationTool' => ['HXRotationTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
