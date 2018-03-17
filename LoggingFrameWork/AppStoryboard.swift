//
//  AppStoryboard.swift
//  zeros
//
//  Created by sivaprasadg on 8/10/17.
//  Copyright © 2017 letsmobility. All rights reserved.
//

import Foundation
import UIKit
enum AppStoryboard: String {
  case Authentication, Profile, Home, CreateStock, ProductDetails, OrderDetails
  var instance: UIStoryboard {
    return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
  }
  // instatiated view controller with programmatically without segue using storyBoard ID
  func viewController<T: UIViewController>(viewControllerClass: T.Type, function: String = #function, line: Int = #line, file: String = #file) -> T {
    let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
    guard let scene = instance.instantiateViewController(withIdentifier: storyboardID) as? T else {
      fatalError("ViewController with identifier \(storyboardID), not found in \(self.rawValue) Storyboard.\nFile : \(file) \nLine Number : \(line) \nFunction : \(function)")
    }
    return scene
  }
  func intialViewController() -> UIViewController? {
    return instance.instantiateInitialViewController()
  }
}
extension UIViewController {
  // Not using static as it wont be possible to override to provide custom storyboardID then
  class var storyboardID: String {
    return "\(self)"
  }
  static func instantiate(fromAppStoryboard appStoryboard: AppStoryboard) -> Self {
    return appStoryboard.viewController(viewControllerClass: self)
  }
}
// Usage example

//let greenScene = GreenVC.instantiate(fromAppStoryboard: .Main)

//let greenScene = AppStoryboard.Main.viewController(viewControllerClass: GreenVC.self)

//let greenScene = AppStoryboard.Main.instance.instantiateViewController(withIdentifier: GreenVC.storyboardID)
