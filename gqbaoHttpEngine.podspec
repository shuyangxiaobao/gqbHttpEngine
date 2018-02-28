#
# Be sure to run `pod lib lint gqbHttpEngine.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'gqbaoHttpEngine'
  s.version          = '1.0.12'
  s.summary          = 'gqbHttpEngine.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/shuyangxiaobao/gqbHttpEngine'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shuyangxiaobao' => '825065886@qq.com' }
  s.source           = { :git => 'https://github.com/shuyangxiaobao/gqbHttpEngine.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

s.source_files = 'gqbHttpEngine/gqbHttpEngine/**/*'

#,'gqbHttpEngine/Classes/httpEngine/**/*'
  
  # s.resource_bundles = {
  #   'gqbHttpEngine' => ['gqbHttpEngine/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 3.2.0'
  
  
  
     s.subspec 'CustomView' do |f|
          f.source_files = 'gqbHttpEngine/Classes/MyView.{h,m}'
     end
    
    s.subspec 'HTTP' do |f|
        f.source_files = 'gqbHttpEngine/Classes/XMLDictionary.{h,m}' , 'gqbHttpEngine/Classes/HTTPEngine.{h,m}'
    end
    
   #  /Users/geqiangbao/Github/gqbHttpEngine/gqbHttpEngine/Classes/HTTP/HTTPEngine.h
end
