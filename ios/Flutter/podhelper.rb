# Add this file to your Flutter project to enable CocoaPods integration.

require 'flutter'

def flutter_install_all_ios_pods(flutter_application_path)
  # Install pods
  flutter_root = File.expand_path('..', flutter_application_path)
  pod 'Flutter', :path => File.join(flutter_root, 'Flutter')
end

