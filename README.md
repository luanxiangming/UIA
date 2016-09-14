# Requirements and Preparations

1. Ruby 2.0 or higher must be installed on OS X or Windows.
2. Development Environment<br />
iOS: XCode 6.3 or higher. You must also have your iOS signing certificates and distribution profiles for creating an IPA setup on your computer. <br />
Android:  you already have your computer configured for Android application development, and that you are using Android Studio 1.2.1.1 or higher. You must have the ANDROID_HOME environment variable set.

3. To install the Calabash Sandbox<br /><br />
OS X (NEVER sudo to install the calabash Sandbox):<br />
curl -sSL https://raw.githubusercontent.com/calabash/install/master/install-osx.sh | bash
<br />
<br />
Windows(requires Windows 10 and Powershell): <br />
1.To install, open an administrator Powershell and change the execution policy to unrestricted:<br /> set-executionpolicy unrestricted<br />
2.Download and install the Calabash Sandbox installer script: <br />
(New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/calabash/install/master/install-windows.ps1") | iex <br />
3.reset the execution policy to restricted: set-executionpolicy restricted

You could get more information from:
https://developer.xamarin.com/guides/testcloud/calabash/
<br />

# Writing a test

1. Checkout "automation" environment
   git clone http://username@git.spb.vipabc.com/scm/ttol/automation.git
2. Execute calabash-sandbox in a Terminal session to initiate a sandbox environment and go to "automation" folder
3. Copy your test artifacts to "binaries" folder and rename them to "VLiveShowProduction.apk" for android and "VLiveShowProduction.ipa" for iOS<br />
(Note: Please make sure ipa file is archived after calabash framework linked meanwhile the Calabash framework must not be included in Release builds of the IPA.)
4. Plug devices to your computer and make sure "Enable UI Automation" and "USB Debugging" is enabled with your ios/android device
5. Edit config/devices.rb to update your device info:<br />
"device" within "android_device" could be acquired by "adb devices" in terminal<br />
"device" within "ios_device" is your ios device's UDID<br />
"endpoint" within "ios_device" is your ios device's IP plus constant port "37265"<br />
6. (Optional)Edit support/credentials.rb to fill out your authentication:<br />
Please ensure the "valid_user" and "valid_pass" is a valid combination which can make you login<br />
"invalid_user" and "invalid_pass" are just for error check purpose, you could leave them alone<br />
7. Create tests:<br />
features/.feature: all test scenarios start from here which shared by iOS and android<br />
features/steps: step definitions that only use the page objects and no Calabash methods like touch, query…which shared by iOS and android<br />
features/android/pages: implementation of each page on android<br />
features/ios/pages: implementation of each page on iOS
<br />

# Running test

1. Run test cases: <br />
    ios: run.rb ios <br />
    android: run.rb android <br />
2. (Optional)Enter console mode <br />
    ios: console.rb ios <br />
    android: console.rb android <br />

<br />
<br />
<br />

# Links to more information

## General information

http://xamarin.com/evolve/2013#session-xcjpj20d6s

http://developer.xamarin.com/testcloud/

http://calabashapi.xamarin.com/ios/

http://calabashapi.xamarin.com/android/

https://evolve.xamarin.com/ - Evolve - Xamarin Developer Conference

http://xamarin.com/test-cloud


## More information about the Page object model

http://developer.xamarin.com/guides/testcloud/calabash/xplat-best-practices/

https://github.com/calabash/calabash-ios/blob/develop/calabash-cucumber/doc/x-platform-testing.md


## Github projects (also getting started for new projects):

http://www.github.com/xamarin/test-cloud-samples

https://github.com/calabash/calabash-ios

https://github.com/calabash/calabash-android


## RSpec's New Expectation Syntax:

http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/
