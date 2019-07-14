
Pod::Spec.new do |s|

  s.name         = "photoplus"
  s.version      = "0.0.1"
  s.summary      = "photoplus"
  s.homepage     = "https://github.com/SilenceLove/HXPhotoPicker"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "SilenceLove" => "294005139@qq.com" }

  s.platform     = :ios, "8.0"
  s.source =  { :path => '.' }
  s.source_files = "**/**/*.{h,m,mm,c}"
  s.resources    = "HXPhotoPicker/Resource/*.{png,xib,nib,bundle}"

  s.framework    = 'UIKit','Photos','PhotosUI'
  s.requires_arc = true

  s.dependency "SDWebImage"
  s.dependency "YYWebImage"
  s.dependency 'farwolf.weex'

end
