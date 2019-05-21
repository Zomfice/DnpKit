
Pod::Spec.new do |spec|

  spec.name         = "DnpKit"
  spec.version      = "1.0.8"
  spec.summary      = "A Cocoa chain extension,that can help you create your UI fastly"


  spec.description  = <<-DESC
  		Fast Chain of Cocoa For UI , you can help you create your UI fastly
                   DESC

  spec.platform     = :ios, "9.0" 

  spec.swift_version  = '5.0'

  spec.homepage     = "https://github.com/Zomfice/DnpKit"

  spec.license      = "MIT"

  spec.author             = { "Zomfice" => "songchaofeng6@hotmail.com" }

  spec.source       = { :git => "https://github.com/Zomfice/DnpKit.git", :tag => "#{spec.version}" }

  # spec.source_files  = "Source/*.swift"

  spec.dependency 'SnapKit'

  spec.subspec 'Base' do |ss| 
    ss.source_files = 'Source/Base/*.swift'
  end

  spec.subspec 'UIView' do |ss|
		ss.source_files = 'Source/UIView/*.swift'
    ss.dependency = 'DnpKit/Base'
  end 

  spec.subspec 'CALayer' do |ss|
  		ss.source_files = 'Source/CALayer/*.swift'
      ss.dependency = 'DnpKit/Base'
  end

  spec.subspec 'UIGesture' do |ss|
  		ss.source_files = 'Source/UIGesture/*.swift'
      ss.dependency = 'DnpKit/Base'
  end

end
