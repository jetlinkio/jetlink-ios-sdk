## JetLink iOS SDK
[![Website](https://app.jetlink.io/Assets/custom/img/jetlink_logo.png)](https://jetlink.io)
### [Official Website](https://jetlink.io/)

###Instant customer service and commerce with messaging

##### Jetlink is the easiest way to connect with your customers for selling and support

----------------------------------------------------------------------------------------


## HOW TO USE JETLINK

### 1. Install Jetlink.framework

#### a. Install via Cocoapods

You can use [Cocoapods](http://cocoapods.org/) to install `Jetlink` by adding it to your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!
pod 'JetlinkSDK'
```

#### b. Manual Install

1. Download the example project
2. Drag the Jetlink.framework into your project browser, drop and add into your project.
3. Select "Copy items if needed", so that you will have a copy of the framework under your project folder.
4. Congratulations


### 2. Project Settings

#### 2.1. Go to Build Settings of the target of your project and set `Enable Bitcode` to `No`

Or you can select your 'Info.plist' file, then you can also add a new row named `NSAppTransportSecurity` as dictionary
Then you can add a new value inside the dictionary named `NSAllowsArbitraryLoads` and set it to `YES`

#### 2.2. (optional) If you see so many unnecessary debug log on console;
1) Go to Edit Scheme
2) Tap to Arguments tab
3) Add the Environment Variable 'OS_ACTIVITY_MODE' is 'disable'


### 3. Initialize JetLink

Add the following code line into your app's AppDelegate application(_ application: didFinishLaunchingWithOptions launchOptions:) method. 

Don't forget to replace the <YOUR-APP-ID> and <YOUR-APP-KEY> in the following code snippet with the actual app ID and app key.   

```
	let uiProperties = JetlinkUIProperties()
		
	let jetlinkConfig = JetlinkConfig(appId: "<YOUR-APP-ID>", appToken: "<YOUR-APP-KEY>")
	jetlinkConfig.jetlinkUIProperties = uiProperties

	JetlinkApp.config = jetlinkConfig

```


### 4. Initialize User

You can send basic user information at the beginning to give you more context on the user when your support agents are messaging back and forth with them.   

```

	let jetlinkUser = JetlinkUser()
	jetlinkUser.email = "test-user@jetlink.io"
	jetlinkUser.name = "Tester Name"
	jetlinkUser.surname = "Tster Surname"	
	JetlinkApp.user = jetlinkUser

```


### 5. Call the Chat or FAQ viewcontrollers

You can present the chat view controller and FAQ view controller with only one line of code

```
	JetlinkApp.activateChatPanel()
	JetlinkApp.activateFAQPanel()
```
