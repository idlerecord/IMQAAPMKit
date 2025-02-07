//
//  AppDelegate.swift
//  IMQACore
//
//  Created by Hunta on 02/07/2025.
//  Copyright (c) 2025 Hunta. All rights reserved.
//

import UIKit
import IMQACore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let endpoint = IMQA.Endpoints(collectorURL: "http://192.168.0.254:4318")
        let serviceKey = "mSQE39offARH4SX9nxEVZDSkkXPbpG9zXSOgmJjE9FuwdYN9JsGxIEYcq_Memzlm5A2j1wFa3v6Z35lIhDvbFtNPkZtHX3-H5mjecBQ9Mg.gsJOcu8CiF1JaHV9ZEBGha"
        let option = IMQA.Options(serviceKey: serviceKey,
                                  endpoints: endpoint ,
                                  sampleRate: 1.0)
        do{
            try IMQA
                .setup(options: option)
                .start()
        }catch (let error){
            print("\(error.localizedDescription)")
        }

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

