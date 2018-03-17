//
//  AppLog.swift
//  Seller_iOS-App
//
//  Created by sivaprasadg on 9/20/17.
//  Copyright © 2017 LetsMobility. All rights reserved.
//

import Foundation
class AppLog: NSObject {
  static var className: String {
    return String("Logger")
  }
  static func info(msg: String) {
    print(self.className + " : " + msg)
  }
  static func error(msg: String) {
    print(self.className + " : " + msg)
  }
  static func debug(msg: String) {
    print(self.className + " : " + msg)
  }
  static func info(tag: String, msg: String) {
    print(tag + " : " + msg)
  }
  static func error(tag: String, msg: String) {
    print(tag + " : " + msg)
  }
  static func debug(tag: String, msg: String) {
    print(tag + " : " + msg)
  }
}
// logger class
class Logger: NSObject {
  static var isLog: Bool = true
  static var className: String {
    return String("Logger")
  }
  static func info(_ msg: String) {
    info(self.className, msg)
  }
  static func error(_ msg: String) {
    error(self.className, msg)
  }
  static func debug(_ msg: String) {
    debug(self.className, msg)
  }
  static func info(_ tag: String, _ msg: String) {
    info(tag, msg)
  }
  static func error(_ tag: String, _ msg: String) {
    error(tag, msg)
  }
  static func debug(_ tag: String, _ msg: String) {
    debug(tag, msg)
  }
  static func info(_ tag: String, _ items: Any...) {
    if(Logger.isLog) {
      print("INFO "+tag + " : ", items)
    }
  }
  static func error(_ tag: String, _ items: Any...) {
    if(Logger.isLog) {
      print("ERROR "+tag + " : ", items)
    }
  }
  static func debug(_ tag: String, _ items: Any...) {
    if(Logger.isLog) {
      print("DEBUG "+tag + " : ", items)
    }
  }
  static func info(_ tag: String, _ items: Any..., separator: String, terminator: String) {
    if(Logger.isLog) {
      print("INFO "+tag + " : ", items, separator, terminator)
    }
  }
  static func error(_ tag: String, _ items: Any..., separator: String, terminator: String) {
    if(Logger.isLog) {
      print("ERROR "+tag + " : ", items, separator, terminator)
    }
  }
  static func debug(_ tag: String, _ items: Any..., separator: String, terminator: String) {
    if(Logger.isLog) {
      print("DEBUG "+tag + " : ", items, separator, terminator)
    }
  }
}
