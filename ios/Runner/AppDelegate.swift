import UIKit
import Flutter
import SwiftUI

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

struct YourApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate: AppDelegate
  var body: some Scene {
    let viewModel = AppViewModel()
    WindowGroup {
      NavigationView {
        ContentView()
      }
    }
  }
}
