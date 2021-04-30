

Pod::Spec.new do |spec|

  # 1

  spec.platform = :ios
  spec.ios.deployment_target = '12.0'
  spec.name         = "SRCardView"
  spec.summary      = "SRCardView used to design interactive card layout."
  spec.requires_arc = true
  
  # 2
  spec.version      = "0.1.0"

  # 3
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  # 4
  spec.author             = { "Siddhesh Redkar" => "siddhesh.redkar@nium.com" }
  
  # 5
  spec.homepage     = "https://github.com/siddheshredkar/SRCardView"
  # spec.social_media_url   = "https://twitter.com/Siddhesh Redkar"
  

  # 6

  spec.source       = { :git => "https://github.com/siddheshredkar/SRCardView.git",
                        :tag => "#{spec.version}" }

  # 7
  spec.framework  = "UIKit"

  # 8
  
  spec.source_files  = "SRCardView/**/*.{swift}"
  
  # 9
  #spec.resources = "SRCardView/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

  # 10
  spec.swift_version = "5"


end
