require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-launch-screen"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-launch-screen
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-launch-screen"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" } TODO
  s.authors      = { "Kyle Decot" => "kyle.decot@icloud.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/kyledecot/react-native-launch-screen.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

