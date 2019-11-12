require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "BEEPicker"
  s.version         = pjson["version"]
  s.homepage        = pjson["homepage"]
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "zhangzy" => "zhangzy@5ichong.com" }

  s.ios.deployment_target = '9.0'

  s.source          = { :git => "git@github.com:beefe/react-native-picker.git", :tag => "v#{s.version}" }
  s.source_files    = '*.{h,m}'
  s.preserve_paths  = "**/*.js"

  s.dependency 'React'
end
