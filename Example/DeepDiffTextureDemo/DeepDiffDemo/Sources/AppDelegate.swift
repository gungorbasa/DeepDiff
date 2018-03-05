import UIKit
import DeepDiff
import Hue

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    
    let textureController = TextureTableController()
    textureController.tabBarItem.image = UIImage(named: "table")
    
    let tabController = UITabBarController()
    
    tabController.viewControllers = [
      UINavigationController(rootViewController: textureController)
    ]
    
    UINavigationBar.appearance().barTintColor = UIColor(hex: "#2ecc71")
    
    window?.rootViewController = tabController
    window?.makeKeyAndVisible()
    
    return true
  }
}
