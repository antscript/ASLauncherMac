#
# Be sure to run `pod lib lint ASLauncherMac.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASLauncherMac'
  s.version          = '4.0.0'
  s.summary          = 'Easy to Add Launch at Login for Your Mac App.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Easy to Add Launch at Login for Your Mac App...
                       DESC

  s.homepage         = 'https://github.com/antscript/ASLauncherMac'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'antscript' => 'antscript@gmail.com' }
  s.source           = { :git => 'https://github.com/antscript/ASLauncherMac.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.osx.deployment_target = '10.10'

  s.source_files = 'ASLauncherMac/Classes/*'
  
  # s.resource_bundles = {
  #   'ASLauncherMac' => ['ASLauncherMac/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
