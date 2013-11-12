Pod::Spec.new do |s|
  s.name         = "FBGlowLabel"
  s.version      = "0.0.1"
  s.summary      = "adding UILabel glowing effect"
  s.description  = <<-DESC
    This library supports glow effect on to UILabel class.
    Not only outer glow (shadow), but also inner glow.
                   DESC
  s.homepage     = "https://github.com/lyokato/FBGlowLabel"
  s.license      = 'MIT'
  s.author       = { "Lyo Kato" => "lyo.kato@gmail.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/lyokato/FBGlowLabel.git", :tag => "0.0.1" }
  s.source_files  = 'FBGlowLabel/Classes/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  # s.public_header_files = 'FBGLowLabel/Classes/*.h'
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  s.framework  = 'QuartzCore'
  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'
  s.requires_arc = true
  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  # s.dependency 'JSONKit', '~> 1.4'
end
