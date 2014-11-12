Pod::Spec.new do |s|
  s.name             = 'ZLIUtils'
  s.version          = '0.0.1'
  s.summary          = 'iOS Utils library'
  s.homepage         = 'http://zhou.com'
  s.license          = 'MIT'
  s.author           = 'Zhou Li'
  s.source           = { :git => 'https://github.com/zhoulijoe/ios_utils.git', :tag => '0.0.1' }
  s.requires_arc     = true
  s.source_files     = 'ZLIUtils/**/*.{h,m}'
  s.dependency 'CocoaLumberjack'
  s.dependency 'Typhoon'
end
