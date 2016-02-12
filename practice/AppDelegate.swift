//
//  AppDelegate.swift
//  practice
//
//  Created by 伊佐　大佑 on 2015/11/27.
//  Copyright (c) 2015年 dajo. All rights reserved.
//


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var category : Int = 0
    var navigationController: UINavigationController?
    
    var globalStrings01:String? = nil
    var globalcategory:Int = 0
    /*
    アプリケーション起動時に呼び出されるメソッド.
    */
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // ViewControllerを生成する.
        let myFirstViewController: FirstViewController = FirstViewController()
        
        // UIWindowを生成する.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // rootViewControllerにNatigationControllerを設定する.
        self.window?.rootViewController = myFirstViewController
        
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
}
