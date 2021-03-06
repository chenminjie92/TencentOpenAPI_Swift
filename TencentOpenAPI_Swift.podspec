#
# Be sure to run `pod lib lint TencentOpenAPI_Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'TencentOpenAPI_Swift'
  spec.version          = '3.5.11'
  spec.summary          = 'qqsdk'

  spec.description      = <<-DESC
                            qqsdk
                          DESC

  spec.homepage         = 'https://github.com/chenminjie92/TencentOpenAPI_Swift'
  spec.license          = { :type => 'MIT', :text => <<-LICENSE
                              Copyright 2019
                              LICENSE
                            }
  spec.author           = { 'chenminjie92' => 'chenminjie92@126.com' }
  spec.source           = { :git => 'https://github.com/chenminjie92/TencentOpenAPI_Swift.git', :tag => "#{spec.version}" }
  spec.platform          = :ios, "10.0"
  spec.static_framework  = true
  
  spec.public_header_files = 'TencentOpenAPI_Swift/Classes/**/*.h'
  #'TencentOpenAPI_Swift/Classes/TencentOpenAPI.framework/Headers/TencentOAuth.h', 'TencentOpenAPI_Swift/Classes/TencentOpenAPI.framework/Headers/QQApiInterface.h'
  spec.source_files      = 'TencentOpenAPI_Swift/Classes/**/*'

  spec.frameworks            = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  spec.libraries             = 'iconv', 'sqlite3', 'stdc++', 'z'

  spec.vendored_frameworks   = 'TencentOpenAPI_Swift/Classes/TencentOpenAPI.framework'
  spec.requires_arc          = true
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
end
