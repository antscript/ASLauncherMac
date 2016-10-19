//
//  AppDelegate.swift
//  ASLauncherMacSample
//
//  Created by AntScript on 10/19/16.
//  Copyright © 2016 antscript.com. All rights reserved.
//

import Cocoa
import ASLauncherMac

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var launchCheckButton: NSButton!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        // turn debug on
        ASLauncherMac.debug = true
        
        // control UI
        launchCheckButton.state = UserDefaults.standard.integer(forKey: "launchAtLogin")
        launchCheckButton.action = #selector(launchCheckButtonAction)
    }
    
    func launchCheckButtonAction(sender:NSButton) -> Void {
        if sender.state == NSOnState {
            _ = ASLauncherMac.enableLaunchAtLogin()
            UserDefaults.standard.set(NSOnState, forKey: "launchAtLogin")
        } else {
            _ = ASLauncherMac.disableLaunchAtLogin()
            UserDefaults.standard.set(NSOffState, forKey: "launchAtLogin")
        }
    }


}

