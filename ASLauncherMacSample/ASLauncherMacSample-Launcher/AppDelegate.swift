//
//  AppDelegate.swift
//  ASLauncherMacSample-Launcher
//
//  Created by AntScript on 10/19/16.
//  Copyright © 2016 antscript.com. All rights reserved.
//

import Cocoa
import ASLauncherMac

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        ASLauncherMac.debug = true
        ASLauncherMac.launch(bundleID: "com.antscript.ASLauncherMacSample", AppName: "ASLauncherMacSample")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

