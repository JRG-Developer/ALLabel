Pod::Spec.new do |s|
  s.platform     = :ios
  s.ios.deployment_target = "6.0"
  s.name         = "ALLabel"
  s.version      = "1.0.0"
  s.summary      = "Auto Layout (AL) Label fixes issues with adding a label to a UIScrollView. It's meant to be used as a component by other pods."
  s.homepage     = "https://github.com/JRG-Developer/ALLabel"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Joshua Greene" => "jrg.developer@gmail.com" }
  s.source   	   = { :git => "https://github.com/JRG-Developer/ALLabel", :tag => "#{s.version}"}
  s.framework    = "UIKit"
  s.requires_arc = true
  s.source_files = "ALLabel/*.{h,m}"
end