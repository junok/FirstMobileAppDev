//
//  AppDelegate.swift
//  LightSwitch
//
//  Created by u0830932 on 1/11/17.
//  Copyright © 2017 u0830932. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var _light: UIImageView? = nil


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow();
        window?.rootViewController = ViewController();
        window?.rootViewController?.view.backgroundColor = UIColor.grayColor();
        window?.makeKeyAndVisible();
        
        _light = UIImageView()
        _light?.backgroundColor = UIColor.blueColor()
        _light?.frame = CGRect(x: 20.0,y: 20.0,width: 250,height: 300)
        _light?.image = UIImage(named: "off")
        window?.rootViewController?.view.addSubview(_light!)
        
        let lightSwitch: UISwitch = UISwitch();
        lightSwitch.frame = CGRect(x: 50.0, y: 30.0, width: 100.0, height: 400);
        window?.rootViewController?.view.addSubview(lightSwitch);
        lightSwitch.addTarget(self, action: #selector(lightSwitchChanged), forControlEvents: UIControlEvents.ValueChanged)
        
        NSLog("Hello World!")
        // Override point for customization after application launch.
        return true
    }
    
    func lightSwitchChanged(){
        NSLog("Switch Changed")
        _light?.image = UIImage(named: "on")
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

