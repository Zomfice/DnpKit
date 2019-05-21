
Pod::Spec.new do |spec|

  spec.name         = "DnpKit"
  spec.version      = "1.0.5"
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

  spec.source_files  = "Source/*.swift"

  spec.dependency 'SnapKit'


  spec.subspec 'UIView' do |ss|
		ss.source_files = 'Source/UI/*.swift'
  end 

  spec.subspec 'CALayer' do |ss|
  		ss.source_files = 'Source/CALayer/*.swift'
  end

  spec.subspec 'UIGesture' do |ss|
  		ss.source_files = 'Source/UIGesture/*.swift'
  end

end
