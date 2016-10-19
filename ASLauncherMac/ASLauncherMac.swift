//
//  ASLauncher.swift
//  ASLauncher
//
//  Created by AntScript on 10/17/16.
//
//

import Foundation
import AppKit
import ServiceManagement

public class ASLauncherMac {
    
    static public var debug = false
    
    
    static public func launch(bundleID:String, AppName:String) {
        let apps = NSWorkspace.shared().runningApplications
        
        for app in apps {
            if app.bundleIdentifier == bundleID {
                NSApp.terminate(nil)
                break
            }
        }
        
        let path = Bundle.main.bundlePath as NSString
        var components = path.pathComponents
        components.removeLast()
        components.removeLast()
        components.removeLast()
        components.append("MacOS")
        components.append(AppName)
        
        
        
        let mainPath = NSString.path(withComponents: components)
        if debug {
            let result = NSWorkspace.shared().launchApplication(mainPath)
            let notification = NSUserNotification()
            notification.title = "launch success:\(result)"
            notification.informativeText = mainPath
            NSUserNotificationCenter.default.deliver(notification)
        } else {
             NSWorkspace.shared().launchApplication(mainPath)
        }
        
        
        NSApp.terminate(nil)
    }
    
    
    static public func enableLaunchAtLogin() -> Bool {
        
        let result = SMLoginItemSetEnabled("\(Bundle.main.bundleIdentifier!)-Launcher" as CFString, true)
        if debug {
            let notification = NSUserNotification()
            notification.title = "enable success :\(result)"
            notification.informativeText = "\(Bundle.main.bundleIdentifier!)-Launcher"
            NSUserNotificationCenter.default.deliver(notification)
        }
        return result
        
    }
    
    static public func disableLaunchAtLogin() -> Bool {
        let result = SMLoginItemSetEnabled("\(Bundle.main.bundleIdentifier!)-Launcher" as CFString, false)
        if debug {
            let notification = NSUserNotification()
            notification.title = "disable success :\(result)"
            notification.informativeText = "\(Bundle.main.bundleIdentifier!)-Launcher"
            NSUserNotificationCenter.default.deliver(notification)
        }
        return result
    }
}
