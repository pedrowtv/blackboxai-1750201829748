import UIKit
import TVMLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appController: TVApplicationController?

    let appControllerContext = TVApplicationControllerContext()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        // Setup TVMLKit context if needed, but for native app we will use UIKit/SwiftUI
        window?.rootViewController = PlayerViewController()
        window?.makeKeyAndVisible()

        return true
    }
}
