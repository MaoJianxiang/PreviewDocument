#
# Be sure to run `pod lib lint PreviewDocument.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PreviewDocument'
  s.version          = '2.1'
  s.summary          = 'This is a document preview encapsulation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a preview for various file encapsulation.
                       DESC

  s.homepage         = 'https://github.com/MaoJianxiang/PreviewDocument'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MaoJianxiang' => '15208105440@163.com' }
  s.source           = { :git => 'https://github.com/MaoJianxiang/PreviewDocument.git', :tag => 2.1 }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'PreviewDocument/Classes/*'
  
  # s.resource_bundles = {
  #   'PreviewDocument' => ['PreviewDocument/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/PreviewDocument.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
