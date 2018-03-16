
Pod::Spec.new do |s|
          #1.
          s.name               = "LoggingFrameWork"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "Sort description of 'LoggingFrameWork' framework"
          #4.
          s.homepage        = "http://www.letsmobility.com”
          #5.
          s.license              = "MIT"
          #6.
          s.author               = “Ramesh D”
          #7.
          s.platform            = :ios, "10.0"
          #8.
          s.source              = { :git => "https://github.com/RameshChandraD/LoggingFrameWork.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "LoggingFrameWork", "LoggingFrameWork/**/*.{h,m,swift}"
    end
