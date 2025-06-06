//Runner/AppDelegate.swift
import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
    var navigationController: UINavigationController!
       
       override func application(_ application: UIApplication,
                               didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         
         
           let controller = window?.rootViewController as! FlutterViewController
           
           GeneratedPluginRegistrant.register(with: self)
           
           // create and then add a new UINavigationController
           self.navigationController = UINavigationController(rootViewController: controller)

           self.navigationController.setNavigationBarHidden(true, animated: false)
           self.window = UIWindow(frame: UIScreen.main.bounds);
           self.window.rootViewController = self.navigationController;
           self.window.makeKeyAndVisible();
        
           return super.application(application, didFinishLaunchingWithOptions: launchOptions)
       }

}
