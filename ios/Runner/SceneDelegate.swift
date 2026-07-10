import Flutter
import UIKit

class SceneDelegate: FlutterSceneDelegate {

    let flutterEngine = FlutterEngine(name: "main_flutter_engine")

    override func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else { return }

        // 1. Start the Flutter engine and register plugins
        flutterEngine.run()
        GeneratedPluginRegistrant.register(with: flutterEngine)

        // 2. Register scene lifecycle so Flutter reacts to
        //    foreground/background transitions correctly
        self.registerSceneLifeCycle(with: flutterEngine)

        // 3. Build the Flutter view controller
        let flutterViewController = FlutterViewController(
            engine: flutterEngine,
            nibName: nil,
            bundle: nil
        )

        // 4. Wrap in a UINavigationController — required by QoreID SDK
        //    so it can push its own view controllers onto the stack
        let navigationController = UINavigationController(
            rootViewController: flutterViewController
        )
        navigationController.setNavigationBarHidden(true, animated: false)
        navigationController.navigationBar.isTranslucent = false

        // 5. Assign the navigation controller as the window root
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        // 6. Call super AFTER window setup, as required by FlutterSceneDelegate
        super.scene(scene, willConnectTo: session, options: connectionOptions)
    }
}
