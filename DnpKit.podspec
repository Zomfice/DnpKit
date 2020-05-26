
Pod::Spec.new do |spec|

  spec.name         = "DnpKit"
  spec.version      = "1.3.5"
  spec.summary      = "A Cocoa chain extension,that can help you create your UI fastly"


  spec.description  = <<-DESC
  		Fast Chain of Cocoa For UI , you can help you create your UI fastly
                   DESC

  #spec.platform     = :ios, "8.0"
  spec.ios.deployment_target = '8.0'

  spec.swift_version  = '5.0'

  spec.homepage     = "https://github.com/Zomfice/DnpKit"

  spec.license      = "MIT"

  spec.author             = { "Zomfice" => "songchaofeng6@hotmail.com" }

  spec.source       = { :git => "https://github.com/Zomfice/DnpKit.git", :tag => "#{spec.version}" }

  # spec.source_files  = "Source/*.swift"

  spec.dependency 'SnapKit', '~> 4.0.0'

  spec.subspec 'View' do |ss|
		ss.source_files = 'Source/View/*.swift'
  end 

  spec.subspec 'Layer' do |ss|
  		ss.source_files = 'Source/Layer/*.swift'
      ss.dependency 'DnpKit/View'
  end

  spec.subspec 'Event' do |ss|
  		ss.source_files = 'Source/Event/*.swift'
      ss.dependency 'DnpKit/View'
  end

  spec.subspec 'Tools' do |ss|
      ss.source_files = 'Source/Tools/*.swift'
      ss.dependency 'DnpKit/View'
  end

end
