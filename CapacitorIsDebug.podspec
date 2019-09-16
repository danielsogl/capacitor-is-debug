
  Pod::Spec.new do |s|
    s.name = 'CapacitorIsDebug'
    s.version = '0.0.1'
    s.summary = 'A Capacitor plugin to detect if the app is running in debug mode or not'
    s.license = 'MIT'
    s.homepage = 'https://github.com/danielsogl/capacitor-is-debug'
    s.author = 'Daniel Sogl'
    s.source = { :git => 'https://github.com/danielsogl/capacitor-is-debug', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end