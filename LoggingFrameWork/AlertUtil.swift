//
//  AlertUtil.swift
//  ios-util
//
//  Created by sivaprasadg on 7/24/17.
//  Copyright © 2017 letsmobility. All rights reserved.
//

import UIKit
class AlertUtil {
  static let DEFAULT_TITLE = "Alert"
  static let DEFAULT_MESSAGE = "Message"
  static let Camera = "Camera"
  static let Gallery = "Gallery"
  static let ACTION_OK = 100
  static let ACTION_CANCEL = 200
  // show alert in ViewController
  static func showAlert(viewCtrl: UIViewController) {
    showAlert(viewCtrl: viewCtrl, title: AlertUtil.DEFAULT_TITLE, message: AlertUtil.DEFAULT_MESSAGE, completion: nil)
  }
  // show alert in ViewController with only message
  static func showAlert(viewCtrl: UIViewController, message: String) {
    showAlert(viewCtrl: viewCtrl, title: AlertUtil.DEFAULT_TITLE, message: message, completion: nil)
  }
  // show alert in ViewController with only message and title
  static func showAlert(viewCtrl: UIViewController, title: String, message: String) {
    showAlert(viewCtrl: viewCtrl, title: title, message: message, completion: nil)
  }
  // show alert in ViewController with only message,title and nil action
  static func showAlert(viewCtrl: UIViewController, title: String, message: String, completion: (()->Swift.Void)?) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
      (_: UIAlertAction) -> Void in
      if completion != nil {
        completion!()
      }
    }
    alertController.addAction(okAction)
    DispatchQueue.main.async {
      viewCtrl.present(alertController, animated: true, completion: nil)
    }
  }
  // show alert in ViewController with only message,title and action
  static func showConfirmAlert(viewCtrl: UIViewController, title: String, message: String, handler: ((Int) -> Swift.Void)? = nil) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
      (_: UIAlertAction) -> Void in
      handler!(AlertUtil.ACTION_OK)
    }
    let cancelAction = UIAlertAction(title: "CANCEL", style: UIAlertActionStyle.destructive) {
      (_: UIAlertAction) -> Void in
      handler!(AlertUtil.ACTION_CANCEL)
    }
    alertController.addAction(okAction)
    alertController.addAction(cancelAction)
    DispatchQueue.main.async {
      viewCtrl.present(alertController, animated: true, completion: nil)
    }
  }
  // alert with list of custom actions
  static func alertWithActions(title: String, message: String, ViewController: UIViewController, action: [UIAlertAction]) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    for act in action {
      alert.addAction(act)
    }
    ViewController.present(alert, animated: true, completion: nil)
  }
  // alert with message and self dismiss
  static func selfAlert(title: String, message: String, ViewController: UIViewController) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    ViewController.present(alert, animated: true, completion: {
      let when = DispatchTime.now() + 1
      DispatchQueue.main.asyncAfter(deadline: when) {
        alert.dismiss(animated: true, completion: nil)
      }
    })
  }
}
