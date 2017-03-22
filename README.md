## JetLink iOS SDK
[![Website](https://app.jetlink.io/Assets/custom/img/jetlink-logo-medium.png)](https://jetlink.io)
### [Official Website](https://jetlink.io/)

Messaging platform for easy commerce and better support.

##### Jetlink is the easiest way to connect with your customers for selling and support

----------------------------------------------------------------------------------------


## HOW TO USE JETLINK

### 1. Install Jetlink.framework

#### a. Install via Cocoapods

You can use [Cocoapods](http://cocoapods.org/) to install `JetlinkSDK` by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!
pod 'JetlinkSDK'
```

### 2. Project Settings

Go to Build Settings of the target of your project and set `Enable Bitcode` to `No`

### 3. Initialize JetLink

Add the following code line into your app's AppDelegate application(_ application: didFinishLaunchingWithOptions launchOptions:) method. 

Don't forget to replace the <YOUR-APP-ID> and <YOUR-APP-KEY> in the following code snippet with the actual app ID and app key.   

```
	let uiProperties = JetlinkUIProperties()
		
	let jetlinkConfig = JetlinkConfig(appId: "<YOUR-APP-ID>", appToken: "<YOUR-APP-KEY>")
	jetlinkConfig.jetlinkUIProperties = uiProperties

	JetlinkApp.config = jetlinkConfig
```

#### For Objective C
```
JetlinkUIProperties *properties = [[JetlinkUIProperties alloc] init];

JetlinkConfig *config = [[JetlinkConfig alloc] initWithAppId:@"APP-ID" appToken:@"APP-TOKEN"];
config.jetlinkUIProperties = properties;

JetlinkApp.config = config;

```


### 4. Initialize User

You can send basic user information at the beginning to give you more context on the user when your support agents are messaging back and forth with them.   

```
	let jetlinkUser = JetlinkUser()
	jetlinkUser.email = "test-user@jetlink.io"
	jetlinkUser.name = "Jetlink"
	jetlinkUser.surname = "Tester"
	
	JetlinkApp.user = jetlinkUser

```

#### For Objective C
```
JetlinkUser *user = [[JetlinkUser alloc] init];
user.email = @"test-email@jetlink.io";
user.name = @"Name 123";
user.surname = @"Surname 123";

JetlinkApp.user = user;
```


### 5. Call the Chat or FAQ viewcontrollers

You can present the chat view controller and FAQ view controller with only one line of code

```
	JetlinkApp.activateChatPanel()
	JetlinkApp.activateFAQPanel()
```
