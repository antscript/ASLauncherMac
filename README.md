### Easy to Add
# **Launch at Login**
### for Your Mac App

--------------

## Require
* Swift 4.0

## Install

* Cocoapods

##### Podfile
```
pod "ASLauncherMac"
```

* Carthage

##### Cartfile
```
github "antscript/ASLauncherMac"
```

##### update
```
$ carthage update
```

## Usage
#### **Step 1**: Add a Launcher Target

![add target](https://github.com/antscript/ASLauncherMac/raw/master/images/add_target.png)

add a target with Application / Cocoa

![bundle id](https://github.com/antscript/ASLauncherMac/raw/master/images/bundle_id.png)

add "-Launcher" for Launcher Target Bundle ID

#### **Step 2**: Setup Launcher Target

![backgroud only](https://github.com/antscript/ASLauncherMac/raw/master/images/background_only.png)

add background only for YES

![skip intall](https://github.com/antscript/ASLauncherMac/raw/master/images/skip_install.png)

set skip install to YES

#### **Setup 3**: Setup Main Target

![add copy files](https://github.com/antscript/ASLauncherMac/raw/master/images/add_copy_1.png)

![add copy files](https://github.com/antscript/ASLauncherMac/raw/master/images/add_copy_files.png)

add copy files


#### **Step 4**: Setup Framework

![add framework](https://github.com/antscript/ASLauncherMac/raw/master/images/add_framework.png)

drag ASLauncherMac.framework into project

![embed framework](https://github.com/antscript/ASLauncherMac/raw/master/images/embed_framework.png)

![embed framework](https://github.com/antscript/ASLauncherMac/raw/master/images/embed_framework2.png)

embed framework for both of 2 target

#### **Step 5**: Coding
```
// debug options
// return result with notification

ASLauncherMac.debug = true // default is false
```

```
// in main app , you can

ASLauncherMac.enableLaunchAtLogin()

// or

ASLauncherMac.disableLaunchAtLogin()

```

```
// launch main app from launcher :
// add to Launcher -> AppDelegate -> applicationDidFinishLaunching

func applicationDidFinishLaunching(_ aNotification: Notification) {
ASLauncherMac.debug = true
ASLauncherMac.launch(bundleID: "your-main-app-bundle-id", AppName: "your-app-display-name")
}
```

=============
LICENSE

[MIT](https://github.com/antscript/ASLauncherMac/blob/master/LICENSE)

