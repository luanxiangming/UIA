#!/usr/bin/env ruby
require_relative 'config/devices.rb'

target = ARGV[0]

BUNDLE_ID='com.live.vipabc'

#Update android deivce info before "run.rb android"
adevice=DEVICES[:android_device]
ANDROID_DEVICE=adevice[:device]
# APK=File.expand_path("binaries/VLiveShowProduction.apk")
APK=adevice[:apk]
ANDROID_ARGS="#{APK}"

#Update ios deivce info before "run.rb ios"
idevice=DEVICES[:ios_device]
IOS_DEVICE=idevice[:device]
ENDPOINT=idevice[:endpoint]
APP=idevice[:app]
CODESIGN=idevice[:codesign]
IOS_ARGS="BUNDLE_ID=#{BUNDLE_ID} DEVICE_TARGET=#{IOS_DEVICE} DEVICE_ENDPOINT=#{ENDPOINT} CODE_SIGN_IDENTITY=\"#{CODESIGN}\""

# Please uncomment this if you are out of calabash-sandbox
# unless system("bundle version")
#   puts "Can't find bundler. Check your ruby environment."
#   puts "If your using ~/.calabash then run:"
#   puts <<EOF
#
# export GEM_HOME=~/.calabash
# export GEM_PATH=~/.calabash
# export PATH="$PATH:$HOME/.calabash/bin"
# EOF
#   exit(false)
# end

# Install Gems
system("bundle version")
system("bundle install")

if target == 'android'
  system("DEBUG=1 bundle exec calabash-android console #{ANDROID_ARGS} -p #{target}")
elsif target == 'ios'
  # Install ideviceinstaller
  # system("ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)' < /dev/null 2> /dev/null")
  # system("brew install ideviceinstaller")
  # Install ipa
  # system("ideviceinstaller --udid #{IOS_DEVICE} --install #{IPA}")
  system("#{IOS_ARGS} DEBUG=1 bundle exec calabash-ios console")
elsif target == 'sim'
  system("DEBUG=1 bundle exec calabash-ios console")
else
  puts "Invalid target #{target}"
end
