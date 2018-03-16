//
//  Logging.swift
//  LoggingFrameWork
//
//  Created by apple on 16/03/18.
//  Copyright © 2018 Letsmobility. All rights reserved.
//

import Foundation
public class LMlog {
  
  private var isDebug: Bool!
  
  //2.
  public init() {
    self.isDebug = false
  }
  
  //3.
  public func setup(isDebug: Bool) {
    self.isDebug = isDebug
    print("Project is in Debug mode: \(isDebug)")
  }
  
  //4.
  public func LMPrint<T>(value: T) {
    if self.isDebug == true {
      print(value)
    } else {
      //Do any stuff for production mode
    }
  }
}
