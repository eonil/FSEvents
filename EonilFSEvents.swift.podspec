#
#  Be sure to run `pod spec lint FSEvents.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "EonilFSEvents.swift"
  spec.version      = "0.1.5"
  spec.summary      = "Swift 5 FSEvent wrapper"
  spec.description  = <<-DESC
    Wraps the FSEvent Api for easy usage from Swift 5.
  DESC

  spec.homepage     = "https://github.com/eonil/FSEvents"
  spec.license      = "MIT"
  spec.author             = { "Eonil" => "Electronic Aquarium" }
  spec.platform     = :osx, "10.12"
  spec.swift_version = "5"
  spec.source       = { :git => "https://github.com/eonil/FSEvents.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/EonilFSEvents/**/*.{swift}"
  spec.module_name  = "EonilFSEvents"
end
