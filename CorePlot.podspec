Pod::Spec.new do |s|
  s.name     = 'CorePlot'
  s.version  = '2.3-gh'
  s.license  = 'BSD'
  s.summary  = 'Cocoa plotting framework for macOS, iOS, and tvOS.'
  s.homepage = 'https://github.com/core-plot'
  s.social_media_url  = 'https://twitter.com/CorePlot'
  s.documentation_url = 'http://core-plot.github.io'
 
  s.authors  = { 'Drew McCormack' => 'drewmccormack@mac.com',
                 'Brad Larson'    => 'larson@sunsetlakesoftware.com',
                 'Eric Skroch'    => 'eskroch@mac.com',
                 'Barry Wark'     => 'barrywark@gmail.com' }

  s.source   = { :git => 'git@github.com:happy-health/core-plot.git', :tag => '2.3-gh'}

  s.description = 'Core Plot is a plotting framework for macOS, iOS, and tvOS. It provides 2D visualization ' \
                  'of data, and is tightly integrated with Apple technologies like Core Animation, ' \
                  'Core Data, and Cocoa Bindings.'

  s.ios.deployment_target = '11.0'
  
  s.ios.header_dir = 'ios'
  
  s.source_files = 'framework/Source/*.{h,m}', 'framework/CocoaPods/*.h'
  s.exclude_files = '**/*{TestCase,Tests}.{h,m}', '**/mainpage.h'
  s.ios.source_files = 'framework/CorePlot-CocoaTouch.h', 'framework/iPhoneOnly/*.{h,m}'
  s.private_header_files = '**/_*.h'

  s.requires_arc  = true
  s.ios.xcconfig  = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/Private/CorePlot/ios"' }
  
  s.frameworks     = 'QuartzCore'
  s.ios.frameworks = 'UIKit', 'Foundation'
end
