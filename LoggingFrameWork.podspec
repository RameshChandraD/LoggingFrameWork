
Pod::Spec.new do |s|

 
  s.name         = "LoggingFrameWork"
  s.version      = "0.0.1"
  s.summary         = "Sort description of 'LoggingFrameWork' framework"


  s.homepage        = "http://www.yudiz.com"
 
  s.license      = "MIT"
  
  s.author               = "RameshChandraD"
  # Or just: s.author    = "Ramesh"
  # s.authors            = { "Ramesh" => "ramesh.doddi@letsmobility.com" }
  # s.social_media_url   = "http://twitter.com/Ramesh"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
   s.platform     = :ios, "5.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


 
  s.source              = { :git => "https://github.com/RameshChandraD/LoggingFrameWork.git", :tag => s.version }



  
   s.source_files = "Classes", "Classes/**/*.{h,m}", "mypods/Classes/**/*.{h,m}"

  end
